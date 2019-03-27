using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CreatePost : System.Web.UI.Page
{
    //Create SQL connection
    System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            //Connect to Cued-In DB

            //AWS Connection
            sc.ConnectionString = "CuedInConnectionString";

            //Localhost Connection
            //sc.ConnectionString = "LocalhostConnectionString";

            
        }

        catch
        {
            //ErrorDB.Text = "Error connecting to database.";
        }


        
    }

    //protected void NewPostClick(object sender, EventArgs e)
    //{
    //    Post post = new Post()
    //}

}