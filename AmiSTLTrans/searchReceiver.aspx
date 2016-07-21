<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="searchReceiver.aspx.cs" Inherits="AmiSTLTrans.searchReceiver" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search Receiver</title>
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

    <div class="container">
        <form id="form1" runat="server">
            <div class="row start_transfer">
                <div class="col-md-5">
                    <div class="page-header"><h1>Search Receiver</h1></div>
                    <asp:TextBox ID="txtPhone" class="form-control" runat="server"></asp:TextBox>
                    <p class="btn_continue"><asp:Button ID="btnSearch" class="btn btn-lg btn-primary" runat="server" Text="Search" OnClick="btnSearch_Click" /></p>

                    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="OnRowDataBound">
                        <EmptyDataTemplate>
                            Sender not found.<a href="addReceiver.aspx">Click here to Add the receiver</a>
                        </EmptyDataTemplate>
                    </asp:GridView>
                    <br />
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>                    
                </div>

                <div class="col-md-7">
                    <div class="page-header"><h1>Transfer Summary</h1></div>
                    <div class="details"> 
                        <asp:Panel runat="server">
                            <table style="border:none">                            
                            <tr><td><b>Receiver :</b></td></tr>
                            <tr><td><asp:Label ID="lblReceiverName" text="" runat="server"></asp:Label></td></tr>
                            <tr><td>Telephone:</td></tr>
                            <tr><td><asp:Label ID="lblReceiverPhone" Text="" runat="server"></asp:Label></td></tr>

                            <tr><td><b>Sender :</b></td></tr>
                            <tr><td><asp:Label ID="lblSenderName" text="" runat="server"></asp:Label></td></tr>
                            <tr><td>Telephone:</td></tr>
                            <tr><td><asp:Label ID="lblPhone" Text="" runat="server"></asp:Label></td></tr>
                    
                            <tr>
                                <td>Transfer Amount:</td>
                            </tr>
                            <tr> <td class="auto-style1"><asp:Label ID="lblTransAmount" Text="0.00" runat="server"></asp:Label></td></tr>

                            <tr><td>Receiver's Currency:</td> </tr>
                            <tr><td><asp:Label ID="lblReceiveAmount" Text="0.00" runat="server"></asp:Label></td></tr>
                            <tr><td>Transfer Fee:</td></tr>
                            <tr><td><asp:Label ID="lblTransFee" Text="0.00" runat="server"></asp:Label></td></tr>
                            <tr><td>Transaction Total:</td></tr>
                            <tr><td><asp:Label ID="lblTotal" Text="0.00" runat="server"></asp:Label></td></tr>
                            </table>
                        </asp:Panel>
                
                    </div> <!-- /.details -->
                </div> <!-- /.col-md-7 -->
            </div> <!-- /.row -->  
                        
        </form>        
</div> <!-- /.container -->
              
       
   
</body>
</html>
