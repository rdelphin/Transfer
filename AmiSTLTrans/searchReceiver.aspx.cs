using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace AmiSTLTrans
{
    public partial class searchReceiver : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblSenderName.Text = Session["SenderFName"].ToString() + " " + Session["SenderLName"].ToString();
            lblPhone.Text = Session["SenderPhone"].ToString();

            lblTransAmount.Text = Session["TransAmount"].ToString();
            lblReceiveAmount.Text = Session["ReceiveAmount"].ToString();
            lblTransFee.Text = Session["TransFee"].ToString();
            lblTotal.Text = Session["Total"].ToString();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {

            String CS = ConfigurationManager.ConnectionStrings["ASLT"].ConnectionString;

            SqlConnection con = new SqlConnection(CS);

            SqlCommand cmd = new SqlCommand();

            cmd.CommandType = CommandType.StoredProcedure;

            cmd.CommandText = "spGetReceivers";

            cmd.Parameters.Add("@receiverPhone", SqlDbType.NVarChar).Value = txtPhone.Text;

            cmd.Connection = con;

            try

            {

                con.Open();
                GridView1.DataSource = cmd.ExecuteReader();
                GridView1.DataBind();

            }

            catch (Exception ex)

            {

                throw ex;

            }

            finally

            {

                con.Close();
                con.Dispose();
                Session["ReceiverPhone"] = txtPhone.Text;

            }
        }

        protected void OnRowDataBound(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView1, "Select$" + e.Row.RowIndex);
                e.Row.Attributes["style"] = "cursor:pointer";
            }
        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;

            Session["ReceiverID"] = row.Cells[0].Text;
            Session["ReceiverFName"] = row.Cells[1].Text;
            Session["ReceiverLName"] = row.Cells[2].Text;
            Session["ReceiverPhone"] = row.Cells[3].Text;

            lblMessage.Text = "receiver has been selected.<a href=\"makeTransfer.aspx\">Click here to make the transfer.</a>";

            lblReceiverName.Text = Session["ReceiverFName"].ToString() + " " + Session["ReceiverLName"].ToString();
            lblReceiverPhone.Text = Session["ReceiverPhone"].ToString();
        }
    
    }
}