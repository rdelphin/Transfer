<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="addSender.aspx.cs" Inherits="AmiSTLTrans.addSender" %>

<asp:Content ID="content" ContentPlaceHolderID="content" runat="server">

    <div class="container">
        
        <div class="row start_transfer">            
                <div class="col-md-5">
                    <div class="page-header"><h1>Add a Sender</h1></div>                    
                    <asp:TextBox ID="txtSenderFName" class="form-control" placeholder="First Name" runat="server"></asp:TextBox>

                    <asp:TextBox ID="txtSenderLName" class="form-control" placeholder="Last Name" runat="server"></asp:TextBox>

                    <asp:TextBox ID="txtSenderPhone" class="form-control" placeholder="Sender Phone" runat="server"></asp:TextBox>

                    <!-- JQuery -->
                    <script src="scripts/jquery-2.2.4.min.js" type="text/javascript"></script>

                    <script src="scripts/jquery.maskedinput.min.js" type="text/javascript"></script>
                    <script type="text/javascript">
                        $('#txtSenderPhone').mask('999-999-9999');
                    </script>
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
                                <dt class="total"><asp:Label ID="lblTotal" Text="0.00" runat="server"></asp:Label></dt>
                            </dl>
                        </asp:Panel>  
                    </div>          
                </div>
        </div> <!-- /.row -->
    </div> <!-- /.container -->
</asp:Content>
