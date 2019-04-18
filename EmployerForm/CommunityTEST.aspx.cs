using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Services;
using System.Web.UI.HtmlControls;

using System.Text;
using System.Threading.Tasks;
using System.ServiceModel.Channels;

public partial class CommunityTEST : System.Web.UI.Page
{
    //This is your file originally
    System.Data.SqlClient.SqlConnection sc = new SqlConnection(ConfigurationManager.ConnectionStrings["CuedInConnectionString"].ToString());


    protected void Page_Load(object sender, EventArgs e)
    {
        int selectedSort = SortDropDown.SelectedIndex;
        // Bind current posts from the database to the page
        GridViewPosts.DataSource = Post.getAllPostInfo(selectedSort);
        GridViewPosts.DataBind();

        sc.Open();
        System.Data.SqlClient.SqlCommand getdbPersonID = new System.Data.SqlClient.SqlCommand();
        getdbPersonID.Connection = sc;
        //Gets the personid for the username
        getdbPersonID.CommandText = "SELECT PersonID from Account where Username = '" + HttpUtility.HtmlEncode((string)(Session)["loginUser"]) + "'";

        int accountID = (int)getdbPersonID.ExecuteScalar();
        sc.Close();
        //lblDisplayName.Text = accountID.ToString();

        sc.Open();
        System.Data.SqlClient.SqlCommand getFName = new System.Data.SqlClient.SqlCommand();
        getFName.Connection = sc;
        //gets the firstname for the user
        //getFName.CommandText = "select Person.FirstName FROM Person INNER JOIN Account ON Person.PersonID = Account.PersonID where Person.PersonID = @AccountPersonID";
        getFName.CommandText = "Select FirstName from Person where Email = @FirstNamePerson";
        getFName.Parameters.Add(new SqlParameter("@FirstNamePerson", HttpUtility.HtmlEncode((string)(Session)["loginUser"])));
        // getdbPersonID.ExecuteNonQuery();
        string accountFName = (string)getFName.ExecuteScalar();
        sc.Close();

        sc.Open();
        System.Data.SqlClient.SqlCommand getLName = new System.Data.SqlClient.SqlCommand();
        getLName.Connection = sc;
        //gets the lastname for the user
        getLName.CommandText = "Select LastName FROM Person where Email = @AccountPersonName";
        getLName.Parameters.Add(new SqlParameter("@AccountPersonName", HttpUtility.HtmlEncode((string)(Session)["loginUser"])));
        string accountLName = (string)getLName.ExecuteScalar();
        sc.Close();

        LoginName.Text = accountFName + " " + accountLName;

        //Display current employer's username/email
        UserName.Text = HttpUtility.HtmlEncode((string)(Session)["loginUser"]);

        sc.Open();
        System.Data.SqlClient.SqlCommand getCompName = new System.Data.SqlClient.SqlCommand();
        getCompName.Connection = sc;
        getCompName.CommandText = "Select EmployerName from Employer Inner Join Person on Employer.EmployerID = Person.PersonID where PersonID = @EmployerID";
        getCompName.Parameters.Add(new SqlParameter("@EmployerID", HttpUtility.HtmlEncode(Session["employerID"])));
        String Company = (String)getCompName.ExecuteScalar();
        CompanyName.Text = Company;
        sc.Close();

        sc.Open();
        System.Data.SqlClient.SqlCommand getSummary = new System.Data.SqlClient.SqlCommand();
        getSummary.Connection = sc;
        getSummary.CommandText = "Select PersonalSummary from Person where Email = @Email";
        getSummary.Parameters.Add(new SqlParameter("@Email", HttpUtility.HtmlEncode((string)(Session)["loginUser"])));
        String Summary = (String)getSummary.ExecuteScalar();
        SumLblDesc.Text = Summary;
        sc.Close();

        sc.Open();
        System.Data.SqlClient.SqlCommand getLocation = new System.Data.SqlClient.SqlCommand();
        getLocation.Connection = sc;
        getLocation.CommandText = "Select City from Address INNER JOIN Person on Address.AddressID  = Person.AddressID where Person.Email = @PersonEmail";
        getLocation.Parameters.Add(new SqlParameter("@PersonEmail", HttpUtility.HtmlEncode((string)(Session)["loginUser"])));
        String Location = (String)getLocation.ExecuteScalar();
        LocLblResult.Text = Location;
        sc.Close();

        GridViewPosts.CellPadding = 0;
        GridViewPosts.CellSpacing = 0;


        


    }

  

    
      
