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

public partial class The_Community : System.Web.UI.Page
{
    //This is your file originally
    SqlConnection sc = new SqlConnection(ConfigurationManager.ConnectionStrings["CuedInConnectionString"].ToString());


    protected void Page_Load(object sender, EventArgs e)
    {
        // Bind current posts from the database to the page
        GridViewPosts.DataSource = Post.getAllPostInfo();
        GridViewPosts.DataBind();

    }

    // Binds current comments from the database to the page
    //public void bindComments()
    //{
    //    String connection = "Data Source=localhost;Initial Catalog=Cued-In;Integrated Security=True";
    //    SqlConnection sc = new SqlConnection(connection);
    //    SqlDataAdapter sqlDA = new SqlDataAdapter("Select * from Comment", sc);
    //    DataSet commentSet = new DataSet();
    //    sqlDA.Fill(commentSet);
    //    GridViewPosts.DataSource = commentSet;
    //    GridViewPosts.DataBind();

    //}

    // Allows user to publish posts and have them added to the timeline
    protected void btnPublishPost_Click(object sender, EventArgs e)
    {
        Post newPost = new Post(txtNewPost.Text);



        SqlCommand cmd = new SqlCommand("Insert into Post(PostDescription, DateCreated, Deadline, PersonID, EmployerID, OpportunityID,ModifiedDate) values(@Description,@DateCreated,@Deadline,@PersonID, @EmployerID, @OpportunityID,@ModifiedDate)", sc);
        cmd.Parameters.Add(new SqlParameter("@Description", newPost.getPostDesc()));
        cmd.Parameters.Add(new SqlParameter("@DateCreated", DateTime.Now));
        cmd.Parameters.Add(new SqlParameter("@Deadline", DateTime.Now));
        cmd.Parameters.Add(new SqlParameter("@PersonID", Session["LoginID"]));
        cmd.Parameters.Add(new SqlParameter("@EmployerID", 1));
        cmd.Parameters.Add(new SqlParameter("@OpportunityID", 1));
        cmd.Parameters.Add(new SqlParameter("@ModifiedDate", DateTime.Now));
        sc.Open();
        cmd.ExecuteNonQuery();
        sc.Close();
        GridViewPosts.DataSource = Post.getAllPostInfo();
        GridViewPosts.DataBind();
        txtNewPost.Text = "";
    }


    protected void btnPostReply_Click(object sender, EventArgs e)
    {
        GridViewRow row = (sender as Button).NamingContainer as GridViewRow;
        Label lblchildCommentid = (Label)row.FindControl("lblPostId");
        TextBox txtCommentParent = (TextBox)row.FindControl("txtCommentReply");
        SqlCommand cmd = new SqlCommand("Insert into Comment(CommentDescription, DateCreated, PostID, PersonID) values (@Description, @DateCreated, @PostID, @PersonID)", sc);
        cmd.Parameters.Add(new SqlParameter("@Description", txtCommentParent.Text));
        cmd.Parameters.Add(new SqlParameter("@DateCreated", DateTime.Now));
        cmd.Parameters.Add(new SqlParameter("@PostID", lblchildCommentid.Text));
        cmd.Parameters.Add(new SqlParameter("@PersonID", 14));
        // cmd.Parameters.AddWithValue("@UserName", Request.QueryString["User_name"].ToString());
        sc.Open();
        cmd.ExecuteNonQuery();
        sc.Close();

        // Binds the Comments to the Post
        GridViewPosts.DataSource = Post.getAllPostInfo();
        GridViewPosts.DataBind();
    }


    // Inserts Like to Database on user click
    [WebMethod]
    [System.Web.Script.Services.ScriptMethod()]
    public static void BtnLikePost_Click(int n)
    {
        SqlConnection sc = new SqlConnection(ConfigurationManager.ConnectionStrings["CuedInConnectionString"].ToString());
        //GridViewRow row = (sender as Button).NamingContainer as GridViewRow;
        //Label lblLikedPostId = (Label)row.FindControl("lblPostId");
        //TextBox txtCommentParent = (TextBox)row.FindControl("txtCommentReply");
        SqlCommand cmd = new SqlCommand("Insert into [dbo].[Like](PersonID, PostID) values (14, @PostID)", sc);
        //cmd.Parameters.Add(new SqlParameter("@PersonID"));
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
        //GridViewRow row = (sender as Button).NamingContainer as GridViewRow;
        //Label lblLikeId = (Label)row.FindControl("lblPostId");
        //TextBox txtCommentParent = (TextBox)row.FindControl("txtCommentReply");
        SqlCommand cmd = new SqlCommand("Delete from [dbo].[Like] where PersonID = 14 and PostID = " + n, sc);
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