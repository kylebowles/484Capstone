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
/// <summary>
/// Summary description for Post
/// </summary>
public class Post
{
    //Data Fields
    private String PostDescription;
    private DateTime DateCreated;
    private DateTime Deadline;
    private DateTime ModifiedDate;

    public Post()
    {
        //No-arg constructor
    }

    public Post(String PostDescription, DateTime DateCreated, DateTime Deadline, DateTime ModifiedDate)
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

    public DateTime getDateCreated()
    {
        return this.DateCreated;
    }

    public void setDateCreated(DateTime DateCreated)
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
    
    


}