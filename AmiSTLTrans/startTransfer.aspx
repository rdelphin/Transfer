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
        <div class="page-header"><h1>Send Money</h1></div>
        <div class="row">
            <form id="form2" runat="server">
                <div class="col-md-4">
                    <h4>City</h4>
                    <asp:DropDownList ID="DropDownList" class="form-control" runat="server">
                        <asp:ListItem>Saint-Marc</asp:ListItem>
                    </asp:DropDownList>

                    <!-- continue button -->
                    <p class="btn_continue"><asp:Button ID="btnContinue" class="btn btn-lg btn-primary btn-block" Text="Continue" runat="server" OnClick="btnContinue_Click" /></p>

                </div>
                <div class="col-md-4">
                    <h4>Amount</h4>
                    <div class="input-group">
                        <div class="input-group-addon">$</div>
                        <asp:TextBox ID="txtAmount" class="form-control" runat="server" OnTextChanged="txtAmount_TextChanged" AutoPostBack="true"></asp:TextBox>
                        <div class="input-group-addon">.00</div>
                    </div>
                </div>
                <div class="col-md-4">
                    <h4>Transfer Details</h4>
                    <dl>
                        <dt>Transfer Amount:</dt>
                        <dd><asp:Label ID="lblTransAmount" Text="0.00" runat="server"></asp:Label></dd>

                        <dt>Receiver's Currency:</dt>
                        <dd><asp:Label ID="lblReceiveAmount" Text="0.00" runat="server"></asp:Label></dd>
                        
                        <dt>Transfer Fee:</dt>
                        <dd><asp:Label ID="lblTransFee" Text="0.00" runat="server"></asp:Label></dd>
                        
                        <dt>Transaction Total:</dt>
                        <dd><asp:Label ID="lblTotal" Text="0.00" runat="server"></asp:Label></dd>
                    </dl>
                </div>                
            </form>
        </div> <!-- /.row -->
        
    </div> <!-- /.container -->
                
</body>
</html>

