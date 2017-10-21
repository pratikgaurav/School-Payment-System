<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 5.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-Transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Login </title>
    <link rel="stylesheet" href="Login.css">
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
        <form runat="server" method="get">
            <h3 align="center">Login</h3>

            <div align="center">
                <i class="fa fa-envelope" aria-hidden="true"></i>
                <asp:TextBox runat="server" class="button" ID="emailLogin" ReadOnly="false" placeholder="Email Address"></asp:TextBox>
            <br />
                <br />
            </div>
            <div align="center">
                <i class="fa fa-key" aria-hidden="true"></i>
                <asp:TextBox runat="server" class="button" ReadOnly="false" ID="passwordLogin" TextMode="Password" placeholder="Password"></asp:TextBox>
            </div>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldvalidator10"
                required="true"
                ControlToValidate="emailLogin"
                ErrorMessage="Email ID is Required" ValidationGroup="validation1"
                runat="server" EnableClientScript="true"></asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter a valid E-Mail"
                ControlToValidate="emailLogin"
                ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldvalidator11"
                required="true"
                ControlToValidate="passwordLogin"
                ErrorMessage="Password is Required" ValidationGroup="validation1"
                runat="server" EnableClientScript="true"> </asp:RequiredFieldValidator><br />
            <asp:ValidationSummary ID="validation1" runat="server" ShowMessageBox="True" EnableClientScript="true"
                ShowSummary="false" ValidationGroup="validation1" />
            <div align="center">
                <asp:Button ID="CancelButton2" OnClick="navigateToHome" runat="server" Text="Cancel"></asp:Button>
                <asp:Button ID="loginButton" OnClick="Unnamed_Click1" ValidationGroup="validation1" runat="server" Text="Login"></asp:Button>

            </div>
            <br />
            <asp:HyperLink ID="forgotpassword" NavigateUrl="Recovery.aspx" Text="Forgot your username or password?" runat="server" Font-Size="Medium" Style="text-align: right" />
            <br />
            <asp:HyperLink ID="Signup" NavigateUrl="Signup.aspx" Text="Sign up today!" runat="server" Font-Size="Medium" Style="text-align: right" />

        </form>
    </div>
</body>
</html>
