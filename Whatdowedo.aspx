<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Whatdowedo.aspx.cs" Inherits="Whatdowedo" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />
    <title>What Do We Do </title>
    <link rel="stylesheet" href="whatdowedo.css">
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
            <h4 class="fp1"><a style="text-decoration: none; color: black" href="Whatdowedo.html">What Do we Do </a></h4>
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
            <h1 class="main1"><span style="color: #2980b9">gateWaySchoolAccount What Do We Do</h1>
        </div>
        &nbsp;
        <div id="pdflink">
            <h2>What Do We Do</h2>
        </div>
        <div id="points">
            <p class="q1">WE MAKE IT EASY FOR SCHOOLS TO COLLECT PAYMENTS ONLINE !</p>
            <p class="q2">How gateWaySchoolAccount works !</p>
            <hr>
        </div>

        <div class="bigb">
            <div id="leftb">
                <p class="x">For Schools....</p>
                <p id="y">1. Easy software installation</p>
                <p id="z">Getting set up is simple. After the setup process is complete, our expert staff will train you so you will have confidence.</p>

                <p id="y">2. Communicate with parents</p>
                <p id="z">Utilize the built in alert banners on myschoolaccount to notify all parents using the service of upcoming events, school closings, and other important notifications.</p>

                <p id="y">3. Collect payments</p>
                <p id="z">Utilize the built in alert banners on myschoolaccount to notify all parents using the service of upcoming events, school closings, and other important notifications.</p>

                <p id="y">4. Generate reports</p>
                <p id="z">A large variety of essential reports are always available in our admin portal. Generate financial reports that are vital to a healthy school lunch program.</p>

                <p id="y">5. Benefits for schools</p>
                <ul>
                    <li>Speed up lines in your cafeteria</li>
                    <li>Increase sales with funds dedicated to cafeteria purchases</li>
                    <li>Nightly updates of student account records</li>
                    <li>Comprehensive Reporting</li>
                    <li>Reduce Labor Costs</li>
                </ul>
            </div>

            <div id="rightb">
                <p class="x">For Parents....</p>
                <p id="m">1. Create an account</p>
                <p id="z">Once your school has announced you will be using gateWaySchoolAccount to manage your student’s lunch account it’s time to create an account.</p>

                <p id="m">2. Add students</p>
                <p id="z">Adding students is easy with their school ID number.</p>

                <p id="m">3. Make a secure deposit</p>
                <p id="z">Adding students is easy with their school ID number.</p>


                <p id="m">4. Get low balance notifications</p>
                <p id="z">Set up a low balance notifications and never have your student miss a day of lunch due to low funds.</p>

                <p id="m">5. Benefits for parents</p>
                <ul>
                    <li>Convenience of both ACH and Credit Card Transactions</li>
                    <li>24/7 Access</li>
                    <li>Receive low balance notifications via email</li>
                    <li>Quickly view 30 days of detailed purchase history</li>
                    <li>Monitor healthy eating habits</li>
                    <li>Manage multiple students at once</li>
                    <li>Transfer funds between students</li>
                </ul>
            </div>
        </div>
    </div>

</body>
</html>
