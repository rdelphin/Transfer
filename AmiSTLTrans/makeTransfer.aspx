<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="makeTransfer.aspx.cs" Inherits="AmiSTLTrans.makeTransfer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Finish Making Transfer</title>

    <!-- CSS stylesheets -->
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <link rel="stylesheet" href="Content/main.css" />
</head>
<body>

    <!-- start menu -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">AmiSTLTrans</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Send Money</a></li>
                    <li><a href="\trackTransfer.aspx">Track Transfers</a></li>
                    <li><a href="#">Fees and Estimate</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#">Welcome!</a></li>
                    <li><a href="logout.aspx">Sign out</a></li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </nav>
    <!-- end menu -->

    <div class="container">

        <div class="row start_transfer">
            <form id="form1" runat="server">

                <div class="col-md-5">
                    <div class="page-header"><h1>Transfer Confirmation</h1></div>
                    <table class="table table-hover">
                        <tr>
                            <td colspan="2">
                                <strong>You are sending money to:</strong>
                                <span class="text-uppercase"><asp:Label ID="lblReceiverName" runat="server" Text=""></asp:Label></span>
                            </td>
                        </tr>
                         <tr>
                            <td colspan="2">$<asp:Label ID="lblReceiveAmount" runat="server" Text=""></asp:Label></td>
                       </tr>
                        <tr>
                            <td colspan="2">
                                <asp:TextBox ID="txtSenderNote" class="form-control" runat="server" Text="Add a note (Optional)"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2"><h2>Transfer Details</h2></td>
                        </tr>
                        <tr>
                            <td>Transfer Amount</td>
                            <td>$<asp:Label ID="lblTransAmount" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Fee</td>
                            <td>$<asp:Label ID="lblTransFee" runat="server" Text=""></asp:Label></td>
                        </tr>

                        <tr>
                            <td><b>You will Pay</b></td>
                            <td class="total">$<asp:Label ID="lblTotal" runat="server" Text=""></asp:Label></td>
                        </tr>               
                    </table>
                    <p class="btn_continue"><asp:Button ID="btnMakeTransfer" class="btn btn-lg btn-primary" Text="Make Transfer" runat="server" OnClick="btnMakeTransfer_Click" /></p>
                </div>

            </form>
        </div>
    </div>
</body>
</html>
