using GraphqlApiEsay.Models;
using GraphqlApiEsay.Repositories;
using HotChocolate;
using HotChocolate.Subscriptions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GraphqlApiEsay.AccesoDatos
{
    public class Mutation
    {
        // CREAR MUTATION

        public async Task CrearPlato([Service] PlatosRepository repo,
            [Service] ITopicEventSender eventSender, int idPlato, String nombrePlato)
        {

            Plato newPlato = new Plato
            {
                Id = idPlato,
                NombrePlato = nombrePlato,

            };
            var crearNewPlatos = await repo.CrearPlatoAsync(newPlato);
            await eventSender.SendAsync("Plato creado", crearNewPlatos);
        }

        public async Task CrearIngredientes([Service] PlatosRepository repo,
          [Service] ITopicEventSender eventSender, int idPlato, int idCarne, int idVerdura, int idHarina, int idLacteo)
        {

            PlatoIngrediente newplatoIngrediente = await repo.IntroducirIngredientesPlatoAsync(idPlato, idCarne, idVerdura, idHarina, idLacteo);
            await eventSender.SendAsync("Ingredientes plato modificado", newplatoIngrediente);
        }

        public async Task CrearCarnePescado([Service] IngredientesRepository repo,
        [Service] ITopicEventSender eventSender, int idCarne, String nombre, bool alergeno)
        {

            CarnePescado newCarnePescado = await repo.CrearCarnePescadoAsync(idCarne, nombre, alergeno);
            await eventSender.SendAsync("Guardado Carne/Pescado", newCarnePescado);
        }


        public async Task CrearVerduraFruta([Service] IngredientesRepository repo,
        [Service] ITopicEventSender eventSender, int idVerdura, String nombre, bool alergeno)
        {

            VerduraFruta newVerduraFruta = await repo.CrearVerduraFrutaAsync(idVerdura, nombre, alergeno);
            await eventSender.SendAsync("Guardado Verdura/Fruta", newVerduraFruta);
        }

        public async Task CrearHarinaCereal([Service] IngredientesRepository repo,
       [Service] ITopicEventSender eventSender, int idCereal, String nombre, bool alergeno)
        {

            HarinaCereal newHarinaCereal = await repo.CrearHarinaCerealAsync(idCereal, nombre, alergeno);
            await eventSender.SendAsync("Guardado Harina/Cereal", newHarinaCereal);
        }

        public async Task CrearLacteo([Service] IngredientesRepository repo,
      [Service] ITopicEventSender eventSender, int idLacteo, String nombre, bool alergeno)
        {

            Lacteo newLacteo = await repo.CrearLacteoAsync(idLacteo, nombre, alergeno);
            await eventSender.SendAsync("Guardado Lacteo", newLacteo);
        }





        //MODIFICAR MUTATION
        public async Task ModificarIngredientes([Service] PlatosRepository repo,
           [Service] ITopicEventSender eventSender, int idPlato, int idCarne, int idVerdura, int idHarina, int idLacteo)
        {

            PlatoIngrediente editplatoIngrediente = await repo.ModificarIngredientesPlatoAsync(idPlato, idCarne, idVerdura, idHarina, idLacteo);
            await eventSender.SendAsync("Ingredientes plato modificado", editplatoIngrediente);
        }


        public async Task ModificarCarnePescado([Service] IngredientesRepository repo,
       [Service] ITopicEventSender eventSender, int idCarne, String nombre, bool alergeno)
        {

            CarnePescado editCarnePescado = await repo.ModificarCarnePescadoAsync(idCarne, nombre, alergeno);
            await eventSender.SendAsync("Editado Carne/Pescado", editCarnePescado);
        }

        public async Task ModificarVerduraFruta([Service] IngredientesRepository repo,
     [Service] ITopicEventSender eventSender, int idVerdura, String nombre, bool alergeno)
        {

            VerduraFruta editVerduraFruta = await repo.ModificarVerduraFrutaAsync(idVerdura, nombre, alergeno);
            await eventSender.SendAsync("Editado Verdura/Fruta", editVerduraFruta);
        }

        public async Task ModificarHarinaCereal([Service] IngredientesRepository repo,
      [Service] ITopicEventSender eventSender, int idCereal, String nombre, bool alergeno)
        {

            HarinaCereal editHarinaCereal = await repo.ModificarHarinaCerealAsync(idCereal, nombre, alergeno);
            await eventSender.SendAsync("Editado Harina/Cereal", editHarinaCereal);
        }

        public async Task ModificarLacteo([Service] IngredientesRepository repo,
   [Service] ITopicEventSender eventSender, int idLacteo, String nombre, bool alergeno)
        {

            Lacteo editLacteo = await repo.ModificarLacteoAsync(idLacteo, nombre, alergeno);
            await eventSender.SendAsync("Guardado Lacteo", editLacteo);
        }
    }
}
