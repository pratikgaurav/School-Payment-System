using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

public partial class Recovery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    /*
    public void cancelButton(object sender, EventArgs e)
    {

        Response.Redirect("login.aspx");
    }
}
*/

        protected void rcvrbtn_Click(object sender, EventArgs e)
        {
            String checkMail = recoverEmail.Text;
            UserInfor S1 = null;
            if (Application["AllUsersList"] != null)
            {
                List<UserInfor> allUsersList = Application["AllUserList"] as List<UserInfor>;
                if (allUsersList != null)
                {
                    for (int i = 0; i < allUsersList.Count; i++)
                    {
                        if (allUsersList[i].EmailAddress == checkMail)
                        {
                            S1 = allUsersList[i] as UserInfor;
                        }
                    }
                }
            }
            if (S1 != null)
            {
                String msgTo = checkMail;
                String msgSubject = "We have recovered your password!";
                String msgBody = "Dear " + S1.FirstName + ",<br/><br/>You are receiving this email because a you requested to recover your password.<br/><br/>Your current password is: " + S1.Password + "<br/><br/>Thank You.<br/>Gateway School Account Administration Team";
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
            else
            {
                String url = "Signup.aspx";
                ClientScript.RegisterStartupScript(this.GetType(), "callfunction", "alert(' Sorry we cannot find a matching email.Please Sign Up. '); window.location.href = '" + url + "'; ", true);
            }

            ClientScript.RegisterStartupScript(this.GetType(), "callfunction", "alert(' Thank You.An email notification has also been sent to the address we have in our file ')", true);
        }
}