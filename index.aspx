<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 5.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-Transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>gateWaySchoolAccount.com </title>
    <link rel="stylesheet" href="index.css">
</head>

<body>
    <form runat="server">
        <div class="first">
            <div id="box1">
                <div class="dropdown">
                    <h4 class="fp" onclick="javascript:alert('Work in Progress');">For Parents </h4>
                    <div class="dropdown-content">
                        <a href="Signup.aspx">Create Account </a>
                        <asp:HyperLink runat="server" ID="loginmenu" Style="margin-top: 0px;" onclick="location.href='Login.aspx'">Login</asp:HyperLink>
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
            <asp:Button runat="server" class="button1" ID="DCA1" Text="Create Account" OnClick="Signup" Width="175px" />
            <asp:Button runat="server" class="button2" ID="DLG1" Text="Login" OnClick="Loginname" Width="175px" />
        </div>
        <div class="second">
            <div>
                <img src="image.jpg" alt="Money" align="left" height="200">
            </div>
            <div>
                <p id="para1">School Payment Solutions for Online Payments and more !</p>
            </div>
            <div>
                <p id="para2">
                    A complete School Payment Solution for any school, any size!
                    A cashless option for parents and students. Our online payment
                    portal gives parents the ability to log on to their students'
                    accounts and deposit funds for lunch and other school activities.
                </p>
            </div>
        </div>
        <div class="five">
            <div id="three">
                <p id="para3">With gateWaySchoolAccount Online Payments, School Financial Management Has Never Been Easier!</p>
                <p id="para4">Improve cash management by giving your parents the ability to make secure deposits into their children's meal accounts.</p>
                <ul id="list1">
                    <li>Increase revenue</li>
                    <li>Collect funds in centralized portal</li>
                    <li>Speed up lines in youe cafeteria</li>
                    <li>Collect funds in a centralized portal</li>
                    <li>Reporting for every activity and department</li>
                    <li>Attract more parents, students and supporters</li>
                    <li>Reduce labor by limiting processes & involvement</li>
                </ul>
            </div>
            <div id="four">
                <p id="para5">
                    To learn more about our Online Payment Portal for Schools, it's features,
                    pricing details, or to schedule a demo, fill out the form below and click the 'Tell Me More' button. A gateWaySchoolAccount representative will be in contact with you within 48 hours.
                </p>

                <asp:Table ID="homePersonalInfo" runat="server">
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server"><span style="color:#2c3e50">First Name</span><span style="color:red">*</span></asp:TableCell><asp:TableCell>
                            <asp:TextBox runat="server" ID="firstName1"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server"><span style="color:#2c3e50">Last Name</span><span style="color:red">*</span></asp:TableCell><asp:TableCell>
                            <asp:TextBox runat="server" ID="lastName1"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server"><span style="color:#2c3e50">Email Address</span><span style="color:red">*</span></asp:TableCell><asp:TableCell>
                            <asp:TextBox runat="server"  ID="emailAddress1"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server"><span style="color:#2c3e50">Your or Parent Phone Number</span><span style="color:red">*</span></asp:TableCell><asp:TableCell>
                            <asp:TextBox runat="server"  ID="phoneNumber1"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server"><span style="color:#2c3e50">Name of your School or District</span><span style="color:red">*</span></asp:TableCell><asp:TableCell>
                            <asp:TextBox runat="server" ID="nameOfSchool1"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server"><span style="color:#2c3e50">Comments</span><span style="color:red">*</span></asp:TableCell><asp:TableCell>
                            <asp:TextBox TextMode="MultiLine" runat="server" ID="comments1"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server"></asp:TableCell><asp:TableCell>
                            <asp:Button class="button1" ID="Button1" runat="server" OnClick="Tellmemore" Text="Tell me More" Width="200px" ValidationGroup="validation" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <p>
                    <asp:Label ID="DisplayMessage" runat="server" Visible="true" />
                </p>
                <asp:RequiredFieldValidator ID="FirstnameValidate"
                    required="true"
                    ControlToValidate="firstName1"
                    ErrorMessage="First Name is Required"
                    runat="server" ValidationGroup="validation"></asp:RequiredFieldValidator><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                    required="true"
                    ControlToValidate="lastName1"
                    ErrorMessage="Last Name is Required"
                    runat="server" ValidationGroup="validation"></asp:RequiredFieldValidator><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                    required="true"
                    ControlToValidate="emailAddress1"
                    ErrorMessage="Email Address is Required"
                    runat="server" ValidationGroup="validation"></asp:RequiredFieldValidator><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4"
                    required="true"
                    ControlToValidate="phoneNumber1"
                    ErrorMessage="Phone Number is Required"
                    runat="server" ValidationGroup="validation"></asp:RequiredFieldValidator><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                    required="true"
                    ControlToValidate="nameOfSchool1"
                    ErrorMessage="School or district is Required"
                    runat="server" ValidationGroup="validation"></asp:RequiredFieldValidator><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                    required="true"
                    ControlToValidate="comments1"
                    ErrorMessage="Comments are Required"
                    runat="server" ValidationGroup="validation"></asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator ID="regularExpressionPhone"
                    ControlToValidate="phoneNumber1"
                    ValidationGroup="validation"
                    runat="server" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ErrorMessage="Enter a valid Phone Number"></asp:RegularExpressionValidator><br />
                <asp:ValidationSummary ID="ValidationSummary1"
                    runat="server" ShowMessageBox="True" EnableClientScript="false"
                    ShowSummary="false" ValidationGroup="validation" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                    ErrorMessage="Enter a valid E-Mail" ControlToValidate="emailAddress1"
                    ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator>
            </div>
        </div>
    </form>

    <footer>
        <div id="ads">
            <asp:AdRotator  CssClass="ad" ID="adr" runat="server" AdvertisementFile="ads.xml" Target="_blank" />
            <asp:AdRotator  CssClass="ad" ID="AdRotator1" runat="server" AdvertisementFile="ads.xml" Target="_blank" />
            <asp:AdRotator  CssClass="ad" ID="AdRotator2" runat="server" AdvertisementFile="ads.xml" Target="_blank" />

        </div>
    </footer>

</body>
</html>
