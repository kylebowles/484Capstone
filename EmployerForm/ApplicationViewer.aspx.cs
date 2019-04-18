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
            MyDataSource.SelectCommand = "SELECT DISTINCT Application.ApplicationID, Application.FirstName + ' ' + Application.LastName + ' ' as Name, Application.Email, Student.AcademicYear, Person.PhoneNumber, ' ' + Opportunity.OpportunityName as OpportunityName1" +
                " FROM Application inner join Employer on Application.EmployerID = @EmployerID inner join Opportunity on Application.OpportunityID = Opportunity.OpportunityID inner join Student on Application.StudentID = Student.StudentID inner join Person on Student.PersonID = Person.PersonID; ";
            GridView1.DataBind();
        }
        else
        {
            MyDataSource.SelectCommand = "SELECT DISTINCT Application.ApplicationID, Application.FirstName + ' ' + Application.LastName + ' ' as Name, Application.Email, Student.AcademicYear, Person.PhoneNumber, ' ' + Opportunity.OpportunityName as OpportunityName1 " +
                "FROM Application inner join Employer on Application.EmployerID = @EmployerID inner join Opportunity on Opportunity.OpportunityID = Application.opportunityID" +
                " inner join Student on Application.StudentID = Student.StudentID inner join Person on Student.PersonID = Person.PersonID where Application.OpportunityID = @OpportunityID AND Employer.EmployerID = @EmployerID; ";
            GridView1.DataBind();
        }

    }
}