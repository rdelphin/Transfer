<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="startTransfer.aspx.cs" Inherits="AmiSTLTrans.sendMoney" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Send a Transfer</title>

    <!-- CSS stylesheets -->
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <link rel="stylesheet" href="Content/main.css" />
    <style type="text/css">
        .auto-style1 {
            width: 128px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Send Money</h1>
        <div class="row">
            <form id="form2" runat="server">
                <div class="col-md-4">
                    <p>City</p>
                    <asp:DropDownList ID="DropDownList" class="form-control" runat="server">
                        <asp:ListItem>Saint-Marc</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-4">
                    <p>Amount</p>
                    <div class="input-group">
                        <div class="input-group-addon">$</div>
                        <asp:TextBox ID="txtAmount" class="form-control" runat="server" OnTextChanged="txtAmount_TextChanged" AutoPostBack="true"></asp:TextBox>
                        <div class="input-group-addon">.00</div>
                    </div>
                </div>
                <div class="col-md-4">
                    <p>Transfer Details</p>
                    <table style="border:none">
                        <tr>
                            <td>Transfer Amount:</td>
                        </tr>
                        <tr> <td><asp:Label ID="lblTransAmount" Text="0.00" runat="server"></asp:Label></td></tr>

                        <tr><td>Receiver's Currency:</td> </tr>
                        <tr><td><asp:Label ID="lblReceiveAmount" Text="0.00" runat="server"></asp:Label></td></tr>
                        <tr><td>Transfer Fee:</td></tr>
                        <tr><td><asp:Label ID="lblTransFee" Text="0.00" runat="server"></asp:Label></td></tr>
                        <tr><td>Transaction Total:</td></tr>
                        <tr><td><asp:Label ID="lblTotal" Text="0.00" runat="server"></asp:Label></td></tr>
                    </table>
                </div>
                <div class="col-md-3">    
                    <asp:Button ID="btnContinue" class="btn btn-lg btn-primary btn-block" Text="Continue" runat="server" OnClick="btnContinue_Click" />
                </div>
            </form>
        </div> <!-- /.row -->
        
    </div> <!-- /.container -->
                
</body>
</html>

