using System;
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
using System.ServiceModel.Channels;

public partial class EmployerLanding : System.Web.UI.Page
{

    //SQL Connection
    System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["LocalhostConnectionString"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
        //try
        //{


        //}

        //catch
        //{
        //    //ErrorDB.Text = "Error connecting to database.";
        //}

        //Display current employer name from database
        //lblDisplayName.Text = "Test";
        sc.Open();
        System.Data.SqlClient.SqlCommand getdbPersonID = new System.Data.SqlClient.SqlCommand();
        getdbPersonID.Connection = sc;
        //Gets the personid for the username
        getdbPersonID.CommandText = "SELECT PersonID from Account where Username = '" + (string)(Session)["loginUser"] +"'";
        int accountID = (int)getdbPersonID.ExecuteScalar();
        sc.Close();
        //lblDisplayName.Text = accountID.ToString();

        sc.Open();
        System.Data.SqlClient.SqlCommand getFName = new System.Data.SqlClient.SqlCommand();
        getFName.Connection = sc;
        //gets the firstname for the user
        getFName.CommandText = "select Person.FirstName  FROM Account INNER JOIN Person ON Account.PersonID = Person.PersonID where Account.PersonID = " + accountID;
       // getdbPersonID.ExecuteNonQuery();
        string accountFName = (string)getFName.ExecuteScalar();
        sc.Close();

        sc.Open();
        System.Data.SqlClient.SqlCommand getLName = new System.Data.SqlClient.SqlCommand();
        getLName.Connection = sc;
        //gets the lastname for the user
        getLName.CommandText = "Select Person.LastName FROM Person where PersonID = " + accountID;
        string accountLName = (string)getLName.ExecuteScalar();
        sc.Close();

        //Displays the use'rs name
        lblDisplayName.Text = accountFName + " " + accountLName;

    }

    protected void ShowPopup(object sender, EventArgs e)
    {

        ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup();", true);
    }

    protected void SubmitPost(object sender, EventArgs e)
    {

        //Insert into Opportunity table
        Opportunity opp = new Opportunity(JobNameText.Value.ToString(), JobTypeText.Value.ToString(), ApprenText.Value.ToString());
        sc.Open();
        System.Data.SqlClient.SqlCommand insertOpp = new System.Data.SqlClient.SqlCommand();
        insertOpp.Connection = sc;
        insertOpp.CommandText = "insert into Opportunity(OpportunityName, OpportunityType, isApprenticeship) values(@OpportunityName,@OpportunityType,@isApprenticeship)";
        insertOpp.Parameters.Add(new SqlParameter("@OpportunityName", opp.getOpportunityName()));
        insertOpp.Parameters.Add(new SqlParameter("@OpportunityType", opp.getOpportunityType()));
        insertOpp.Parameters.Add(new SqlParameter("@isApprenticeship", opp.getApprenticeship()));

        insertOpp.ExecuteNonQuery();
        sc.Close();

        //Insert into Post table
        Post post = new Post(JobTypeText.Value.ToString() + " Post", DateTime.Now.ToString(), DateTime.Parse(DeadlineText.Value), DateTime.Now);

        sc.Open();
        System.Data.SqlClient.SqlCommand matchPersonID = new System.Data.SqlClient.SqlCommand();
        matchPersonID.Connection = sc;
        matchPersonID.CommandText = "SELECT MAX(PersonID) FROM PERSON";
        matchPersonID.ExecuteNonQuery();
        int holdPostPersonID = (Int32)matchPersonID.ExecuteScalar();

        matchPersonID.ExecuteNonQuery();
        sc.Close();

        sc.Open();
        SqlCommand matchOppID = new SqlCommand();
        matchOppID.Connection = sc;
        matchOppID.CommandText = "SELECT MAX(OpportunityID) from OPPORTUNITY";
        int holdPostOppID = (Int32)matchOppID.ExecuteScalar();

        SqlCommand insertPost = new SqlCommand();
        insertPost.Connection = sc;
        insertPost.CommandText = "insert into Post(PostDescription,DateCreated,Deadline,ModifiedDate,PersonID,OpportunityID) " +
            "values(@PostDescription,@DateCreated,@Deadline,@ModifiedDate,@PersonID,@OpportunityID)";
        insertPost.Parameters.Add(new SqlParameter("@PostDescription", post.getPostDesc()));
        insertPost.Parameters.Add(new SqlParameter("@DateCreated", post.getDateCreated()));
        insertPost.Parameters.Add(new SqlParameter("@Deadline", post.getDeadline()));
        insertPost.Parameters.Add(new SqlParameter("@ModifiedDate", post.getModDate()));
        insertPost.Parameters.Add(new SqlParameter("@PersonID", holdPostPersonID));
        insertPost.Parameters.Add(new SqlParameter("@OpportunityID", holdPostOppID));

        insertPost.ExecuteNonQuery();

        ScriptManager.RegisterStartupScript(this, this.GetType(), "ShowPost", "ShowPostAlert();", true);


        sc.Close();


    }

    protected void LogOutUser(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Cookies.Add(new HttpCookie("ASP.NET_SessionId", ""));

        Session["loggedIn"] = "false";
        Session["loggedOut"] = "true";
        
        Response.Redirect("CuedIn.aspx");
        
    }

}