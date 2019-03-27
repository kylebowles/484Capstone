using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;


/// <summary>
/// Summary description for LoginDAO
/// </summary>
public class LoginDAO
{
    //Localhost Connection
    //System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["LocalhostConnectionString"].ToString());
    //System.Data.SqlClient.SqlConnection scloop = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["LocalhostConnectionString"].ToString());

    //AWS Connection 
    System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["CuedInConnectionString"].ToString());
    System.Data.SqlClient.SqlConnection scloop = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["CuedInConnectionString"].ToString());
    public LoginDAO()
    {

    }

    public SqlDataReader getPasswordHash(String username)
    {
        sc.Open();
        System.Data.SqlClient.SqlCommand findPass = new System.Data.SqlClient.SqlCommand();
        findPass.Connection = sc;
        // SELECT PASSWORD STRING WHERE THE ENTERED USERNAME MATCHES
        findPass.CommandText = "select PasswordHash from Account where Username = @Username";
        findPass.Parameters.Add(new SqlParameter("@Username", username));
        return findPass.ExecuteReader();
    }

  
}
  