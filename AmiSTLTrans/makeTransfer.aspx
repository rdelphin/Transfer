<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="makeTransfer.aspx.cs" Inherits="AmiSTLTrans.makeTransfer" %>

<asp:Content ID="content" ContentPlaceHolderID="content" runat="server">

    <div class="container">
        <div class="row start_transfer">
                <div class="col-md-5">
                    <div class="page-header"><h1>Transfer Confirmation</h1></div>
                    <table class="table table-hover">
                        <tr>
                            <td colspan="2">
                                <strong>You are sending money to:</strong>
                                <span class="text-uppercase"><asp:Label ID="lblReceiverName" runat="server" Text=""></asp:Label></span>
                            </td>
                        </tr>
                         <tr>
                            <td colspan="2">$<asp:Label ID="lblReceiveAmount" runat="server" Text=""></asp:Label></td>
                       </tr>
                        <tr>
                            <td colspan="2">
                                <asp:TextBox ID="txtSenderNote" class="form-control" runat="server" Text="Add a note (Optional)"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2"><h2>Transfer Details</h2></td>
                        </tr>
                        <tr>
                            <td>Transfer Amount</td>
                            <td>$<asp:Label ID="lblTransAmount" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Fee</td>
                            <td>$<asp:Label ID="lblTransFee" runat="server" Text=""></asp:Label></td>
                        </tr>

                        <tr>
                            <td><b>You will Pay</b></td>
                            <td class="total">$<asp:Label ID="lblTotal" runat="server" Text=""></asp:Label></td>
                        </tr>               
                    </table>
                    <p class="btn_continue"><asp:Button ID="btnMakeTransfer" class="btn btn-lg btn-primary" Text="Make Transfer" runat="server" OnClick="btnMakeTransfer_Click" /></p>
                </div>
        </div>
    </div>
</asp:Content>
