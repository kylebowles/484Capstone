using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CUEDIN : System.Web.UI.Page
{
    System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["LocalhostConnectionString"].ToString());
    System.Data.SqlClient.SqlConnection scloop = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["LocalhostConnectionString"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LoginButton(object sender, EventArgs e)
    {

        try
        {
        

        sc.Open();
        System.Data.SqlClient.SqlCommand findPass = new System.Data.SqlClient.SqlCommand();
        findPass.Connection = sc;
        // SELECT PASSWORD STRING WHERE THE ENTERED USERNAME MATCHES
        findPass.CommandText = "select PasswordHash from Account where Username = @Username";
        findPass.Parameters.Add(new SqlParameter("@Username", InputEmail2.Value));

        SqlDataReader reader = findPass.ExecuteReader(); // create a reader

        if (reader.HasRows) // if the username exists, it will continue
        {
            while (reader.Read()) // this will read the single record that matches the entered username
            {
                string storedHash = reader["PasswordHash"].ToString(); // store the database password into this variable


                if (PasswordHash.ValidatePassword(InputPassword1.Value, storedHash)) // if the entered password matches what is stored, it will show success
                { 
                   
                    System.Data.SqlClient.SqlCommand getUserID = new System.Data.SqlClient.SqlCommand();
                    getUserID.Connection = scloop;
                    scloop.Open();
                    // SELECT PASSWORD STRING WHERE THE ENTERED USERNAME MATCHES
                    getUserID.CommandText = "select PersonID from Account where Username = @Username";
                    
                    getUserID.Parameters.Add(new SqlParameter("@Username", InputEmail2.Value));
                    Session["loginID"] = getUserID.ExecuteScalar(); //gets personid from account
                    Session["loginUser"] = InputEmail2.Value; //gets username
                    scloop.Close();

                    //scloop.Open();                  
                    //getUserID.CommandText = "select FirstName, LastName from Account where Username = @Username";
                    //Session["LoginName"] = getUserID.ExecuteScalar(); //gets person name from account
                    //scloop.Close();
                    
                    Session["loggedIn"] = "true";
                    LoginSuccess.Visible = false;
                    LoginFail.Visible = true;
                    PreLogin.Visible = false;
                    Response.Redirect("EmployerLanding.aspx");



                }
                    else
                {
                    Session["loggedIn"] = "false";
                    LoginSuccess.Visible = false;
                    LoginFail.Visible = true;
                        PreLogin.Visible = false;
                }

            }
        }


        else
        { // if the username doesn't exist, it will show failure
            LoginSuccess.Visible = false;
            LoginFail.Visible = true;
            PreLogin.Visible = false;
            Session["loggedIn"] = "false";
        }
        
        sc.Close();
        }
        catch
        {
            LoginFail.Visible = true;
            PreLogin.Visible = false;
        }
    }
}