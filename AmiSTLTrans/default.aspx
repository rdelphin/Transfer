<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="AmiSTLTrans.sendMoney" %>

<asp:Content ID="content1" ContentPlaceHolderID="head" runat="server">
    <!-- validation -->
    <script type="text/javascript">
        $(document).ready(function() {
            
            // create custom 'lettersonly' method
            $.validator.addMethod("lettersonly", function(value, element) {
                return this.optional(element) || /^[a-z\s]+$/i.test(value);
            }, "Name must contain only letters.");

            // create custom 'positive number only' method
            $.validator.addMethod('positiveNumber',
            function (value) { 
                return Number(value) > 0;
            }, 'Enter a positive number.'); 


            // validate signup form on keyup and submit
            $("#form1").validate({
                rules: {                  
                    <%=txtAmount.UniqueID %> : {
                        required: true,
                        digits: true,
                        min: 1
                        
                       //minlength: 6
                    }
                },
                messages: {
                    
                    <%=txtAmount.UniqueID %> : {
                        required: "Please enter an amount",
                        digits: "Amount must be digits only",
                        min: "Amount must be greateer than $1"
                    }
                },
            });

        });

    </script>
</asp:Content>
   
<asp:Content ID="content" ContentPlaceHolderID="content" runat="server">
    <div class="container">
        
        <div class="row start_transfer">
            
            
                <div class="col-md-6 col-md-offset-3">
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
                        <asp:TextBox ID="txtAmount" class="form-control" data-toggle="tooltip" title="Enter send amount" runat="server" OnTextChanged="txtAmount_TextChanged" AutoPostBack="true"></asp:TextBox>
                        <div class="input-group-addon">.00</div>
                    </div>

                    <!-- continue button -->
                    <p class="btn_continue"><asp:Button ID="btnContinue" class="btn btn-lg btn-primary" Text="Continue" runat="server" OnClick="btnContinue_Click" /></p>

                </div>
                
                <!-- div class="col-md-7">
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
                </!--> <!-- /.col-md-7 -->                
            
        </div> <!-- /.row -->
        
    </div> <!-- /.container -->
</asp:Content>


