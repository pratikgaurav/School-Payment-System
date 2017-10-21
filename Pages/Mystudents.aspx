<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Mystudents.aspx.cs" Inherits="Mystudents" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 5.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-Transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />
    <title>My Students </title>
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
                <asp:Label class="hlabel" Text="My Students" ID="myStudentLabel1" runat="server" />
            </div>

            <br />
            <br />
            <!--First Division-->

            <div align="center" runat="server" id="dispStudentInfoNoRec">
                <div align="right">
                    <asp:Button ID="Addstudent" OnClick="addStudent" runat="server" Text="ADD" align="right" Height="28px" Width="129px"></asp:Button>
                    <i class="fa fa-user-plus fa-lg" aria-hidden="true"></i>
                </div>
                <br />
                <br />
                <asp:Table ID="myStudentTable" runat="server">
                    <asp:TableHeaderRow runat="server" Width="100%">
                        <asp:TableHeaderCell runat="server"><b>First Name</b></asp:TableHeaderCell>
                        <asp:TableHeaderCell runat="server"><b>Last Name</b></asp:TableHeaderCell>
                        <asp:TableHeaderCell runat="server"><b>Student Id</b></asp:TableHeaderCell>
                        <asp:TableHeaderCell runat="server"><b>School Name</b></asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                </asp:Table>

                <br />
                <br />
                <asp:Button class="button" ID="ok" OnClientClick="okButton" runat="server" Text="Ok"></asp:Button>
            </div>
        </form>
    </div>
</body>
</html>
