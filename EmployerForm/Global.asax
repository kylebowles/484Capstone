<%@ Application Language="C#" %> 

<%@ Import Namespace="System.Data" %>

<%@ Import Namespace="System.Data.SqlClient" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup

    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        
    }

    void Session_End(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["LocalhostConnectionString"].ToString());
        Session["DateTimeEnd"] = DateTime.Now;
        sc.Open();
        System.Data.SqlClient.SqlCommand query = new System.Data.SqlClient.SqlCommand();
        query.Connection = sc;
        
        query.CommandText = "UPDATE User_LogTime SET Logout_Time = @Logout_Time, offline=0 WHERE offline=1 AND SID = @SID AND PersonID=@userID";
        query.Parameters.AddWithValue("@UserId", Session["loginID"]);
        query.Parameters.AddWithValue("@SID", Session.SessionID);
        query.Parameters.AddWithValue("@LogOut_Time", DateTime.Now);
        query.ExecuteNonQuery();
    }

</script>
