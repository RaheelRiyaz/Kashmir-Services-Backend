using System.ComponentModel.DataAnnotations;

namespace KashmirServices.Application.RRModels.Service;

public class ServiceTypeRequest
{

    [Required(ErrorMessage = "Name is required")]
    public string Name { get; set; } = null!;

    [Required(ErrorMessage = "Description is required")]
    public string Description { get; set; } = null!;

    [Required(ErrorMessage = "Charges are required")]
    public decimal Charges { get; set; }

    [Required(ErrorMessage = "FreeServiceDistance is required")]
    public int FreeServiceDistance { get; set; }

    [Required(ErrorMessage = "PerKilometerCharge is required")]
    public int PerKilometerCharge { get; set; }

    public Guid BrandId { get; set; }
}


public class ServiceTypeUpdateRequest : ServiceTypeRequest
{
    public Guid Id { get; set; }
}

