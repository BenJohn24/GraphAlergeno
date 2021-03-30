using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace GraphqlApiEsay.Models
{
    public class PlatoIngrediente
    {
        public int Id { get; set; }
        [ForeignKey("Plato")]
        public int PlatoId { get; set; }
        [ForeignKey("CarnePescado")]
        public int? CarneId { get; set; }
        [ForeignKey("VerduraFruta")]
        public int? VerduraId { get; set; }
        [ForeignKey("HarinaCereal")]
        public int? HarinaId { get; set; }
        [ForeignKey("Lacteo")]
        public int? LacteoId { get; set; }
        public bool ModificadoPlato { get; set; }
        public DateTime FechaModificado { get; set; }

        public virtual Plato Plato { get; set; }
        public virtual CarnePescado CarnePescado { get; set; }
        public virtual VerduraFruta VerduraFruta { get; set; }
        public virtual HarinaCereal HarinaCereal { get; set; }
        public virtual Lacteo Lacteo { get; set; }
    }
}
