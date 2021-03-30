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
    public class Query
    {
    
        // P L A T O S

        public List<Plato> AllPlatos([Service] PlatosRepository repo) =>
        repo.GetPlatos();

        public async Task<Plato> UnPlato([Service] PlatosRepository repo, [Service] ITopicEventSender eventSender, int id)
        {
            Plato platoPorId = repo.GetPlatoId(id);
            await eventSender.SendAsync("RetornaPlato", platoPorId);
            return platoPorId;

        }

        public async Task<List<GrupoIngredientesViewModel>> ListaAlergenosPorPlato([Service] PlatosRepository repo, [Service] ITopicEventSender eventSender, int id)
        {
            List<GrupoIngredientesViewModel> alerLista = repo.ListaAlergenosPlato(id);
            await eventSender.SendAsync("Retornar Alérgenos", alerLista);
            return alerLista;
        }

     

        // I N G R E D I E N T E S

        public List<CarnePescado> AllCarnePescado([Service] IngredientesRepository repo) =>
        repo.GetCarnePescado();

        public List<VerduraFruta> AllCarneVerduraFruta([Service] IngredientesRepository repo) =>
        repo.GetVerduraFruta();

        public List<HarinaCereal> AllHarinaCereal([Service] IngredientesRepository repo) =>
        repo.GetHarinaCereal();

        public List<Lacteo> AllLacteo([Service] IngredientesRepository repo) =>
        repo.GetLacteos();

        public async Task<CarnePescado> CarnePescadoById([Service] IngredientesRepository repo, [Service] ITopicEventSender eventSender, int id)
        {
            CarnePescado carneId = repo.GetCarnePescadoId(id);
            await eventSender.SendAsync("RetornaCarne", carneId);
            return carneId;

        }

        public async Task<VerduraFruta> VerduraFrutaById([Service] IngredientesRepository repo, [Service] ITopicEventSender eventSender, int id)
        {
            VerduraFruta verduraId = repo.GetVerduraFrutaId(id);
            await eventSender.SendAsync("RetornaVerdura", verduraId);
            return verduraId;

        }

        public async Task<HarinaCereal> HarinaCerealById([Service] IngredientesRepository repo, [Service] ITopicEventSender eventSender, int id)
        {
            HarinaCereal harinaId = repo.GetHarinaCerealId(id);
            await eventSender.SendAsync("RetornaHarina", harinaId);
            return harinaId;

        }

        public async Task<Lacteo> LacteoById([Service] IngredientesRepository repo, [Service] ITopicEventSender eventSender, int id)
        {
            Lacteo lacteoId = repo.GetLacteoId(id);
            await eventSender.SendAsync("RetornaLacteo", lacteoId);
            return lacteoId;

        }


    }
}
