using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using Microsoft.Reporting.WebForms;

namespace AmiSTLTrans
{
    public partial class transferByUserReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         

            if (!this.IsPostBack)
            {
                string constr = ConfigurationManager.ConnectionStrings["ASLT"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT UserName FROM tblUsers"))
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Connection = con;
                        con.Open();
                        ddlUsers.DataSource = cmd.ExecuteReader();
                        ddlUsers.DataTextField = "UserName";
                        ddlUsers.DataBind();
                        con.Close();
                    }
                }
                ddlUsers.Items.Insert(0,new ListItem("ALL", "ALL"));

                txtDateFrom.Text = DateTime.Now.ToString(txtDateFrom_CalendarExtender.Format);
                txtDateTo.Text = DateTime.Now.ToString(txtDateTo_CalendarExtender.Format);
            }

        }

        protected void btnViewReport_Click(object sender, EventArgs e)
        {
            DataTable dt = getSPResult();
            ReportViewer1.Visible = true;
            ReportViewer1.LocalReport.ReportPath = "tranferByUserReport.rdlc";
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DSetReport", dt));

        }
        private DataTable getSPResult()
        {
            DataTable ResulsTable = new DataTable();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ASLT"].ConnectionString);

            try
            {
                SqlCommand cmd = new SqlCommand("spGetTransfers", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                //cmd.Parameters.Add("@TransferID", SqlDbType.Int).Value = txtTrackTransfer.Text;
                cmd.Parameters.Add("@CreatedBy", SqlDbType.NVarChar).Value = ddlUsers.Text;
                cmd.Parameters.Add("@DateFrom", SqlDbType.Date).Value = txtDateFrom.Text;
                cmd.Parameters.Add("@DateTo", SqlDbType.Date).Value = txtDateTo.Text;
                //cmd.Parameters.AddWithValue("@Createdby", ddlUsers.Text);
                //cmd.Parameters.AddWithValue("@SenderLName", TextBox2.Text);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(ResulsTable);
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }

            }
            return ResulsTable;

        }
    }
}
