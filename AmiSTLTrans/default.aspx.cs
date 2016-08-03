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
                btnContinue.Enabled = true;

                //Label1.Text = Session["UserName"].ToString();  //string.Format("Hello {0}!!", User.Identity.Name);
            }

        }

        protected void txtAmount_TextChanged(object sender, EventArgs e)
        {
            double fee;
            float amount;
            //fee = float.Parse(lblTransFee.Text);

            if (float.TryParse(txtAmount.Text, out amount))
            {
                
               

                if (amount > 0 && amount <= 400.00)
                {
                    lblTransFee.Text = "5.00";
                    fee = float.Parse(lblTransFee.Text);
                    Session["TransFee"] = lblTransFee;
                    lblTotal.Text = Convert.ToString(amount + fee);
                    Session["Total"] = lblTotal.Text;

                    lblTransAmount.Text = Convert.ToString(amount);
                    Session["TransAmount"] = lblTransAmount.Text;
                    lblReceiveAmount.Text = Convert.ToString(amount);
                    btnContinue.Enabled = true;
                }
                else if (amount >= 400)
                {
                    if (amount % 400 > 0)
                    {
                        fee = Math.Truncate(amount / 400) * 5 + 5;
                    }
                    else
                    fee = Math.Truncate(amount / 400) * 5;
                    lblTransFee.Text = Convert.ToString(fee);
                    Session["TransFee"] = lblTransFee;
                    lblTotal.Text = Convert.ToString(amount + fee);
                    Session["Total"] = lblTotal.Text;

                    lblTransAmount.Text = Convert.ToString(amount);
                    Session["TransAmount"] = lblTransAmount.Text;
                    lblReceiveAmount.Text = Convert.ToString(amount);
                    btnContinue.Enabled = true;
                }
                    
               
            }
          }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            Session["TransAmount"] = lblTransAmount.Text;
            Session["ReceiveAmount"] = lblReceiveAmount.Text;
            Session["TransFee"] = lblTransFee.Text;
            Session["Total"] = lblTotal.Text;

            Response.Redirect("searchSender.aspx");
        }
    }
    }