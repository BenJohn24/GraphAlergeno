using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GraphqlApiEsay.Models
{
    public class GrupoIngredientesViewModel
    {
        
        public String NombreCarne { get; set; }
        public String NombreHarina { get; set; }
        public String NombreLacteo { get; set; }
        public String NombreVerdura { get; set; }
        public bool? AlergenoCarne { get; set; }
        public bool? AlergenoVerdura { get; set; }
        public bool? AlergenoHarina { get; set; }
        public bool? AlergenoLacteo { get; set; }
    }
}
