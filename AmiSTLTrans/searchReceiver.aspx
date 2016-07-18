<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="searchReceiver.aspx.cs" Inherits="AmiSTLTrans.searchReceiver" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      <div style="font-family:Arial; float:left; width:530px">
    
        
                    <table style="border:none">
                    <tr>
                        <td>Phone Number</td>
                        <td>:<asp:TextBox ID="txtPhone" runat="server"></asp:TextBox></td>
                        <td><asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" /></td>
                    </tr>
                    </table>
                      
                        
      <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="OnRowDataBound">
          <EmptyDataTemplate>
              Sender not found.<a href="addReceiver.aspx">Click here to Add the receiver</a>
          </EmptyDataTemplate>
      </asp:GridView>
        <br />
      <asp:Label ID="lblMessage" runat="server"></asp:Label>
                      
    </div>
              
        <br />
       
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
                        <td>Transfer Amount:</td>
                    </tr>
                    <tr> <td class="auto-style1"><asp:Label ID="lblTransAmount" Text="0.00" runat="server"></asp:Label></td></tr>

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
