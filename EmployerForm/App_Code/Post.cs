﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for Post
/// </summary>
public class Post
{
    //Data Fields
    public int PostID { get; set; }
    public String PostDescription {get; set;}
    public String DateCreated { get; set; }
    public DateTime Deadline { get; set; }
    public DateTime ModifiedDate { get; set; }
    public int PersonID { get; set; }
    public string EmployerName { get; set; }
    public string PersonName { get; set; }
    public int likeCount { get; set; }

    public List<Like> LikeList
    {
        get
        {
            return Like.GetLikes(this.PostID);
        }
    }

    public List<Comment> CommentList
    {
        get
        {
            return Comment.GetComments(this.PostID);
        }
    }

    public Post(String PostDescription)
    {
        setPostDesc(PostDescription);
    }
    public Post()
    {
        //No-arg constructor
    }

    public Post(String PostDescription, String DateCreated, DateTime Deadline, DateTime ModifiedDate)
    {
        this.PostDescription = PostDescription;
        this.DateCreated = DateCreated;
        this.Deadline = Deadline;
        this.ModifiedDate = ModifiedDate;
    }

    public String getPostDesc()
    {
        return this.PostDescription;
    }

    public void setPostDesc(String PostDescription)
    {
        this.PostDescription = PostDescription;
    }

    public String getDateCreated()
    {
        return this.DateCreated;
    }

    public void setDateCreated(String DateCreated)
    {
        this.DateCreated = DateCreated;
    }

    public DateTime getDeadline()
    {
        return this.Deadline;
    }

    public void setDeadline(DateTime Deadline)
    {
        this.Deadline = Deadline;
    }

    public DateTime getModDate()
    {
        return this.ModifiedDate;
    }

    public void setModDate(DateTime ModifiedDate)
    {
        this.ModifiedDate = ModifiedDate;
    }

    public static List<Post> getAllPostInfo()
    {
        //Localhost Connection
        //String connection = (ConfigurationManager.ConnectionStrings["LocalhostConnectionString"].ToString());

        //AWS Connection
        String connection = (ConfigurationManager.ConnectionStrings["CuedInConnectionString"].ToString());


        List<Post> listPosters = new List<Post>();
        using (SqlConnection sc = new SqlConnection(connection))
        {
            SqlCommand sqlCmd = new SqlCommand("select post.postID, PostDescription, DateCreated, post.PersonID, OpportunityID, EmployerID, EmployerName, Person.FirstName + ' ' + Person.LastName [PersonName],count([dbo].[Like].LikeID)[LikeCount] from post full outer join [dbo].[like] on [dbo].[like].PostID = Post.PostID inner join employer on Post.PersonID = Employer.PersonID inner join Person on Person.PersonID = Employer.PersonID group by post.postid, PostDescription, DateCreated, post.PersonID, OpportunityID, EmployerID, EmployerName, Person.FirstName, Person.LastName order by PostID desc", sc);
            sc.Open();
            SqlDataReader sqlDR = sqlCmd.ExecuteReader();
            while(sqlDR.Read())
            {
                Post newPost = new Post();
                newPost.PostID = Convert.ToInt32(sqlDR["PostID"]);
                newPost.EmployerName = sqlDR["EmployerName"].ToString();
                newPost.PersonName = sqlDR["PersonName"].ToString();
                //newPost.PersonID = Convert.ToInt32(sqlDR["PersonID"]);
                string createdDate = sqlDR["DateCreated"].ToString();
                newPost.setDateCreated(createdDate);
                newPost.PostDescription = sqlDR["PostDescription"].ToString();
                newPost.likeCount = Convert.ToInt32(sqlDR["LikeCount"]);
                listPosters.Add(newPost);
            }

        }
        return listPosters;
    }


}