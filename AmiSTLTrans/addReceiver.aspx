﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addReceiver.aspx.cs" Inherits="AmiSTLTrans.addReceiver" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <div style="font-family:Arial; float:left; width:530px">
        <table style="border: 1px solid black">
            <tr>
                <td colspan="2">
                   <b>Add a Receiver</b>
                </td>
            </tr>
           <tr>
                <td>First Name</td>
                <td>
                    :<asp:TextBox ID="txtReceiverFName" runat="server"></asp:TextBox>

                </td>
          </tr>
            <tr>
                <td>Last Name</td>
                <td>
                    :<asp:TextBox ID="txtReceiverLName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Sender Phone
                </td>
                <td>
                    :<asp:TextBox ID="txtReceiverPhone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnReset" Text="Reset" runat="server" />
                </td>
                <td>
                    <asp:Button ID="btnAdd" Text="Add" runat="server" OnClick="btnAdd_Click" />
                </td>
            </tr>
        </table>
     <asp:Label ID="lblMessage" runat="server"></asp:Label>
    </div>
          <div>
            <asp:Panel runat="server">
                <table style="border:none">
                    <tr><td><b>Transfer Summary</b></td></tr>

                    <tr><td><b>Receiver :</b></td></tr>
                    <tr><td><asp:Label ID="lblReceiverName" text="" runat="server"></asp:Label></td></tr>
                    <tr><td>Telephone:</td></tr>
                    <tr><td><asp:Label ID="lblReceiverPhone" Text="" runat="server"></asp:Label></td></tr>

                    <tr><td><b>Sender :</b></td></tr>
                    <tr><td><asp:Label ID="lblSenderName" text="" runat="server"></asp:Label></td></tr>
                    <tr><td>Telephone:</td></tr>
                    <tr><td><asp:Label ID="lblPhone" Text="" runat="server"></asp:Label></td></tr>
                    <tr>
                        <td><b>Transfer Amount:</b></td>
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
