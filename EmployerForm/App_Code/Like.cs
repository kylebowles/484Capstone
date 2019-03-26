using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Like
/// </summary>
public class Like
{
    public int likeID { get; set; }
    public static int likeCount { get; set; }
    public int postID { get; set; }
    public int personID { get; set; }
    public Like()
    {

    }

    public static List<Like> GetLikes(int postID)
    {
        List<Like> Likes = new List<Like>();
        String connection = "Data Source=localhost;Initial Catalog=Cued-In;Integrated Security=True";
        using (SqlConnection sc = new SqlConnection(connection))
        {
            SqlCommand sqlcmd = new SqlCommand(" select Post.PostID, Post.PersonID, count([dbo].[Like].LikeID)[LikeCount] from Post full outer join [dbo].[Like] on post.PostID = [dbo].[Like].PostID where [dbo].[Like].PostID = @PostID group by post.postID, Post.Personid order by post.PostID", sc);
            sqlcmd.Parameters.Add(new SqlParameter("@PostID", postID));
            sc.Open();
            SqlDataReader sqldr = sqlcmd.ExecuteReader();
            while (sqldr.Read())
            {
                Like newLike = new Like();
                newLike.personID = Convert.ToInt32(sqldr["PersonID"]);
                newLike.postID = Convert.ToInt32(sqldr["PostID"]);
                Likes.Add(newLike);
            }
        }
        return Likes;
    }
}