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
    private String isFulltime;
    private String OpportunityDescription;
    private String deadline;

    public Opportunity()
    {
        //
        // No-arg Constructor
        //
    }

    public Opportunity(String OpportunityName, String OpportunityDescription, String OpportunityType, String isApprenticeship, String isFulltime, String deadline)
    {
        setOpportunityName(OpportunityName);
        setOpportunityDesc(OpportunityDescription);
        setOpportunityType(OpportunityType);
        setApprenticeship(isApprenticeship);
        setFulltime(isFulltime);
        setDeadline(deadline);
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

    public String getFullTime()
    {
        return this.isFulltime;
    }

    public void setFulltime(String isFulltime)
    {
		if(isFulltime.ToUpper() == "PART-TIME")
		{
			isFulltime = "No";
		}
		else
		{
			isFulltime = "Yes";
		}

        this.isFulltime = isFulltime;
    }

    public String getOpportunityDesc()
    {
        return this.OpportunityDescription;
    }

    public void setOpportunityDesc(String opportunityDescription)
    {
        this.OpportunityDescription = opportunityDescription;
    }

    public String getDeadline()
    {
        return this.deadline;
    }

    public void setDeadline(String deadline)
    {
        this.deadline = deadline;
    }
}