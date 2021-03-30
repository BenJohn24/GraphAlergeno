using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GraphqlApiEsay.Models
{
    public class Plato
    {
        public int Id { get; set; }
        public String NombrePlato { get; set; }
        public List<PlatoIngrediente> PlatoIngredientes { get; set; }
    }
}
