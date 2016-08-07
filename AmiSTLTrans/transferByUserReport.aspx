<%@ Page Language="C#" Title="Report By User" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="transferByUserReport.aspx.cs" Inherits="AmiSTLTrans.transferByUserReport" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            margin-right: 44px;
        }

        div[id='ReportViewer1'] { height: 1px; }
    </style>
</asp:Content> 

<asp:Content ID="content" ContentPlaceHolderID="content" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                User <asp:DropDownList ID="ddlUsers" runat="server">
                </asp:DropDownList> <br />
                From <asp:TextBox ID="txtDateFrom" runat="server"></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="txtDateFrom_CalendarExtender" runat="server" TargetControlID="txtDateFrom" />
                To <asp:TextBox ID="txtDateTo" runat="server"> </asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="txtDateTo_CalendarExtender" runat="server" TargetControlID="txtDateTo" />
                <asp:Button ID="btnViewReport" runat="server" Text="View Report" OnClick="btnViewReport_Click" />
                <br />
                <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="814px" CssClass="auto-style1" Height="359px">
                    <LocalReport ReportPath="tranferByUserReport.rdlc">
                        <DataSources>
                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DSetReport" />
                        </DataSources>
                    </LocalReport>
                </rsweb:ReportViewer>
      
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetData" TypeName="AmiSTLTrans.DSReportTableAdapters.spGetTransfersTableAdapter"></asp:ObjectDataSource>
   
            </div>
        </div>
    </div>
          
</asp:Content> 