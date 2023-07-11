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
    public partial class ViewAccount : System.Web.UI.Page
    {
        static string radiobtnsex = string.Empty;

        SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=admindb;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                CalendarBirthdate.Visible = false;
            }

            if (Session["username"] == null)
                Response.Redirect("Login.aspx");

            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            disp_data();
        }

        public void disp_data()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from tbl_members ORDER BY id desc";
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

        protected void LinkBtnLogs_Click(object sender, EventArgs e)
        {
            Response.Redirect("Logs.aspx");
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {

            if (RadioButtonMale.Checked)
            {
                radiobtnsex = "Male";
            }
            else
            {
                radiobtnsex = "Female";
            }

            string mainconn = ConfigurationManager.ConnectionStrings["admindbConnectionString"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "update tbl_members set firstname='" +TextFirstname.Text+ "',middlename='" +TextMiddlename.Text+ "',lastname='" +TextLastname.Text+ "',address='" +TextAddress.Text+ "',emailaddress='" +TextEmail.Text+"',birthdate='"+TextBirthdate.Text+"' ,sex='"+radiobtnsex+"' ,contact='"+TextContact.Text+"' ,package='"+DropPackage.SelectedValue+"'where id=" + Convert.ToInt32(TextIDNumber.Text) + "";

            string dateAsString = DateTime.Now.ToString();
            string logsList = "Account has been updated ID:" +Convert.ToInt32(TextIDNumber.Text)+ "Name: " + TextFirstname.Text + " " + TextMiddlename.Text + " " + " " + TextLastname.Text + " " + "Address: " + TextAddress.Text + "Birthdate: " + TextBirthdate.Text + "Sex: " + radiobtnsex + " " + "Email Address: " + TextEmail.Text + "Contact: " + TextContact.Text + "Package: " + DropPackage.SelectedValue + "";

            string logs = "insert into [dbo].[tbl_updates] (description,date) values (@description,@date)";
            SqlCommand sqllogs = new SqlCommand(logs, sqlconn);
            sqllogs.Parameters.AddWithValue("@description", logsList);
            sqllogs.Parameters.AddWithValue("@date", dateAsString);
            cmd.ExecuteNonQuery();
            sqlconn.Open();
            sqllogs.ExecuteNonQuery();
            sqlconn.Close();
            TextFirstname.Text = "";
            TextMiddlename.Text = "";
            TextLastname.Text = "";
            TextAddress.Text = "";
            TextBirthdate.Text = "";
            radiobtnsex = "";
            TextEmail.Text = "";
            TextContact.Text = "";
            DropPackage.SelectedValue = "";
            disp_data();
           
        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            try
            {             
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "delete from tbl_members where id ='" + Convert.ToInt32(TextIDNumber.Text) + "'"; 
                cmd.ExecuteNonQuery();
               
                disp_data();                

                string mainconn = ConfigurationManager.ConnectionStrings["admindbConnectionString"].ConnectionString;
                SqlConnection sqlconn = new SqlConnection(mainconn);

                string dateAsString = DateTime.Now.ToString();
                string logsList = "Account has been DELETED ID:" + Convert.ToInt32(TextIDNumber.Text)+" ";

                string logs = "insert into [dbo].[tbl_updates] (description,date) values (@description,@date)";
                SqlCommand sqllogs = new SqlCommand(logs, sqlconn);
                sqllogs.Parameters.AddWithValue("@description", logsList);
                sqllogs.Parameters.AddWithValue("@date", dateAsString);







                sqlconn.Open();
                sqllogs.ExecuteNonQuery();
                sqlconn.Close();
                TextIDNumber.Text = "";
            }
            catch (Exception)
            {
                TextIDNumber.Text = "";
                //Catch Exception if ID = null;           
            }
        }

        protected void BtnReset_Click(object sender, EventArgs e)
        {
            TextFirstname.Text = "";
            TextMiddlename.Text = "";
            TextLastname.Text = "";
            TextAddress.Text = "";
            TextBirthdate.Text = "";
            radiobtnsex = "";
            TextEmail.Text = "";
            TextContact.Text = "";
            DropPackage.SelectedValue = "";

        }

        protected void ImageBtnBirthdate_Click(object sender, ImageClickEventArgs e)
        {
            if (CalendarBirthdate.Visible == false)
            {
                CalendarBirthdate.Visible = true;
            }
            else
            {
                CalendarBirthdate.Visible = false;
            }
        }

        protected void CalendarBirthdate_SelectionChanged(object sender, EventArgs e)
        {
            TextBirthdate.Text = CalendarBirthdate.SelectedDate.ToShortDateString();
        }

        protected void RadioButtonMale_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonFemale_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void BtnLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        protected void LinkBtnMemberStatus_Click(object sender, EventArgs e)
        {
            Response.Redirect("MembershipStatus.aspx");
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from tbl_members WHERE firstname LIKE '" + "%" + TextBoxSearch.Text+"%"+"' OR middlename LIKE '" + "%" + TextBoxSearch.Text+"%"
                + "' OR lastname LIKE '" + "%" + TextBoxSearch.Text + "%"
                + "' OR address LIKE '" + "%" + TextBoxSearch.Text + "%"
               + "' OR birthdate LIKE '" + "%" + TextBoxSearch.Text + "%"
               + "' OR sex LIKE '" + "%" + TextBoxSearch.Text + "%"
               + "' OR emailaddress LIKE '" + "%" + TextBoxSearch.Text + "%"
               + "' OR contact LIKE '" + "%" + TextBoxSearch.Text + "%"
               + "' OR package LIKE '" + "%" + TextBoxSearch.Text + "%"
               +"'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void BtnShowAll_Click(object sender, EventArgs e)
        {

        }
    }
}