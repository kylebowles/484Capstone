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
    //Create SQL connection
    System.Data.SqlClient.SqlConnection sql = new System.Data.SqlClient.SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            //Connect to Cued-In DB
            sql.ConnectionString = "Data Source=localhost;Initial Catalog=Cued-In;Integrated Security=True";
            sql.Open();

        }

        catch
        {
            //ErrorDB.Text = "Error connecting to database.";
        }



    }

    protected void ShowPopup(object sender, EventArgs e)
    {
        
        ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup();", true);
    }

    protected void SubmitPost(object sender, EventArgs e)
    {
        //Insert into Opportunity table
        Opportunity opp = new Opportunity(JobNameText.Value.ToString(), JobTypeText.Value.ToString(), ApprenText.Value.ToString());

        SqlCommand insertOpportunity = new SqlCommand();
        insertOpportunity.Connection = sql;
        insertOpportunity.CommandText = "insert into Opportunity(OpportunityName,OpportunityType,isApprenticeship) values(@OpportunityName,@OpportunityType,@isApprenticeship)";
        insertOpportunity.Parameters.Add(new SqlParameter("@OpportunityName", opp.getOpportunityName()));
        insertOpportunity.Parameters.Add(new SqlParameter("@OpportunityType", opp.getOpportunityType()));
        insertOpportunity.Parameters.Add(new SqlParameter("@isApprenticeship", opp.getApprenticeship()));

        insertOpportunity.ExecuteNonQuery();

        //Insert into Post table
        Post post = new Post(JobTypeText.Value.ToString() + " Post", DateTime.Now, DateTime.Parse(DeadlineText.Value), DateTime.Now);

        //Selecting a PersonID to insert with a Posting --> CHECK THIS
        SqlCommand matchPersonID = new SqlCommand();
        matchPersonID.Connection = sql;
        matchPersonID.CommandText = "SELECT MAX(PersonID) FROM PERSON";
        matchPersonID.ExecuteNonQuery();
        int holdPostPersonID = (Int32)matchPersonID.ExecuteScalar();


        SqlCommand matchOppID = new SqlCommand();
        matchOppID.Connection = sql;
        matchOppID.CommandText = "SELECT MAX(OpportunityID) from OPPORTUNITY";
        int holdPostOppID = (Int32)matchOppID.ExecuteScalar();

        SqlCommand insertPost = new SqlCommand();
        insertPost.Connection = sql;
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



    }

}