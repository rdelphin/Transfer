<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="thankYou.aspx.cs" Inherits="AmiSTLTrans.thankYou" %>

<asp:Content ID="content" ContentPlaceHolderID="content" runat="server">

    <div class="container">
        <div class="row start_transfer">
            <div class="col-md-5">


                <p>Thank you for choosing AMI ST-Laurent!</p>

                <p>Your transfer tracking number is :
                    <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>
                </p>
                <asp:Button ID="btnMakeAnotherTransfer" CssClass="btn btn-lg btn-primary" Text="Make Another Tranfer" runat="server" OnClick="btnMakeAnotherTransfer_Click" /></td></tr>

            </div>
        </div>
    </div>
</asp:Content>
