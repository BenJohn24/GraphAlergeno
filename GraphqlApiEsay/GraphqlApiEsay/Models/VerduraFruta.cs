using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GraphqlApiEsay.Models
{
    public class VerduraFruta
    {
        public int Id { get; set; }
        public String NombreVerdura { get; set; }
        public bool AlergenoVerdura { get; set; }
        public List<PlatoIngrediente> PlatoIngredientes { get; set; }
    }
}
