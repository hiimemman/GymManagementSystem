using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace batgymproject
{
    public partial class MembershipStatus : System.Web.UI.Page
    {


        SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=admindb;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Session["username"] == null)
                Response.Redirect("Login.aspx");

            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            disp_data();


        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["admindbConnectionString"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            sqlconn.Open();
         string queryStr = "";
            int asd = 0;
            string currentMember = "";
            string currentDescription = "";
            string currentsubStart = "";
            string currentendSub = "";
            string currentStatus = "";
            string currentpackage = "";
           int cxAmount=0;
            int enterPayment = Convert.ToInt32(TextPayment.Text);
            string memberidpString = "";
            queryStr = "SELECT amount from tbl_upstatus where member_id = '" + TextIDNumber.Text + "' ;";

            SqlCommand comdd = new SqlCommand(queryStr, sqlconn);
            var dr = comdd.ExecuteReader();
          
          if (dr.HasRows)
            {
                dr.Read();
                cxAmount = dr.GetInt32(0);
            }
          
            int currentAmount = cxAmount + enterPayment;       
            cmd.CommandText = "update tbl_upstatus set amount='" + currentAmount +"'where member_id=" + Convert.ToInt32(TextIDNumber.Text) + "";
            cmd.ExecuteNonQuery();

            sqlconn.Close
                ();
            disp_data();
        }

        public void disp_data()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select member_id,description,subscription_start,subscription_end,remaining_days,status,amount,package from tbl_upstatus ORDER BY id desc";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }


        protected void LinkBtnNewAccount_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewAccount.aspx");
        }

        protected void LinkBtnViewMembers_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewAccount.aspx");
        }

        protected void LinkBtnDashboard_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx");
        }

        protected void LinkBtnMemberStatus_Click(object sender, EventArgs e)
        {
            Response.Redirect("MembershipStatus.aspx");
        }

        protected void LinkBtnLogs_Click(object sender, EventArgs e)
        {
            Response.Redirect("Logs.aspx");
        }
        protected void BtnLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        protected void BtnRefresh_Click(object sender, EventArgs e)
        {

            disp_data();
        }

      
    }

}