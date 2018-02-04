using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrimeInvestigationSystemWeb
{
    public partial class AdminMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addcaseButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddCase.aspx");
        }

        protected void addOfficerButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddOfficer.aspx");
        }

        protected void addOfficerToCaseButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddOfficerToCase.aspx");
        }

        protected void predictResultButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("PredictResult.aspx");
        }

        protected void addResultButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddResult.aspx");
        }

        protected void viewSuspectButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewSuspectAdmin.aspx");
        }

        protected void viewEvidenceButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewEvidence.aspx");
        }

        protected void viewCaseHistoryButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCaseHistoryAdmin.aspx");
        }

        protected void logOutButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}