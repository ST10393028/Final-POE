<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SubmitClaims.aspx.cs" Inherits="Final_POE.SubmitClaims" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Submit Claim</title>
    <link href="styles.css" rel="stylesheet" type="text/css" />
    <style>
        .claim-form {
    width: 50%;
    margin: 0 auto;
    padding: 20px;
    background-color: #f9f9f9;
    border: 1px solid #ddd;
    border-radius: 5px;
}

.form-control {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
}

.submit-button {
    width: 100%;
    padding: 12px;
    background-color: #28a745;
    color: white;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
}

.submit-button:hover {
    background-color: #218838;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="claim-form">
            <h2>Submit Claim</h2>

            <asp:Label ID="lblLecturerName" runat="server" Text="Lecturer Name: "></asp:Label>
            <asp:TextBox ID="txtLecturerName" runat="server" CssClass="form-control"></asp:TextBox>
            <br /><br />

            <asp:Label ID="lblHoursWorked" runat="server" Text="Hours Worked: "></asp:Label>
            <asp:TextBox ID="txtHoursWorked" runat="server" CssClass="form-control"></asp:TextBox>
            <br /><br />

            <asp:Label ID="lblHourlyRate" runat="server" Text="Hourly Rate: "></asp:Label>
            <asp:TextBox ID="txtHourlyRate" runat="server" CssClass="form-control"></asp:TextBox>
            <br /><br />

            <asp:Label ID="lblClaimDetails" runat="server" Text="Claim Details: "></asp:Label>
            <asp:TextBox ID="txtClaimDetails" runat="server" TextMode="MultiLine" Rows="5" Columns="40" CssClass="form-control"></asp:TextBox>
            <br /><br />

            <asp:Label ID="lblFileUpload" runat="server" Text="Upload Supporting Documents: "></asp:Label>
            <asp:FileUpload ID="fileUpload" runat="server" CssClass="form-control" />
            <asp:Label ID="lblFileName" runat="server"></asp:Label>
            <br /><br />

            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="submit-button" />
        </div>
    </form>
</body>
</html>