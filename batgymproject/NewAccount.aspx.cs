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
    public partial class NewAccount : System.Web.UI.Page
    {
       static double totalAmount = 0.00;

        static string radiobtnsex = "";
        SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=admindb;Integrated Security=True");


        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
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

            if (!IsPostBack)
            {
                divCustomerInformation.Visible = false;
                divCustomerStatistics.Visible = false;
                divCustomerWorkoutPlan.Visible = false;
                divCustomerPayment.Visible = false;
            }

            
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {

           

            Boolean CompInput = false;
            if (RadioButtonMale.Checked)
            {
                radiobtnsex = "Male";
            }
            else
            {
                radiobtnsex = "Female";
            }

            if (TextFirstname.Text == ""|| TextLastname.Text ==""||TextAddress.Text ==""||TextBirthdate.Text==""||radiobtnsex==""||TextEmail.Text ==""|| TextContact.Text ==""|| DropPackage.SelectedValue == "" || DropPackage.SelectedValue == "Choose a package...")
            {
                CompInput = false;
                String myStringVariable = "Adding new member FAILED! Please fill all the fields!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);


            }
            else
            {
                CompInput = true;
            }

            if (CompInput)
            {


                string mainconn = ConfigurationManager.ConnectionStrings["admindbConnectionString"].ConnectionString;
                SqlConnection sqlconn = new SqlConnection(mainconn);
                string sqlquery = "insert into [dbo].[tbl_members] (firstname,middlename,lastname,address,birthdate,sex,emailaddress,contact,package,workout) values (@firstname,@middlename,@lastname,@address,@birthdate,@sex,@emailaddress,@contact,@package,@workout)";
                SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
                sqlcomm.Parameters.AddWithValue("@firstname", TextFirstname.Text);
                sqlcomm.Parameters.AddWithValue("@middlename", TextMiddlename.Text);
                sqlcomm.Parameters.AddWithValue("@lastname", TextLastname.Text);
                sqlcomm.Parameters.AddWithValue("@address", TextAddress.Text);
                sqlcomm.Parameters.AddWithValue("@birthdate", TextBirthdate.Text);
                sqlcomm.Parameters.AddWithValue("@sex", radiobtnsex);
                sqlcomm.Parameters.AddWithValue("@emailaddress", TextEmail.Text);
                sqlcomm.Parameters.AddWithValue("@contact", TextContact.Text);
                sqlcomm.Parameters.AddWithValue("@package", DropPackage.SelectedValue);
                sqlcomm.Parameters.AddWithValue("@workout", DropWorkOut.SelectedValue);

                string dateAsString = DateTime.Now.ToString();
                string logsList = "New account has been registered: Name:" + TextFirstname.Text + " " + TextMiddlename.Text + " " + " " + TextLastname.Text + " " + "Address: " + TextAddress.Text + " Birthdate: " + TextBirthdate.Text + " Sex:" + radiobtnsex + " " + " Email Address: " + TextEmail.Text + " Contact: " + TextContact.Text + " Package: " + DropPackage.SelectedValue + " WorkOut: "+DropWorkOut.SelectedValue+"";

                string logs = "insert into [dbo].[tbl_updates] (description,date) values (@description,@date)";
                SqlCommand sqllogs = new SqlCommand(logs, sqlconn);
                sqllogs.Parameters.AddWithValue("@description", logsList);
                sqllogs.Parameters.AddWithValue("@date", dateAsString);

                sqlconn.Open();
                sqlcomm.ExecuteNonQuery();
                sqllogs.ExecuteNonQuery();

                //get member id

                string queryStr = "";
                int memberidp = 0;

                string memberidpString = "";
                queryStr = "SELECT id from tbl_members where emailaddress = '" + TextEmail.Text + "' AND contact = '" + TextContact.Text + "' ;";

                SqlCommand comdd = new SqlCommand(queryStr, sqlconn);
                var dr = comdd.ExecuteReader();

                if (dr.HasRows)
                {
                    dr.Read();
                    memberidp = dr.GetInt32(0);

                }
                memberidpString += memberidp;
                dr.Close();

                //end of get member id and store in variable memberid
                string dateStart = DateTime.Now.ToString();
                DateTime stDate = DateTime.Parse(dateStart);
                string endDate = "";
                string descPackage = "";
               
              
               

            
                if (DropPackage.SelectedValue == "Bronze")
                {
                    
                    endDate = DateTime.Now.AddDays(30).ToString();
                 
                    descPackage = "Work out 1, Push up ";
                }
                else if (DropPackage.SelectedValue == "Silver")
                {
             
                    endDate = DateTime.Now.AddDays(60).ToString();
                    descPackage = "Work out 2, Curl up ";
                }
                else if (DropPackage.SelectedValue == "Gold")
                {
                    endDate = DateTime.Now.AddDays(90).ToString();
                    descPackage = "Work out 3, Valorant ";
                }

                else if (DropPackage.SelectedValue == "Diamond")
                {
                   
                  
                    endDate = DateTime.Now.AddDays(120).ToString();
                    descPackage = "Work out 4, Ewan tulog na lang siguro ";
                }

                DateTime enDate = DateTime.Parse(endDate);

                TimeSpan timeToEvent = stDate.Subtract(enDate);
                string remainingdays = string.Format("Days :{0}, Hours : {1}, Minutes : {2}", timeToEvent
                    .Days, timeToEvent.Hours, timeToEvent.Minutes);


                string statusCurrent = "Active";
                
                string sqlInsertStatus = "insert into [dbo].[tbl_upstatus] (member_id,description,subscription_start,subscription_end,remaining_days,status,amount,package,workout) values (@member_id,@description,@subscription_start,@subscription_end,@remaining_days,@status,@amount,@package,@workout)";

                SqlCommand sqlInStatus = new SqlCommand(sqlInsertStatus, sqlconn);
                sqlInStatus.Parameters.AddWithValue("@member_id", SqlDbType.Int).Value = memberidpString;
                sqlInStatus.Parameters.AddWithValue("@description", descPackage);
                sqlInStatus.Parameters.AddWithValue("@subscription_start", dateStart);
                sqlInStatus.Parameters.AddWithValue("@subscription_end", endDate);
                sqlInStatus.Parameters.AddWithValue("@remaining_days", remainingdays);
                sqlInStatus.Parameters.AddWithValue("@status", statusCurrent);
                sqlInStatus.Parameters.Add("@amount", SqlDbType.Int).Value = TextPayment.Text;
                sqlInStatus.Parameters.AddWithValue("@package", DropPackage.SelectedValue);
                sqlInStatus.Parameters.AddWithValue("@workout", DropWorkOut.SelectedValue);


                sqlInStatus.ExecuteNonQuery();

                string sqlMemberStat = "insert into [dbo].[tbl_memberstatistics] (member_id,stat_description,stat_date,height,kilograms,shoulder,chest,arm,waist,hip,calf) values (@member_id,@stat_description,@stat_date,@height,@kilograms,@shoulder,@chest,@arm,@waist,@hip,@calf)";

                SqlCommand sqlInMemberStat = new SqlCommand(sqlMemberStat, sqlconn);
                sqlInMemberStat.Parameters.Add("@member_id", SqlDbType.Int).Value = memberidpString;
                sqlInMemberStat.Parameters.AddWithValue("@stat_description", TextDescription.Text);
                sqlInMemberStat.Parameters.AddWithValue("@stat_date", dateStart);
                sqlInMemberStat.Parameters.AddWithValue("@height", TextHeight.Text);
                sqlInMemberStat.Parameters.AddWithValue("@kilograms", TextWeight.Text);
                sqlInMemberStat.Parameters.AddWithValue("@shoulder", TextShoulder.Text );
                sqlInMemberStat.Parameters.AddWithValue("@chest", TextChest.Text);
                sqlInMemberStat.Parameters.AddWithValue("@arm", TextArm.Text);
                sqlInMemberStat.Parameters.AddWithValue("@waist", TextWaist.Text);
                sqlInMemberStat.Parameters.AddWithValue("@hip", TextHip.Text);
                sqlInMemberStat.Parameters.AddWithValue("@calf", TextCalf.Text);


                sqlInMemberStat.ExecuteNonQuery();


                //reset all textbox

               
                TextHeight.Text = "";
                TextDescription.Text = "";
                TextWeight.Text = "";
                TextShoulder.Text = "";
                TextChest.Text = "";
                TextArm.Text = "";
                TextWaist.Text = "";
                TextHip.Text = "";
                TextCalf.Text = "";
                remainingdays = "";
                descPackage = "";

                dateStart = "";
                endDate = "";
                statusCurrent = "";
                TextPayment.Text = "";
                TextFirstname.Text = "";
                TextMiddlename.Text = "";
                TextLastname.Text = "";
                TextAddress.Text = "";
                TextBirthdate.Text = "";
                radiobtnsex = "";
                TextEmail.Text = "";
                TextContact.Text = "";
                DropPackage.SelectedValue = "Choose a package...";
                DropWorkOut.SelectedValue = "Choose a workout...";


                sqlconn.Close();

                String myStringVariable = "Registered Successfully!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);

            }
            Response.Redirect("NewAccount.aspx");
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
        protected void LinkBtnMemberStatus_Click(object sender, EventArgs e)
        {
            Response.Redirect("MembershipStatus.aspx");
        }

        protected void BtnLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

    
        protected void DropPackage_SelectedIndexChanged(object sender, EventArgs e)
        {
            
           
            if (DropPackage.SelectedItem.Value == "Bronze")
            {
                totalAmount = totalAmount + 1000.00;
            

            }
            else if (DropPackage.SelectedValue == "Silver")
            {
                totalAmount = totalAmount +  2750.00;

            
            }
            else if (DropPackage.SelectedValue == "Gold")
            {

                totalAmount = totalAmount +  5550.00;
            }

            else if (DropPackage.SelectedValue == "Diamond")
            {
                totalAmount = totalAmount +  10000.00;
            
            }
            lbl_Payment.Text = totalAmount.ToString("N2");

        }

        protected void Next1_Click(object sender, EventArgs e)
        {
            
            if (DropPackage.SelectedValue == "Choose a package..."){
                String myStringVariable = "Please choose a package!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
            }
            else
            {
                divCustomerInformation.Visible = true;
                divCustomerPackagePlan.Visible = false;
            }

        }

        protected void Next2_Click(object sender, EventArgs e)
        {
            if (RadioButtonMale.Checked)
            {
                radiobtnsex = "Male";
            }
            else
            {
                radiobtnsex = "Female";
            }

            if (TextFirstname.Text == "" || TextLastname.Text == "" || TextAddress.Text == "" || TextBirthdate.Text == "" || radiobtnsex == "" || TextEmail.Text == "" || TextContact.Text == "")
            {
                String myStringVariable = "Please fill all required fields!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
            }
            else
            {
                divCustomerStatistics.Visible = true;
                divCustomerInformation.Visible = false;

            }
        }

        protected void Next3_Click(object sender, EventArgs e)
        {

            if (TextHeight.Text == "" || TextDescription.Text == "" || TextWeight.Text == "" || TextChest.Text == "" || TextShoulder.Text == "" || TextArm.Text == "" || TextWaist.Text == "" || TextCalf.Text == "")
            {
                String myStringVariable = "Please fill all required fields!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
            }
            else
            {
                divCustomerStatistics.Visible = false;
                divCustomerWorkoutPlan.Visible = true;
                lbl_totalpayment.Text = totalAmount.ToString("N2");
                disp_work1();
                disp_work2();
                disp_work3();
                disp_work4();

            }
        }

     
        public void disp_work1()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select activityname, enhance FROM tbl_Activities;";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridW1.DataSource = dt;
            GridW1.DataBind();
        }
        public void disp_work2()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select activityname, enhance FROM tbl_Activities;";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridW2.DataSource = dt;
            GridW2.DataBind();
        }
        public void disp_work3()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select activityname, enhance FROM tbl_Activities;";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridW3.DataSource = dt;
            GridW3.DataBind();
        }
        public void disp_work4()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select activityname, enhance FROM tbl_Activities;";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridW4.DataSource = dt;
            GridW4.DataBind();
        }

        protected void DropWorkOut_SelectedIndexChanged(object sender, EventArgs e)
        {
            

            if (DropWorkOut.SelectedItem.Value == "Work Out 1")
            {
                totalAmount = totalAmount +  1000.00;


            }
            else if (DropWorkOut.SelectedValue == "Work Out 1")
            {
                totalAmount = totalAmount +  2750.00;


            }
            else if (DropWorkOut.SelectedValue == "Work Out 1")
            {

                totalAmount = totalAmount +  5550.00;
            }

            else if (DropWorkOut.SelectedValue == "Work Out 1")
            {
                totalAmount = totalAmount +  10000.00;

            }
          lbl_totalpayment.Text = totalAmount.ToString("N2");
        }

        protected void Next4_Click(object sender, EventArgs e)
        {
            if (DropWorkOut.SelectedValue == "Choose a workout...")
            {
                String myStringVariable = "Please fill all required fields!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
            }
            else
            {
          
                divCustomerWorkoutPlan.Visible = false;
                divCustomerPayment.Visible = true;
                lbl_finalPayment.Text = totalAmount.ToString("N2");
 
            }
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            divCustomerInformation.Visible = false;
            divCustomerPackagePlan.Visible = true;
        }

        protected void Back3_Click(object sender, EventArgs e)
        {
            divCustomerStatistics.Visible = false;
            divCustomerInformation.Visible = true;
        }

        protected void Back4_Click(object sender, EventArgs e)
        {
            divCustomerWorkoutPlan.Visible = false;
            divCustomerStatistics.Visible = true;
        }

        protected void Back5_Click(object sender, EventArgs e)
        {
            divCustomerPayment.Visible = false;
            divCustomerWorkoutPlan.Visible = true;
        }

    }
}