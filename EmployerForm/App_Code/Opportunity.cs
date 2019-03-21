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

/// <summary>
/// Summary description for Opportunity
/// </summary>
public class Opportunity
{
    //Data Fields
    private String OpportunityName;
    private String OpportunityType;
    private String isApprenticeship;

    public Opportunity()
    {
        //
        // No-arg Constructor
        //
    }

    public Opportunity(String OpportunityName, String OpportunityType, String isApprenticeship)
    {
        this.OpportunityName = OpportunityName;
        this.OpportunityType = OpportunityType;
        this.isApprenticeship = isApprenticeship;
    }

    public String getOpportunityName()
    {
        return this.OpportunityName;
    }
    
    public void setOpportunityName(String OpportunityName)
    {
        this.OpportunityName = OpportunityName;
    }

    public String getOpportunityType()
    {
        return this.OpportunityType;
    }

    public void setOpportunityType(String OpportunityType)
    {
        this.OpportunityType = OpportunityType;
    }

    public String getApprenticeship()
    {
        return this.isApprenticeship;
    }

    public void setApprenticeship(String isApprenticeship)
    {
        this.isApprenticeship = isApprenticeship;
    }
}