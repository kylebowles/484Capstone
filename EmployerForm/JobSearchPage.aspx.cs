using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class JobSearchPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridViewRow Row = searchGV.SelectedRow;
    }



    protected void BtnSearch_Click(object sender, EventArgs e)
    {


        

        String searchTerm = txtSearch.Value;

        Session["temp"] = searchTerm;
        searchGV.Visible = true;
        searchGV.DataBind();


    }




    //protected void CheckBoxFT_CheckedChanged(object sender, EventArgs e)
    //{
    //    if (CheckBoxFT.Checked == true)
    //    {
    //        String CheckboxFullTime = "Full-Time";
    //        Session["tempCheckboxFullTime"] = CheckboxFullTime;

    //    }
    //    else
    //    {
    //        String CheckboxFullTime = "";
    //        Session["tempCheckboxFullTime"] = CheckboxFullTime;

    //    }
    //}

    //protected void CheckBoxPT_CheckedChanged(object sender, EventArgs e)
    //{
    //    if (CheckBoxPT.Checked ==true)
    //    {
    //        String CheckboxPartTime = "Part-Time";
    //        Session["tempCheckboxPartTime"] = CheckboxPartTime;

    //    }
    //    else
    //    {
    //        String CheckboxPartTime = "";
    //        Session["tempCheckboxPartTime"] = CheckboxPartTime;

    //    }

    //}

    //protected void CheckBoxApp_CheckedChanged(object sender, EventArgs e)
    //{
    //    if (CheckBoxFT.Checked == true)
    //    {
    //        String CheckboxApp = "Apprenticeship";
    //        Session["tempCheckboxApp"] = CheckboxApp;

    //    }
    //    else
    //    {
    //        String CheckboxApp = "";
    //        Session["tempCheckboxApp"] = CheckboxApp;

    //    }
    //}

    //protected void CheckBoxInt_CheckedChanged(object sender, EventArgs e)
    //{
    //    if (CheckBoxPT.Checked == true)
    //    {
    //        String CheckboxInt = "Intership";
    //        Session["tempCheckboxPartTime"] = CheckboxInt;

    //    }
    //    else
    //    {
    //        String CheckboxInt = "";
    //        Session["tempCheckboxInt"] = CheckboxInt;

    //    }
    //}


    protected void LogOutUser(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Cookies.Add(new HttpCookie("ASP.NET_SessionId", ""));

        Session["loggedIn"] = "false";
        Session["loggedOut"] = "true";

        Response.Redirect("CuedIn.aspx");

    }




    protected void BtnMoreInfo_Click(object sender, EventArgs e)
    {
        Response.Redirect("CUEDIN.aspx");
    }
}