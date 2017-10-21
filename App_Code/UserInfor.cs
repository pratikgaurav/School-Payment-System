using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for UserInfor
/// </summary>
public class UserInfor
{

    string emailAddress;
    string password;
    string firstName;
    string lastName;
    string securityQuestion;
    string securityQuestionAnswer;
    string stateOrProvince;
    string schoolDistrictName;
    List<StudentInfor> myStudent;
    private string selectedValue1;
    private string text1;
    private string text2;
    private string text3;
    private string text4;
    private string text5;
    private string selectedValue2;
    private string text6;

    public UserInfor(string selectedValue1, string text1, string text2, string text3, string text4, string text5, string selectedValue2, string text6)
    {
        this.selectedValue1 = selectedValue1;
        this.text1 = text1;
        this.text2 = text2;
        this.text3 = text3;
        this.text4 = text4;
        this.text5 = text5;
        this.selectedValue2 = selectedValue2;
        this.text6 = text6;
    }

    public UserInfor()
    {
    }

    public string EmailAddress
    {
        get
        {
            return emailAddress;
        }

        set
        {
            emailAddress = value;
        }
    }

    public string Password
    {
        get
        {
            return password;
        }

        set
        {
            password = value;
        }
    }

    public string FirstName
    {
        get
        {
            return firstName;
        }

        set
        {
            firstName = value;
        }
    }

    public string LastName
    {
        get
        {
            return lastName;
        }

        set
        {
            lastName = value;
        }
    }

    public string SecurityQuestion
    {
        get
        {
            return securityQuestion;
        }

        set
        {
            securityQuestion = value;
        }
    }

    public string SecurityQuestionAnswer
    {
        get
        {
            return securityQuestionAnswer;
        }

        set
        {
            securityQuestionAnswer = value;
        }
    }

    public string StateOrProvince
    {
        get
        {
            return stateOrProvince;
        }

        set
        {
            stateOrProvince = value;
        }
    }

    public string SchoolDistrictName
    {
        get
        {
            return schoolDistrictName;
        }

        set
        {
            schoolDistrictName = value;
        }
    }

    public List<StudentInfor> MyStudent
    {
        get
        {
            return myStudent;
        }

        set
        {
            myStudent = value;
        }
    }

    /* public UserInfor()
    {
        //
        // TODO: Add constructor logic here
        //


    } */
}
