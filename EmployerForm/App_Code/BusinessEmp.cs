using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

/// <summary>
/// Summary description for Employer
/// </summary>
public class BusinessEmp
{
    private String FirstName;
    private String LastName;
    private String CompanyName;
    private String JobTitle;
    private String EmployerSummary;
    private String EmailAdd;
    private String Password;
    private String PhoneNumber;
    private String CompHouseNumber;
    private String CompStreet;
    private String City;
    private String State;
    private String CompCountry;
    private String ZipCode;
    private String isApproved;


    public BusinessEmp()
    {
        //No-arg constructor
    }

    public BusinessEmp(String FirstName, String LastName, String Company, String Email, String Password)
    {
        this.FirstName = FirstName;
        this.LastName = LastName;
        this.CompanyName = Company;
        this.EmailAdd = Email;
        this.Password = Password;
    }

    public BusinessEmp(String FirstName, String LastName, String Company, String Email)
    {
        this.FirstName = FirstName;
        this.LastName = LastName;
        this.CompanyName = Company;
        this.EmailAdd = Email;
    }

    public BusinessEmp(String FirstName, String LastName, String Company, String JobTitle, String EmployerSummary, String Email, String Password, String PhoneNumber, String CompHouseNumber, String CompStreet, String City, String CompCountry, String State, String ZipCode)
    {
        this.FirstName = FirstName;
        this.LastName = LastName;
        this.CompanyName = Company;
        this.JobTitle = JobTitle;
        this.EmployerSummary = EmployerSummary;
        this.EmailAdd = Email;
        this.Password = Password;
        this.PhoneNumber = PhoneNumber;
        this.CompHouseNumber = CompHouseNumber;
        this.CompStreet = CompStreet;
        this.City = City;
        this.CompCountry = CompCountry;
        this.State = State;
        this.ZipCode = ZipCode;
        this.isApproved = "No";
    }

    //Getters and Setters
    public String getFirstName()
    {
        return this.FirstName;
    }

    public void setFirstName(String FirstName)
    {
        this.FirstName = FirstName;
    }

    public String getLastName()
    {
        return this.LastName;
    }

    public void setLastName(String LastName)
    {
        this.LastName = LastName;
    }

    public String getCompany()
    {
        return this.CompanyName;
    }

    public void setCompany(String CompanyName)
    {
        this.CompanyName = CompanyName;
    }

    public String getEmail()
    {
        return this.EmailAdd;
    }

    public void setEmail(String EmailAdd)
    {
        this.EmailAdd = EmailAdd;
    }

    //Probably won't need getters and setters for a Password
    public String getPassword()
    {
        return this.Password;
    }

    public void setPassword(String Password)
    {
        this.Password = Password;
    }

    public String getPhone()
    {
        return this.PhoneNumber;
    }

    public void setPhoneNumber(String PhoneNumber)
    {
        this.PhoneNumber = PhoneNumber;
    }

    public String getCompHouseNumber()
    {
        return this.CompHouseNumber;
    }

    public void setCompAddyNumber(String CompHouseNumber)
    {
        this.CompHouseNumber = CompHouseNumber;
    }

    public String getCompStreet()
    {
        return this.CompStreet;
    }

    public String setCompStreet(String CompStreet)
    {
        return this.CompStreet;
    }

    public String getCity()
    {
        return this.City;
    }

    public void setCity(String City)
    {
        this.City = City;
    }

    public String getState()
    {
        return this.State;
    }

    public void setState(String State)
    {
        this.State = State;

    }

    public String getCountry()
    {
        return this.CompCountry;
    }

    public void setCountry(String CompCountry)
    {
        this.CompCountry = CompCountry;
    }

    public String getZipCode()
    {
        return this.ZipCode;
    }

    public void setZip(String ZipCode)
    {
        this.ZipCode = ZipCode;
    }

    public String getApproval()
    {
        return this.isApproved;
    }

    public void setApproval(String approval)
    {
        this.isApproved = approval;
    }

    public String getJobTitle()
    {
        return this.JobTitle;
    }

    public void setJobTitle(String JobTitle)
    {
        this.JobTitle = JobTitle;
    }

    public String getEmpSummary()
    {
        return this.EmployerSummary;
    }

    public void setEmployerSummmary(String EmployerSummary)
    {
        this.EmployerSummary = EmployerSummary;
    }
}