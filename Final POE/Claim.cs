using System;
using System.ComponentModel.DataAnnotations;

namespace YourNamespace.Models
{
    public class Claim
    {
        [Key]
        public int Id { get; set; }

        [Required]
        public string LecturerName { get; set; }

        [Required]
        public double HoursWorked { get; set; }

        [Required]
        public double HourlyRate { get; set; }

        [Required]
        public double FinalPayment { get; set; }

        public string Status { get; set; } = "Pending";

        public DateTime SubmissionDate { get; set; } = DateTime.Now;
    }
}

namespace YourNamespace.Models
{
    public class Claims
    {
        public int Id { get; set; }  // Primary key
        public string UserId { get; set; }  // User identifier
        public decimal TotalClaim { get; set; }  // Total claim amount
        public string Status { get; set; }  // Claim status (Pending, Approved, Rejected)
    }
}