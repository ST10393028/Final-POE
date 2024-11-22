<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadDocument.aspx.cs" Inherits="Final_POE.UploadDocument" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Submit Claim</title>
    <link href="styles.css" rel="stylesheet" type="text/css" />
    <style>
        /* General form styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
        }

        form {
            background-color: #fff;
            padding: 20px;
            margin: auto;
            width: 50%;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #333;
        }

        .form-group {
            margin-bottom: 15px;
        }

         label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        /* File Upload Styles */
        input[type="file"] {
            padding: 10px;
            background-color: #f1f1f1;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 100%;
            font-size: 14px;
        }

        /* Button Styles */
        .upload-button {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        .upload-button:hover {
            background-color: #218838;
        }

        /* Label styles for displaying uploaded file info or error messages */
        #lblFileName {
            margin-top: 10px;
            display: block;
            font-size: 14px;
        }

        .success {
            color: green;
        }

        .error {
            color: red;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Submit a New Claim</h2>
            
            <!-- Other form fields for claim submission -->

            <div class="form-group">
                <label for="fileUpload">Upload Supporting Document:</label>
                <asp:FileUpload ID="fileUpload" runat="server" />
            </div>

            <div class="form-group">
                <!-- Upload button -->
                <asp:Button ID="btnUpload" runat="server" Text="Upload" CssClass="upload-button" />
            </div>

            <!-- Label to display file name or error messages -->
            <asp:Label ID="lblFileName" runat="server" Text="" CssClass="success"></asp:Label>
           
        </div>
    </form>
</body>
</html>
