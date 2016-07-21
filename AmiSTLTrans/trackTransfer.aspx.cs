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
    public partial class trackTransfer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pnTrackTransfer.Visible = false;
            lblReceiveDate.Visible = true;
        }

        protected void btnTrackTranfer_Click(object sender, EventArgs e)
        {
            String CS = ConfigurationManager.ConnectionStrings["ASLT"].ConnectionString;

            SqlConnection con = new SqlConnection(CS);

            SqlCommand cmd = new SqlCommand();

            cmd.CommandType = CommandType.StoredProcedure;

            cmd.CommandText = "spTrackTransfer";

            cmd.Parameters.Add("@TransferID", SqlDbType.Int).Value = txtTrackTransfer.Text;
            cmd.Parameters.Add("@SenderLName", SqlDbType.NVarChar).Value = txtTrackLastName.Text;
            cmd.Connection = con;

            try

            {

                con.Open();
                SqlDataReader dr;
                dr = cmd.ExecuteReader();

                if (dr == null || !dr.HasRows)
                {
                    lblMessage.Text = "Transfer Not Found. Please re-enter the Reference Number and the Last Name.";
                    txtTrackTransfer.Focus();
                }

                while (dr.Read())
                {
                    pnTrackTransfer.Visible = true;
                    lblTrackingNumber.Text = dr["TransferID"].ToString();
                    lblReceiver.Text = dr["ReceiverFName"].ToString() + " " + dr["ReceiverLName"].ToString();
                    lblDateSent.Text = dr["CreatedOn"].ToString();
                    lblAmountSent.Text = dr["TransferAmount"].ToString();
                    lblisReceived.Text = dr["isReceived"].ToString();
                    lblReceiveDate.Text = dr["ReceivedOn"].ToString();



                    if (lblisReceived.Text == "YES")
                    {
                        btnPickUpNow.Enabled = false;
                        lblReceiveDate.Visible = true;
                        lblMessage.Text = "<a href =\"trackTransfer.aspx\">Click here to the Receiver.</a>";
                    }
                    else
                    {
                        btnPickUpNow.Enabled = true;
                        lblMessage.Text = "<a href =\"trackTransfer.aspx\">Click here to the Receiver.</a>";
                    }
      
                    
                }
              

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