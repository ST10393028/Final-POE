<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HR.aspx.cs" Inherits="YourNamespace.HR" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HR - Approved Claims</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        
        h1 {
            background-color: #4CAF50;
            color: white;
            padding: 15px;
            text-align: center;
            margin: 0;
        }

        .container {
            width: 80%;
            margin: 20px auto;
            background-color: white;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .table-container {
            margin-top: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        .generate-btn {
            background-color: #4CAF50;
            color: white;
            padding: 6px 12px;
            border: none;
            cursor: pointer;
            text-align: center;
        }

        .generate-btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

    <h1>Approved Claims</h1>

    <form id="form1" runat="server">
        <div class="container">
            <div class="table-container">
                <asp:GridView ID="GridViewApprovedClaims" runat="server" AutoGenerateColumns="False" CssClass="table-container">
                    <Columns>
                        <asp:BoundField DataField="LecturerName" HeaderText="Lecturer Name" SortExpression="LecturerName" />
                        <asp:BoundField DataField="TotalAmount" HeaderText="Total Amount" SortExpression="TotalAmount" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btnGenerateInvoice" runat="server" CommandName="GenerateInvoice" 
                                            Text="Generate Invoice" CssClass="generate-btn" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>

</body>
</html>