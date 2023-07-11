using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace batgymproject
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
                Response.Redirect("Login.aspx");
        }

        protected void LinkBtnNewAccount_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewAccount.aspx");
        }

        protected void LinkBtnViewAccount_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewAccount.aspx");
        }

        protected void LinkBtnDashboard_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx");
        }
        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        protected void LinkBtnLogs_Click(object sender, EventArgs e)
        {
            Response.Redirect("Logs.aspx");
        }

        protected void LinkBtnMemberStatus_Click(object sender, EventArgs e)
        {
            Response.Redirect("MembershipStatus.aspx");
        }

        protected void AddActivities_Click(object sender, EventArgs e)
        {

        }
    }
}