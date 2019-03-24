using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for LoginDAO
/// </summary>
public class LoginDAO
{
    System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["LocalhostConnectionString"].ToString());
    public LoginDAO()
    {
        
    }
}