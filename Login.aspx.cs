using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void navigateToHome(object sender, EventArgs e)
    {

        Response.Redirect("index.aspx");
    }
    public void myStudents(object sender, EventArgs e)
    {

        Response.Redirect("Mystudents.aspx");
    }

    protected void Unnamed_Click1(object sender, EventArgs e)
    {

        List<UserInfor> allUsersList = Application["AllUserList"] as List<UserInfor>;

        String username = emailLogin.Text;
        String pass = passwordLogin.Text;
        bool val = false;
        bool notFound = false;
        // int count = 0;
        if (allUsersList != null)
        {
            foreach (var u in allUsersList)
            {
                if (u.EmailAddress == username)
                {
                    notFound = true;
                }
                if (u.EmailAddress == username && u.Password == pass)
                {
                    val = true;
                    Session["currentUser"] = u;
                    Response.Write("<script>alert('Successfully logged In')</script>");
                    Response.Redirect("Mystudents.aspx");
                    // Session["currentUser"] = u;
                    //count++;
                }

            }
            if (!val && notFound)
            {
                Response.Write("<script>alert('Credentials Do not Match!!!!')</script>");
            }

            if (!notFound)
            {
                Response.Write("<script>alert(' Please register first with our system.')</script>");
            }

        }
        else
        {
            Response.Write("<script>alert(' Please register first with our system.')</script>");
            //notFound = true;

        }
    }
}