using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AmiSTLTrans
{
    public partial class thankYou : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblmessage.Text = Session["TransferID"].ToString();
        }

        protected void btnMakeAnotherTransfer_Click(object sender, EventArgs e)
        {
            Response.Redirect("startTransfer.aspx");
        }
    }
}