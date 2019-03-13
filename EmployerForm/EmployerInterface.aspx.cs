﻿using System;
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

public partial class Employer : System.Web.UI.Page
{

    //Create SQL connection
    System.Data.SqlClient.SqlConnection sql = new System.Data.SqlClient.SqlConnection();




    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            //Connect to AdventureWorks2014 DB
            sql.ConnectionString = "Data Source=localhost;Initial Catalog=Sprint1;Integrated Security=True";
            sql.Open();

        }

        catch
        {
            ErrorDB.Text = "Error connecting to database.";
        }
    }

    //Clear contents button
    protected void clear_Click(object sender, EventArgs e)
    {
        FirstNameText.Text = String.Empty;
        LastNameText.Text = String.Empty;
        CompanyText.Text = String.Empty;
        EmailText.Text = String.Empty;
        PasswordText1.Text = String.Empty;
        PasswordText2.Text = String.Empty;
    }

    //Exit Button
    protected void Exit_Page(object sender, EventArgs e)
    {
        System.Environment.Exit(0);

    }

    //Insert into the Database
    protected void insert_Click(object sender, EventArgs e)
    {
        //Create new Employer object
        BusinessEmp bus = new BusinessEmp(FirstNameText.Text.ToString(), LastNameText.Text.ToString(), CompanyText.Text.ToString(), EmailText.Text.ToString(), PasswordText1.Text.ToString());

        //Doesn't add to the DB if the email address is taken
        checkEmail(bus);

        if (checkEmail(bus) == false)
        {
            return;
        }
        //else
        //{
        //    EmailTaken.Visible = false;
        //}

        checkPassword(bus);

        if (checkPassword(bus) == false)
        {
            return;
        }
        else
        {
            PassDontMatch.Visible = false;
        }
        //Insert values into database when user clicks "Insert"
        SqlCommand dbInsert = new SqlCommand();
        dbInsert.Connection = sql;

        //Check to see if email already exists
        
        //RECENT UPDATES -- Need to add parameters for new fields (PhoneNumber, CompAddress, etec.) Currently at this point
        dbInsert.CommandText = "insert into [EMPLOYER](FirstName,LastName,CompanyName,EmailAddress,empPassword) values(@FirstName,@LastName,@Company,@Email,@Password)";
        //CREATE New DB with all these columns. Connection and insertion works.
        dbInsert.Parameters.Add(new SqlParameter("@FirstName", bus.getFirstName()));
        dbInsert.Parameters.Add(new SqlParameter("@LastName", bus.getLastName()));
        dbInsert.Parameters.Add(new SqlParameter("@Company", bus.getCompany()));
        dbInsert.Parameters.Add(new SqlParameter("@Email", bus.getEmail()));
        dbInsert.Parameters.Add(new SqlParameter("@Password", bus.getPassword()));
        dbInsert.Parameters.Add(new SqlParameter("@PhoneNumber", bus.getPhone()));
        dbInsert.Parameters.Add(new SqlParameter("@CompAddress", bus.getCompAddress()));
        dbInsert.Parameters.Add(new SqlParameter("@City", bus.getCity()));
        dbInsert.Parameters.Add(new SqlParameter("@State", bus.getState()));

        
        dbInsert.ExecuteNonQuery();

        sql.Close();



    }

    //Make a method to compare if email address is already inserted into DB
    //Can't have same registered email create two accounts
    
    protected Boolean checkEmail(BusinessEmp emp)
    {
        //Checking to see if email in created object is equivalent to an email already in the DB
        //If so, don't add object to DB, and make message pop-up saying that specific email is already taken

        //Create SQL Command selecting all emails from DB
        SqlCommand countCommand = new SqlCommand("SELECT COUNT(EmailAddress) from EMPLOYER", sql);
        countCommand.ExecuteNonQuery();
        //Make a variable that is the amount of rows inserted into the email column
        int countEmails = (Int32)countCommand.ExecuteScalar();

        SqlCommand selectEmails = new SqlCommand("SELECT EmailAddress from EMPLOYER", sql);
        selectEmails.ExecuteNonQuery();
        SqlDataReader reader = selectEmails.ExecuteReader();

        String[] emailAddresses = new String[countEmails];
        //Populate String array with emailAddresses
        for(int i = 0; i < emailAddresses.Length; i++)
        {
            while(reader.Read())
            emailAddresses[i] = reader.GetValue(0).ToString();
        }

        reader.Close();
        
        //Loop thorugh all email addresses and check if they're equal to one another
        for (int i = 0; i < countEmails; i++)
        {
            if(EmailText.Text.Equals(emailAddresses[i]))
            {
                EmailTaken.Text = "Email already registered, please use a different address";
                return false;
                
            }
            
            else
            {
                return true;
            }
        }

        return false;

        

    }

    //Make a method to ensure password1 and password2 are equivalent
    protected Boolean checkPassword(BusinessEmp emp)
    {
        if (PasswordText1.Text != PasswordText2.Text)
        {
            PassDontMatch.Text = "The passwords entered aren't the same. Please correct and try again.";
            return false;
        }

        else
        {
            return true;
        }
    }


}