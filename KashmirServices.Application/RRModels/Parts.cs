using KashmirServices.Domain.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KashmirServices.Application.RRModels
{
    public class PartsRequest
    {
        public Guid? BrandId { get; set; }

        [Required(ErrorMessage = "Name is required")]
        public string Name { get; set; } = null!;

        [Required(ErrorMessage = "Part Number is required")]
        public string PartNo { get; set; } = string.Empty;

        [Required(ErrorMessage = "SerialNo Number is required")]
        public string SerialNo { get; set; } = string.Empty;

        [Required(ErrorMessage = "Quantity Number is required")]
        public int Quantity { get; set; }

        [Required(ErrorMessage = "Purchase Price Number is required")]
        public double PurchasePrice { get; set; }

        [Required(ErrorMessage = "Sell Price Number is required")]
        public double SellPrice { get; set; }

        [Required(ErrorMessage = "Description Number is required")]
        public string Description { get; set; } = null!;
    }

    public   class UpdatePartsRequest : PartsRequest 
    {
        public Guid Id { get; set; } 
    }

    public class PartsResponse:PartsRequest
    {
        public Guid Id { get; set; }
    }
}
