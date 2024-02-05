using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace KashmirServices.Application.RRModels;

public class AddressRequest
{
    [Required(ErrorMessage = "State is required")]
    public string State { get; set; } = string.Empty;

    [Required(ErrorMessage = "City is required")]
    public string City { get; set; } = string.Empty;

    [Required(ErrorMessage = "Region is required")]
    public string Region { get; set; } = null!;

    [Required(ErrorMessage = "Street is required")]
    public string Street { get; set; } = string.Empty;

    [Required(ErrorMessage = "PostalCode is required")]
    public int PostalCode { get; set; }

    public double? Longitute { get; set; } = null;


    public double? Latitute { get; set; } = null;


    [Required]
    public string AddressLine { get; set; } = null!;


    public Guid? EntityId { get; set; }
}

public class AddressResponse : AddressRequest
{

    public Guid Id { get; set; }
}


public class AddressUpdateRequest : AddressRequest
{
    public Guid Id { get; set; }
}