    // Allows user to publish posts and have them added to the timeline
    protected void btnPublishPost_Click(object sender, EventArgs e)
    {
        Post newPost = new Post(txtNewPost.Text);

        sc.Open();
        System.Data.SqlClient.SqlCommand getdbPersonID = new System.Data.SqlClient.SqlCommand();
        getdbPersonID.Connection = sc;
        //Gets the personid for the username
        getdbPersonID.CommandText = "SELECT PersonID from Account where Username = '" + HttpUtility.HtmlEncode((string)(Session)["loginUser"]) + "'";
        int accountID = (int)getdbPersonID.ExecuteScalar();
        sc.Close();

        //Display current name
        sc.Open();
        SqlCommand getEmpID = new SqlCommand();
        getEmpID.Connection = sc;
        getEmpID.CommandText = "Select EmployerID from Person where PersonID = " + accountID;
        Int32 EmpID = Convert.ToInt32(getEmpID.ExecuteScalar());
        sc.Close();

        sc.Open();
        SqlCommand cmd = new SqlCommand("Insert into Post(PostDescription, DateCreated, Deadline, PersonID, EmployerID, OpportunityID,ModifiedDate) values(@Description,@DateCreated,@Deadline,@PersonID, @EmployerID, @OpportunityID,@ModifiedDate)", sc);
        cmd.Parameters.Add(new SqlParameter("@Description", HttpUtility.HtmlEncode(newPost.getPostDesc())));
        cmd.Parameters.Add(new SqlParameter("@DateCreated", DateTime.Now));
        cmd.Parameters.Add(new SqlParameter("@Deadline", DateTime.Now));
        cmd.Parameters.Add(new SqlParameter("@PersonID", HttpUtility.HtmlEncode(accountID)));
        cmd.Parameters.Add(new SqlParameter("@EmployerID", HttpUtility.HtmlEncode(EmpID)));
        cmd.Parameters.Add(new SqlParameter("@OpportunityID", 1));
        cmd.Parameters.Add(new SqlParameter("@ModifiedDate", DateTime.Now));
       
        cmd.ExecuteNonQuery();
        sc.Close();
        int selectedSort = SortDropDown.SelectedIndex;
        GridViewPosts.DataSource = Post.getAllPostInfo(selectedSort);
        GridViewPosts.DataBind();
        txtNewPost.Text = "";
    }


    protected void btnPostReply_Click(object sender, EventArgs e)
    {
        sc.Open();
        SqlCommand login = new SqlCommand();
        login.Connection = sc;
        login.CommandText = "SELECT PersonID from Account where Username = '" + HttpUtility.HtmlEncode((string)(Session)["loginUser"]) + "'";
        int accountID = (int)login.ExecuteScalar();
        sc.Close();


        GridViewRow row = (sender as Button).NamingContainer as GridViewRow;
        Label lblchildCommentid = (Label)row.FindControl("lblPostId");
        TextBox txtCommentParent = (TextBox)row.FindControl("txtCommentReply");
        SqlCommand cmd = new SqlCommand("Insert into Comment(CommentDescription, DateCreated, PostID, PersonID) values (@Description, @DateCreated, @PostID, @PersonID)", sc);
        cmd.Parameters.Add(new SqlParameter("@Description", HttpUtility.HtmlEncode(txtCommentParent.Text)));
        cmd.Parameters.Add(new SqlParameter("@DateCreated", DateTime.Now));
        cmd.Parameters.Add(new SqlParameter("@PostID", HttpUtility.HtmlEncode(lblchildCommentid.Text)));
        cmd.Parameters.Add(new SqlParameter("@PersonID", HttpUtility.HtmlEncode(accountID)));
        sc.Open();
        cmd.ExecuteNonQuery();
        sc.Close();

        // Binds the Comments to the Post
        int selectedSort = SortDropDown.SelectedIndex;
        GridViewPosts.DataSource = Post.getAllPostInfo(selectedSort);
        GridViewPosts.DataBind();
    }


    // Inserts Like to Database on user click
    [WebMethod]
    [System.Web.Script.Services.ScriptMethod()]
    public static void BtnLikePost_Click(int n)
    {
        SqlConnection sc = new SqlConnection(ConfigurationManager.ConnectionStrings["CuedInConnectionString"].ToString());
        SqlCommand cmd = new SqlCommand("Insert into [dbo].[Like](PersonID, PostID) values (1, @PostID)", sc);
        cmd.Parameters.Add(new SqlParameter("@PostID", n));
        sc.Open();
        cmd.ExecuteNonQuery();
        sc.Close();
    }

    // Drops Like from Database on user click
    [WebMethod]
    [System.Web.Script.Services.ScriptMethod()]
    public static void BtnUnLikePost_Click(int n)
    {
        SqlConnection sc = new SqlConnection(ConfigurationManager.ConnectionStrings["CuedInConnectionString"].ToString());
        SqlCommand cmd = new SqlCommand("Delete from [dbo].[Like] where PersonID = 1 and PostID = " + n, sc);
        sc.Open();
        cmd.ExecuteNonQuery();
        sc.Close();
    }

    public void LogOutUser(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Cookies.Add(new HttpCookie("ASP.NET_SessionId", ""));

        Session["loggedIn"] = "false";
        Session["loggedOut"] = "true";

        Response.Redirect("CuedIn.aspx");
    }


}