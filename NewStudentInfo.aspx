<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewStudentInfo.aspx.cs" Inherits="NewStudentInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 5.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-Transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />
    <title>New Student Information </title>
    <link rel="stylesheet" href="MyStudents.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
</head>

<body>
    <div class="first">
        <div id="box1">
            <div class="dropdown">
                <h4 class="fp" onclick="clickFunction()">For Parents </h4>
                <div class="dropdown-content">
                    <a href="Signup.aspx">Create Account </a>
                    <a href="Login.aspx">Login</a>
                    <a href="Faq.aspx">Frequently asked Questions</a>
                    <a href="Support.aspx">Support</a>
                </div>
            </div>
        </div>

        <div id="box2">
            <h4 class="fp1"><a style="text-decoration: none; color: black" href="Whatdowedo.aspx">What Do we Do </a></h4>
        </div>

        <div id="box3">
            <h4 class="fp"><a style="text-decoration: none; color: black" href="http://www.foodservice.com/blogs/">Blog </a></h4>
        </div>

        <div id="box4">
            <div class="circle">
                <div class="text">
                    GW
                </div>
            </div>
            <h2 class="main"><span style="color: #1abc9c">gateWay</span><span style="color: #f1c40f">School</span><span style="color: #2c3e50">Account</span><span style="color: #95a5a6">.com </span></h2>
        </div>

        <div id="box5">
            <button class="button1" onclick="window.location='Signup.aspx'">Create Account</button>
        </div>

        <div id="box6">
            <button class="button2" onclick="window.location='Login.aspx'">Login</button>
        </div>
    </div>

    <div class="centerbox">
        <form runat="server" method="get" >
            <div align="center">
                <asp:Label class="hlabel" Text="New Student Information" ID="myStudentLabel1" runat="server" />
            </div>

            <br />
            <br />


            <div align="center" runat="server" id="dispStudentInfoNoRec">
                <div align="right">
                    <asp:Button ID="Addstudent" OnClick="Page_Load" runat="server" Text="AddStudent" align="right"></asp:Button>
                    <i class="fa fa-user-plus fa-lg" aria-hidden="true"></i>
                </div>
                <br />
                <br />
            </div>

            <div>
                <div align="center">
                    <a class="hideDisplay">
                        <i class="fa fa-globe" aria-hidden="true"></i>
                    </a>
                    <asp:TextBox ID="Fname3" runat="server" ReadOnly="false" placeholder="Student First Name"></asp:TextBox>
                </div>
                <br />
                <div align="center">
                    <a class="hideDisplay">
                        <i class="fa fa-globe" aria-hidden="true"></i>
                    </a>
                    <asp:TextBox runat="server" ID="Lname3" ReadOnly="false" placeholder="Student Last Name"></asp:TextBox>
                </div>
                <br />
                <div align="center">
                    <a class="hideDisplay">
                        <i class="fa fa-globe" aria-hidden="true"></i>
                    </a>
                    <asp:TextBox runat="server" ID="StudentID1" ReadOnly="false" placeholder="Student Id"></asp:TextBox>
                </div>
                <br />
                <div align="center">
                    <a class="hideDisplay">
                        <i class="fa fa-globe" aria-hidden="true"></i>
                    </a>
                    <asp:TextBox runat="server" ID="SchoolName1" ReadOnly="false" placeholder="School Name"></asp:TextBox>
                </div>
                <br />
                <br />
                <div align="center">
                    <asp:Button ID="Cancel" OnClick="cancelButton" runat="server" Text="Cancel"></asp:Button>
                    <asp:Button ID="Add" OnClick="addToListButton" ValidationGroup="validation3" runat="server" Text="Add to List"></asp:Button>
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldvalidator20"
                    required="true"
                    ControlToValidate="Fname3"
                    ErrorMessage="First Name is Required" ValidationGroup="validation3"
                    runat="server" EnableClientScript="true"></asp:RequiredFieldValidator><br />

                <asp:RequiredFieldValidator ID="RequiredFieldvalidator21"
                    required="true"
                    ControlToValidate="Lname3"
                    ErrorMessage="Last Name is Required" ValidationGroup="validation3"
                    runat="server" EnableClientScript="true"> </asp:RequiredFieldValidator><br />

                <asp:RequiredFieldValidator ID="RequiredFieldvalidator22"
                    required="true"
                    ControlToValidate="StudentID1"
                    ErrorMessage="Student ID is Required" ValidationGroup="validation3"
                    runat="server" EnableClientScript="true"></asp:RequiredFieldValidator><br />

                <asp:RequiredFieldValidator ID="RequiredFieldvalidator23"
                    required="true"
                    ControlToValidate="SchoolName1"
                    ErrorMessage="School Name is Required" ValidationGroup="validation3"
                    runat="server" EnableClientScript="true"> </asp:RequiredFieldValidator><br />
                <asp:ValidationSummary ID="validation3" runat="server" ShowMessageBox="True" EnableClientScript="true"
                    ShowSummary="false" ValidationGroup="validation3" />
                <asp:RegularExpressionValidator ID="RegularExpressionStudentID"
                    ControlToValidate="StudentID1" runat="server"
                    ValidationGroup="validation3" ErrorMessage="Enter valid Student ID"
                    ValidationExpression="^\d{7}$"></asp:RegularExpressionValidator><br />

            </div>
        </form>
</body>
</html>
