﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KashmirServices.Application.RRModels
{

    public class TestimonialRequest
    {
        [Required(ErrorMessage = "Description is required")]
        public string Description { get; set; } = string.Empty;
    }

    public class TestimonialResponse: TestimonialRequest
    {
        public Guid Id { get; set; }

        public Guid UserId { get; set; }

        public bool IsActive { get; set; }


        public string FullName { get; set; } = string.Empty;


        public string FilePath { get; set; } = string.Empty;

        public DateTimeOffset CreatedOn { get; set; }
    }


    public class UpdateTestimonialStatusRequest
    {
        public Guid Id { get; set; }

        public bool Status { get; set; }
    }

}
