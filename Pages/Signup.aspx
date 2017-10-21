<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 5.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-Transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Sign Up </title>
    <link rel="stylesheet" href="Signup.css">
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

    <div class="centerbox1">
        <form id="form1" runat="server">
            <h3 align="center">Sign Up</h3>
            <h4 align="center">Select State or Province of your school district</h4>

            <div align="center">
                <a class="hideDisplay">
                    <i class="fa fa-globe" aria-hidden="true"></i>
                    <span class="showDisplayOnHover">United States Postal Abbreviations for States
                    </span>
                    <asp:DropDownList ID="StateDropDown" runat="server" Width="300px">
                        <asp:ListItem>Select State/Province</asp:ListItem>
                        <asp:ListItem>AL</asp:ListItem>
                        <asp:ListItem>AK</asp:ListItem>
                        <asp:ListItem>AZ</asp:ListItem>
                        <asp:ListItem>AR</asp:ListItem>
                        <asp:ListItem>CA</asp:ListItem>
                        <asp:ListItem>CO</asp:ListItem>
                        <asp:ListItem>CT</asp:ListItem>
                        <asp:ListItem>DE</asp:ListItem>
                        <asp:ListItem>FL</asp:ListItem>
                        <asp:ListItem>GA</asp:ListItem>
                        <asp:ListItem>HI</asp:ListItem>
                        <asp:ListItem>ID</asp:ListItem>
                        <asp:ListItem>IL</asp:ListItem>
                        <asp:ListItem>IN</asp:ListItem>
                        <asp:ListItem>IA</asp:ListItem>
                        <asp:ListItem>KS</asp:ListItem>
                        <asp:ListItem>KY</asp:ListItem>
                        <asp:ListItem>LA</asp:ListItem>
                        <asp:ListItem>ME</asp:ListItem>
                        <asp:ListItem>MD</asp:ListItem>
                        <asp:ListItem>MA</asp:ListItem>
                        <asp:ListItem>MI</asp:ListItem>
                        <asp:ListItem>MN</asp:ListItem>
                        <asp:ListItem>MS</asp:ListItem>
                        <asp:ListItem>MO</asp:ListItem>
                        <asp:ListItem>MT</asp:ListItem>
                        <asp:ListItem>NE</asp:ListItem>
                        <asp:ListItem>NV</asp:ListItem>
                        <asp:ListItem>NH</asp:ListItem>
                        <asp:ListItem>NJ</asp:ListItem>
                        <asp:ListItem>NM</asp:ListItem>
                        <asp:ListItem>NY</asp:ListItem>
                        <asp:ListItem>NC</asp:ListItem>
                        <asp:ListItem>ND</asp:ListItem>
                        <asp:ListItem>OH</asp:ListItem>
                        <asp:ListItem>OK</asp:ListItem>
                        <asp:ListItem>OR</asp:ListItem>
                        <asp:ListItem>PA</asp:ListItem>
                        <asp:ListItem>RI</asp:ListItem>
                        <asp:ListItem>SC</asp:ListItem>
                        <asp:ListItem>SD</asp:ListItem>
                        <asp:ListItem>TN</asp:ListItem>
                        <asp:ListItem>TX</asp:ListItem>
                        <asp:ListItem>UT</asp:ListItem>
                        <asp:ListItem>VT</asp:ListItem>
                        <asp:ListItem>VA</asp:ListItem>
                        <asp:ListItem>WA</asp:ListItem>
                        <asp:ListItem>WV</asp:ListItem>
                        <asp:ListItem>WI</asp:ListItem>
                        <asp:ListItem>WY</asp:ListItem>
                    </asp:DropDownList>
                </a>

            </div>
            <br />
            <div align="center">
                <a class="hideDisplay">
                    <i class="fa fa-globe" aria-hidden="true"></i>
                    <span class="showDisplayOnHover">The name of the School district your child attends.
                    </span>
                </a>
                <asp:TextBox ID="schoolDistrict" runat="server" ReadOnly="false" placeholder="School District Name" Width="300px"></asp:TextBox>
            </div>
            <br />
            <div align="center">
                <a class="hideDisplay">
                    <i class="fa fa-user" aria-hidden="false"></i>
                    <span class="showDisplayOnHover">Parent First Name
                    </span>
                </a>
                <asp:TextBox ID="fName1" runat="server" ReadOnly="false" placeholder="First Name" Width="300px"></asp:TextBox>
            </div>
            <br />
            <div align="center">
                <a class="hideDisplay">
                    <i class="fa fa-user" aria-hidden="false"></i>
                    <span class="showDisplayOnHover">Parent Last Name
                    </span>
                </a>
                <asp:TextBox ID="lName1" runat="server" ReadOnly="false" placeholder="Last Name" Width="300px"></asp:TextBox>
            </div>

            <h4 align="center">NOTE: Your e-mail address will be your username</h4>

            <div align="center">
                <a class="hideDisplay">
                    <i class="fa fa-envelope" aria-hidden="true"></i>
                    <span class="showDisplayOnHover">A Valid Email address
                    </span>
                </a>
                <asp:TextBox ID="email2" runat="server" ReadOnly="false" placeholder="Email" Width="300px"></asp:TextBox>
            </div>
            <br />
            <div align="center">
                <a class="hideDisplay">
                    <i class="fa fa-envelope" aria-hidden="true"></i>
                    <span class="showDisplayOnHover">Retype the Email Address entered above.
                    </span>
                </a>
                <asp:TextBox ID="emailConfirm1" runat="server" ReadOnly="false" placeholder="Retype Email Address" Width="300px"></asp:TextBox>
            </div>
            <br />
            <div align="center">
                <a class="hideDisplay">
                    <i class="fa fa-key" aria-hidden="true"></i>
                    <span class="showDisplayOnHover">Password must be between 8 and 10 characters, contain at least one digit and one alphabetic
                        character, and must not contain special character.
                    </span>
                </a>
                <asp:TextBox ID="passwordSignUP1" runat="server" ReadOnly="false" TextMode="Password" placeholder="Password" Width="300px"></asp:TextBox>
            </div>
            <br />
            <div align="center">
                <a class="hideDisplay">
                    <i class="fa fa-key" aria-hidden="true"></i>
                    <span class="showDisplayOnHover">Password must be between 8 and 10 characters, contain at least one digit and one alphabetic
                        character, and must not contain special character.
                    </span>
                </a>
                <asp:TextBox runat="server" ID="passwordConfirm1" ReadOnly="false" TextMode="Password" placeholder="Retype Password" Width="300px"></asp:TextBox>
            </div>

            <h4 align="center">Select a Security Question</h4>

            <div align="center">
                <a class="hideDisplay">
                    <i class="fa fa-question" aria-hidden="true"></i>
                    <span class="showDisplayOnHover">Select a Security Question.
                    </span>
                </a>
                <asp:DropDownList ID="Questionslist" runat="server" Width="300px">
                    <asp:ListItem>What is your mother's maiden name?</asp:ListItem>
                    <asp:ListItem>What was your childhood nickname?</asp:ListItem>
                    <asp:ListItem>What is the name of your favorite childhood friend?</asp:ListItem>
                    <asp:ListItem>What is your favorite sport team?</asp:ListItem>
                    <asp:ListItem>What was the make and model of your first car?</asp:ListItem>
                    <asp:ListItem>What school did you attend for sixth grade?</asp:ListItem>
                    <asp:ListItem>What was the last name of your third grade teacher?</asp:ListItem>
                    <asp:ListItem>In what town was your first job?</asp:ListItem>
                    <asp:ListItem>What is your favorite movie?</asp:ListItem>
                    <asp:ListItem>Who is your childhood sports hero?</asp:ListItem>
                    <asp:ListItem>In what year was your father born?</asp:ListItem>
                </asp:DropDownList>
            </div>
            <br />
            <div align="center">
                <a class="hideDisplay">
                    <i class="fa fa-question" aria-hidden="true"></i>
                    <span class="showDisplayOnHover">Enter an answer to the Security Question.
                    </span>
                </a>
                <asp:TextBox ID="securityQuestion1" runat="server" ReadOnly="false" placeholder="Type answer to the security question" Width="300px"></asp:TextBox>
            </div>
            <br />

            <div align="center">
                <asp:Button ID="CancelButton" OnClick="navigateToHome" runat="server" Text="Cancel" ClientIDMode="AutoID"></asp:Button>
                <asp:Button ID="AccountButton" OnClick="Unnamed_Click1" ValidationGroup="validation1" runat="server" Text="Create Account"></asp:Button>
            </div>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator50"
                required="true"
                ControlToValidate="StateDropDown"
                ErrorMessage="state is Required"
                runat="server" ValidationGroup="validation1"></asp:RequiredFieldValidator><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator110"
                required="true"
                ControlToValidate="fName1"
                ErrorMessage="First Name is Required"
                runat="server" ValidationGroup="validation1"></asp:RequiredFieldValidator><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator222"
                required="true"
                ControlToValidate="lName1"
                ErrorMessage="Last Name is Required"
                runat="server" ValidationGroup="validation1"></asp:RequiredFieldValidator><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator39"
                required="true"
                ControlToValidate="email2"
                ErrorMessage="Email ID is Required"
                runat="server" ValidationGroup="validation1"></asp:RequiredFieldValidator><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator41"
                required="true"
                ControlToValidate="emailConfirm1"
                ErrorMessage="Email ID confirmation is Required"
                runat="server" ValidationGroup="validation1"></asp:RequiredFieldValidator><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6"
                required="true"
                ControlToValidate="passwordSignUP1"
                ErrorMessage="Password is Required"
                runat="server" ValidationGroup="validation1"></asp:RequiredFieldValidator><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7"
                required="true"
                ControlToValidate="passwordConfirm1"
                ErrorMessage="Password Confirmation is Required"
                runat="server" ValidationGroup="validation1"></asp:RequiredFieldValidator><br />
            <asp:ValidationSummary ID="ValidationSummary" runat="server" ShowMessageBox="True"
                ShowSummary="false" ValidationGroup="validation1" />

            <asp:RegularExpressionValidator ID="regularExpressionemailSignup"
                ControlToValidate="email2"
                runat="server" ErrorMessage="Enter a valid email ID"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorSignUPPassowrd"
                ControlToValidate="passwordSignUP1" runat="server" ErrorMessage="Enter valid password"
                ValidationExpression="^(?=.*\d)(?=.*[a-z | A-Z]).{8,10}$"></asp:RegularExpressionValidator><br />
            <asp:RegularExpressionValidator ID="RegularExpressionemailconfirmsignup"
                ControlToValidate="emailConfirm1" runat="server" ErrorMessage="Confirm a valid Email id"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
            <asp:CompareValidator runat="server" ID="cmpEmailSignUP"
                ControlToValidate="email2" ValidationGroup="validation1"
                ControlToCompare="emailConfirm1" Type="String" ErrorMessage="Eamil ID missmatch" /><br />
            <%-- <asp:CompareValidator runat="server" id="cmpPasswordSignUP" controltovalidate="passwordSignUP1" ValidationGroup="validation10" Display="Dynamic" controltocompare="passwordConfirm1"  errormessage="Password missmatch" /><br />--%>
            <asp:CompareValidator runat="server" ID="cmpPasswordSignUP"
                ControlToValidate="passwordSignUP1" ControlToCompare="passwordConfirm1"
                ValidationGroup="validation1" ErrorMessage="Password missmatch" />
        </form>
    </div>
</body>
</html>
