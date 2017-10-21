using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Net.Mail;
using System.Net;
using System.Configuration;
using System.Data.SqlClient;

public partial class Signup : System.Web.UI.Page
{
    UserInfor aUser = new UserInfor(); //pratik
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void navigateToHome(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }
    protected void emailtb_TextChanged(object sender, EventArgs e)
    {
        List<UserInfor> allUsersList = Application["AllUserList"] as List<UserInfor>;
        string checkEmail = email2.Text;

        if (allUsersList != null)
        {
            foreach (UserInfor item in allUsersList)
            {
                if (item.EmailAddress == checkEmail)

                    Response.Write("<script>alert(' " + checkEmail + " already exists. Please go to Login Page. ')</script>");
                break;
            }
        }

    }

    protected void Unnamed_Click1(object sender, EventArgs e)
    {

        if (!Page.IsValid) return;
        UserInfor aUser = new UserInfor(StateDropDown.SelectedValue, schoolDistrict.Text, fName1.Text, lName1.Text, email2.Text, passwordSignUP1.Text, Questionslist.SelectedValue, securityQuestion1.Text);
        List<UserInfor> allUsersList = Application["AllUserList"] as List<UserInfor>;
        if (allUsersList == null)
        {
            allUsersList = new List<UserInfor>();
        }

        aUser.StateOrProvince = StateDropDown.SelectedValue;
        aUser.SchoolDistrictName = schoolDistrict.Text;
        aUser.FirstName = fName1.Text;
        aUser.LastName = lName1.Text;
        aUser.EmailAddress = email2.Text;
        aUser.Password = passwordSignUP1.Text;
        aUser.SecurityQuestion = Questionslist.SelectedValue;
        aUser.SecurityQuestionAnswer = securityQuestion1.Text;

        allUsersList.Add(aUser);


        Application["AllUserList"] = allUsersList;

        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["dcmweb.c432017sp02kamireddig.dbo"].ToString());

        cn.Open();
        SqlCommand cmd = new SqlCommand("INSERT INTO Kamireddig_WADsp17_UserInfor(EmailAddress,Password,FirstName,LastName,SecurityQuestion,SecurityQAnswer,StateOrProvince,SchoolDistName) VALUES (@EmailAddress,@Password,@FirstName,@LastName,@SecurityQuestion,@SecurityQAnswer,@StateOrProvince,@SchoolDistName)", cn);
        cmd.Parameters.AddWithValue("@EmailAddress", aUser.EmailAddress);
        cmd.Parameters.AddWithValue("@Password", aUser.Password);
        cmd.Parameters.AddWithValue("@FirstName", aUser.FirstName);
        cmd.Parameters.AddWithValue("@LastName", aUser.LastName);
        cmd.Parameters.AddWithValue("@SecurityQuestion", aUser.SecurityQuestion);
        cmd.Parameters.AddWithValue("@SecurityQAnswer", aUser.SecurityQuestionAnswer);
        cmd.Parameters.AddWithValue("@StateOrProvince", aUser.StateOrProvince);
        cmd.Parameters.AddWithValue("@SchoolDistName", aUser.SchoolDistrictName);
        //cmd.ExecuteNonQuery();
        cn.Close();



        Session["currentuser"] = aUser;
        Response.Write("<script>alert('Thank you for submitting the registration. An email notification is also sent to the the email address you provided during registation. You can now login.')</script>");
        string url = "login.aspx";
        ClientScript.RegisterStartupScript(this.GetType(), "callfunction", "alert(' Thank You for Signing Up.You can now login using the Log In option .An email has also been sent to email address you provided during Sign up. ');window.location.href = '" + url + "';", true);

        StateDropDown.SelectedIndex = 0;
        schoolDistrict.Text = "";
        fName1.Text = "";
        lName1.Text = "";
        email2.Text = "";
        emailConfirm1.Text = "";
        passwordSignUP1.Text = "";
        passwordConfirm1.Text = "";
        Questionslist.SelectedIndex = 0;
        securityQuestion1.Text = "";

        String msgTo = aUser.EmailAddress;
        String msgSubject = "New Signing Up Notification";
        String msgBody = "Dear " + aUser.FirstName + ",<br/><br/>Thank you for signing up with us..<br/><br/>You can now access your student school account at <a href =\"http://dcm.uhcl.edu/c432017sp02rajulapalliv/login.aspx\">Login</a><br/><br/>Thank you again for your Signing Up. If you have any questions, please contact us at<a href= \"http://dcm.uhcl.edu/c432017sp02rajulapalliv/support.aspx\">Contact Us</a><br/><br/>With Best Wishes,<br/><br/>Gateway School Account Administration Team.";
        MailMessage mailObj = new MailMessage();
        mailObj.Body = msgBody;
        mailObj.From = new MailAddress("wadsp17@gmail.com", "GateWaySchoolAccount Team ");
        mailObj.To.Add(new MailAddress(msgTo));
        mailObj.Subject = msgSubject;
        mailObj.IsBodyHtml = true;
        SmtpClient SMTPClient = new SmtpClient();
        SMTPClient.Host = "smtp.gmail.com";
        SMTPClient.Port = 587;
        SMTPClient.Credentials = new NetworkCredential("wadsp17@gmail.com", "wad@2017");
        SMTPClient.EnableSsl = true;
        try
        {
            SMTPClient.Send(mailObj);
            ClientScript.RegisterStartupScript(this.GetType(), "callfunction", "alert(' Thank You for your comments.An email has been sent to the address you entered. Please feel free to contact us anytime in future so we will address your concerns ')", true);

        }
        catch (Exception ex)
        {
            string str2;
            str2 = "Error --> " + ex.Message;
            string str3 = "Sorry! Some error occured during registration!";
            Response.Write("<script language=javascript>alert('" + str3 + "ERROR:" + str2 + "');</script>");
        }
    }
}