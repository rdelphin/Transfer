<%@ Page Language="C#" Title="Report By User" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="transferByUserReport.aspx.cs" Inherits="AmiSTLTrans.transferByUserReport" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="content" ContentPlaceHolderID="content" runat="server">
    <div class="container">
        <div class="row">
             <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                
                <div class="col-md-2">
                    <p>User</p> <asp:DropDownList ID="ddlUsers" class="form-control" runat="server">
                    </asp:DropDownList> 
                </div>
        </div>

        <div class="row">
            <div class="col-md-12xx">
               
                <div class="form-group">
                    <div class="col-md-2">
                        <p>From</p> <asp:TextBox ID="txtDateFrom" class="form-control" runat="server"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="txtDateFrom_CalendarExtender" runat="server" TargetControlID="txtDateFrom" />
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-2">
                        <p>To</p> <asp:TextBox ID="txtDateTo" class="form-control" runat="server"> </asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="txtDateTo_CalendarExtender" runat="server" TargetControlID="txtDateTo" />                                                
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-3">
                        <asp:Button ID="btnViewReport" class="btn btn-lg btn-success btn-report" runat="server" Text="View Report" OnClick="btnViewReport_Click" />
                    </div>
                </div>
            </div> <!-- /.col-md-8 -->
        </div> <!-- /.row -->
                <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="814px" CssClass="auto-style1" Height="359px">
                    <LocalReport ReportPath="tranferByUserReport.rdlc">
                        <DataSources>
                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DSetReport" />
                        </DataSources>
                    </LocalReport>
                </rsweb:ReportViewer>
      
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetData" TypeName="AmiSTLTrans.DSReportTableAdapters.spGetTransfersTableAdapter"></asp:ObjectDataSource>
   
            
    </div>
          
</asp:Content> 