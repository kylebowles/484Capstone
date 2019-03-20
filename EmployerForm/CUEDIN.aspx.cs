using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CUEDIN : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LoginButton(object sender, EventArgs e)
    {

        try
        {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = @"Server=localhost;Initial Catalog=Cued-In;Trusted_Connection=Yes;";


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
                    //Session["LoggedIn"] = true;
                    LoginClick.Enabled = true;
                    LoginSuccess.Visible = true;
                    PreLogin.Visible = false;
                    InputEmail2.Disabled = true;
                    InputEmail2.Disabled = false;
                }
                    else
                {
                    LoginSuccess.Visible = false;
                    LoginFail.Visible = true;
                    PreLogin.Visible = false;
                }

            }
        }
        else { // if the username doesn't exist, it will show failure
            LoginSuccess.Visible = false;
            LoginFail.Visible = true;
            PreLogin.Visible = false;
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