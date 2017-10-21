<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>
    <link rel="stylesheet" href="contact.css" />
    <script type="text/javascript">
        var xmlDoc;
        var xmlhttp;
        function loadSupportInfo() {
            xmlhttp = new XMLHttpRequest();
            xmlhttp.onreadystatechange = readData;
            xmlhttp.open("GET", "contact_info.xml", true);
            xmlhttp.send();
        }
        function readData() {
            if (xmlhttp.readyState == 4) {
                xmlDoc = xmlhttp.responseXML;
                var items = xmlDoc.getElementsByTagName("info");
                var tollfree = items[0].getAttribute("toll_free_phone");
                document.getElementById("tollfree").innerHTML = tollfree;

                var dirph = items[0].getAttribute("direct_phone");
                document.getElementById("phnum").innerHTML = dirph;

                var faxno = items[0].getAttribute("fax");
                document.getElementById("fax").innerHTML = faxno;

                var emailaddr = items[0].getAttribute("email");
                document.getElementById("email").innerHTML = emailaddr;

                var addrline1 = items[0].getAttribute("address_line1");
                document.getElementById("address1").innerHTML = addrline1;

                var addrline2 = items[0].getAttribute("address_line2");
                document.getElementById("address2").innerHTML = addrline2;

                var city = items[0].getAttribute("city");
                document.getElementById("city").innerHTML = city;

                var state = items[0].getAttribute("state");
                document.getElementById("state").innerHTML = state;

                var zip = items[0].getAttribute("zip");
                document.getElementById("zip").innerHTML = zip;

            }
        }
        function clickFunction() {

            alert("Work in Progress ");
        }
    </script>

</head>
<body onload="loadSupportInfo();">
    <form id="form2" runat="server">
        <div class="one">
            <nav>
                <div id="head1">
                    <div class="dropdown">

                        <h4 class="hi1">For Parents </h4>
                        <div class="dropdown-content">
                            <a href="Signup.aspx">Create Account </a>
                            <a href="Login.aspx">Login</a>
                            <a href="Faq.aspx">Frequently asked Questions</a>
                            <a href="Support.aspx">Support</a>
                        </div>
                    </div>

                </div>

                <div id="head2">

                    <a href="Whatdowedo.aspx" style="text-decoration: none; color: black">
                        <h4 class="hi1">What Do We Do</h4>
                    </a>

                </div>

                <div id="head3">

                    <a href="http://www.foodservice.com/blogs/" style="text-decoration: none; color: black">
                        <h4 class="hi1">Blog </h4>
                    </a>

                </div>
            </nav>

            <div id="head4">

                <div class="circle">
                    <div class="text">
                        GW
                    </div>
                </div>

                <h2 class="hi2">gateWaySchoolAccount.com </h2>

            </div>

            <div id="head5">
                <button class="button1" onclick="window.location='Signup.aspx'">Create Account</button>
            </div>

            <div id="head6">
                <button class="button2" onclick="window.location='Login.aspx'">Login</button>
            </div>
        </div>
        <div class="contact">
            <table style="width: 100%">
                <tr id="myrow">
                    <td class="contactcol">Toll Free Phone Number </td>
                    <td id="tollfree"></td>

                </tr>
                <tr>
                    <td class="contactcol">Direct Phone Number</td>
                    <td id="phnum"></td>


                </tr>
                <tr>
                    <td class="contactcol">Fax</td>
                    <td id="fax"></td>

                </tr>
                <tr>
                    <td class="contactcol">Email</td>
                    <td id="email"></td>

                </tr>
                <tr>
                    <td class="contactcol">Address Line 1</td>
                    <td id="address1"></td>

                </tr>
                <tr>
                    <td class="contactcol">Address Line 2</td>
                    <td id="address2"></td>
                </tr>
                <tr>
                    <td class="contactcol">City</td>
                    <td id="city"></td>

                </tr>
                <tr>
                    <td class="contactcol">State</td>
                    <td id="state"></td>

                </tr>
                <tr>
                    <td class="contactcol">Zip</td>
                    <td id="zip"></td>

                </tr>

            </table>
            <button class="supportbutton" type="button" onclick="location='
                '">Back To Main Page</button>
        </div>

    </form>
</body>
</html>
