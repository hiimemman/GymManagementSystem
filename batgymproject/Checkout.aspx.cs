using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace batgymproject
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
                Response.Redirect("Login.aspx");
        }

        protected void LinkButtonCancelReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewAccount.aspx");
        }
    }
}