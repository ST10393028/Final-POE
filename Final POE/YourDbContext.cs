using System.Data.Entity;
using YourNamespace.Models;

namespace YourNamespace.Data
{
    public class YourDbContext : DbContext
    {
        public YourDbContext() : base("YourConnectionString")
        {
        }

        public DbSet<Claim> Claims { get; set; }
    }
}