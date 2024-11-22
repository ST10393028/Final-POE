<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Claims.aspx.cs" Inherits="YourNamespace.Claims" %>
<!DOCTYPE html>
<html>
<head>
    <title>Claims Management</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 20px;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table th, table td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }

        table th {
            background-color: #007bff;
            color: #fff;
        }

        table tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        table tr:hover {
            background-color: #f1f1f1;
        }

        button {
            padding: 5px 10px;
            margin: 2px;
            border: none;
            border-radius: 4px;
            color: #fff;
            cursor: pointer;
        }

        button.approve {
            background-color: #28a745;
        }

        button.reject {
            background-color: #dc3545;
        }

        button:hover {
            opacity: 0.9;
        }

        #loading {
            text-align: center;
            margin: 20px;
            display: none;
        }
    </style>
</head>
<body>
    <h1>Pending Claims</h1>
    <div id="loading">Loading claims...</div>
    <table id="claimsTable" border="1">
        <thead>
            <tr>
                <th>Claim ID</th>
                <th>User</th>
                <th>Total Claim</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody></tbody>
    </table>

    <script>
        $(document).ready(function () {
            // Show loading indicator
            $("#loading").show();

            // Fetch Pending Claims
            $.get("/api/claims/getpendingclaims", function (data) {
                $("#loading").hide();
                if (data && data.length > 0) {
                    data.forEach(function (claim) {
                        // Display all claim details in the table
                        $("#claimsTable tbody").append(
                            `<tr>
                                <td>${claim.Id}</td>
                                <td>${claim.UserId}</td>
                                <td>${claim.TotalClaim ? claim.TotalClaim.toFixed(2) : 'N/A'}</td> <!-- Total Claim formatted -->
                                <td>${claim.Status || 'N/A'}</td> <!-- Status displayed -->
                                <td>
                                    <button class="approve" onclick="approveClaim(${claim.Id})">Approve</button>
                                    <button class="reject" onclick="rejectClaim(${claim.Id})">Reject</button>
                                </td>
                            </tr>`
                        );
                    });
                } else {
                    // No claims available
                    $("#claimsTable tbody").append('<tr><td colspan="5" style="text-align: center;">No claims found.</td></tr>');
                }
            }).fail(function () {
                $("#loading").text("Failed to load claims. Please try again.");
            });

            // Approve Claim
            window.approveClaim = function (id) {
                $.ajax({
                    url: `/api/claims/approveclaim/${id}`,
                    type: 'PUT',
                    success: function () {
                        alert("Claim approved successfully.");
                        location.reload();
                    },
                    error: function () {
                        alert("Failed to approve claim. Please try again.");
                    }
                });
            };

            // Reject Claim
            window.rejectClaim = function (id) {
                $.ajax({
                    url: `/api/claims/rejectclaim/${id}`,
                    type: 'PUT',
                    success: function () {
                        alert("Claim rejected successfully.");
                        location.reload();
                    },
                    error: function () {
                        alert("Failed to reject claim. Please try again.");
                    }
                });
            };
        });
    </script>
</body>
</html>