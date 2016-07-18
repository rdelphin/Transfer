<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="startTransfer.aspx.cs" Inherits="AmiSTLTrans.sendMoney" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 128px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-family:Arial; float:left; width:310px">
    <asp:Panel ID="main" runat="server">
        <table style="border:none">
            <tr>
                <td>Sending Money To:</td>
                <td class="auto-style1">Amount:</td>
            </tr>
            <tr>
                <td><asp:DropDownList ID="ddlCity" runat="server">
                    <asp:ListItem>Saint-Marc</asp:ListItem>
                    </asp:DropDownList></td>
                <td><asp:TextBox ID="txtAmount" runat="server" OnTextChanged="txtAmount_TextChanged" AutoPostBack="true"></asp:TextBox>USD</td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Button ID="btnContinue" Text="Continue" runat="server" OnClick="btnContinue_Click" /></td>
            </tr>
       </table>

        
    </asp:Panel>
    </div>
        <div>
            <asp:Panel runat="server">
                <table style="border:none">
                    <tr>
                        <td>Transfer Amount:</td>
                    </tr>
                    <tr> <td><asp:Label ID="lblTransAmount" Text="0.00" runat="server"></asp:Label></td></tr>

                    <tr><td>Receiver's Currency:</td> </tr>
                    <tr><td><asp:Label ID="lblReceiveAmount" Text="0.00" runat="server"></asp:Label></td></tr>
                    <tr><td>Transfer Fee:</td></tr>
                    <tr><td><asp:Label ID="lblTransFee" Text="0.00" runat="server"></asp:Label></td></tr>
                    <tr><td>Transaction Total:</td></tr>
                    <tr><td><asp:Label ID="lblTotal" Text="0.00" runat="server"></asp:Label></td></tr>
                </table>

            </asp:Panel>
            
        </div>
        
    </form>
</body>
</html>

