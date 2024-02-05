using KashmirServices.Domain.Shared;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KashmirServices.Domain.Entities
{
    public class Testimonial : BaseEntity
    {

        public string Description { get; set; } = string.Empty;


        public bool IsActive { get; set; }

        public Guid CustomerId { get; set; }


        [ForeignKey(nameof(CustomerId))]
        public User User { get; set; } = null!;
    }
}
