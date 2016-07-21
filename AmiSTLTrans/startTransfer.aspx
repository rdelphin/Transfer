<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="startTransfer.aspx.cs" Inherits="AmiSTLTrans.sendMoney" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Send a Transfer</title>

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
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    <!-- end menu -->

    <div class="container">
        
        <div class="row start_transfer">
            

            <form id="form2" runat="server">
                <div class="col-md-5">
                    <div class="page-header"><h1>Send Money</h1></div>
                    <h4>Sending money to</h4>
                    <asp:DropDownList ID="DropDownList" class="form-control" runat="server">
                        <asp:ListItem>Saint-Marc</asp:ListItem>
                    </asp:DropDownList>

                    <hr />
                    <!-- amount -->
                    <h4>Send amount</h4>
                    <div class="input-group">
                        <div class="input-group-addon">$</div>
                        <asp:TextBox ID="txtAmount" class="form-control" runat="server" OnTextChanged="txtAmount_TextChanged" AutoPostBack="true"></asp:TextBox>
                        <div class="input-group-addon">.00</div>
                    </div>

                    <!-- continue button -->
                    <p class="btn_continue"><asp:Button ID="btnContinue" class="btn btn-lg btn-primary" Text="Continue" runat="server" OnClick="btnContinue_Click" /></p>

                </div>
                
                <div class="col-md-7">
                    <div class="page-header"><h1>Transfer Summary</h1></div>
                    <div class="details">                     
                        <dl>
                            <dd>Transfer Amount</dd>
                            <dt><asp:Label ID="lblTransAmount" Text="0.00" runat="server"></asp:Label> USD</dt>
                            
                            <dd>Receiver's Currency</dd>
                            <dt><asp:Label ID="lblReceiveAmount" Text="0.00" runat="server"></asp:Label> USD</dt>
                          
                            <dd>Transfer Fee</dd>
                            <dt><asp:Label ID="lblTransFee" Text="0.00" runat="server"></asp:Label> USD</dt>
                          
                            <dd>Transaction Total</dd>
                            <dt class="total"><asp:Label ID="lblTotal" Text="0.00" runat="server"></asp:Label> USD</dt>
                        </dl>
                    </div> <!-- /.details -->
                </div> <!-- /.col-md-7 -->                
            </form>
        </div> <!-- /.row -->
        
    </div> <!-- /.container -->
                
</body>
</html>

