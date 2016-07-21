<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addReceiver.aspx.cs" Inherits="AmiSTLTrans.addReceiver" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Receiver</title>

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
                <li><a href="#">Track Transfers</a></li>
                <li><a href="#">Fees and Estimate</a></li>            
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">Sign in</a></li>            
                <li><a href="logout.aspx">Sign out</a></li>            
            </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    <!-- end menu -->

    <form id="form1" runat="server">
       <div style="font-family:Arial; float:left; width:530px">
        <table style="border: 1px solid black">
            <tr>
                <td colspan="2">
                   <b>Add a Receiver</b>
                </td>
            </tr>
           <tr>
                <td>First Name</td>
                <td>
                    :<asp:TextBox ID="txtReceiverFName" runat="server"></asp:TextBox>

                </td>
          </tr>
            <tr>
                <td>Last Name</td>
                <td>
                    :<asp:TextBox ID="txtReceiverLName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Sender Phone
                </td>
                <td>
                    :<asp:TextBox ID="txtReceiverPhone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnReset" Text="Reset" runat="server" />
                </td>
                <td>
                    <asp:Button ID="btnAdd" Text="Add" runat="server" OnClick="btnAdd_Click" />
                </td>
            </tr>
        </table>
     <asp:Label ID="lblMessage" runat="server"></asp:Label>
    </div>
          <div>
            <asp:Panel runat="server">
                <table style="border:none">
                    <tr><td><b>Transfer Summary</b></td></tr>

                    <tr><td><b>Receiver :</b></td></tr>
                    <tr><td><asp:Label ID="lblReceiverName" text="" runat="server"></asp:Label></td></tr>
                    <tr><td>Telephone:</td></tr>
                    <tr><td><asp:Label ID="lblReceiverPhone" Text="" runat="server"></asp:Label></td></tr>

                    <tr><td><b>Sender :</b></td></tr>
                    <tr><td><asp:Label ID="lblSenderName" text="" runat="server"></asp:Label></td></tr>
                    <tr><td>Telephone:</td></tr>
                    <tr><td><asp:Label ID="lblPhone" Text="" runat="server"></asp:Label></td></tr>
                    <tr>
                        <td><b>Transfer Amount:</b></td>
                    </tr>
                    <tr> <td><asp:Label ID="lblTransAmount" Text="0.00" runat="server"></asp:Label></td></tr>

                    <tr><td>Receiver's Currency:</td> </tr>
                    <tr><td><asp:Label ID="lblReceiveAmount" Text="0.00" runat="server"></asp:Label></td></tr>
                    <tr><td>Transfer Fee:</td></tr>
                    <tr><td><asp:Label ID="lblTransFee" Text="0.00" runat="server"></asp:Label></td></tr>
                    <tr><td>Transaction Total:</td></tr>
                    <tr><td><asp:Label ID="lblTotal" Text="0.00" runat="server"></asp:Label></td></tr>
                </table>

            </asp:Panel>
            
        </div>
    </form>
</body>
</html>
