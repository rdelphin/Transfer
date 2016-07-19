<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addSender.aspx.cs" Inherits="AmiSTLTrans.addSender" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add a Sender</title>

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
                <li><a href="#">Welcome!</a></li>            
                <li><a href="logout.aspx">Sign out</a></li>                 
            </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    <!-- end menu -->

    <div class="container">
        
        <div class="row start_transfer">
            <form id="form1" runat="server">
                <div class="col-md-5">
                    <div class="page-header"><h1>Add a Sender</h1></div>                    
                    <asp:TextBox ID="txtSenderFName" class="form-control" placeholder="First Name" runat="server"></asp:TextBox>

                    <asp:TextBox ID="txtSenderLName" class="form-control" placeholder="Last Name" runat="server"></asp:TextBox>

                    <asp:TextBox ID="txtSenderPhone" class="form-control" placeholder="Sender Phone" runat="server"></asp:TextBox>

                    <p class="btn_continue"><asp:Button ID="btnReset" class="btn btn-lg btn-danger" Text="Reset" runat="server" />
                    <asp:Button ID="btnAdd" class="btn btn-lg btn-primary" Text="Add" runat="server" OnClick="btnAdd_Click" /></p>
                    
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </div> <!-- /.col-md-5 -->
  
                <div class="col-md-7">
                    <div class="page-header"><h1>Transfer Summary</h1></div>
                    <div class="details">  
                        <asp:Panel runat="server">                      
                            <dl>
                                <dd>Sender</dd>
                                <dt><asp:Label ID="lblSenderName" text="" runat="server"></asp:Label></dt>

                                <dd>Telephone</dd>
                                <dt><asp:Label ID="lblPhone" Text="" runat="server"></asp:Label></dt>
                                
                                <dd>Transfer Amount</dd>                                
                                <dt><asp:Label ID="lblTransAmount" Text="0.00" runat="server"></asp:Label></dt>

                                <dd>Receiver's Currency</dd>
                                <dt><asp:Label ID="lblReceiveAmount" Text="0.00" runat="server"></asp:Label></dt>

                                <dd>Transfer Fee</dd>
                                <dt><asp:Label ID="lblTransFee" Text="0.00" runat="server"></asp:Label></dt>

                                <dd>Transaction Total</dd>
                                <dt class="total><asp:Label ID="lblTotal" Text="0.00" runat="server"></asp:Label></dt>
                            </dl>
                        </asp:Panel>  
                    </div>          
                </div>
            </form>
        </div> <!-- /.row -->
    </div> <!-- /.container -->
</body>
</html>
