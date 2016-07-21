<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trackTransfer.aspx.cs" Inherits="AmiSTLTrans.trackTransfer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Track a Transfer</title>

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
            <div class="col-md-6">
                <div class="page-header"><h1>Track a Transfer</h1></div>
                
                <form id="form1" runat="server">
    
                    <p>Find the status of a tranfer by entering the reference number <br />
                        and the last name of the sender</p>
                     
                    <asp:TextBox ID="txtTrackTransfer" class="form-control" runat="server" Text="Enter the Reference #"></asp:TextBox>
                     
                    <asp:TextBox ID="txtTrackLastName" class="form-control" runat="server" Text="Enter Sender Last Name"></asp:TextBox>
                       
                    <p class="btn_continue"><asp:Button ID="btnTrackTranfer" class="btn btn-lg btn-primary" runat="server" Text="Track Transfer" OnClick="btnTrackTranfer_Click" /></p>
                           
                    <asp:Panel ID="pnTrackTransfer" runat="server">
                        
                        <p>Tracking Number:</p>
                        <p><asp:Label ID="lblTrackingNumber" runat="server"></asp:Label></p>
                          
                        <p>Receiver:</p>
                        <p><asp:Label ID="lblReceiver" runat="server"></asp:Label></p>
                           
                        <p>Date Sent:</p>
                        <p><asp:Label ID="lblDateSent" runat="server"></asp:Label></p>
                            
                        <p>Amount Sent:</p>
                        <p><asp:Label ID="lblAmountSent" runat="server"></asp:Label></p>
                            
                        <p>Is Already Picked Up?</p>
                        <p><asp:Label ID="lblisReceived" runat="server"></asp:Label></p>
                           
                        <p>Date Received:</p>
                        <p><asp:Label ID="lblReceiveDate" runat="server"></asp:Label></p>
                                                          
                        <p class="btn_continue"><asp:Button ID="btnPickUpNow" class="btn btn-lg btn-primary" runat="server" Text="Pick Up Now" /></p>
                           
                   </asp:Panel>
                    <p><asp:Label ID="lblMessage" runat="server"></asp:Label></p>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
