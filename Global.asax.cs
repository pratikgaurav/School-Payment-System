using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Web.SessionState;
using System.Data.SqlClient;
using System.Configuration;

namespace Wadfinal

{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            Application["AllUsersList"] = new List<UserInfor>();
            Application["AllStudentList"] = new List<StudentInfor>();
            List<UserInfor> allUsersList = Application["AllUsersList"] as List<UserInfor>;
            if (allUsersList == null)
            {
                allUsersList = new List<UserInfor>();
            }
            List<StudentInfor> allStudentsList = Application["AllStudentList"] as List<StudentInfor>;
            if (allStudentsList == null)
            {
                allStudentsList = new List<StudentInfor>();
            }
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["dcmweb.c432017sp02kamireddig.dbo"].ToString());
            cn.Open();
            String query = "SELECT * from Kamireddig_WADsp17_StudentInfor";
            String query1 = "SELECT * from Kamireddig_WADsp17_UserInfor";
            SqlCommand cmd = new SqlCommand(query, cn);
            SqlCommand cmd1 = new SqlCommand(query1, cn);
            SqlDataReader sqlReader = cmd.ExecuteReader();
            SqlDataReader sqlReader1 = cmd1.ExecuteReader();

            while (sqlReader.Read())
            {
                UserInfor obj = new UserInfor();
                obj.EmailAddress = (string)sqlReader["EmailAddress"];
                obj.Password = (string)sqlReader["Password"];
                obj.FirstName = (string)sqlReader["FirstName"];
                obj.LastName = (string)sqlReader["LastName"];
                obj.SecurityQuestion = (string)sqlReader["SecurityQuestion"];
                obj.SecurityQuestionAnswer = (string)sqlReader["SecurityQAnswer"];
                obj.StateOrProvince = (string)sqlReader["StateOrProvince"];
                obj.SchoolDistrictName = (string)sqlReader["SchoolDistName"];
                allUsersList.Add(obj);
            }
            Application["AllUsersList"] = allUsersList;
            while (sqlReader1.Read())
            {
                StudentInfor obj1 = new StudentInfor();
                obj1.EmailAddress = (string)sqlReader1["EmailAddress"];
                obj1.StudentFirstName = (string)sqlReader1["StudentFirstName"];
                obj1.StudentId = (string)sqlReader1["StudentId"];
                obj1.StudentLastName = (string)sqlReader1["StudentLastName"];
                obj1.SchoolName = (string)sqlReader1["SchoolName"];
                allStudentsList.Add(obj1);
            }
            Application["AllStudentList"] = allStudentsList;
            cn.Close();
        }
        protected void Session_Start(object sender, EventArgs e)
        {

        }
        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }
        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }
        protected void Application_Error(object sender, EventArgs e)
        {

        }
        protected void Session_End(object sender, EventArgs e)
        {

        }
        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}