<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="addReceiver.aspx.cs" Inherits="AmiSTLTrans.addReceiver" %>

<asp:Content ID="content1" ContentPlaceHolderID="head" runat="server">
    <!-- validation -->
    <script type="text/javascript">
        $(document).ready(function() {
            
            // create custom 'lettersonly' method
            $.validator.addMethod("lettersonly", function(value, element) {
                return this.optional(element) || /^[a-z\s]+$/i.test(value);
            }, "Name must contain only letters.");

            // validate signup form on keyup and submit
            $("#form1").validate({
                rules: {                  
                    <%=txtReceiverFName.UniqueID %> : {
                        required: true,
                        lettersonly: true,
                        minlength: 3
                    },
                    
                    <%=txtReceiverLName.UniqueID %> : {
                        required: true,
                        lettersonly: true,
                        minlength: 3
                    },
                    <%=txtReceiverPhone.UniqueID %>{
                        required: true
                    }   
                },
                messages: {
                    
                    <%=txtReceiverFName.UniqueID %> : {
                        required: "Please enter a name",
                        minlength: "First name must consist of at least 3 characters"
                    },                    
                    <%=txtReceiverLName.UniqueID %> : {
                        required: "Please enter a name",
                        minlength: "Last name must consist of at least 3 characters"
                    },
                    <%=txtReceiverPhone.UniqueID %>:{
                        required: "Please enter a phone number"
                    }

                },
            });

        });

    </script>
</asp:Content>

<asp:Content ID="content" ContentPlaceHolderID="content" runat="server">
    <div class="container">

            <div class="row start_transfer">
                <div class="col-md-5">
                    <div class="page-header">
                        <h1>Add New Receiver</h1>
                    </div>
                    <asp:TextBox ID="txtReceiverFName" class="form-control" placeholder="First Name" runat="server"></asp:TextBox>

                    <asp:TextBox ID="txtReceiverLName" class="form-control" placeholder="Last Name" runat="server"></asp:TextBox>

                    <asp:TextBox ID="txtReceiverPhone" class="form-control" placeholder="Phone Number" runat="server"></asp:TextBox>
                    <script type="text/javascript">
                        $("input[id$=txtReceiverPhone]").mask("999-9-999-9999");
                    </script>
                    <p class="btn_continue">
                        <asp:Button ID="btnReset" class="btn btn-lg btn-danger" Text="Reset" runat="server" OnClick="btnReset_Click" />
                        <asp:Button ID="btnAdd" class="btn btn-lg btn-success" Text="Add" runat="server" OnClick="btnAdd_Click" />
                    </p>

                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </div>  <!-- /.cold-md-5 -->

                <div class="col-md-7">
                    <div class="page-header"><h1>Transfer Summary</h1></div>
                    <div class="details">
                        <asp:Panel runat="server">
                            <dl>
                                <dd>Receiver</dd>                          
                                <dt><asp:Label ID="lblReceiverName" Text="" runat="server"></asp:Label></dt>
                                
                                <dd>Telephone</dd>                           
                                <dt><asp:Label ID="lblReceiverPhone" Text="" runat="server"></asp:Label></dt>

                                <dd>Sender</dd>                           
                                <dt><asp:Label ID="lblSenderName" Text="" runat="server"></asp:Label></dt>
                           
                                <dd>Telephone</dd>                           
                                <dt><asp:Label ID="lblPhone" Text="" runat="server"></asp:Label></dt>
                           
                                <dd>Transfer Amount</dd>                            
                                <dt><asp:Label ID="lblTransAmount" Text="0.00" runat="server"></asp:Label> USD</dt>
                           
                                <dd>Receiver's Currency:</dd>                            
                                <dt><asp:Label ID="lblReceiveAmount" Text="0.00" runat="server"></asp:Label> USD</dt>
                            
                                <dd>Transfer Fee:</dd>                           
                                <dt><asp:Label ID="lblTransFee" Text="0.00" runat="server"></asp:Label> USD</dt>
                                
                                <dd>Transaction Total</dd>                           
                                <dt class="total"><asp:Label ID="lblTotal" Text="0.00" runat="server"></asp:Label> USD</dt>                            
                            </dl>
                        </asp:Panel>


                    </div> <!-- /.details -->
                </div> <!-- /.col-md-7 -->
            </div>  <!-- /.row -->
    </div> <!-- /.container -->
</asp:Content>