<%@ Page Language="C#" Title="Track Transfer" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="trackTransfer.aspx.cs" Inherits="AmiSTLTrans.trackTransfer" %>

<asp:content id="content" contentplaceholderid="content" runat="server">
    <div class="container">

        <div class="row start_transfer">
            <div class="col-md-6">
                <div class="page-header"><h1>Track a Transfer</h1></div>             
    
                    <p>Find the status of a tranfer by entering the reference number <br />
                        and the last name of the sender</p>
                     
                    <asp:TextBox ID="txtTrackTransfer" class="form-control" runat="server" placeholder="Enter the Reference #"></asp:TextBox>
                     
                    <asp:TextBox ID="txtTrackLastName" class="form-control" runat="server" placeholder="Enter Sender Last Name"></asp:TextBox>
                       
                    <p class="btn_continue"><asp:Button ID="btnTrackTranfer" class="btn btn-lg btn-success" runat="server" Text="Track Transfer" OnClick="btnTrackTranfer_Click" /></p>
                           
                    <asp:Panel ID="pnTrackTransfer" runat="server">
                        
                        <p>Tracking Number:</p>
                        <p><asp:Label ID="lblTrackingNumber" runat="server"></asp:Label></p>
                          
                        <p>Receiver:</p>
                        <p><asp:Label ID="lblReceiver" runat="server"></asp:Label></p>
                           
                        <p>Date Sent:</p>
                        <p><asp:Label ID="lblDateSent" runat="server"></asp:Label></p>
                            
                        <p>Amount Sent:</p>
                        <p><asp:Label ID="lblAmountSent" runat="server"></asp:Label></p>

                        <p>Note:</p>
                        <p><asp:Label ID="lblTransferNote" runat="server"></asp:Label></p>
                            
                        <p>Is Already Picked Up?</p>
                        <p><asp:Label ID="lblisReceived" runat="server"></asp:Label></p>
                           
                        <p>Date Received:</p>
                        <p><asp:Label ID="lblReceiveDate" runat="server"></asp:Label></p>
                                                          
                        <p class="btn_continue"><asp:Button ID="btnPickUpNow" class="btn btn-lg btn-primary" runat="server" Text="Pick Up Now" OnClick="btnPickUpNow_Click" /></p>
                           
                   </asp:Panel>
                    <p><asp:Label ID="lblMessage" runat="server"></asp:Label></p>
            </div>
        </div>
    </div>

</asp:content>
