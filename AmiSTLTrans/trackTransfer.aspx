<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trackTransfer.aspx.cs" Inherits="AmiSTLTrans.trackTransfer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td colspan ="2"><b>Track a transfer</b></td>
            </tr>
            <tr>
                <td>Find the status of a tranfer by entering the reference number <br />
                     and the last name of the sender</td>
                <td><asp:TextBox ID="txtTrackTransfer" runat="server" Text="Enter the Reference #"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:TextBox ID="txtTrackLastName" runat="server" Text="Enter Sender Last Name"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Button ID="btnTrackTranfer" runat="server" Text="Track Transfer" OnClick="btnTrackTranfer_Click" /></td>
            </tr>
        </table>
      </div>
        <asp:Panel ID="pnTrackTransfer" runat="server">
            <table>
                <tr>
                    <td>Tracking Number:</td>
                    <td><asp:Label ID="lblTrackingNumber" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Receiver:</td>
                    <td><asp:Label ID="lblReceiver" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Date Sent:</td>
                    <td><asp:Label ID="lblDateSent" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Amount Sent:</td>
                    <td><asp:Label ID="lblAmountSent" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Is Already Picked Up?</td>
                    <td><asp:Label ID="lblisReceived" runat="server"></asp:Label></td>
                </tr>
                 <tr>
                    <td>Date Received:</td>
                    <td><asp:Label ID="lblReceiveDate" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="btnPickUpNow" runat="server" Text="Pick Up Now" /></td>
                </tr>
            </table>
       </asp:Panel>
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
    </form>
</body>
</html>
