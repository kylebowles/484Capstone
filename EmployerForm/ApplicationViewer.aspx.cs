using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ApplicationViewer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

       

    }
    public void LogOutUser(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Cookies.Add(new HttpCookie("ASP.NET_SessionId", ""));

        Session["loggedIn"] = "false";
        Session["loggedOut"] = "true";

        Response.Redirect("CuedIn.aspx");
    }
    public void ApplicationProcess(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "application")
        {
            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["CuedInConnectionString"].ToString());
            sc.Open();
            System.Data.SqlClient.SqlCommand select = new System.Data.SqlClient.SqlCommand();
            select.Connection = sc;
            Session["CurrentApplication"] = Convert.ToString(e.CommandArgument.ToString());
            select.CommandText = "Update TestApplication Set Seen = 'true' where TestApplication.ApplicationID = @ApplicationID";
            select.Parameters.AddWithValue("ApplicationID", Session["CurrentApplication"]);
            select.ExecuteNonQuery();
            //Session["CurrentApplication"] = Convert.ToString(e.CommandArgument.ToString());
            //string current = Session["CurrentApplication"].ToString();
            sc.Close();
            Response.Redirect("ApplicationProcess.aspx");
        }
    }
       
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void DropdownList1Change(object sender, EventArgs e)
    {
        Session["opportunityID"] = DropDownList1.SelectedValue;
        if (DropDownList1.SelectedValue.Equals("All"))
        {
            MyDataSource.SelectCommand = "SELECT DISTINCT TestApplication.ApplicationID, TestApplication.FirstName + ' ' + TestApplication.LastName + ' ' as Name, TestApplication.Email, Student.AcademicYear, Person.PhoneNumber, ' ' + Opportunity.OpportunityName as OpportunityName1" +
                " FROM TestApplication inner join Employer on TestApplication.EmployerID = @EmployerID inner join Opportunity on TestApplication.OpportunityID = Opportunity.OpportunityID inner join Student on TestApplication.StudentID = Student.StudentID inner join Person on Student.PersonID = Person.PersonID; ";
            GridView1.DataBind();
        }
        else
        {
            MyDataSource.SelectCommand = "SELECT DISTINCT TestApplication.ApplicationID, TestApplication.FirstName + ' ' + TestApplication.LastName + ' ' as Name, TestApplication.Email, Student.AcademicYear, Person.PhoneNumber, ' ' + Opportunity.OpportunityName as OpportunityName1 " +
                "FROM TestApplication inner join Employer on TestApplication.EmployerID = @EmployerID inner join Opportunity on Opportunity.OpportunityID = TestApplication.opportunityID" +
                " inner join Student on TestApplication.StudentID = Student.StudentID inner join Person on Student.PersonID = Person.PersonID where TestApplication.OpportunityID = @OpportunityID; ";
            GridView1.DataBind();
        }

    }
}