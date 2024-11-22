<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageClaim.aspx.cs" Inherits="Final_POE.ManageClaim" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage Claims</title>
    <link href="styles.css" rel="stylesheet" type="text/css" />
    <style>
        .table {
            width: 100%;
            margin-top: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .approve-button {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 5px 10px;
            margin-right: 5px;
        }

        .reject-button {
            background-color: #dc3545;
            color: white;
            border: none;
            padding: 5px 10px;
        }

        .approve-button:hover {
            background-color: #218838;
        }

        .reject-button:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Manage Pending Claims</h2>
            <asp:GridView ID="gvClaims" runat="server" CssClass="table" AutoGenerateColumns="False" OnRowCommand="gvClaims_RowCommand">
                <Columns>
                    <asp:BoundField DataField="ClaimId" HeaderText="Claim ID" />
                    <asp:BoundField DataField="LecturerName" HeaderText="Lecturer Name" />
                    <asp:BoundField DataField="LectureName" HeaderText="Lecture Name" />
                    <asp:BoundField DataField="HoursWorked" HeaderText="Hours Worked" />
                    <asp:BoundField DataField="HourlyRate" HeaderText="Hourly Rate" />
                    <asp:BoundField DataField="ClaimDetails" HeaderText="Claim Details" />
                    <asp:HyperLinkField DataNavigateUrlFields="DocumentPath" HeaderText="Uploaded Document" Text="View Document" DataNavigateUrlFormatString="~/Uploads/{0}" Target="_blank" />
                    <asp:TemplateField HeaderText="Actions">
                        <ItemTemplate>
                            <asp:Button ID="btnApprove" runat="server" Text="Approve" CssClass="approve-button" CommandName="Approve" CommandArgument='<%# Eval("ClaimId") %>' />
                            <asp:Button ID="btnReject" runat="server" Text="Reject" CssClass="reject-button" CommandName="Reject" CommandArgument='<%# Eval("ClaimId") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>