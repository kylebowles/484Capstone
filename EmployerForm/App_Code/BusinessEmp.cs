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
    private String Company;
    private String Email;
    private String Password;
    private String PhoneNumber;
    private String CompAddress;
    private String City;
    private String State;

    public BusinessEmp()
    {
        //No-arg constructor
    }

    public BusinessEmp(String FirstName, String LastName, String Company, String Email, String Password)
    {
        this.FirstName = FirstName;
        this.LastName = LastName;
        this.Company = Company;
        this.Email = Email;
        this.Password = Password;
    }

    public BusinessEmp(String FirstName, String LastName, String Company, String Email)
    {
        this.FirstName = FirstName;
        this.LastName = LastName;
        this.Company = Company;
        this.Email = Email;
    }

    public BusinessEmp(String FirstName, String LastName, String Company, String Email, String Password, String PhoneNumber, String CompAddress, String City, String State)
    {
        this.FirstName = FirstName;
        this.LastName = LastName;
        this.Company = Company;
        this.Email = Email;
        this.Password = Password;
        this.PhoneNumber = PhoneNumber;
        this.CompAddress = CompAddress;
        this.City = City;
        this.State = State;
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
        return this.Company;
    }

    public void setCompany(String Company)
    {
        this.Company = Company;
    }

    public String getEmail()
    {
        return this.Email;
    }

    public void setEmail(String Email)
    {
        this.Email = Email;
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

    public String getCompAddress()
    {
        return this.CompAddress;
    }

    public void setCompAddress(String CompAddress)
    {
        this.CompAddress = CompAddress;
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


}