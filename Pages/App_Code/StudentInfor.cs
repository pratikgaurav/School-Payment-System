using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for StudentInfor
/// </summary>
public class StudentInfor
{

    string emailAddress;
    string studentId;
    string studentFirstName;
    string studentLastName;
    string schoolName;

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

    public string StudentId
    {
        get
        {
            return studentId;
        }

        set
        {
            studentId = value;
        }
    }

    public string StudentFirstName
    {
        get
        {
            return studentFirstName;
        }

        set
        {
            studentFirstName = value;
        }
    }

    public string StudentLastName
    {
        get
        {
            return studentLastName;
        }

        set
        {
            studentLastName = value;
        }
    }

    public string SchoolName
    {
        get
        {
            return schoolName;
        }

        set
        {
            schoolName = value;
        }
    }


    public StudentInfor()
    {
        //
        // TODO: Add constructor logic here
        //
    }
}

