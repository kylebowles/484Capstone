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

public partial class Application : System.Web.UI.Page
{
    //System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["CuedInConnectionString"].ToString());

    System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["LocalhostConnectionString"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {

    }





    protected void Apply_Click1(object sender, EventArgs e)
    {
        sc.Open();
        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;
        insert.CommandText = "INSERT INTO APPLICATION values (@EmployerID, @OpportunityID, @StudentID, @SATMath, @SATVerbal, @ACTMath, @ACTEnglish, @ACTReading, @ACTScience, @ACTComposite, @FirstName, @LastName, @Email)";

        //insert.Parameters.AddWithValue("@RequestID", ddRequest.SelectedValue);
        insert.Parameters.AddWithValue("@EmployerID", ddEmployer.SelectedValue);
        insert.Parameters.AddWithValue("@OpportunityID", ddOpportunity.SelectedValue);
        insert.Parameters.AddWithValue("@StudentID", ddStudentID.SelectedValue);
        insert.Parameters.AddWithValue("@SATMath", txtSATMath.Text);
        insert.Parameters.AddWithValue("@SATVerbal", txtSATVerbal.Text);
        insert.Parameters.AddWithValue("@ACTMath", txtACTMath.Text);
        insert.Parameters.AddWithValue("@ACTEnglish", txtACTEnglish.Text);
        insert.Parameters.AddWithValue("@ACTReading", txtACTReading.Text);
        insert.Parameters.AddWithValue("@ACTScience", txtACTScience.Text);
        insert.Parameters.AddWithValue("@ACTComposite", txtComposite.Text);
        insert.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
        insert.Parameters.AddWithValue("@LastName", txtLastName.Text);
        insert.Parameters.AddWithValue("@Email", txtEmail.Text);
        

        insert.ExecuteNonQuery();
        sc.Close();

        
        //geting max AppID
        sc.Open();
        System.Data.SqlClient.SqlCommand getMax = new System.Data.SqlClient.SqlCommand();
        getMax.Connection = sc;
        getMax.CommandText = "SELECT MAX(ApplicationID) from APPLICATION";
        int appID = Convert.ToInt32(getMax.ExecuteScalar());
        txtTest.Text = appID.ToString();
        getMax.ExecuteNonQuery();
        sc.Close();
        
    }

    protected void Populate_Click(object sender, EventArgs e)
    {
        txtFirstName.Text = "John";
        txtLastName.Text = "Stamos";
        txtEmail.Text = "JStamos101@gmail.com";
        txtSATMath.Text = "100";
        txtSATVerbal.Text = "100";
        txtACTMath.Text = "50";
        txtACTEnglish.Text = "50";
        txtACTReading.Text = "50";
        txtACTScience.Text = "50";
        txtComposite.Text = "50";
    }

    protected void Clear_Click(object sender, EventArgs e)
    {
        txtFirstName.Text = String.Empty;
        txtLastName.Text = String.Empty;
        txtEmail.Text = String.Empty;
        txtSATMath.Text = String.Empty;
        txtSATVerbal.Text = String.Empty;
        txtACTMath.Text = String.Empty;
        txtACTEnglish.Text = String.Empty;
        txtACTReading.Text = String.Empty;
        txtACTScience.Text = String.Empty;
        txtComposite.Text = String.Empty;
    }
}