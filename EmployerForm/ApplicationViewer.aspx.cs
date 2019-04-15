using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ApplicationViewer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        MyDataSource.SelectParameters["EmployerID"].DefaultValue = "2";
       

    }
    public void LogOutUser(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Cookies.Add(new HttpCookie("ASP.NET_SessionId", ""));

        Session["loggedIn"] = "false";
        Session["loggedOut"] = "true";

        Response.Redirect("CuedIn.aspx");
    }
    public void ApplicationProcess(object sender, EventArgs e)
    {
        
        Response.Redirect("ApplicationProcess.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}