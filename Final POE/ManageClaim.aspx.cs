using System;
using System.Web.UI.WebControls;

namespace Final_POE
{
    public partial class ManageClaim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        private void BindGridView()
        {
            // Replace with your data access logic
            gvClaims.DataSource = GetClaimData();
            gvClaims.DataBind();
        }

        private object GetClaimData()
        {
            // Sample data; replace with actual database query
            return new[]
            {
                new { ClaimId = 1, LecturerName = "Msizi Zondo", LectureName = "Math 101", HoursWorked = 10, HourlyRate = 50, ClaimDetails = "Lecture Delivery", DocumentPath = "document1.pdf" },
                new { ClaimId = 2, LecturerName = "Aluncedo Mavovana", LectureName = "Science 201", HoursWorked = 8, HourlyRate = 60, ClaimDetails = "Lab Supervision", DocumentPath = "document2.pdf" },
                new { ClaimId = 3, LecturerName = "Njabulo Sthomo", LectureName = "Human Computer Interaction6222", HoursWorked = 25, HourlyRate = 50, ClaimDetails = "Overtime", DocumentPath = "document3.pdf" },
                new { ClaimId = 4, LecturerName = "Anenhle Mtshali", LectureName = "Database (Introduction)6212", HoursWorked = 5, HourlyRate = 15, ClaimDetails = "Lab Supervision", DocumentPath = "document4.pdf" },
                new { ClaimId = 5, LecturerName = "Asibonge Bhengu", LectureName = "Web Development 5012", HoursWorked = 10, HourlyRate = 25, ClaimDetails = "Lab Supervision", DocumentPath = "document5.pdf" }
            };
        }

        protected void gvClaims_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Approve" || e.CommandName == "Reject")
            {
                int claimId = Convert.ToInt32(e.CommandArgument);

                if (e.CommandName == "Approve")
                {
                    ApproveClaim(claimId);
                }
                else if (e.CommandName == "Reject")
                {
                    RejectClaim(claimId);
                }

                // Refresh data
                BindGridView();
            }
        }

        private void ApproveClaim(int claimId)
        {
            // Implement approve logic
            System.Diagnostics.Debug.WriteLine($"Claim {claimId} approved.");
        }

        private void RejectClaim(int claimId)
        {
            // Implement reject logic
            System.Diagnostics.Debug.WriteLine($"Claim {claimId} rejected.");
        }
    }
}