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
public partial class RevisedLanding : System.Web.UI.Page
{

    //SQL Connection to AWS
    //System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["CuedInConnectionString"].ToString());

    //SQL Connection to Localhost
    System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["CuedInConnectionString"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {

        //Display current employer name from database

        sc.Open();
        System.Data.SqlClient.SqlCommand getdbPersonID = new System.Data.SqlClient.SqlCommand();
        getdbPersonID.Connection = sc;
        //Gets the personid for the username
        getdbPersonID.CommandText = "SELECT PersonID from Account where Username = '" + (string)(Session)["loginUser"] + "'";

        int accountID = (int)getdbPersonID.ExecuteScalar();
        sc.Close();


        sc.Open();
        System.Data.SqlClient.SqlCommand getFName = new System.Data.SqlClient.SqlCommand();
        getFName.Connection = sc;
        //gets the firstname for the user
        getFName.CommandText = "Select FirstName from Person where PersonID = @AccountPersonID1"; 
        getFName.Parameters.Add(new SqlParameter("@AccountPersonID1", accountID));
        string accountFName = (string)getFName.ExecuteScalar();
        sc.Close();

        sc.Open();
        System.Data.SqlClient.SqlCommand getLName = new System.Data.SqlClient.SqlCommand();
        getLName.Connection = sc;
        //gets the lastname for the user
        getLName.CommandText = "Select Person.LastName FROM Person where PersonID = @AccountPersonID";
        getLName.Parameters.Add(new SqlParameter("@AccountPersonID", accountID));
        string accountLName = (string)getLName.ExecuteScalar();
        sc.Close();

        //Displays the user's name
        NameResult.Text = accountFName + " " + accountLName;
        BigNameResult.Text = accountFName + " " + accountLName;

        //Display current employer's username/email
        UsernameResult.Text = (string)(Session)["loginUser"];

        //Display current employer's company
        sc.Open();
        System.Data.SqlClient.SqlCommand getEmpID = new System.Data.SqlClient.SqlCommand();
        getEmpID.Connection = sc;
        getEmpID.CommandText = "SELECT EmployerID from Person where Email = @Email";
        getEmpID.Parameters.Add(new SqlParameter("@Email", (string)(Session)["loginUser"]));
        Session["employerID"] = getEmpID.ExecuteScalar();

        System.Data.SqlClient.SqlCommand getCoName = new System.Data.SqlClient.SqlCommand();
        getCoName.Connection = sc;
        getCoName.CommandText = "select Employer.EmployerName FROM Employer INNER JOIN Person ON Person.EmployerID = Employer.EmployerID where Person.EmployerID = @EmployerID";
        getCoName.Parameters.Add(new SqlParameter("@EmployerID", Session["employerID"]));
        string coName = (string)getCoName.ExecuteScalar();
        CompanyResult.Text = coName;
        sc.Close();

        //Display current employer's location
        sc.Open();
        System.Data.SqlClient.SqlCommand getAddID = new System.Data.SqlClient.SqlCommand();
        getAddID.Connection = sc;
        getAddID.CommandText = "select AddressID from person where PersonID = @AccountPersonID"; //gets address id
        getAddID.Parameters.Add(new SqlParameter("@AccountPersonID", accountID));
        int addID = (int)getAddID.ExecuteScalar();

        System.Data.SqlClient.SqlCommand getLocation = new System.Data.SqlClient.SqlCommand();
        getLocation.Connection = sc;
        getLocation.CommandText = "select City from Address where AddressID = @AccountAddressID"; //gets city
        getLocation.Parameters.Add(new SqlParameter("@AccountAddressID", addID));
        string citySt = (string)getLocation.ExecuteScalar();
        LocationResult.Text = citySt;
        sc.Close();

        //Display the current Employer's job title on their profile
        sc.Open();
        System.Data.SqlClient.SqlCommand getEmpAddID = new System.Data.SqlClient.SqlCommand();
        getEmpAddID.Connection = sc;
        getEmpAddID.CommandText = "SELECT JobTitle from Person where PersonID = @PersonEmployerID"; //gets EmployerID
        getEmpAddID.Parameters.Add(new SqlParameter("@PersonEmployerID", accountID));
        String Occupation = getEmpAddID.ExecuteScalar().ToString();
        JobResult.Text = Occupation.ToString();
        sc.Close();

        //Display current person's personal phone number
        sc.Open();
        System.Data.SqlClient.SqlCommand getPhoneNumber = new System.Data.SqlClient.SqlCommand();
        getPhoneNumber.Connection = sc;
        getPhoneNumber.CommandText = "Select PhoneNumber from Person where PersonID = @PhonePersonID";
        getPhoneNumber.Parameters.Add(new SqlParameter("@PhonePersonID", accountID));
        String PhoneNum = (String)getPhoneNumber.ExecuteScalar();
        PhoneResult.Text = PhoneNum;
        sc.Close();

        //Display the current user's uploaded profile photo
        sc.Open();
        System.Data.SqlClient.SqlCommand getProfPhoto = new System.Data.SqlClient.SqlCommand();
        getProfPhoto.Connection = sc;
        getProfPhoto.CommandText = "Select ProfilePhoto from Person where PersonID = @PhotoPersonID";
        getProfPhoto.Parameters.Add(new SqlParameter("@PhotoPersonID", accountID));
        ////String Image = (String)getProfPhoto.ExecuteScalar();
        ////ProfPic.ImageUrl = String.Format("data:image/jpeg;base64,{0}", Image);
        //byte[] bytes = (byte[])getProfPhoto.ExecuteScalar();
        //String str = Convert.ToBase64String(bytes);
        ////ProfPic.ImageUrl = "LabPatron/This PC/Pictures" + str;

        //NEW ATTEMPT --> Have them upload their company's logo from instead of their profile photo
        sc.Close();

    }

    //Loads the Employer's summary onto the page with the most recent description
    protected void ShowSummary(object sender, EventArgs e)
    {


        sc.Open();
        System.Data.SqlClient.SqlCommand getdbPersonID = new System.Data.SqlClient.SqlCommand();
        getdbPersonID.Connection = sc;
        //Gets the personid for the username
        getdbPersonID.CommandText = "SELECT PersonID from Account where Username = '" + (string)(Session)["loginUser"] + "'";
        int accountID = (int)getdbPersonID.ExecuteScalar();


        ProfileSummary.Visible = true;
        lblSummary.Visible = true;
        btnEditSum.Visible = true;


        System.Data.SqlClient.SqlCommand getEmpSummary = new System.Data.SqlClient.SqlCommand();
        getEmpSummary.Connection = sc;
        //Fix here, probably have to do a join
        getEmpSummary.CommandText = "Select PersonalSummary from Person where PersonID  = " + accountID;
        getEmpSummary.Parameters.Add(new SqlParameter("@SummaryPersonID", accountID));
        String EmpSum = getEmpSummary.ExecuteScalar().ToString();
        ProfileSummary.InnerText = EmpSum;

        sc.Close();

    }

    //Saving contents of summary, and updates the DB with the new description when the user clicks "Save changes"
    protected void EditSummary(object sender, EventArgs e)
    {

        sc.Open();
        System.Data.SqlClient.SqlCommand getdbPersonID = new System.Data.SqlClient.SqlCommand();
        getdbPersonID.Connection = sc;
        //Gets the personid for the username
        getdbPersonID.CommandText = "SELECT PersonID from Account where Username = '" + (string)(Session)["loginUser"] + "'";
        int accountID = (int)getdbPersonID.ExecuteScalar();


        System.Data.SqlClient.SqlCommand getEmpSummary = new System.Data.SqlClient.SqlCommand();
        getEmpSummary.Connection = sc;
        getEmpSummary.CommandText = "UPDATE Person set PersonalSummary = @PersonalSummary where PersonID = @SummaryPersonID";
        getEmpSummary.Parameters.Add(new SqlParameter("@PersonalSummary", ProfileSummary.Value));
        getEmpSummary.Parameters.Add(new SqlParameter("@SummaryPersonID", accountID));
        String EmpSum = (String)getEmpSummary.ExecuteScalar();


        System.Data.SqlClient.SqlCommand getPersonalSum = new System.Data.SqlClient.SqlCommand();
        getPersonalSum.Connection = sc;
        getPersonalSum.CommandText = "SELECT PersonalSummary from PERSON where PersonID = @SummaryPersonID";
        getPersonalSum.Parameters.Add(new SqlParameter("@PersonalSummary", EmpSum));


        ProfileSummary.Value = EmpSum;
        ProfileSummary.Visible = false;
        btnEditSum.Visible = false;
        lblSummary.Visible = false;

        sc.Close();

    }


    //User logout method
    public void LogOutUser(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Cookies.Add(new HttpCookie("ASP.NET_SessionId", ""));

        Session["loggedIn"] = "false";
        Session["loggedOut"] = "true";

        Response.Redirect("CuedIn.aspx");
    }




    protected void SaveEdits_Click(object sender, EventArgs e) //if new textbox != olD LABel then update db >> if not then keep it/dont update
    {

        //update the database with new info

        //Getting current Person ID
        sc.Open();
        System.Data.SqlClient.SqlCommand getdbPersonID = new System.Data.SqlClient.SqlCommand();
        getdbPersonID.Connection = sc;
        //Gets the personid for the username
        getdbPersonID.CommandText = "SELECT PersonID from Account where Username = '" + (string)(Session)["loginUser"] + "'";
        int accountID = (int)getdbPersonID.ExecuteScalar();
        sc.Close();

        //Getting name variables
        string newFName = fNameEdit.Text.ToString();
        string newMName = mNameEdit.Text.ToString();
        string newLName = lNameEdit.Text.ToString();

        //Updating Name in database
        sc.Open();
        System.Data.SqlClient.SqlCommand updateName = new System.Data.SqlClient.SqlCommand();
        updateName.Connection = sc;
        updateName.CommandText = "UPDATE Person SET FirstName = @FirstName, MiddleName = @MiddleName, LastName = @LastName WHERE PersonID = @PersonID";
        updateName.Parameters.Add(new SqlParameter("@FirstName", newFName));
        updateName.Parameters.Add(new SqlParameter("@MiddleName", newMName));
        updateName.Parameters.Add(new SqlParameter("@LastName", newLName));
        updateName.Parameters.Add(new SqlParameter("@PersonID", accountID));
        updateName.ExecuteNonQuery();

        //Select statement to display new name on profile page
        updateName.CommandText = "SELECT FirstName from Person where PersonID = @PersonIDDisplay";
        updateName.Parameters.Add(new SqlParameter("@PersonIDDisplay", accountID));
        string newAccFName = (string)updateName.ExecuteScalar();

        updateName.CommandText = "SELECT LastName from Person where PersonID = @PersonIDDisplayL";
        updateName.Parameters.Add(new SqlParameter("@PersonIDDisplayL", accountID));
        string newAccLName = (string)updateName.ExecuteScalar();

        string newAccName = newAccFName + ' ' + newAccLName;

        NameResult.Text = newAccName.ToString();
        BigNameResult.Text = newAccName.ToString();
        sc.Close();


        //Updating Jobtitle in database
        string newJT = jobtitleEdit.Text.ToString();

        sc.Open();
        System.Data.SqlClient.SqlCommand updateTitle = new System.Data.SqlClient.SqlCommand();
        updateTitle.Connection = sc;
        updateTitle.CommandText = "UPDATE Person SET JobTitle = @JobTitle WHERE PersonID = @PersonIDJT";
        updateTitle.Parameters.Add(new SqlParameter("@JobTitle", newJT));
        updateTitle.Parameters.Add(new SqlParameter("@PersonIDJT", accountID));
        updateTitle.ExecuteNonQuery();

        //Select statement to display new job title on profile page
        updateTitle.CommandText = "SELECT JobTitle from Person where PersonID = @PersonIDDisplayJT";
        updateTitle.Parameters.Add(new SqlParameter("@PersonIDDisplayJT", accountID));
        string newJobTitle = (string)updateTitle.ExecuteScalar();

        JobResult.Text = newJobTitle.ToString();
        sc.Close();

        //Updating phonenumber in database
        string newnumber = phoneEdit.Text.ToString();

        sc.Open();
        System.Data.SqlClient.SqlCommand updatePhone = new System.Data.SqlClient.SqlCommand();
        updatePhone.Connection = sc;
        updatePhone.CommandText = "UPDATE Person SET PhoneNumber = @PhoneNumber WHERE PersonID = @PersonIDP";
        updatePhone.Parameters.Add(new SqlParameter("@PhoneNumber", newnumber));
        updatePhone.Parameters.Add(new SqlParameter("@PersonIDP", accountID));
        updatePhone.ExecuteNonQuery();

        //Select statement to display new job title on profile page
        updatePhone.CommandText = "SELECT PhoneNumber from Person where PersonID = @PersonIDDisplayP";
        updatePhone.Parameters.Add(new SqlParameter("@PersonIDDisplayP", accountID));
        string newPhone = (string)updatePhone.ExecuteScalar();

        PhoneResult.Text = newPhone.ToString();
        sc.Close();





        ////Updating Company in database
        //string co = companyEdit.Text.ToString();


        //sc.Open();
        //System.Data.SqlClient.SqlCommand updateCo = new System.Data.SqlClient.SqlCommand();
        //updateCo.Connection = sc;
        //updateCo.CommandText = "SELECT EmployerID from Person where PersonID = @PID";
        //updateCo.Parameters.Add(new SqlParameter("@PID", accountID));
        //int empID = (int)updateCo.ExecuteScalar(); //get employer ID

        //updateCo.CommandText = "UPDATE Employer SET EmployerName = @EmployerName WHERE EmployerID = @EmployerID";
        //updateCo.Parameters.Add(new SqlParameter("@EmployerName", co));
        //updateCo.Parameters.Add(new SqlParameter("@EmployerID", empID));
        //updateCo.ExecuteNonQuery();

        ////Select statement to display updates on profile
        //updateCo.CommandText = "SELECT EmployerName from Employer where EmployerID = @EmpID";
        //updateCo.Parameters.Add(new SqlParameter("@EmpID", empID));
        //string newCompany = (string)updateCo.ExecuteScalar();

        //CompanyResult.Text = newCompany.ToString();
        //sc.Close();
    }

    //protected void btnEdit_Click(object sender, EventArgs e)
    //{
    //    btnSaveEdits.Visible = true;
    //}
}