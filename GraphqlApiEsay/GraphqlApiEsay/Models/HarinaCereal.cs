using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GraphqlApiEsay.Models
{
    public class HarinaCereal
    {
        public int Id { get; set; }
        public String NombreHarina { get; set; }
        public bool AlergenoHarina { get; set; }
        public List<PlatoIngrediente> PlatoIngredientes { get; set; }
    }
}
