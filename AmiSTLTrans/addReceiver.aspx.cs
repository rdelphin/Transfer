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
    public partial class addReceiver : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblSenderName.Text = Session["SenderFName"].ToString() + " " + Session["SenderLName"].ToString();
            lblPhone.Text = Session["SenderPhone"].ToString();

            lblTransAmount.Text = Session["TransAmount"].ToString();
            lblReceiveAmount.Text = Session["ReceiveAmount"].ToString();
            lblTransFee.Text = Session["TransFee"].ToString();
            lblTotal.Text = Session["Total"].ToString();

            txtReceiverPhone.Text = Session["ReceiverPhone"].ToString();
            
            btnAdd.Enabled = true;
            btnReset.Enabled = true;

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {


            String CS = ConfigurationManager.ConnectionStrings["ASLT"].ConnectionString;

            SqlConnection con = new SqlConnection(CS);

            SqlCommand cmd = new SqlCommand();

            cmd.CommandType = CommandType.StoredProcedure;

            cmd.CommandText = "spInsertReceiver";

            cmd.Parameters.Add("@ReceiverFName", SqlDbType.NVarChar).Value = txtReceiverFName.Text.Trim();

            cmd.Parameters.Add("@ReceiverLName", SqlDbType.NVarChar).Value = txtReceiverLName.Text.Trim();

            cmd.Parameters.Add("@ReceiverPhone", SqlDbType.NVarChar).Value = txtReceiverPhone.Text.Trim();
            cmd.Parameters.Add("@ReceiverID", SqlDbType.Int).Direction = ParameterDirection.Output;

            cmd.Connection = con;

            try

            {

                con.Open();

                cmd.ExecuteNonQuery();
                Session["ReceiverID"] = cmd.Parameters["@ReceiverID"].Value.ToString();
                Session["ReceiverFName"] = txtReceiverFName.Text;
                Session["ReceiverLName"] = txtReceiverLName.Text;
                Session["ReceiverPhone"] = txtReceiverPhone.Text;

                lblReceiverName.Text = Session["ReceiverFName"].ToString() + " " + Session["ReceiverLName"].ToString();
                lblReceiverPhone.Text = Session["ReceiverPhone"].ToString();

                lblMessage.Text = "Record inserted successfully <a href=\"makeTransfer.aspx\">Click here to make the transfer.</a>";

                btnAdd.Enabled = false;
                btnReset.Enabled = false;

                

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

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtReceiverFName.Text = "";
            txtReceiverLName.Text = "";
            txtReceiverPhone.Text = "";
        }
    }
}