using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Mystudents : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["currentUser"] == null)
        {
            Addstudent.Text = "LogIn";
        }
        else
        {
            Addstudent.Text = "ADD";
            UserInfor user = Session["currentUser"] as UserInfor;
            myStudentLabel1.Text = "My Student For " + user.FirstName + " " + user.LastName;
        }
        if (Session["studentDetail"] == null)
        {
            TableRow tr = new TableRow();
            TableCell tc = new TableCell();
            tc.Text = "No Records Found";
            tr.Cells.Add(tc);
            myStudentTable.Rows.Add(tr);
        }
        else
        {

            if (myStudentTable.Rows[0].ToString() == "No Records Found")
            {
                //MyStudentTable.Rows.RemoveAt(0);
            }
            /* if (Session["name"] != null)    //this is you have to do at every postback
             {
                 MyStudentTable = Session["name"] as Table;
             }*/
            //if (!IsPostBack)
            //{

            List<StudentInfor> studentDetail = Session["studentDetail"] as List<StudentInfor>;
            Response.Write("<script>alert('Working here---->" + studentDetail.Count + "')</script>");
            //String[] value = str.Split('|');

            TableRow tr = new TableRow();


            // Console.WriteLine("table length--->"+str.Length);

            for (int i = 0; i < studentDetail.Count; i++)
            {

                TableRow tr1 = new TableRow();
                TableCell tcFirstName = new TableCell();
                tcFirstName.Text = studentDetail[i].StudentFirstName;
                tr1.Cells.Add(tcFirstName);

                TableCell tcLastName = new TableCell();
                tcLastName.Text = studentDetail[i].StudentLastName;
                tr1.Cells.Add(tcLastName);

                TableCell tcId = new TableCell();
                tcId.Text = studentDetail[i].StudentId;
                tr1.Cells.Add(tcId);

                TableCell tcSchool = new TableCell();
                tcSchool.Text = studentDetail[i].SchoolName;
                tr1.Cells.Add(tcSchool);
                myStudentTable.Rows.Add(tr1);
            }

        }

    }
    

    public void addStudent(object sender, EventArgs e)
    {
        Response.Redirect("NewStudentInfo.aspx");
    }

    public void okButton(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}