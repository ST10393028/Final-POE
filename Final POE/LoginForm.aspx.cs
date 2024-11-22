using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final_POE
{
    public partial class LoginForm : System.Web.UI.Page
    {
        // You could replace this with a database or an actual user service for validation
        private static readonly string CorrectUsername = "admin";
        private static readonly string CorrectPassword = "@Mtshali1805*";

        protected void Page_Load(object sender, EventArgs e)
        {
            // Clear any previous error messages on page load
            Label4.Text = string.Empty;
        }

        // Handle Login Button Click
        protected void Button1_Click(object sender, EventArgs e)
        {
            // Get values from textboxes
            string username = TextBox1.Text.Trim();
            string password = TextBox2.Text.Trim();

            // Validate input (basic check for empty values)
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                Label4.Text = "Please enter both username and password.";
                return;
            }

            // Simulate checking against stored credentials (this should be replaced with actual authentication)
            if (username == CorrectUsername && password == CorrectPassword)
            {
                // Successful login: Redirect to another page or set session variable
                Session["Username"] = username;  // Optionally, store username in session
                Response.Redirect("HomePage.aspx");  // Redirect to a protected page (replace with actual page)
            }
            else
            {
                // Invalid credentials
                Label4.Text = "Invalid username or password. Please try again.";
                Label4.ForeColor = System.Drawing.Color.Red;  // Set the error message color to red
            }
        }

        // Handle Cancel Button Click
        protected void Button2_Click(object sender, EventArgs e)
        {
            // Clear input fields when cancel button is clicked
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            Label4.Text = string.Empty;
        }
    }
}