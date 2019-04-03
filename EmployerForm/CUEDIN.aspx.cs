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
    System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["CuedInConnectionString"].ToString());
    System.Data.SqlClient.SqlConnection scloop = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["CuedInConnectionString"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["loggedOut"] == null)
        {

        }
        else
        {
            LoginSuccess.Visible = false;
            LoginFail.Visible = false;
            PreLogin.Visible = true;
            Session["loggedOut"] = null;
        }
    }
    protected void LoginButton(object sender, EventArgs e)
    {

        //try
        //{


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

                    scloop.Open();
                    //getUserID.CommandText = "select FirstName, LastName from Account where Username = @Username";
                    //Session["LoginName"] = getUserID.ExecuteScalar(); //gets person name from account
                    //scloop.Close();
                    System.Data.SqlClient.SqlCommand logUpdate = new System.Data.SqlClient.SqlCommand();
                    logUpdate.Connection = scloop;
                    logUpdate.CommandText = "Update User_LogTime SET offline=0 WHERE offline= @offline AND personID = @userID";
                    logUpdate.Parameters.AddWithValue("userID", Session["loginID"]);
                    logUpdate.Parameters.AddWithValue("offline", 1);
                    logUpdate.ExecuteNonQuery();
                    scloop.Close();
                    scloop.Open();
                    System.Data.SqlClient.SqlCommand logLogin = new System.Data.SqlClient.SqlCommand();
                    logLogin.Connection = scloop;
                    logLogin.CommandText = "INSERT INTO User_LogTime (personId, SID, Login_Time, offline) Values(@userID, @SID, @Login_Time, 1)";
                    logLogin.Parameters.AddWithValue("userID", Session["loginID"]);
                    logLogin.Parameters.AddWithValue("SID", Session.SessionID);
                    logLogin.Parameters.AddWithValue("Login_Time", DateTime.Now);
                    logLogin.ExecuteNonQuery();
                    Session["loggedIn"] = "true";
                    LoginSuccess.Visible = false;
                    LoginFail.Visible = false;
                    PreLogin.Visible = false;
                    Response.Redirect("RevisedLanding.aspx");



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
            //d
        }

        sc.Close();
        scloop.Close();
        //}
        //catch
        //{
        //    LoginFail.Visible = false;
        //    PreLogin.Visible = true;
        //}
    }
}
