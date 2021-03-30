using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GraphqlApiEsay.Models
{
    public class Lacteo
    {
        public int Id { get; set; }
        public String NombreLacteo { get; set; }
        public bool AlergenoLacteo { get; set; }
        public List<PlatoIngrediente> PlatoIngredientes { get; set; }
    }
}
