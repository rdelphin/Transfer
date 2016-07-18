<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="thankYou.aspx.cs" Inherits="AmiSTLTrans.thankYou" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <table style="border:none">
           <tr>
               <td><b>Thank you for choosing AMI ST-Laurent!</b></td>
           </tr>
           <tr>
               <td>Your transfer tracking number is : <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label> </td>
           </tr>
           <tr><td><asp:Button ID="btnMakeAnotherTransfer" Text="Make Another Tranfer" runat="server" OnClick="btnMakeAnotherTransfer_Click" /></td></tr>
       </table>
    
    </div>
    </form>
</body>
</html>
