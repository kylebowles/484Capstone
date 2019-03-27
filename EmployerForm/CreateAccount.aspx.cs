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


public partial class Employer : System.Web.UI.Page
{


    //SQL Connection
    System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["LocalhostConnectionString"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {


        }

        catch
        {

        }
    }

    //Clear contents button
    protected void clear_Click(object sender, EventArgs e)
    {
        FirstName.Value = String.Empty;
        LastName.Value = String.Empty;
        CompanyName.Value = String.Empty;
        EmailAdd.Value = String.Empty;
        Password1.Value = String.Empty;
        Password2.Value = String.Empty;
        PhoneNumber.Value = String.Empty;
        CompHouseNumber.Value = String.Empty;
        CompStreet.Value = String.Empty;
        City.Value = String.Empty;
        State.Value = String.Empty;
        CompCountry.Value = String.Empty;
        CompZip.Value = String.Empty;
    }

    //Populate button
    protected void Populate_Click(object sender, EventArgs e)
    {
        FirstName.Value = "James";
        LastName.Value = "Madison";
        CompanyName.Value = "JMU";
        EmailAdd.Value = "James@Madison.edu";
        Password1.Value = "Madison";
        Password2.Value = "Madison";
        PhoneNumber.Value = "123-456-7890";
        CompHouseNumber.Value = "8715";
        CompStreet.Value = "Constitution Hwy";
        City.Value = "Montpelier";
        State.Value = "VA";
        CompCountry.Value = "United States";
        CompZip.Value = "22801";
    }

    //Exit Button
    protected void Exit_Page(object sender, EventArgs e)
    {
        System.Environment.Exit(0);

    }

    //Insert into the Database
    protected void insert_Click(object sender, EventArgs e)
    {
        //Create new Employer object
        BusinessEmp bus = new BusinessEmp(FirstName.Value.ToString(), LastName.Value.ToString(), CompanyName.Value.ToString(), JobTitle.Value.ToString(), Summary.Value.ToString(),EmailAdd.Value.ToString(), Password1.Value.ToString(),
            PhoneNumber.Value.ToString(), CompHouseNumber.Value.ToString(), CompStreet.Value.ToString(), City.Value.ToString(),
            CompCountry.Value.ToString(), State.Value.ToString(), CompZip.Value.ToString());

        //Doesn't add to the DB if the email address is taken
        checkEmail(bus);

        if (checkEmail(bus) == false)
        {

            ScriptManager.RegisterStartupScript(this, this.GetType(), "ShowAlert", "ShowDangerAlert();", true);
            return;

        }
        else
        {
            EmailTaken.Visible = false;
        }

        checkPassword(bus);

        if (checkPassword(bus) == false)
        {

            ScriptManager.RegisterStartupScript(this, this.GetType(), "ShowPassAlert", "ShowDangerPassAlert();", true);
            return;
        }
        else
        {
            PassDontMatch.Visible = false;
        }

        if (EmailTaken.Visible == false || PassDontMatch.Visible == false)
        {

            //Insert values into database when user clicks "Insert"

            //Insert into address table
            sc.Open();
            System.Data.SqlClient.SqlCommand insertAddress = new System.Data.SqlClient.SqlCommand();
            insertAddress.Connection = sc;
            insertAddress.CommandText = "insert into[Address](HouseNumber, Street, City, State, Country, ZipCode) " +
                "values(@HouseNumber,@CompStreet,@City,@CompState,@Country,@ZipCode)";
            insertAddress.Parameters.Add(new SqlParameter("@HouseNumber", bus.getCompHouseNumber()));
            insertAddress.Parameters.Add(new SqlParameter("@CompStreet", bus.getCompStreet()));
            insertAddress.Parameters.Add(new SqlParameter("@City", bus.getCity()));
            insertAddress.Parameters.Add(new SqlParameter("@CompState", bus.getState()));
            insertAddress.Parameters.Add(new SqlParameter("@Country", bus.getCountry()));
            insertAddress.Parameters.Add(new SqlParameter("@ZipCode", bus.getZipCode()));

            insertAddress.ExecuteNonQuery();
            sc.Close();

            //Insert into person table
            sc.Open();
            System.Data.SqlClient.SqlCommand insertPerson = new System.Data.SqlClient.SqlCommand();
            insertPerson.Connection = sc;

            System.Data.SqlClient.SqlCommand getdbAddressID = new System.Data.SqlClient.SqlCommand();
            getdbAddressID.Connection = sc;

            getdbAddressID.CommandText = "SELECT Max(AddressID) from ADDRESS";
            getdbAddressID.ExecuteNonQuery();
            int holdAddID = (Int32)getdbAddressID.ExecuteScalar();

            insertPerson.CommandText = "insert into [Person](FirstName,LastName,Email,personType,AddressID,PhoneNumber) values(@FirstName,@LastName,@Email,@PersonType,@AddressID,@PhoneNumber)";
            insertPerson.Parameters.Add(new SqlParameter("@FirstName", bus.getFirstName()));
            insertPerson.Parameters.Add(new SqlParameter("@LastName", bus.getLastName()));
            insertPerson.Parameters.Add(new SqlParameter("@Email", bus.getEmail()));
            insertPerson.Parameters.Add(new SqlParameter("@PhoneNumber", bus.getPhone()));
            insertPerson.Parameters.Add(new SqlParameter("@PersonType", "Employer"));
            insertPerson.Parameters.Add(new SqlParameter("@AddressID", holdAddID));

            insertPerson.ExecuteNonQuery();

            sc.Close();


            //Insert into employer table
            sc.Open();
            System.Data.SqlClient.SqlCommand insertEmployer = new System.Data.SqlClient.SqlCommand();
            insertEmployer.Connection = sc;

            System.Data.SqlClient.SqlCommand getdbPersonID = new System.Data.SqlClient.SqlCommand();
            getdbPersonID.Connection = sc;
            getdbPersonID.CommandText = "SELECT MAX(PERSONID) from PERSON";
            getdbPersonID.ExecuteNonQuery();
            int holdPersonID = (Int32)getdbPersonID.ExecuteScalar();

            insertEmployer.CommandText = "insert into [Employer](EmployerName,JobTitle,PersonID,isApproved,EmployerSummary) values(@EmployerName,@JobTitle,@PersonID,@isApproved,@EmployerSummary)";
            insertEmployer.Parameters.Add(new SqlParameter("@EmployerName", bus.getCompany()));
            insertEmployer.Parameters.Add(new SqlParameter("@JobTitle", bus.getJobTitle()));
            insertEmployer.Parameters.Add(new SqlParameter("@PersonID", holdPersonID));
            insertEmployer.Parameters.Add(new SqlParameter("@isApproved", bus.getApproval()));
            insertEmployer.Parameters.Add(new SqlParameter("@EmployerSummary", bus.getEmpSummary()));

            insertEmployer.ExecuteNonQuery();

            sc.Close();

            //Insert into activity table
            sc.Open();
            System.Data.SqlClient.SqlCommand insertAct = new System.Data.SqlClient.SqlCommand();
            insertAct.Connection = sc;

            insertAct.CommandText = "insert into [Account](PersonID, Username,PasswordHash,PasswordSalt,ModifiedDate) values(@PersonID, @Username,@PasswordHash,@PasswordSalt,@ModifiedDate)";
            insertAct.Parameters.Add(new SqlParameter("@PersonID", holdPersonID));
            insertAct.Parameters.Add(new SqlParameter("@Username", bus.getEmail()));
            insertAct.Parameters.Add(new SqlParameter("@PasswordHash", PasswordHash.HashPassword(bus.getPassword())));
            insertAct.Parameters.Add(new SqlParameter("@PasswordSalt", "Salt"));
            insertAct.Parameters.Add(new SqlParameter("@ModifiedDate", DateTime.Now));
            insertAct.ExecuteNonQuery();


            //Make a success alert appear when the account is created successfully
            ScriptManager.RegisterStartupScript(this, this.GetType(), "ShowAlert", "ShowSuccessAlert();", true);

            //sql.Close();
            sc.Close();


        }

    }


