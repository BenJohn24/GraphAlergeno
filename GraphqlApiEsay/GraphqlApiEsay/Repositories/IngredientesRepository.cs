using GraphqlApiEsay.Context;
using GraphqlApiEsay.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GraphqlApiEsay.Repositories
{
    public class IngredientesRepository
    {
        private readonly RestauranteContext _dbContext;
        public IngredientesRepository(RestauranteContext dbContext)
        {
            _dbContext = dbContext;
        }

        // CARNE Y PESCADO
        public List<CarnePescado> GetCarnePescado()
        {
            return this._dbContext.CarnePescado.ToList();
        }
        public CarnePescado GetCarnePescadoId(int id)
        {
            return this._dbContext.CarnePescado.SingleOrDefault(x => x.Id == id);
        }
        public async Task<CarnePescado> CrearCarnePescadoAsync(int id, String nombre, bool alergeno)
        {
            CarnePescado carne = new CarnePescado();
            carne.Id = id;
            carne.NombreCarnePescado = nombre;
            carne.AlergenoCarnePescado = alergeno;

            this._dbContext.CarnePescado.Add(carne);
            await this._dbContext.SaveChangesAsync();
            return carne;
        }

        public async Task<CarnePescado> ModificarCarnePescadoAsync(int idCarne, String nombre, bool alergeno)
        {
            CarnePescado carnePescado = GetCarnePescadoId(idCarne);

            carnePescado.NombreCarnePescado = nombre;
            carnePescado.AlergenoCarnePescado = alergeno;

            await this._dbContext.SaveChangesAsync();
            return carnePescado;


        }


        //VERDURA Y FRUTA
        public List<VerduraFruta> GetVerduraFruta()
        {
            return this._dbContext.VerduraFrutas.ToList();
        }
        public VerduraFruta GetVerduraFrutaId(int id)
        {
            return this._dbContext.VerduraFrutas.SingleOrDefault(x => x.Id == id);
        }
        public async Task<VerduraFruta> CrearVerduraFrutaAsync(int id, String nombre, bool alergeno)
        {
            VerduraFruta verdura = new VerduraFruta();
            verdura.Id = id;
            verdura.NombreVerdura = nombre;
            verdura.AlergenoVerdura = alergeno;

            this._dbContext.VerduraFrutas.Add(verdura);
            await this._dbContext.SaveChangesAsync();
            return verdura;
        }

        public async Task<VerduraFruta> ModificarVerduraFrutaAsync(int idVerdura, String nombre, bool alergeno)
        {
            VerduraFruta verduraFruta = GetVerduraFrutaId(idVerdura);

            verduraFruta.NombreVerdura = nombre;
            verduraFruta.AlergenoVerdura = alergeno;

            await this._dbContext.SaveChangesAsync();
            return verduraFruta;


        }


        //HARINA Y CEREAL
        public List<HarinaCereal> GetHarinaCereal()
        {
            return this._dbContext.HarinaCereales.ToList();
        }
        public HarinaCereal GetHarinaCerealId(int id)
        {
            return this._dbContext.HarinaCereales.SingleOrDefault(x => x.Id == id);
        }
        public async Task<HarinaCereal> CrearHarinaCerealAsync(int id, String nombre, bool alergeno)
        {
            HarinaCereal cereal = new HarinaCereal();
            cereal.Id = id;
            cereal.NombreHarina = nombre;
            cereal.AlergenoHarina = alergeno;

            this._dbContext.HarinaCereales.Add(cereal);
            await this._dbContext.SaveChangesAsync();
            return cereal;
        }

        public async Task<HarinaCereal> ModificarHarinaCerealAsync(int idHarina, String nombre, bool alergeno)
        {
            HarinaCereal harinaCereal = GetHarinaCerealId(idHarina);

            harinaCereal.NombreHarina = nombre;
            harinaCereal.AlergenoHarina = alergeno;

            await this._dbContext.SaveChangesAsync();
            return harinaCereal;

        }




        //LACTEOS
        public List<Lacteo> GetLacteos()
        {
            return this._dbContext.Lacteos.ToList();
        }
        public Lacteo GetLacteoId(int id)
        {
            return this._dbContext.Lacteos.SingleOrDefault(x => x.Id == id);
        }
        public async Task<Lacteo> CrearLacteoAsync(int id, String nombre, bool alergeno)
        {
            Lacteo lacteo = new Lacteo();
            lacteo.Id = id;
            lacteo.NombreLacteo = nombre;
            lacteo.AlergenoLacteo = alergeno;

            this._dbContext.Lacteos.Add(lacteo);
            await this._dbContext.SaveChangesAsync();
            return lacteo;
        }

        public async Task<Lacteo> ModificarLacteoAsync(int idLacteo, String nombre, bool alergeno)
        {
            Lacteo lacteo = GetLacteoId(idLacteo);

            lacteo.NombreLacteo = nombre;
            lacteo.AlergenoLacteo = alergeno;

            await this._dbContext.SaveChangesAsync();
            return lacteo;


        }
    }
}
