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



namespace AmiSTLTrans
{
    public partial class transfer : System.Web.UI.Page /* was transfer */ 
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
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

            cmd.CommandText = "spGetSenders";

            cmd.Parameters.Add("@senderPhone", SqlDbType.NVarChar).Value = txtPhone.Text;

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
                Session["SenderPhone"] = txtPhone.Text;

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

            Session["SenderID"] = row.Cells[0].Text;
            Session["SenderFName"] = row.Cells[1].Text;
            Session["SenderLName"] = row.Cells[2].Text;
            Session["SenderPhone"] = row.Cells[3].Text;

            lblMessage.Text = "Sender has been selected.<a href=\"searchReceiver.aspx\">Click here to the Receiver.</a>";

            lblSenderName.Text =Session["SenderFName"].ToString() + " " + Session["SenderLName"].ToString();
            lblPhone.Text = Session["SenderPhone"].ToString();
  
        }

    }
}
   
