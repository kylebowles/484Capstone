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
        if (String.IsNullOrEmpty(Session["CurrentApplication"].ToString()))
        {

        }
        else if (Session["CurrentApplication"].ToString().Equals("used"))
        {

        }
        else
        {
            if (IsPostBack)
            {
                int result;
                //DropDownList1.SelectedValue = Session["CurrentApplication"].ToString();
                //DropDownList1.DataBind();
                sc.Open();
                System.Data.SqlClient.SqlCommand select = new System.Data.SqlClient.SqlCommand();
                select.Connection = sc;
                //app id
                select.CommandText = "SELECT (ApplicationID) FROM APPLICATION where applicationID = @applicationID";
                select.Parameters.AddWithValue("@ApplicationID", Session["CurrentApplication"].ToString());
                int appID = (int)select.ExecuteScalar();
                txtAppID.Text = appID.ToString();
                //phone
                select.CommandText = "SELECT ISNULL(PhoneNumber,' ') FROM APPLICATION inner join Student on Student.StudentID = Application.StudentID inner join Person on Person.PersonID = Student.StudentID where applicationID = @applicationID";
                txtPhone.Text = (String)(select.ExecuteScalar());
                //email
                select.CommandText = "SELECT ISNULL(Email,' ') FROM APPLICATION where applicationID = @applicationID";
                txtEmail.Text = (String)select.ExecuteScalar();

                //Student ID
                select.CommandText = "SELECT (StudentID) FROM APPLICATION where applicationID = @applicationID";
                int studID = (int)select.ExecuteScalar();
                txtStudentID.Text = studID.ToString();

                //SAT Math
                select.CommandText = "SELECT ISNULL(SATMath,' ') FROM APPLICATION where applicationID = @applicationID";
                Int32.TryParse((select.ExecuteScalar().ToString()), out result);
                if (result == 0)
                {
                    txtSATMath.Text = "N/A";
                }
                else
                {
                    int satMath = result;
                    txtSATMath.Text = satMath.ToString();
                }

                //SAT Verbal
                select.CommandText = "SELECT ISNULL(SATVerbal,' ') FROM APPLICATION where applicationID = @applicationID";
                Int32.TryParse((select.ExecuteScalar().ToString()), out result);
                if (result == 0)
                {
                    txtSATVerbal.Text = "N/A";
                }
                else
                {
                    int satVerb = result;
                    txtSATMath.Text = satVerb.ToString();
                }

                //ACT Math
                select.CommandText = "SELECT ISNULL(ACTMath,' ') FROM APPLICATION where applicationID = @applicationID";
                Int32.TryParse((select.ExecuteScalar().ToString()), out result);
                if (result == 0)
                {
                    txtACTMath.Text = "N/A";
                }
                else
                {
                    int actMath = result;
                    txtACTMath.Text = actMath.ToString();
                }


                //ACT English
                select.CommandText = "SELECT ISNULL(ACTEnglish,' ') FROM APPLICATION where applicationID = @applicationID";
                Int32.TryParse((select.ExecuteScalar().ToString()), out result);
                if (result == 0)
                {
                    txtACTEng.Text = "N/A";
                }
                else
                {
                    int actEng = result;
                    txtSATMath.Text = actEng.ToString();
                }

                //ACT Reading
                select.CommandText = "SELECT ISNULL(ACTReading,' ') FROM APPLICATION where applicationID = @applicationID";
                Int32.TryParse((select.ExecuteScalar().ToString()), out result);
                if (result == 0)
                {
                    txtACTRead.Text = "N/A";
                }
                else
                {
                    int actRead = result;
                    txtACTRead.Text = actRead.ToString();
                }


                //ACT Science
                select.CommandText = "SELECT ISNULL(ACTScience,' ') FROM APPLICATION  where applicationID = @applicationID";
                Int32.TryParse((select.ExecuteScalar().ToString()), out result);
                if (result == 0)
                {
                    txtACTSci.Text = "N/A";
                }
                else
                {
                    int actScience = result;
                    txtACTSci.Text = actScience.ToString();
                }


                //ACT Composite
                select.CommandText = "SELECT ISNULL(ACTComposite,' ') FROM APPLICATION  where applicationID = @applicationID";
                if (result == 0)
                {
                    txtACTComp.Text = "N/A";
                }
                else
                {
                    int actComp = result;
                    txtACTComp.Text = actComp.ToString();
                }

                //interest 1
                select.CommandText = "SELECT InterestName FROM Interest inner join Application on Application.ApplicationID = @applicationID where InterestID = Interest1";
                String int1 = (String)select.ExecuteScalar();
                txtInt1.Text = int1.ToString();

                //interest 2 
                select.CommandText = "SELECT InterestName FROM Interest inner join Application on Application.ApplicationID = @applicationID where InterestID = Interest2";
                String int2 = (String)select.ExecuteScalar();
                txtInt2.Text = int2.ToString();

                //interest 3
                select.CommandText = "SELECT InterestName FROM Interest inner join Application on Application.ApplicationID = @applicationID where InterestID = Interest3";
                String int3 = (String)select.ExecuteScalar();
                txtInt3.Text = int3.ToString();

                //GPA
                select.CommandText = "SELECT ISNULL(GPA,' ') FROM APPLICATION where applicationID = @applicationID";
                Int32.TryParse((select.ExecuteScalar().ToString()), out result);
                if (result == 0)
                {
                    txtGPA.Text = "N/A";
                }
                else
                {
                    int gpaNum = result;
                    txtGPA.Text = gpaNum.ToString();
                }

                //Experience
                select.CommandText = "SELECT ISNULL(Experience,' ') FROM APPLICATION where applicationID = @applicationID";
                txtExperience.Text = (String)select.ExecuteScalar();


                //Resume
                select.CommandText = "SELECT ISNULL(Resume,' ') FROM APPLICATION where applicationID = @applicationID";
                if (Int32.TryParse((select.ExecuteScalar().ToString()), out result))
                {
                    int resID = result;
                    txtRes.Text = resID.ToString();
                }
                else
                {
                    txtRes.Text = "N/A";
                }



                //Cover Letter
                select.CommandText = "SELECT ISNULL(CoverLetter,' ') FROM APPLICATION where applicationID = @applicationID";

                Int32.TryParse((select.ExecuteScalar().ToString()), out result);
                if (result == 0)
                {
                    txtCov.Text = "N/A";
                }
                else
                {
                    int covID = result;
                    txtCov.Text = covID.ToString();
                }
            }
            else
            {
                int result;
                DropDownList1.SelectedValue = Session["CurrentApplication"].ToString();
                DropDownList1.DataBind();
                sc.Open();
                System.Data.SqlClient.SqlCommand select = new System.Data.SqlClient.SqlCommand();
                select.Connection = sc;
                //app id
                select.CommandText = "SELECT (ApplicationID) FROM APPLICATION where applicationID = @applicationID";
                select.Parameters.AddWithValue("@ApplicationID", Session["CurrentApplication"].ToString());
                int appID = (int)select.ExecuteScalar();
                txtAppID.Text = appID.ToString();
                //phone
                select.CommandText = "SELECT ISNULL(PhoneNumber,' ') FROM APPLICATION inner join Student on Student.StudentID = Application.StudentID inner join Person on Person.PersonID = Student.StudentID where applicationID = @applicationID";
                txtPhone.Text = (String)(select.ExecuteScalar());
                //email
                select.CommandText = "SELECT ISNULL(Email,' ') FROM APPLICATION where applicationID = @applicationID";
                txtEmail.Text = (String)select.ExecuteScalar();

                //Student ID
                select.CommandText = "SELECT (StudentID) FROM APPLICATION where applicationID = @applicationID";
                int studID = (int)select.ExecuteScalar();
                txtStudentID.Text = studID.ToString();

                //SAT Math
                select.CommandText = "SELECT ISNULL(SATMath,' ') FROM APPLICATION where applicationID = @applicationID";
                Int32.TryParse((select.ExecuteScalar().ToString()), out result);
                if (result == 0)
                {
                    txtSATMath.Text = "N/A";
                }
                else
                {
                    int satMath = result;
                    txtSATMath.Text = satMath.ToString();
                }

                //SAT Verbal
                select.CommandText = "SELECT ISNULL(SATVerbal,' ') FROM APPLICATION where applicationID = @applicationID";
                Int32.TryParse((select.ExecuteScalar().ToString()), out result);
                if (result == 0)
                {
                    txtSATVerbal.Text = "N/A";
                }
                else
                {
                    int satVerb = result;
                    txtSATMath.Text = satVerb.ToString();
                }

                //ACT Math
                select.CommandText = "SELECT ISNULL(ACTMath,' ') FROM APPLICATION where applicationID = @applicationID";
                Int32.TryParse((select.ExecuteScalar().ToString()), out result);
                if (result == 0)
                {
                    txtACTMath.Text = "N/A";
                }
                else
                {
                    int actMath = result;
                    txtACTMath.Text = actMath.ToString();
                }


                //ACT English
                select.CommandText = "SELECT ISNULL(ACTEnglish,' ') FROM APPLICATION where applicationID = @applicationID";
                Int32.TryParse((select.ExecuteScalar().ToString()), out result);
                if (result == 0)
                {
                    txtACTEng.Text = "N/A";
                }
                else
                {
                    int actEng = result;
                    txtSATMath.Text = actEng.ToString();
                }

                //ACT Reading
                select.CommandText = "SELECT ISNULL(ACTReading,' ') FROM APPLICATION where applicationID = @applicationID";
                Int32.TryParse((select.ExecuteScalar().ToString()), out result);
                if (result == 0)
                {
                    txtACTRead.Text = "N/A";
                }
                else
                {
                    int actRead = result;
                    txtACTRead.Text = actRead.ToString();
                }


                //ACT Science
                select.CommandText = "SELECT ISNULL(ACTScience,' ') FROM APPLICATION  where applicationID = @applicationID";
                Int32.TryParse((select.ExecuteScalar().ToString()), out result);
                if (result == 0)
                {
                    txtACTSci.Text = "N/A";
                }
                else
                {
                    int actScience = result;
                    txtACTSci.Text = actScience.ToString();
                }


                //ACT Composite
                select.CommandText = "SELECT ISNULL(ACTComposite,' ') FROM APPLICATION  where applicationID = @applicationID";
                if (result == 0)
                {
                    txtACTComp.Text = "N/A";
                }
                else
                {
                    int actComp = result;
                    txtACTComp.Text = actComp.ToString();
                }

                //interest 1
                select.CommandText = "SELECT InterestName FROM Interest inner join Application on Application.ApplicationID = @applicationID where InterestID = Interest1";
                String int1 = (String)select.ExecuteScalar();
                txtInt1.Text = int1.ToString();

                //interest 2 
                select.CommandText = "SELECT InterestName FROM Interest inner join Application on Application.ApplicationID = @applicationID where InterestID = Interest2";
                String int2 = (String)select.ExecuteScalar();
                txtInt2.Text = int2.ToString();

                //interest 3
                select.CommandText = "SELECT InterestName FROM Interest inner join Application on Application.ApplicationID = @applicationID where InterestID = Interest3";
                String int3 = (String)select.ExecuteScalar();
                txtInt3.Text = int3.ToString();

                //GPA
                select.CommandText = "SELECT ISNULL(GPA,' ') FROM APPLICATION where applicationID = @applicationID";
                Int32.TryParse((select.ExecuteScalar().ToString()), out result);
                if (result == 0)
                {
                    txtGPA.Text = "N/A";
                }
                else
                {
                    int gpaNum = result;
                    txtGPA.Text = gpaNum.ToString();
                }

                //Experience
                select.CommandText = "SELECT ISNULL(Experience,' ') FROM APPLICATION where applicationID = @applicationID";
                txtExperience.Text = (String)select.ExecuteScalar();


                //Resume
                select.CommandText = "SELECT ISNULL(Resume,' ') FROM APPLICATION where applicationID = @applicationID";
                if (Int32.TryParse((select.ExecuteScalar().ToString()), out result))
                {
                    int resID = result;
                    txtRes.Text = resID.ToString();
                }
                else
                {
                    txtRes.Text = "N/A";
                }



                //Cover Letter
                select.CommandText = "SELECT ISNULL(CoverLetter,' ') FROM APPLICATION where applicationID = @applicationID";

                Int32.TryParse((select.ExecuteScalar().ToString()), out result);
                if (result == 0)
                {
                    txtCov.Text = "N/A";
                }
                else
                {
                    int covID = result;
                    txtCov.Text = covID.ToString();
                }
            }
        
        }
            sc.Close();
            Session["CurrentApplication"] = "used";
        
    }

    //populating each textbox with information from the application table
    //specified by the applicant name
    protected void btnQuery_Click(object sender, EventArgs e)
    {
        Response.Redirect("ApplicationViewer.aspx");
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

        Response.Redirect("ApplicationViewer.aspx");


    }

    protected void Dropdown1Change(object sender, EventArgs e)
    {
        Session["CurrentApplication"] = DropDownList1.SelectedValue;
        sc.Open();
        System.Data.SqlClient.SqlCommand select = new System.Data.SqlClient.SqlCommand();
        select.Connection = sc;
        //app id
        select.CommandText = "SELECT (ApplicationID) FROM APPLICATION where applicationID = @applicationID";
        select.Parameters.AddWithValue("@ApplicationID", Session["CurrentApplication"].ToString());
        int appID = (int)select.ExecuteScalar();
        txtAppID.Text = appID.ToString();
        int result;
        //Session["CurrentApplication"] = DropDownList1.SelectedValue;
        //DropDownList1.DataBind();
        //phone
        select.CommandText = "SELECT ISNULL(PhoneNumber,' ') FROM APPLICATION inner join Student on Student.StudentID = Application.StudentID inner join Person on Person.PersonID = Student.StudentID where applicationID = @applicationID";
        txtPhone.Text = (String)(select.ExecuteScalar());
        //email
        select.CommandText = "SELECT ISNULL(Email,' ') FROM APPLICATION where applicationID = @applicationID";
        txtEmail.Text = (String)select.ExecuteScalar();

        //Student ID
        select.CommandText = "SELECT (StudentID) FROM APPLICATION where applicationID = @applicationID";
        int studID = (int)select.ExecuteScalar();
        txtStudentID.Text = studID.ToString();

        //SAT Math
        select.CommandText = "SELECT ISNULL(SATMath,' ') FROM APPLICATION where applicationID = @applicationID";
        Int32.TryParse((select.ExecuteScalar().ToString()), out result);
        if (result == 0)
        {
            txtSATMath.Text = "N/A";
        }
        else
        {
            int satMath = result;
            txtSATMath.Text = satMath.ToString();
        }

        //SAT Verbal
        select.CommandText = "SELECT ISNULL(SATVerbal,' ') FROM APPLICATION where applicationID = @applicationID";
        Int32.TryParse((select.ExecuteScalar().ToString()), out result);
        if (result == 0)
        {
            txtSATVerbal.Text = "N/A";
        }
        else
        {
            int satVerb = result;
            txtSATMath.Text = satVerb.ToString();
        }

        //ACT Math
        select.CommandText = "SELECT ISNULL(ACTMath,' ') FROM APPLICATION where applicationID = @applicationID";
        Int32.TryParse((select.ExecuteScalar().ToString()), out result);
        if (result == 0)
        {
            txtACTMath.Text = "N/A";
        }
        else
        {
            int actMath = result;
            txtACTMath.Text = actMath.ToString();
        }


        //ACT English
        select.CommandText = "SELECT ISNULL(ACTEnglish,' ') FROM APPLICATION where applicationID = @applicationID";
        Int32.TryParse((select.ExecuteScalar().ToString()), out result);
        if (result == 0)
        {
            txtACTEng.Text = "N/A";
        }
        else
        {
            int actEng = result;
            txtSATMath.Text = actEng.ToString();
        }

        //ACT Reading
        select.CommandText = "SELECT ISNULL(ACTReading,' ') FROM APPLICATION where applicationID = @applicationID";
        Int32.TryParse((select.ExecuteScalar().ToString()), out result);
        if (result == 0)
        {
            txtACTRead.Text = "N/A";
        }
        else
        {
            int actRead = result;
            txtACTRead.Text = actRead.ToString();
        }


        //ACT Science
        select.CommandText = "SELECT ISNULL(ACTScience,' ') FROM APPLICATION  where applicationID = @applicationID";
        Int32.TryParse((select.ExecuteScalar().ToString()), out result);
        if (result == 0)
        {
            txtACTSci.Text = "N/A";
        }
        else
        {
            int actScience = result;
            txtACTSci.Text = actScience.ToString();
        }


        //ACT Composite
        select.CommandText = "SELECT ISNULL(ACTComposite,' ') FROM APPLICATION  where applicationID = @applicationID";
        if (result == 0)
        {
            txtACTComp.Text = "N/A";
        }
        else
        {
            int actComp = result;
            txtACTComp.Text = actComp.ToString();
        }

        //interest 1
        select.CommandText = "SELECT InterestName FROM Interest inner join Application on Application.ApplicationID = @applicationID where InterestID = Interest1";
        String int1 = (String)select.ExecuteScalar();
        txtInt1.Text = int1.ToString();

        //interest 2 
        select.CommandText = "SELECT InterestName FROM Interest inner join Application on Application.ApplicationID = @applicationID where InterestID = Interest2";
        String int2 = (String)select.ExecuteScalar();
        txtInt2.Text = int2.ToString();

        //interest 3
        select.CommandText = "SELECT InterestName FROM Interest inner join Application on Application.ApplicationID = @applicationID where InterestID = Interest3";
        String int3 = (String)select.ExecuteScalar();
        txtInt3.Text = int3.ToString();

        //GPA
        select.CommandText = "SELECT ISNULL(GPA,' ') FROM APPLICATION where applicationID = @applicationID";
        Int32.TryParse((select.ExecuteScalar().ToString()), out result);
        if (result == 0)
        {
            txtGPA.Text = "N/A";
        }
        else
        {
            int gpaNum = result;
            txtGPA.Text = gpaNum.ToString();
        }

        //Experience
        select.CommandText = "SELECT ISNULL(Experience,' ') FROM APPLICATION where applicationID = @applicationID";
        txtExperience.Text = (String)select.ExecuteScalar();


        //Resume
        select.CommandText = "SELECT ISNULL(Resume,' ') FROM APPLICATION where applicationID = @applicationID";
        if (Int32.TryParse((select.ExecuteScalar().ToString()), out result))
        {
            int resID = result;
            txtRes.Text = resID.ToString();
        }
        else
        {
            txtRes.Text = "N/A";
        }



        //Cover Letter
        select.CommandText = "SELECT ISNULL(CoverLetter,' ') FROM APPLICATION where applicationID = @applicationID";

        Int32.TryParse((select.ExecuteScalar().ToString()), out result);
        if (result == 0)
        {
            txtCov.Text = "N/A";
        }
        else
        {
            int covID = result;
            txtCov.Text = covID.ToString();
        }
        sc.Close();
        Session["CurrentApplication"] = "used";
    }
    
            
}


