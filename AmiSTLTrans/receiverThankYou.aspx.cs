using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AmiSTLTrans
{
    public partial class receiverThankYou : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReciverAnotherTransfer_Click(object sender, EventArgs e)
        {
            Response.Redirect("trackTransfer.aspx");
        }
    }
}