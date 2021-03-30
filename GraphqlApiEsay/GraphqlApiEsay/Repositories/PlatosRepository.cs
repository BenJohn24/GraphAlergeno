using GraphqlApiEsay.Context;
using GraphqlApiEsay.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GraphqlApiEsay.Repositories
{
    public class PlatosRepository
    {

        private readonly RestauranteContext _dbContext;

        public PlatosRepository(RestauranteContext dbContext)
        {
            _dbContext = dbContext;
        }


        //Lista Completa de platos
        public List<Plato> GetPlatos()
        {
            return _dbContext.Platos.ToList();

        }

        //Mostrar un plato
        public Plato GetPlatoId(int id)
        {
            return this._dbContext.Platos.SingleOrDefault(x => x.Id == id);
        }

        //Crear un plato
        public async Task<Plato> CrearPlatoAsync(Plato plato)
        {
            await this._dbContext.Platos.AddAsync(plato);
            await this._dbContext.SaveChangesAsync();
            return plato;
        }


        //Lista de alérgenos en un plato
        public List<GrupoIngredientesViewModel> ListaAlergenosPlato(int idPlato)
        {

     


            var union = _dbContext.PlatoIngredientes
                          .GroupJoin(_dbContext.CarnePescado, ingredientes => ingredientes.CarneId, carne => carne.Id, (ingredientes, carne) => new { ingredientes, carne })
                          .SelectMany(c => c.carne.DefaultIfEmpty(), (ingredientes, carne) => new { ingredientes.ingredientes, carne })
                          .GroupJoin(_dbContext.VerduraFrutas, ingredientes => ingredientes.ingredientes.VerduraId, verdura => verdura.Id, (ingredientes, verdura) => new { ingredientes, verdura })
                          .SelectMany(v => v.verdura.DefaultIfEmpty(), (ingredientes, verdura) => new { ingredientes.ingredientes, verdura })
                          .GroupJoin(_dbContext.HarinaCereales, ingredientes => ingredientes.ingredientes.ingredientes.HarinaId, harina => harina.Id, (ingredientes, harina) => new { ingredientes, harina })
                          .SelectMany(h => h.harina.DefaultIfEmpty(), (ingredientes, harina) => new { ingredientes.ingredientes, harina })
                          .GroupJoin(_dbContext.Lacteos, ingredientes => ingredientes.ingredientes.ingredientes.ingredientes.LacteoId, lacteo => lacteo.Id, (ingredientes, lacteo) => new { ingredientes, lacteo })
                          .SelectMany(l => l.lacteo.DefaultIfEmpty(), (ingredientes, lacteo) => new { ingredientes.ingredientes, lacteo })
                          .Where(x => x.ingredientes.ingredientes.ingredientes.ingredientes.PlatoId == idPlato)
                          .Select(t => new GrupoIngredientesViewModel
                          {
                              NombreLacteo = t.lacteo.NombreLacteo,
                              AlergenoLacteo = t.lacteo.AlergenoLacteo,
                              NombreHarina = t.ingredientes.harina.NombreHarina,
                              AlergenoHarina = t.ingredientes.harina.AlergenoHarina,
                              NombreVerdura = t.ingredientes.ingredientes.verdura.NombreVerdura,
                              AlergenoVerdura = t.ingredientes.ingredientes.verdura.AlergenoVerdura,
                              NombreCarne = t.ingredientes.ingredientes.ingredientes.carne.NombreCarnePescado,
                              AlergenoCarne = t.ingredientes.ingredientes.ingredientes.carne.AlergenoCarnePescado

                          }).ToList();


            return union;
        }


        //Introducir ingredientes por plato
        public async Task<PlatoIngrediente> IntroducirIngredientesPlatoAsync(int idPlato, int idCarne, int idVerdura, int idHarina, int idLacteo)
        {
            PlatoIngrediente ingredientes = new PlatoIngrediente();
            ingredientes.Id = this._dbContext.PlatoIngredientes.Max(x => x.Id) + 1;
            ingredientes.PlatoId = idPlato;
            ingredientes.CarneId = idCarne;
            ingredientes.VerduraId = idVerdura;
            ingredientes.HarinaId = idHarina;
            ingredientes.LacteoId = idLacteo;
            ingredientes.ModificadoPlato = false;
            ingredientes.FechaModificado = DateTime.Now;

            this._dbContext.PlatoIngredientes.Add(ingredientes);
            await this._dbContext.SaveChangesAsync();
            return ingredientes;
        }

        //Bucar ingrediente por id
        public PlatoIngrediente GetIngredienteId(int idIngrediente)
        {
            return _dbContext.PlatoIngredientes.SingleOrDefault(r => r.Id == idIngrediente);
        }

        //Modificar ingrediente por plato
        public async Task<PlatoIngrediente> ModificarIngredientesPlatoAsync(int idPlato, int idCarne, int idVerdura, int idHarina, int idLacteo)
        {
            PlatoIngrediente ingredientes = GetIngredienteId(idPlato);

            ingredientes.CarneId = idCarne;
            ingredientes.VerduraId = idVerdura;
            ingredientes.HarinaId = idHarina;
            ingredientes.LacteoId = idLacteo;
            ingredientes.ModificadoPlato = true;
            ingredientes.FechaModificado = DateTime.Now;

            await _dbContext.SaveChangesAsync();
            return ingredientes;


        }

    }
}