    //Can't have same registered email create two accounts
    protected Boolean checkEmail(BusinessEmp bus)
    {
        //Checking to see if email in created object is equivalent to an email already in the DB
        //If so, don't add object to DB, and make message pop-up saying that specific email is already taken

        sc.Open();
        System.Data.SqlClient.SqlCommand countCommand = new System.Data.SqlClient.SqlCommand();
        countCommand.Connection = sc;
        countCommand.CommandText = "SELECT COUNT(Email) from PERSON";
        countCommand.ExecuteNonQuery();

        //Variable that is the amount of rows inserted in the email column
        int countEmails = (Int32)countCommand.ExecuteScalar();

        System.Data.SqlClient.SqlCommand selectEmails = new System.Data.SqlClient.SqlCommand();
        selectEmails.Connection = sc;
        selectEmails.CommandText = "SELECT Email from PERSON";
        selectEmails.ExecuteNonQuery();
        SqlDataReader reader = selectEmails.ExecuteReader();



        String[] emailAddresses = new String[countEmails];

        //Populate String array with emailAddresses
        for (int i = 0; i < emailAddresses.Length; i++)
        {
            while (reader.Read())
                emailAddresses[i] = reader.GetValue(0).ToString();
        }

        reader.Close();

        sc.Close();

        int counter;
        counter = 0;
        //Loop through all email addresses and check if they're equal to one another
        for (int i = 0; i < countEmails; i++)
        {

            if (EmailAdd.Value.Equals(emailAddresses[i]))
            {
                //EmailTaken.Text = "Email already registered, please use a different address.";
                counter++;

            }

            else
            {
                //EmailTaken.Text = "";
                //return true;
            }


        }
        if (counter > 0)
        {
            return false;
        }

        else
        {
            return true;
        }


    }

    //Make a method to ensure password1 and password2 are equivalent
    protected Boolean checkPassword(BusinessEmp bus)
    {
        if (Password1.Value.ToString() != Password2.Value.ToString())
        {
            //PassDontMatch.Text = "The passwords entered aren't the same. Please correct and try again.";
            return false;
        }

        else
        {
            return true;
        }
    }

    protected void EmpSummary(object sender, EventArgs e)
    {
        Session["empSummary"] = Summary.Value.ToString();
    }

}