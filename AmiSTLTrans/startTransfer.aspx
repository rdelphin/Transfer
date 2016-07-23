<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="startTransfer.aspx.cs" Inherits="AmiSTLTrans.sendMoney" %>
   
<asp:Content ID="content" ContentPlaceHolderID="content" runat="server">
    <div class="container">
        
        <div class="row start_transfer">
            
            
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
            
        </div> <!-- /.row -->
        
    </div> <!-- /.container -->
</asp:Content>


