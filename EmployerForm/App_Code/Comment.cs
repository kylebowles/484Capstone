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


/// <summary>
/// Summary description for Comment
/// </summary>
public class Comment
{
    public int commentID { get; set; }
    public String commentDescription { get; set; }
    public String dateCreated { get; set; }
    public int postID { get; set; }
    public int personID { get; set; }
    public string EmployerName { get; set; }
    public string personName { get; set; }


    public Comment()
    {
    }  


        public static List<Comment> GetComments(int postID)
        {
            List<Comment> comments = new List<Comment>();
        String connection = "Data Source=localhost;Initial Catalog=Cued-In;Integrated Security=True";
            using (SqlConnection sc = new SqlConnection(connection))
            {
                SqlCommand sqlcmd = new SqlCommand("Select Comment.PersonID, Employer.EmployerName, Person.FirstName + ' ' + Person.LastName [PersonName], Comment.CommentDescription, Comment.DateCreated from Comment Inner join Person on Comment.PersonID = Person.PersonID inner join Employer on Employer.PersonID = person.PersonID", sc);
                sqlcmd.Parameters.Add(new SqlParameter("@PostID", postID));
                sc.Open();
                SqlDataReader sqldr = sqlcmd.ExecuteReader();
                while (sqldr.Read())
                {
                    Comment newComment = new Comment();
                    newComment.personID = Convert.ToInt32(sqldr["PersonID"]);
                    String postDate = sqldr["DateCreated"].ToString();
                    postDate = postDate.Substring(0, postDate.LastIndexOf("/") + 5);
                    newComment.dateCreated = postDate;
                    newComment.commentDescription = sqldr["CommentDescription"].ToString();
                    newComment.EmployerName = sqldr["EmployerName"].ToString();
                    newComment.personName = sqldr["PersonName"].ToString();
                    comments.Add(newComment);
                }
            }
            return comments;
        }


    }