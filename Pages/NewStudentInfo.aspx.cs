using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewStudentInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void cancelButton(object sender, EventArgs e)
    {
        Response.Redirect("Mystudents.aspx");
    }

    //public void addToListButton(object sender, EventArgs e)
    //{
    //    Response.Redirect("mystudents.aspx?label1=" + Fname3.Text + "&label2=" + Lname3.Text + "&label3=" + StudentID1.Text + "&label4=" + SchoolName1.Text);
    //}
    protected void addToListButton(object sender, EventArgs e)
    {
        if (Session["studentDetail"] == null)
        {
            List<StudentInfor> studentDetail = new List<StudentInfor>();
            String FirstName = Fname3.Text.ToString();
            String LastName = Lname3.Text.ToString();
            String Id = StudentID1.Text.ToString();
            String Name = SchoolName1.Text.ToString();
            String Email = "NA";
            StudentInfor student = new StudentInfor();
            student.StudentFirstName = FirstName;
            student.StudentLastName = LastName;
            student.StudentId = Id;
            student.SchoolName = Name;
            student.EmailAddress = Email;
            studentDetail.Add(student);
            Session["studentDetail"] = studentDetail;
            // Response.Write("<script>alert('hello" + studentDetail[0].StudentFirstName + "')</script>");
            //Response.Write("<script>alert('" + Session["studentDetail"].ToString().Length + "')</script>");

        }
        else
        {
            List<StudentInfor> studentDetail = Session["studentDetail"] as List<StudentInfor>;
            String FirstName = Fname3.Text.ToString();
            String LastName = Lname3.Text.ToString();
            String Id = StudentID1.Text.ToString();
            String Name = SchoolName1.Text.ToString();
            String Email = "NA";
            StudentInfor student = new StudentInfor();
            student.StudentFirstName = FirstName;
            student.StudentLastName = LastName;
            student.StudentId = Id;
            student.SchoolName = Name;
            student.EmailAddress = Email;
            studentDetail.Add(student);
            //  Response.Write("<script>alert('hi" + studentDetail[0].StudentFirstName + "')</script>");
            Session["studentDetail"] = studentDetail;
            //Response.Write("<script>alert('" + Session["studentDetail"].ToString().Length + "')</script>");

        }
        Response.Redirect("Mystudents.aspx");
    }
}