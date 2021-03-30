using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GraphqlApiEsay.Models
{
    public class CarnePescado
    {
        public int Id { get; set; }
        public String NombreCarnePescado { get; set; }
        public bool AlergenoCarnePescado { get; set; }
        public List<PlatoIngrediente> PlatoIngredientes { get; set; }
    }
}
