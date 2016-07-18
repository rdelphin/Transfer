using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AmiSTLTrans
{
    public partial class sendMoney : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                Session["UserName"] = User.Identity.Name;

                //Label1.Text = Session["UserName"].ToString();  //string.Format("Hello {0}!!", User.Identity.Name);
            }

        }

        protected void txtAmount_TextChanged(object sender, EventArgs e)
        {
            float amount = float.Parse(txtAmount.Text);
            float fee;
            //bool isSucess = Int32.TryParse(lblTransAmount.Text, out amount);
            //if (isSucess)
            //{
                lblTransAmount.Text = Convert.ToString(amount);
            Session["TransAmount"] = lblTransAmount.Text;
                lblReceiveAmount.Text = Convert.ToString(amount);
            Session["ReceiveAmount"] = lblReceiveAmount.Text;
            if (amount <= 500.00)
                {
                    lblTransFee.Text = "5";
                Session["TransFee"] = lblTransFee;
                }
                else if (amount >= 500 && amount <= 1000)
                {
                    lblTransFee.Text = "10";
                Session["TransFee"] = lblTransFee;
            }
               fee = float.Parse(lblTransFee.Text);
               lblTotal.Text = Convert.ToString(amount + fee);
            Session["Total"] = lblTotal.Text;
            }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            Session["TransAmount"] = lblTransAmount.Text;
            Session["ReceiveAmount"] = lblReceiveAmount.Text;
            Session["TransFee"] = lblTransFee.Text;
            Session["Total"] = lblTotal.Text;

            Response.Redirect("~/searchSender.aspx");
        }
    }
    }