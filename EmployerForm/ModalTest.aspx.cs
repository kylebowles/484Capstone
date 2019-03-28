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
public partial class ModalTest : System.Web.UI.Page
{

    //SQL Connection to AWS
    //System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["CuedInConnectionString"].ToString());

    //SQL Connection to Localhost
    System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["LocalhostConnectionString"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {



        //Display current employer name from database

        sc.Open();
        System.Data.SqlClient.SqlCommand getdbPersonID = new System.Data.SqlClient.SqlCommand();
        getdbPersonID.Connection = sc;
        //Gets the personid for the username
        getdbPersonID.CommandText = "SELECT PersonID from Account where Username = '" + (string)(Session)["loginUser"] + "'";
        int accountID = (int)getdbPersonID.ExecuteScalar();
        sc.Close();
        //lblDisplayName.Text = accountID.ToString();

        sc.Open();
        System.Data.SqlClient.SqlCommand getFName = new System.Data.SqlClient.SqlCommand();
        getFName.Connection = sc;
        //gets the firstname for the user
        getFName.CommandText = "select Person.FirstName  FROM Account INNER JOIN Person ON Account.PersonID = Person.PersonID where Account.PersonID = @AccountPersonID";
        getFName.Parameters.Add(new SqlParameter("@AccountPersonID", accountID));
        // getdbPersonID.ExecuteNonQuery();
        string accountFName = (string)getFName.ExecuteScalar();
        sc.Close();

        sc.Open();
        System.Data.SqlClient.SqlCommand getLName = new System.Data.SqlClient.SqlCommand();
        getLName.Connection = sc;
        //gets the lastname for the user
        getLName.CommandText = "Select Person.LastName FROM Person where PersonID = @AccountPersonID";
        getLName.Parameters.Add(new SqlParameter("@AccountPersonID", accountID));
        string accountLName = (string)getLName.ExecuteScalar();
        sc.Close();

        //Displays the use'rs name
        lblDisplayName.Text = accountFName + " " + accountLName;

        //Display current employer's username/email
        lblUserEmail.Text = (string)(Session)["loginUser"];

        //Display current employer's company
        sc.Open();
        System.Data.SqlClient.SqlCommand getCoName = new System.Data.SqlClient.SqlCommand();
        getCoName.Connection = sc;
        getCoName.CommandText = "select Employer.EmployerName FROM Employer INNER JOIN Account ON Account.PersonID = Employer.PersonID where Account.PersonID = @AccountPersonID";
        getCoName.Parameters.Add(new SqlParameter("@AccountPersonID", accountID));
        string coName = (string)getCoName.ExecuteScalar();
        lblCompany.Text = coName;
        sc.Close();

        //Display current employer's location
        sc.Open();
        System.Data.SqlClient.SqlCommand getAddID = new System.Data.SqlClient.SqlCommand();
        getAddID.Connection = sc;
        getAddID.CommandText = "select AddressID from person where PersonID = @AccountPersonID"; //gets address id
        getAddID.Parameters.Add(new SqlParameter("@AccountPersonID", accountID));
        int addID = (int)getAddID.ExecuteScalar();

        System.Data.SqlClient.SqlCommand getLocation = new System.Data.SqlClient.SqlCommand();
        getLocation.Connection = sc;
        getLocation.CommandText = "select City from Address where AddressID = @AccountAddressID"; //gets city
        getLocation.Parameters.Add(new SqlParameter("@AccountAddressID", addID));
        string citySt = (string)getLocation.ExecuteScalar();
        lblLocation.Text = citySt;
        sc.Close();

        //Display the current Employer's job title in their profile
        sc.Open();
        System.Data.SqlClient.SqlCommand getEmpAddID = new System.Data.SqlClient.SqlCommand();
        getEmpAddID.Connection = sc;
        getEmpAddID.CommandText = "SELECT JobTitle from Employer where PersonID = @EmployerPersonID"; //gets EmployerID
        getEmpAddID.Parameters.Add(new SqlParameter("@EmployerPersonID", accountID));
        String Occupation = (String)getEmpAddID.ExecuteScalar();
        lblJobTitle.Text = Occupation;
        sc.Close();

        sc.Open();
        System.Data.SqlClient.SqlCommand getPhoneNumber = new System.Data.SqlClient.SqlCommand();
        getPhoneNumber.Connection = sc;
        getPhoneNumber.CommandText = "Select PhoneNumber from Person where PersonID = @PhonePersonID";
        getPhoneNumber.Parameters.Add(new SqlParameter("@PhonePersonID", accountID));
        String PhoneNum = (String)getPhoneNumber.ExecuteScalar();
        lblPhone.Text = PhoneNum;
        sc.Close();




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


    //Loads the Employer's summary onto the page with the most recent description
    protected void ShowSummary(object sender, EventArgs e)
    {



        sc.Open();
        System.Data.SqlClient.SqlCommand getdbPersonID = new System.Data.SqlClient.SqlCommand();
        getdbPersonID.Connection = sc;
        //Gets the personid for the username
        getdbPersonID.CommandText = "SELECT PersonID from Account where Username = '" + (string)(Session)["loginUser"] + "'";
        int accountID = (int)getdbPersonID.ExecuteScalar();


        ProfileSummary.Visible = true;
        subheader.Visible = true;
        BtnEdit.Visible = true;


        System.Data.SqlClient.SqlCommand getEmpSummary = new System.Data.SqlClient.SqlCommand();
        getEmpSummary.Connection = sc;
        getEmpSummary.CommandText = "Select EmployerSummary from Employer where PersonID = @SummaryPersonID";
        getEmpSummary.Parameters.Add(new SqlParameter("@SummaryPersonID", accountID));
        String EmpSum = (String)getEmpSummary.ExecuteScalar();
        ProfileSummary.InnerText = EmpSum;

        sc.Close();

    }

    //Saving contents of Desired Exp field, and updates the DB with the new description when the user clicks "Save changes"
    protected void EditSummary(object sender, EventArgs e)
    {

        sc.Open();
        System.Data.SqlClient.SqlCommand getdbPersonID = new System.Data.SqlClient.SqlCommand();
        getdbPersonID.Connection = sc;
        //Gets the personid for the username
        getdbPersonID.CommandText = "SELECT PersonID from Account where Username = '" + (string)(Session)["loginUser"] + "'";
        int accountID = (int)getdbPersonID.ExecuteScalar();



        System.Data.SqlClient.SqlCommand getEmpSummary = new System.Data.SqlClient.SqlCommand();
        getEmpSummary.Connection = sc;
        getEmpSummary.CommandText = "UPDATE Employer set EmployerSummary = @EmployerSummary where PersonID = @SummaryPersonID";
        getEmpSummary.Parameters.Add(new SqlParameter("@EmployerSummary", ProfileSummary.Value));
        getEmpSummary.Parameters.Add(new SqlParameter("@SummaryPersonID", accountID));
        String EmpSum = (String)getEmpSummary.ExecuteScalar();
        ProfileSummary.Value = EmpSum;

        sc.Close();

    }




}