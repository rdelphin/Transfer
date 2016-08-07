<%@ Page Language="C#" Title="Search Receiver" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="searchReceiver.aspx.cs" Inherits="AmiSTLTrans.searchReceiver" EnableEventValidation="false" %>

<asp:Content ID="content" ContentPlaceHolderID="content" runat="server">
    <div class="container">        
            <div class="row start_transfer">
                <div class="col-md-5">
                    <div class="page-header"><h1>Search Receiver</h1></div>
                    <asp:TextBox ID="txtPhone" class="form-control" runat="server"></asp:TextBox>
                    <script type="text/javascript">
                        $("input[id$=txtPhone]").mask("999-9-999-9999");
                    </script>
                    <p class="btn_continue"><asp:Button ID="btnSearch" class="btn btn-lg btn-success" runat="server" Text="Search" OnClick="btnSearch_Click" /></p>

                    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="OnRowDataBound" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <EmptyDataTemplate>
                            Receiver not found.<a href="addReceiver.aspx">Click here to Add the receiver</a>
                        </EmptyDataTemplate>
                        <Columns>
                            <asp:BoundField DataField="ReceiverID" HeaderText="ID" ItemStyle-Width="55"/>
                            <asp:BoundField DataField="ReceiverFName" HeaderText="First Name" ItemStyle-Width="130" />
                            <asp:BoundField DataField="ReceiverLName" HeaderText="Last Name" ItemStyle-Width="130" />
                            <asp:BoundField DataField="ReceiverPhone" HeaderText="Phone" ItemStyle-Width="120" />
                        </Columns>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <br />
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>                    
                </div>

                <div class="col-md-7">
                    <div class="page-header"><h1>Transfer Summary</h1></div>
                    <div class="details"> 
                        <asp:Panel runat="server">
                            <dl>                            
                                <dd>Receiver</dd>
                                <dt><asp:Label ID="lblReceiverName" text="" runat="server"></asp:Label></dt>

                                <dd>Telephone</dd>
                                <dt><asp:Label ID="lblReceiverPhone" Text="" runat="server"></asp:Label></dt>

                                <dd>Sender</dd>
                                <dt><asp:Label ID="lblSenderName" text="" runat="server"></asp:Label></dt>

                                <dd>Telephone</dd>
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
