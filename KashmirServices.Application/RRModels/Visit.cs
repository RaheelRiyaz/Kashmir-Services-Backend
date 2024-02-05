using KashmirServices.Domain.Entities;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace KashmirServices.Application.RRModels;

public class VisitRequest
{

    [Required(ErrorMessage = "TimeIn is required")]
    public TimeOnly TimeIn { get; set; }

    [Required(ErrorMessage = "TimeOut is required")]
    public TimeOnly TimeOut { get; set; }

    public Guid AssingedEngineerId { get; set; }


    public string? TechnicalRemarks { get; set; }

    [Required(ErrorMessage = "Total Distance is required")]
    public double TotalDistance { get; set; }
}


public class VisitResponse : VisitRequest
{
    public Guid Id { get; set; }
}
