using KashmirServices.Domain.Entities;
using System.ComponentModel.DataAnnotations;

namespace KashmirServices.Application.RRModels;



public class InvoiceBasicDetails 
{
    public Guid Id { get; set; }

    [Required(ErrorMessage = "Invoice Date is required")]
    public DateTimeOffset InvoiceDate { get; set; }

    [Required(ErrorMessage = "Invoice Number is required")]
    public string InvoiceNo { get; set; } = string.Empty;

    public Guid CallBookingId { get; set; }

    [Required(ErrorMessage = "Job Number is required")]
    public string JobNo { get; set; } =null!;

    [Required(ErrorMessage = "FullName is required")]
    public string FullName { get; set; } =null!;

    [Required(ErrorMessage = "Service Type is required")]
    public string ServiceType { get; set; } =null!;

    [Required(ErrorMessage = "Charges are required")]
    public double Charges { get; set; }

    [Required(ErrorMessage = "Free Service Distance is required")]
    public int  FreeServiceDistance { get; set; }

    [Required(ErrorMessage = "Per Kilometer Charge is required")]
    public int PerKilometerCharge { get; set; }

    public double GrandTotal { get; set; }
}

public class InvoiceItems
{
    public Guid InvoiceId { get; set; }


    public Guid PartId { get; set; }


    public Double Discount { get; set; }
}



  

