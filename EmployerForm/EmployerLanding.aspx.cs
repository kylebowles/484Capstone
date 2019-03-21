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
    System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["CuedInConnectionString"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {


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
        Post post = new Post(JobTypeText.Value.ToString() + " Post", DateTime.Now, DateTime.Parse(DeadlineText.Value), DateTime.Now);

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

}