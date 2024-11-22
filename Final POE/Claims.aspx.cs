using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using System.Web.UI;
using YourNamespace.Data;  // Replace with your actual namespace for ApplicationDbContext
using YourNamespace.Models;// Replace with your actual namespace for Claim model


namespace YourNamespace.Controllers
{
    [Authorize]
    public class ClaimsController : ApiController
    {
        private readonly ApplicationDbContext _context;

        public ClaimsController()
        {
            _context = new ApplicationDbContext();
        }

        [HttpGet]
        [Route("api/claims/getpendingclaims")]
        public IHttpActionResult GetPendingClaims()
        {
            var claims = _context.Claims.Where(c => c.Status == "Pending").ToList();
            return Ok(claims);
        }

        [HttpPut]
        [Route("api/claims/approveclaim/{id}")]
        public IHttpActionResult ApproveClaim(int id)
        {
            var claim = _context.Claims.Find(id);
            if (claim == null) return NotFound();

            claim.Status = "Approved";
            _context.SaveChanges();
            return Ok();
        }

        [HttpPut]
        [Route("api/claims/rejectclaim/{id}")]
        public IHttpActionResult RejectClaim(int id)
        {
            var claim = _context.Claims.Find(id);
            if (claim == null) return NotFound();

            claim.Status = "Rejected";
            _context.SaveChanges();
            return Ok();
        }
    }
}


namespace YourNamespace
{
    public partial class Claims : Page // Ensure that this class inherits from Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // This method can contain server-side logic if needed
        }
    }
}