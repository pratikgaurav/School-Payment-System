<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Support.aspx.cs" Inherits="Support" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />
    <title>Support </title>
    <link rel="stylesheet" href="Support.css">
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
            <h4 class="fp1"><a style="text-decoration: none; color: black" href="http://www.foodservice.com/blogs/">Blog </a></h4>
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
    <div class="second">
        <div id="box7">
            <div class="circle1">
                <div class="text">
                    GW
                </div>
            </div>
            <h1 class="main1"><span style="color: #2980b9">gateWaySchoolAccount Support</h1>
        </div>
        &nbsp;
            <div id="pdflink">
                <a href="support.pdf" target="_blank">View Support in pdf</a>
            </div>
        <div id="points">

            <p class="a2">We like to listen to our users and of course help based on their asks. Here are the most common questions that our support agents field and how you can solve them quickly.</p>

            <p class="q1">I forgot my user ID and/or password. How can I get them ?</p>
            <p class="a1">Click the Forgot Password? link in the gateWaySchoolAccount.com <a href="Login.aspx">Login page</a>. Enter the e-mail address you used when you created your gateWaySchoolAccount.com account and click Retrieve Password. Your password and user ID will be e-mailed to you.</p>
            <p class="q1">What’s my child eating and how far back can I see information ?</p>
            <p class="a1">Once logged into the site, click “Manage Students” on the main menu bar. From there, click the “VIEW HISTORY” link under the actions section next to the account that you’d like to examine. We display 30 days worth of purchase information, if you require information past the 30 days displayed, you should contact the food service department of your childs school.</p>
            <p class="q1">Why can't I pay with a credit/debit card ?</p>
            <p class="a1">Your school distirct has chosen to only accept ACH debits. That is an industry term for a "E-Check", a check without the paper. The funds are simply transferred from your bank account to the school, the same as if you had written them a check. You may want to contact the food service department at your local school district for more information about accepting credit cards.</p>
            <p class="q1">My students balance is not what it should be. What’s the deal ?</p>
            <p class="a1">gateWaySchoolAccount.com is a portal for you to make & view payments, purchases, and transactions. We simply display the information to you that is provided to us by your childs’ school. If you feel there is a descrepency you should contact the food service department of your school.</p>
            <p class="q1">Why am I not getting low balance notifications ?</p>
            <p class="a1">When you are in the “Manage my Account” section, make sure that you check the box that states ”Send Low Balance Notification emails”, add an amount at which you would like to be notified and make sure you then check the enabled box. Then save. Most times our users forget to check that enable box.</p>
        </div>
    </div>
    <div class="third">
        <h2 class="staff">Connect with gateWaySchoolAccount.com Support Staff</h2>
        </br>
            <div>
                <a id="link1" href="contactUs.aspx">or click here to Contact Us</a>
            </div>
        </br>
            <div>
                <form id="form1" action="action_page.php">
                    <input type="text" name="user_nme" size="21" required placeholder="First Name">
                    <input type="text" name="user_nme" size="21" required placeholder="Last Name">
                    <input type="text" name="user_nme" size="21" required placeholder="Email Address">
                    <input type="text" name="user_nme" size="21" required placeholder="School Name">
                    </br></br>
                    <div>
                        <textarea rows="4" cols="50">Type your message here	</textarea>
                    </div>
                    </br>
                    <div>
                        <input type="submit" value="Click Here to send your message to Support Staff">
                    </div>
                </form>
            </div>
    </div>
</body>
</html>
