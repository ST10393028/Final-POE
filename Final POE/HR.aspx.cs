using System;
using System.Data;
using System.Web.UI.WebControls;

namespace YourNamespace
{
    public partial class HR : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        private void BindGrid()
        {
            // Example data for demonstration
            DataTable dt = new DataTable();
            dt.Columns.Add("LecturerName");
            dt.Columns.Add("TotalAmount");

            dt.Rows.Add("Aluncedo Mavovana", "$500");
            dt.Rows.Add("Msizi Zondo", "$750");
            dt.Rows.Add("Anenhle Mtshali", "$2000");
            dt.Rows.Add("Asibonge Bhengu", "$1300");
            dt.Rows.Add("Njabulo Sthomo", "$1800");

            GridViewApprovedClaims.DataSource = dt;
            GridViewApprovedClaims.DataBind();
        }

        protected void GridViewApprovedClaims_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            if (e.CommandName == "GenerateInvoice")
            {
                // Get the row index
                int rowIndex = Convert.ToInt32(e.CommandArgument);

                // Access the data
                GridViewRow row = GridViewApprovedClaims.Rows[rowIndex];
                string lecturerName = row.Cells[0].Text;
                string totalAmount = row.Cells[1].Text;

                // Implement your invoice generation logic here
                // Example: Response.Write($"Generating invoice for {lecturerName}, Amount: {totalAmount}");
            }
        }
    }
}