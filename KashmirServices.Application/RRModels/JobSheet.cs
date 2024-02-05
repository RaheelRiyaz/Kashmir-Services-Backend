using KashmirServices.Domain.Entities;
using KashmirServices.Domain.Enums;
using System.ComponentModel.DataAnnotations;

namespace KashmirServices.Application.RRModels;

public class JobSheet
{
    public Guid AssingedEngineerId { get; set; }

    public Guid CallBookingId { get; set; }

    public Guid EngineerId { get; set; }


    [Required(ErrorMessage = "Job Number is required")]
    public string JobNo { get; set; } = string.Empty;

    [Required(ErrorMessage = "Engineer Name is required")]
    public string EngineerName { get; set; } = string.Empty;

    [Required(ErrorMessage = "CallStatus is required")]
    public CallStatus CallStatus { get; set; }

    [Required(ErrorMessage = "Assignment Date is required")]
    public DateTimeOffset AssignmentDate { get; set; }

    [Required(ErrorMessage = "Expected Date is required")]
    public DateTimeOffset ExpectedDate { get; set; }

    [Required(ErrorMessage = "Engineer Remarks is required")]
    public string EngineerRemarks { get; set; } = string.Empty;

    [Required(ErrorMessage = "Reminder is required")]
    public int Reminder { get; set; }

    public Guid CustomerId { get; set; }

    public Guid AddressId { get; set; }

    [Required(ErrorMessage = "Customer Name is required")]
    public string CustomerName { get; set; } = string.Empty;

    [Required(ErrorMessage = "Email is required")]
    public string Email { get; set; } = string.Empty;

    [Required(ErrorMessage = "Phone Number is required")]
    public string PhoneNumber { get; set; } = string.Empty;

    [Required(ErrorMessage = "City is required")]
    public string City { get; set; } = string.Empty;

    [Required(ErrorMessage = "Street is required")]
    public string Street { get; set; } = string.Empty;

    [Required(ErrorMessage = "Address Line is required")]
    public string AddressLine { get; set; } = string.Empty;

    [Required(ErrorMessage = "Postal Code is required")]
    public int PostalCode { get; set; }

    [Required(ErrorMessage = "Brand Name is required")]
    public string BrandName { get; set; } = string.Empty;

    [Required(ErrorMessage = "Service Type is required")]
    public string ServiceType { get; set; } = string.Empty;

    [Required(ErrorMessage = "Model Number is required")]
    public string ModelNo { get; set; } = string.Empty;

    [Required(ErrorMessage = "Serial Number is required")]
    public string SerialNo { get; set; } = string.Empty;

    [Required(ErrorMessage = "Call Description is required")]
    public string CallDescription { get; set; } = string.Empty;

    [Required(ErrorMessage = "Call Priority is required")]
    public string CallPriority { get; set; } = "Normal";

    public DateTimeOffset CreatedOn { get; set; }
}

public class DetailedJobSheet : JobSheet
{
    public CallBookingStatus CallBookingStatus { get; set; }

    public int SatisficationCode { get; set; }

    public int UnSatisficationCode { get; set; }

    public string CallRemarks { get; set; } = string.Empty;
}