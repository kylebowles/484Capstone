using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Text;
using System.Web.UI.WebControls;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.ServiceModel.Channels;

public partial class ApplicationProcess : System.Web.UI.Page
{

    //aws connection string
    System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["CuedInConnectionString"].ToString());


    protected void Page_Load(object sender, EventArgs e)
    {

    }

//populating each textbox with information from the application table
//specified by the application id number
    protected void btnQuery_Click(object sender, EventArgs e)
    {
        /*
        string appID = ddAppID.SelectedValue;
        int appIDNum = Convert.ToInt32(appID);
        */
        string testName = ddName.SelectedValue;
        sc.Open();
        System.Data.SqlClient.SqlCommand select = new System.Data.SqlClient.SqlCommand();
        select.Connection = sc;

        

        //app id
        select.CommandText = "SELECT (ApplicationID) FROM APPLICATION where (FirstName + ' '+ LastName)=" + "'"+testName+"'";
        int appID = (int)select.ExecuteScalar();
        txtAppID.Text = appID.ToString();

        //email
        select.CommandText = "SELECT (Email) FROM APPLICATION where (FirstName + ' '+ LastName)=" + "'" + testName + "'";
        txtEmail.Text = (String)select.ExecuteScalar();

        //Student ID
        select.CommandText = "SELECT (StudentID) FROM APPLICATION where (FirstName + ' '+ LastName)=" + "'" + testName + "'";
        int studID = (int)select.ExecuteScalar();
        txtStudentID.Text = studID.ToString();

        //SAT Math
        select.CommandText = "SELECT (SATMath) FROM APPLICATION where (FirstName + ' '+ LastName)=" + "'" + testName + "'";
        int satMath = (int)select.ExecuteScalar();
        txtSATMath.Text = satMath.ToString();

        //SAT Verbal
        select.CommandText = "SELECT (SATVerbal) FROM APPLICATION where (FirstName + ' '+ LastName)=" + "'" + testName + "'";
        int satVerb = (int)select.ExecuteScalar();
        txtSATVerbal.Text = satVerb.ToString();

        //ACT Math
        select.CommandText = "SELECT (ACTMath) FROM APPLICATION where (FirstName + ' '+ LastName)=" + "'" + testName + "'";
        int actMath = (int)select.ExecuteScalar();
        txtACTMath.Text = actMath.ToString();

        //ACT English
        select.CommandText = "SELECT (ACTEnglish) FROM APPLICATION where (FirstName + ' '+ LastName)=" + "'" + testName + "'";
        int actEng = (int)select.ExecuteScalar();
        txtACTEng.Text = actEng.ToString();

        //ACT Reading
        select.CommandText = "SELECT (ACTReading) FROM APPLICATION where (FirstName + ' '+ LastName)=" + "'" + testName + "'";
        int actRead = (int)select.ExecuteScalar();
        txtACTRead.Text = actRead.ToString();

        //ACT Science
        select.CommandText = "SELECT (ACTScience) FROM APPLICATION where (FirstName + ' '+ LastName)=" + "'" + testName + "'";
        int actScience = (int)select.ExecuteScalar();
        txtACTSci.Text = actScience.ToString();

        //ACT Composite
        select.CommandText = "SELECT (ACTComposite) FROM APPLICATION where (FirstName + ' '+ LastName)=" + "'"+testName+"'";
        int actComp = (int)select.ExecuteScalar();
        txtACTComp.Text = actComp.ToString();

        //interest 1
        select.CommandText = "SELECT (Interest1) FROM APPLICATION where (FirstName + ' '+ LastName)=" + "'" + testName + "'";
        int int1 = (int)select.ExecuteScalar();
        txtInt1.Text = int1.ToString();

        //interest 2 
        select.CommandText = "SELECT (Interest2) FROM APPLICATION where (FirstName + ' '+ LastName)=" + "'" + testName + "'";
        int int2 = (int)select.ExecuteScalar();
        txtInt2.Text = int2.ToString();

        //interest 3
        select.CommandText = "SELECT (Interest3) FROM APPLICATION where (FirstName + ' '+ LastName)=" + "'" + testName + "'";
        int int3 = (int)select.ExecuteScalar();
        txtInt3.Text = int3.ToString();

        //GPA
        select.CommandText = "SELECT (GPA) FROM APPLICATION where (FirstName + ' '+ LastName)=" + "'" + testName + "'";
        int gpaNum = (int)select.ExecuteScalar();
        txtGPA.Text = gpaNum.ToString();

        //Experience
        select.CommandText = "SELECT (Experience) FROM APPLICATION where (FirstName + ' '+ LastName)=" + "'" + testName + "'";
        txtExperience.Text = (String)select.ExecuteScalar();

        //Resume
        select.CommandText = "SELECT (Resume) FROM APPLICATION where (FirstName + ' '+ LastName)=" + "'" + testName + "'";
        int resID = (int)select.ExecuteScalar();
        txtRes.Text = resID.ToString();

        //Cover Letter
        select.CommandText = "SELECT (CoverLetter) FROM APPLICATION where (FirstName + ' '+ LastName)=" + "'" + testName + "'";
        int covID = (int)select.ExecuteScalar();
        txtCov.Text = covID.ToString();

        sc.Close();



    }

    public void LogOutUser(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Cookies.Add(new HttpCookie("ASP.NET_SessionId", ""));

        Session["loggedIn"] = "false";
        Session["loggedOut"] = "true";

        Response.Redirect("CuedIn.aspx");
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        
        txtAppID.Text = string.Empty;
        txtStudentID.Text = string.Empty;
        txtEmail.Text = string.Empty;
        txtSATMath.Text = string.Empty;
        txtSATVerbal.Text = string.Empty;
        txtACTMath.Text = string.Empty;
        txtACTEng.Text = string.Empty;
        txtACTRead.Text = string.Empty;
        txtACTSci.Text = string.Empty;
        txtACTComp.Text = string.Empty;
        txtGPA.Text = string.Empty;


    }
}