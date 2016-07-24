using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AmiSTLTrans
{
    public partial class addSender : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblTransAmount.Text = Session["TransAmount"].ToString();
            lblReceiveAmount.Text = Session["ReceiveAmount"].ToString();
            lblTransFee.Text = Session["TransFee"].ToString();
            lblTotal.Text = Session["Total"].ToString();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {


            String CS = ConfigurationManager.ConnectionStrings["ASLT"].ConnectionString;

            SqlConnection con = new SqlConnection(CS);

            SqlCommand cmd = new SqlCommand();

            cmd.CommandType = CommandType.StoredProcedure;

            cmd.CommandText = "spInsertSender";

            cmd.Parameters.Add("@SenderFName", SqlDbType.NVarChar).Value = txtSenderFName.Text.Trim();

            cmd.Parameters.Add("@SenderLName", SqlDbType.NVarChar).Value = txtSenderLName.Text.Trim();

            cmd.Parameters.Add("@SenderPhone", SqlDbType.NVarChar).Value = txtSenderPhone.Text.Trim();
            cmd.Parameters.Add("@SenderID", SqlDbType.Int).Direction = ParameterDirection.Output;

            cmd.Connection = con;

            try

            {

                con.Open();

                cmd.ExecuteNonQuery();
                Session["SenderID"] = cmd.Parameters["@SenderID"].Value.ToString();
                Session["SenderFName"] = txtSenderFName.Text;
                Session["SenderLName"] = txtSenderLName.Text;
                Session["SenderPhone"] = txtSenderPhone.Text;

                lblMessage.Text = "Record inserted successfully <a href=\"searchReceiver.aspx\">Click here to add the Receiver.</a>";

                lblSenderName.Text = Session["SenderFName"].ToString()+ " " + Session["SenderLName"].ToString();
                lblPhone.Text = Session["SenderPhone"].ToString();

            }

            catch (Exception ex)

            {

                throw ex;

            }

            finally

            {

                con.Close();

                con.Dispose();

            }

        }
    }
}