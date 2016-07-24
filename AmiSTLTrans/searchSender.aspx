<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="searchSender.aspx.cs" Inherits="AmiSTLTrans.transfer"  EnableEventValidation="false" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="content" ContentPlaceHolderID="content" runat="server">
    

    <div class="container">
    
            <div class="row start_transfer">
                <div class="col-md-5">
                    <div class="page-header"><h1>Search Sender</h1></div>
                    <asp:TextBox ID="txtPhone" class="form-control" runat="server"></asp:TextBox>
                     <script type="text/javascript">
                           $("input[id$=txtPhone]").mask("999-999-9999");
                     </script>
                    <p class="btn_continue">
                        <asp:Button ID="btnSearch" class="btn btn-lg btn-primary" runat="server" Text="Search" OnClick="btnSearch_Click" />
                    </p>
                                                                      
                    <!-- add sender -->
                    <p>
                        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="OnRowDataBound">
                          <EmptyDataTemplate>
                              Sender not found.<a href="addSender.aspx">Click here to Add the sender</a>
                          </EmptyDataTemplate>
                        </asp:GridView>
                    </p>
                    <p><asp:Label ID="lblMessage" runat="server"></asp:Label></p>
                </div>

                <div class="col-md-7">
                    <div class="page-header"><h1>Transfer Summary</h1></div>
                    <div class="details"> 
                        <asp:Panel runat="server">
                            <dl>                            
                                <dd>Sender :</dd>
                                <dt><asp:Label ID="lblSenderName" text="" runat="server"></asp:Label></dt>
                                                               
                                <dd>Telephone:</dd>
                                <dt><asp:Label ID="lblPhone" Text="" runat="server"></asp:Label></dt>
                                                           
                                <dd>Transfer Amount</dd>
                                <dt><asp:Label ID="lblTransAmount" Text="0.00" runat="server"></asp:Label> USD</dt>
                                
                                <dd>Receiver's Currency</dd>
                                <dt><asp:Label ID="lblReceiveAmount" Text="0.00" runat="server"></asp:Label> USD</dt>
                                                                                        
                                <dd>Transfer Fee</dd>
                                <dt><asp:Label ID="lblTransFee" Text="0.00" runat="server"></asp:Label> USD</dt>
                                
                                <dd>Transaction Total</dd>
                                <dt class="total"><asp:Label ID="lblTotal" Text="0.00" runat="server"></asp:Label> USD</dt>
                            </dl>
                        </asp:Panel>
                    </div> <!-- /.details -->
                </div> <!-- /.col-md-7 -->
           
            </div> <!-- /.row -->
       
    </div> <!-- /.container -->

</asp:Content>