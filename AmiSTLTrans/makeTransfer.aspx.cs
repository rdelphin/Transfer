using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace AmiSTLTrans
{
    public partial class makeTransfer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblReceiverName.Text = Session["ReceiverFName"].ToString() + " " + Session["ReceiverLName"].ToString();
           
            lblTransAmount.Text = Session["TransAmount"].ToString();
            lblReceiveAmount.Text = Session["ReceiveAmount"].ToString();
            lblTransFee.Text = Session["TransFee"].ToString();
            lblTotal.Text = Session["Total"].ToString();
        }

        protected void btnMakeTransfer_Click(object sender, EventArgs e)
        {
            String CS = ConfigurationManager.ConnectionStrings["ASLT"].ConnectionString;

            SqlConnection con = new SqlConnection(CS);

            SqlCommand cmd = new SqlCommand();

            cmd.CommandType = CommandType.StoredProcedure;

            cmd.CommandText = "spInsertTransfer";

            cmd.Parameters.Add("@SenderID", SqlDbType.Int).Value = Session["SenderID"].ToString();

            cmd.Parameters.Add("@ReceiverID", SqlDbType.Int).Value = Session["ReceiverID"].ToString();

            cmd.Parameters.Add("@transferAmount", SqlDbType.Decimal).Value = Session["TransAmount"].ToString();
            cmd.Parameters.Add("@transferNote", SqlDbType.NVarChar).Value = txtSenderNote.Text.Trim(); 
            cmd.Parameters.Add("@transferFee", SqlDbType.Decimal).Value = Session["TransFee"].ToString();
            cmd.Parameters.Add("@createdBy", SqlDbType.NVarChar).Value = Session["UserName"].ToString();
            cmd.Parameters.Add("@TransferID", SqlDbType.Int).Direction = ParameterDirection.Output;

            cmd.Connection = con;

            try

            {

                con.Open();

                cmd.ExecuteNonQuery();
                Session["TransferID"] = cmd.Parameters["@TransferID"].Value.ToString();
            }

            catch (Exception ex)

            {

                throw ex;

            }

            finally

            {

                con.Close();

                con.Dispose();
                Response.Redirect("thankYou.aspx");
            }

        }
    }
}