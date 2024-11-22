using System.Data.Entity;
using YourNamespace.Models;  // Replace with your actual namespace for Claim model

namespace YourNamespace.Data
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext() : base("DefaultConnection") // Ensure "DefaultConnection" is defined in your config
        {
        }

        public DbSet<Claim> Claims { get; set; }  // Define a DbSet for the Claim model
    }
}