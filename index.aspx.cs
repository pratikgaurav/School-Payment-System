using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["currentUser"] != null)
            {
                DLG1.Text = "LogOut";
                DCA1.Visible = false;
                loginmenu.Text = "LogOut";
            }
            else
            {
                DLG1.Text = "LogIn";
                DCA1.Visible = true;
                loginmenu.Text = "LogIn";
            }
        }

    }
    //protected void Defaultname(object sender, EventArgs e)
    //{
    //    Response.Redirect("SignUp.aspx");
    //}
    protected void Loginname(object sender, EventArgs e)
    {

        if (DLG1.Text == "LogIn")
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            string str = "You Have Now Logged Out";
            Response.Write("<script language=javascript>alert('" + str + "');</script>");
            Session.Abandon();
            Response.AddHeader("REFRESH", "1;index.aspx");
        }

    }
    //public void Tellmemore(object sender, EventArgs e)
    //{
    //    Response.Write("<script>alert('Work in progress')</script>");
    //}
    public void Signup(object sender, EventArgs e)
    {
        Response.Redirect("Signup.aspx");
    }


    protected void Tellmemore(object sender, EventArgs e)
    {
        //Response.Write("Thank You for your comments.An email has been sent to the address you entered. Please feel free to contact us anytime in future so we will address your concerns ");
        // ClientScript.RegisterStartupScript(this.GetType(), "callfunction", "alert(' Thank You for your comments.An email has been sent to the address you entered. Please feel free to contact us anytime in future so we will address your concerns ')", true);
        String msgTo = emailAddress1.Text;
        String msgSubject = "We have received your message!";
        String msgBody = "Dear Parent,<br/><br/>You are receiving this email because a you contacted us with a comment , question(s) and / or a concern(s).<br/><br/>Our support staff will respond within the next 48 hours.<br/><br/>Thank You.<br/>Gateway School Account Administration Team";
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
        catch (Exception)
        {
            Response.Write("Helloo");
        }
    }
}