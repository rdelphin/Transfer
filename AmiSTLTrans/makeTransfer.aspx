<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="makeTransfer.aspx.cs" Inherits="AmiSTLTrans.makeTransfer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <div style="font-family:Arial; float:left ; width:530px">
        <table style="border: 1px solid black">
            <tr>
                <td colspan="2">
                   <b>You are sending to: <asp:Label ID="lblReceiverName" runat="server" Text=""></asp:Label></b>
                </td>
            </tr>
           <tr>
                <td><asp:Label ID="lblReceiveAmount" runat="server" Text=""></asp:Label></td>
           </tr>
            <tr>
                <td colspan="2">
                    <asp:TextBox ID="txtSenderNote" runat="server" Text="Add a note(Optional)"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    Transfer details:
                </td>
            </tr>
            <tr>
                <td>Transfer Amount</td>
                <td>:<asp:Label ID="lblTransAmount" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                    <td>Fee</td>
                    <td>:<asp:Label ID="lblTransFee" runat="server" text=""></asp:Label></td>
            </tr>

            <tr>
                <td><b>You will Pay</b></td>
                <td>:<asp:Label ID ="lblTotal" runat="server" Text=""></asp:Label></td>

            </tr>

            <tr>
                <td> </td>
                <td>
                    <asp:Button ID="btnMakeTransfer" Text="Make Transfer" runat="server" OnClick="btnMakeTransfer_Click" />
                </td>
            </tr>
        </table>
      </div>
      
    </form>
</body>
</html>
