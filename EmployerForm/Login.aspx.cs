using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;

public partial class LoginPage : System.Web.UI.Page
{
    System.Data.SqlClient.SqlConnection sql = new System.Data.SqlClient.SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            sql.ConnectionString = "Data Source=localhost;Initial Catalog=Sprint1;Integrated Security=True";
            sql.Open();

        }

        catch
        {
           lblStatus.Text = "Error connecting to database.";
        }

    }

    protected void Login_Click(object sender, EventArgs e)
    {
        
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
            sc.ConnectionString = @"Server=LOCALHOST;Database=Sprint1;Trusted_Connection=Yes;";
            lblStatus.Text = "Database Connection Successful";

            sc.Open();
            System.Data.SqlClient.SqlCommand findPass = new System.Data.SqlClient.SqlCommand();
            findPass.Connection = sc;
            // SELECT PASSWORD STRING WHERE THE ENTERED USERNAME MATCHES
            findPass.CommandText = "select PasswordHash from Pass where Username = @Username";
            findPass.Parameters.Add(new SqlParameter("@Username", txtUsername.Text));

            SqlDataReader reader = findPass.ExecuteReader(); // create a reader

            if (reader.HasRows) // if the username exists, it will continue
            {
                while (reader.Read()) // this will read the single record that matches the entered username
                {
                    string storedHash = reader["PasswordHash"].ToString(); // store the database password into this variable

                    if (PasswordHash.ValidatePassword(txtPassword.Text, storedHash)) // if the entered password matches what is stored, it will show success
                    {
                        Session["LoggedIn"] = true;
                        lblStatus.Text = "Success!";
                        btnLogin.Enabled = false;
                        txtUsername.Enabled = false;
                        txtPassword.Enabled = false;
                    }
                    else
                    {
                        lblStatus.Text = "Password is wrong.";
                        Session["LoggedIn"] = false;
                    }

                }
            }
            else // if the username doesn't exist, it will show failure
                lblStatus.Text = "Login failed.";

            sc.Close();
        }
        catch
        {
            lblStatus.Text = "Database Error.";
        }
    }

    protected void lnkCreate_Click(object sender, EventArgs e) {
         Response.Redirect("EmployerInterface.aspx", false);
    }
}