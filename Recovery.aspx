<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Recovery.aspx.cs" Inherits="Recovery" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 5.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-Transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Recover Password </title>
    <link rel="stylesheet" href="Recovery.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
</head>

<body>
    <div class="first">
        <div id="box1">
            <div class="dropdown">
                <h4 class="fp" onclick="javascript:alert('Work in Progress');">For Parents </h4>
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
        <form runat="server" method="get" enctype="application/x-www-form-urlencoded" action="/html/codes/html_form_handler.cfm">
            <h3 align="center">Recover Password</h3>

            <div align="center">
                <i class="fa fa-envelope" aria-hidden="true"></i>
                <asp:TextBox runat="server" ID="recoverEmail" ReadOnly="false" placeholder="Email Address"></asp:TextBox>
            </div>
            <p style="font-size: 14px; text-align: justify">
                The email you are typing above must match the email in records. If the emails match you will receive an email with login information.
            </p>
            <asp:RequiredFieldValidator ID="RequiredFieldvalidator15"
                required="true"
                ControlToValidate="recoverEmail"
                ErrorMessage="Email ID is Required" ValidationGroup="validation2"
                runat="server" EnableClientScript="true"> </asp:RequiredFieldValidator></br>
            <asp:ValidationSummary ID="validation2" runat="server" 
                ShowMessageBox="True" EnableClientScript="true"
                ShowSummary="false" ValidationGroup="validation2" />
            <asp:RegularExpressionValidator runat="server" ID="regularExpValidatorrcvpwdemail"
                ControlToValidate="recoverEmail" Display="Dynamic"
                ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"
                ErrorMessage="Please Enter Valid Email" ForeColor="#66ffff" ValidationGroup='valGroup1' />

            <div align="center">
                


                <asp:Button ID="cancelbtn1" runat="server" Text="Cancel and go back" PostBackUrl="~/index.aspx" />
                <asp:Button ID="rcvrbtn" runat="server" Text="Recover Password" ValidationGroup='valGroup1' OnClick="rcvrbtn_Click" />
            </div>
        </form>
    </div>
</body>
</html>

