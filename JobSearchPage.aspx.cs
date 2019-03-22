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

    }



    protected void btnSearch_Click(object sender, EventArgs e)
    {


        String searchTerm;

        searchTerm = txtSearch.Value;

        Session["temp"] = searchTerm;
        searchGV.Visible = true;
        searchGV.DataBind();


    }
}