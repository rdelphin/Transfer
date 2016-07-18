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
          <a class="navbar-brand" href="#">Project name</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li role="separator" class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="../navbar/">Default</a></li>
            <li><a href="../navbar-static-top/">Static top</a></li>
            <li class="active"><a href="./">Fixed top <span class="sr-only">(current)</span></a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    <!-- end menu -->

    <div class="container">
        <div class="page-header"><h1>Send Money</h1></div>
        <div class="row start_transfer">
            <form id="form2" runat="server">
                <div class="col-md-4">
                    <h4>Sending Money to:</h4>
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
                <div class="col-md-4 details">
                    <h4>Transfer Details</h4>
                    <dl>
                        <dd>Transfer Amount</dd>
                        <dt><asp:Label ID="lblTransAmount" Text="0.00" runat="server"></asp:Label></dt>

                        <dd>Receiver's Currency</dd>
                        <dt><asp:Label ID="lblReceiveAmount" Text="0.00" runat="server"></asp:Label></dt>
                        
                        <dd>Transfer Fee</dd>
                        <dt><asp:Label ID="lblTransFee" Text="0.00" runat="server"></asp:Label></dt>
                        
                        <dd>Transaction Total</dd>
                        <dt><asp:Label ID="lblTotal" Text="0.00" runat="server"></asp:Label></dt>
                    </dl>
                </div>                
            </form>
        </div> <!-- /.row -->
        
    </div> <!-- /.container -->
                
</body>
</html>

