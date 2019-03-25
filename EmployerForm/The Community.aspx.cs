using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class The_Community : System.Web.UI.Page
{
    SqlConnection sc = new SqlConnection("Data Source = localhost; Initial Catalog = Cued-In; Integrated Security = True");


    protected void Page_Load(object sender, EventArgs e)
    {
        // Bind current posts from the database to the page
        GridViewPosts.DataSource = Post.getAllPostInfo();
        GridViewPosts.DataBind();

    }

    // Binds current comments from the database to the page
    public void bindComments()
    {
        String connection = "Data Source=localhost;Initial Catalog=Cued-In;Integrated Security=True";
        SqlConnection sc = new SqlConnection(connection);
        SqlDataAdapter sqlDA = new SqlDataAdapter("Select * from Comment", sc);
        DataSet commentSet = new DataSet();
        sqlDA.Fill(commentSet);
        GridViewPosts.DataSource = commentSet;
        GridViewPosts.DataBind();

    }

    // Allows user to publish posts and have them added to the timeline
    protected void btnPublishPost_Click(object sender, EventArgs e)
    {
        Post newPost = new Post(txtNewPost.Text);
        SqlCommand cmd = new SqlCommand("Insert into Post(PostDescription,DateCreated,Deadline,PersonID,OpportunityID,ModifiedDate) values(@Description,@DateCreated,@Deadline,@PersonID,@OpportunityID,@ModifiedDate)",sc);
        cmd.Parameters.Add(new SqlParameter("@Description", newPost.getPostDesc() ));
        cmd.Parameters.Add(new SqlParameter("@DateCreated", DateTime.Now));
        cmd.Parameters.Add(new SqlParameter("@Deadline", DateTime.Now));
        cmd.Parameters.Add(new SqlParameter("@PersonID", Session["loginID"]));
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

}