<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="Final_POE.LoginForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>
    <style>
        /* General Body Styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f1f1f1;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        /* Main Form Container */
        form {
            background-color: #ffffff;
            border-radius: 12px;
            padding: 40px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            width: 350px;
            text-align: center;
            box-sizing: border-box;
        }

        /* Heading Styles */
        h1 {
            font-size: 24px;
            margin-bottom: 30px;
            color: #333;
            font-weight: 600;
        }

        /* Input Container */
        .input-group {
            margin-bottom: 20px;
            text-align: left;
        }

        .input-group label {
            display: block;
            font-size: 14px;
            color: #555;
            margin-bottom: 8px;
        }

        .input-group input {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-sizing: border-box;
            transition: border-color 0.3s;
        }

        /* Input Focus Effect */
        .input-group input:focus {
            border-color: #007bff;
            outline: none;
        }

        /* Button Styles */
        .btn {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            color: #fff;
            background-color: #007bff;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin-top: 10px;
        }

        /* Hover Effect for Buttons */
        .btn:hover {
            background-color: #0056b3;
        }

        /* Cancel Button Styling */
        .btn.cancel-btn {
            background-color: #6c757d;
        }

        .btn.cancel-btn:hover {
            background-color: #5a6268;
        }

        /* Error Message Label */
        .error-message {
            color: #e74c3c;
            font-weight: bold;
            margin-top: 15px;
        }

        /* Responsive Design: Make form responsive on small screens */
        @media screen and (max-width: 480px) {
            form {
                width: 90%;
                padding: 25px;
            }
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Login to Your Account</h1>

        <div class="input-group">
            <asp:Label ID="Label2" runat="server" Text="Username" AssociatedControlID="TextBox1"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="input" placeholder="Enter your username" />
        </div>

        <div class="input-group">
            <asp:Label ID="Label3" runat="server" Text="Password" AssociatedControlID="TextBox2"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="input" placeholder="Enter your password" />
        </div>

        <div>
            <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn" />
            <asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="btn cancel-btn" />
        </div>

        <div>
            <asp:Label ID="Label4" runat="server" CssClass="error-message" Font-Bold="True"></asp:Label>
        </div>
    </form>
</body>
</html>
