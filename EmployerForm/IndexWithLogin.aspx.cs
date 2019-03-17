using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class IndexWithLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
        }
    }


protected void BtnLogin1_Click(object sender, EventArgs e)
{
      
    try
        {
            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
            sc.ConnectionString = @"Server=LOCALHOST;Database=Sprint1;Trusted_Connection=Yes;";
           // lblStatus.Text = "Database Connection Successful";

            sc.Open();
            System.Data.SqlClient.SqlCommand findPass = new System.Data.SqlClient.SqlCommand();
            findPass.Connection = sc;
            // SELECT PASSWORD STRING WHERE THE ENTERED USERNAME MATCHES
            findPass.CommandText = "select PasswordHash from Pass where Username = @Username";
            findPass.Parameters.Add(new SqlParameter("@Username", String.Format("{0}", Request.Form["InputEmail2"])));
            Response.Write(String.Format("{0}", Request.Form["InputEmail2"]));

            SqlDataReader reader = findPass.ExecuteReader(); // create a reader

            if (reader.HasRows) // if the username exists, it will continue
            {
                while (reader.Read()) // this will read the single record that matches the entered username
                {
                    string storedHash = reader["PasswordHash"].ToString(); // store the database password into this variable

                    if (PasswordHash.ValidatePassword(String.Format("{0}", Request.Form["InputEmail2"]), storedHash)) // if the entered password matches what is stored, it will show success
                    {
                        Session["LoggedIn"] = true;
                        Response.Write("Success!");
                        // btnLogin.Enabled = false;
                        // txtUsername.Enabled = false;
                        // txtPassword.Enabled = false;
                    }
                    else
                    {
                        //lblStatus.Text = "Password is wrong.";
                        Session["LoggedIn"] = false;
                    }

                }
            }
            else // if the username doesn't exist, it will show failure
                Response.Write("Login Failed");

            sc.Close();
        }
        catch
        {
            Response.Write ( "Database Error.");
        }
    }
}