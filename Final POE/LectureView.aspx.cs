using System;
using YourNamespace.Data;
using YourNamespace.Models;
using System.Web.UI;

namespace YourNamespace
{
    public partial class LecturerView : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Text = string.Empty;
            lblSuccess.Text = string.Empty;
        }

        protected void SubmitClaim_Click(object sender, EventArgs e)
        {
            try
            {
                // Get input values
                double hoursWorked = Convert.ToDouble(txtHoursWorked.Text);
                double hourlyRate = Convert.ToDouble(txtHourlyRate.Text);
                double finalPayment = Convert.ToDouble(txtFinalPayment.Text);

                using (var db = new YourDbContext())
                {
                    // Create a new claim
                    var claim = new Claim
                    {
                        LecturerName = User.Identity.Name ?? "Anonymous", // Use the logged-in user's name
                        HoursWorked = hoursWorked,
                        HourlyRate = hourlyRate,
                        FinalPayment = finalPayment
                    };

                    // Save claim to the database
                    db.Claims.Add(claim);
                    db.SaveChanges();
                }

                lblSuccess.Text = "Claim submitted successfully!";
                txtHoursWorked.Text = string.Empty;
                txtHourlyRate.Text = string.Empty;
                txtFinalPayment.Text = string.Empty;
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
            }
        }
    }
}