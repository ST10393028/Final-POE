<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LecturerView.aspx.cs" Inherits="YourNamespace.LecturerView" %>
<!DOCTYPE html>
<html>
<head>
    <title>Lecturer - Submit Claim</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        .container {
            margin: 20px auto;
            width: 50%;
            background: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        label, input {
            display: block;
            margin-top: 10px;
        }
        input {
            width: 100%;
            padding: 10px;
        }
        .btn {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            cursor: pointer;
            margin-top: 15px;
        }
        .btn:hover {
            background-color: #45a049;
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function () {
            // Auto-calculate Final Payment based on Hours Worked and Hourly Rate
            $("#btnCalculate").click(function () {
                var hoursWorked = parseFloat($("#txtHoursWorked").val());
                var hourlyRate = parseFloat($("#txtHourlyRate").val());
                if (!isNaN(hoursWorked) && !isNaN(hourlyRate)) {
                    var finalPayment = hoursWorked * hourlyRate;
                    $("#txtFinalPayment").val(finalPayment.toFixed(2)); // Display in Final Payment field
                } else {
                    alert("Please enter valid numbers for Hours Worked and Hourly Rate.");
                }
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Submit Claim</h2>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
            <asp:Label ID="lblSuccess" runat="server" ForeColor="Green"></asp:Label>
            
            <asp:TextBox ID="txtHoursWorked" runat="server" Placeholder="Hours Worked"></asp:TextBox>
            <asp:TextBox ID="txtHourlyRate" runat="server" Placeholder="Hourly Rate"></asp:TextBox>
            <asp:TextBox ID="txtFinalPayment" runat="server" Placeholder="Final Payment" ReadOnly="True"></asp:TextBox>

            <button type="button" id="btnCalculate" class="btn">Calculate Payment</button>
            
            <asp:Button ID="btnSubmit" runat="server" Text="Submit Claim" CssClass="btn" OnClick="SubmitClaim_Click" />
        </div>
    </form>
</body>
</html>