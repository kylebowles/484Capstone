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

    //Create SQL connection
    System.Data.SqlClient.SqlConnection sql = new System.Data.SqlClient.SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            //Connect to Cued-In DB
            sql.ConnectionString = "Data Source=localhost;Initial Catalog=Cued-In;Integrated Security=True";
            sql.Open();

        }

        catch
        {
            //ErrorDB.Text = "Error connecting to database.";
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

    //Exit Button
    protected void Exit_Page(object sender, EventArgs e)
    {
        System.Environment.Exit(0);

    }

    //Insert into the Database
    protected void insert_Click(object sender, EventArgs e)
    {
        //Create new Employer object
        BusinessEmp bus = new BusinessEmp(FirstName.Value.ToString(), LastName.Value.ToString(), CompanyName.Value.ToString(), EmailAdd.Value.ToString(), Password1.Value.ToString(),
            PhoneNumber.Value.ToString(), CompHouseNumber.Value.ToString(), CompStreet.Value.ToString(), City.Value.ToString(), 
            CompCountry.Value.ToString(), State.Items.ToString(), CompZip.Value.ToString());

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
            SqlCommand dbInsertAddress = new SqlCommand();
            dbInsertAddress.Connection = sql;

        dbInsertAddress.CommandText = "insert into [Address](HouseNumber,Street,City,State,Country,ZipCode) " +
                "values(@HouseNumber,@CompStreet,@City,@CompState,@Country,@ZipCode)";
        dbInsertAddress.Parameters.Add(new SqlParameter("@HouseNumber", bus.getCompHouseNumber()));
        dbInsertAddress.Parameters.Add(new SqlParameter("@CompStreet", bus.getCompStreet()));
        dbInsertAddress.Parameters.Add(new SqlParameter("@City", bus.getCity()));
        dbInsertAddress.Parameters.Add(new SqlParameter("@CompState", bus.getState()));
        dbInsertAddress.Parameters.Add(new SqlParameter("@Country", bus.getCountry()));
        dbInsertAddress.Parameters.Add(new SqlParameter("@ZipCode", bus.getZipCode()));

        dbInsertAddress.ExecuteNonQuery();

        SqlCommand dbPersonInsert = new SqlCommand();
        dbPersonInsert.Connection = sql;
        SqlCommand addressID = new SqlCommand("SELECT Max(AddressID) from ADDRESS", sql);
        addressID.ExecuteNonQuery();
        int holdAddId = (Int32)addressID.ExecuteScalar();

        
        dbPersonInsert.CommandText = "insert into [Person](FirstName,LastName,Email,personType, AddressID) values(@FirstName,@LastName,@Email,@PersonType, @AddressID)";
        dbPersonInsert.Parameters.Add(new SqlParameter("@FirstName", bus.getFirstName()));
        dbPersonInsert.Parameters.Add(new SqlParameter("@LastName", bus.getLastName()));
        dbPersonInsert.Parameters.Add(new SqlParameter("@Email", bus.getEmail()));
        dbPersonInsert.Parameters.Add(new SqlParameter("@PersonType", "Employer"));
        dbPersonInsert.Parameters.Add(new SqlParameter("@AddressID", holdAddId));


        dbPersonInsert.ExecuteNonQuery();

      
        SqlCommand dbInsertEmployer = new SqlCommand();
        dbInsertEmployer.Connection = sql;
        SqlCommand PersonID = new SqlCommand("SELECT MAX(PERSONID) from PERSON", sql);
        PersonID.ExecuteNonQuery();
        int holdPersonID = (Int32)PersonID.ExecuteScalar();

        dbInsertEmployer.CommandText = "insert into [Employer](EmployerName,PersonID,isApproved) values(@EmployerName,@PersonID,@isApproved)";
        dbInsertEmployer.Parameters.Add(new SqlParameter("@EmployerName", bus.getCompany()));
        dbInsertEmployer.Parameters.Add(new SqlParameter("@PersonID", holdPersonID));
        dbInsertEmployer.Parameters.Add(new SqlParameter("@isApproved", bus.getApproval()));
            

        dbInsertEmployer.ExecuteNonQuery();

        SqlCommand dbInsertAcct = new SqlCommand();
        dbInsertAcct.Connection = sql;
        dbInsertAcct.CommandText = "insert into [Account](Username,PasswordHash,PasswordSalt,ModifiedDate) values(@Username,@PasswordHash,@PasswordSalt,@ModifiedDate)";
        //dbInsertAcct.Parameters.Add(new SqlParameter("@PersonID", holdPersonID));
        dbInsertAcct.Parameters.Add(new SqlParameter("@Username", bus.getEmail()));
        dbInsertAcct.Parameters.Add(new SqlParameter("@PasswordHash", PasswordHash.HashPassword(bus.getPassword())));
        dbInsertAcct.Parameters.Add(new SqlParameter("@PasswordSalt", "Salt"));
        dbInsertAcct.Parameters.Add(new SqlParameter("@ModifiedDate", DateTime.Now));
        dbInsertAcct.ExecuteNonQuery();




        //Make a success alert appear when the account is created successfully
        ScriptManager.RegisterStartupScript(this, this.GetType(), "ShowAlert", "ShowSuccessAlert();", true);

            sql.Close();

        }

    }


    //Can't have same registered email create two accounts
    protected Boolean checkEmail(BusinessEmp bus)
    {
        //Checking to see if email in created object is equivalent to an email already in the DB
        //If so, don't add object to DB, and make message pop-up saying that specific email is already taken

        //Create SQL Command selecting all emails from DB
        SqlCommand countCommand = new SqlCommand("SELECT COUNT(Email) from PERSON", sql);
        countCommand.ExecuteNonQuery();
        //Make a variable that is the amount of rows inserted into the email column
        int countEmails = (Int32)countCommand.ExecuteScalar();

        SqlCommand selectEmails = new SqlCommand("SELECT Email from PERSON", sql);
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


        int counter;
        counter = 0;
        //Loop thorugh all email addresses and check if they're equal to one another
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


}