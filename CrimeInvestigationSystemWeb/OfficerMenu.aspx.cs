using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrimeInvestigationSystemWeb
{
    public partial class OfficerMenu : System.Web.UI.Page
    {
        CrimeInvestigationDBEntities db = new CrimeInvestigationDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
           var officerId = Session["OfficerId"].ToString();
            OfficerIdLabel.Text = "OfficerID : " + officerId;

            var img = db.AddOfficers.Where(x => x.OfficerId == officerId).Select(x => x.Image).ToList().LastOrDefault();
            Image.ImageUrl = img;
            //var name =
            //    db.AddOfficers.Where(x => x.OfficerId == officerId).Select(x => x.OfficerName).ToList().LastOrDefault();
            //officerNameLabel.Text = name;
        }

        protected void addSuspectButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddSuspect.aspx");
        }

        protected void addEvidenceButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddEvidence.aspx");
        }

        protected void addCaseHistoryButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddCaseHistory.aspx");
        }

        protected void viewSuspectButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewSuspectOfficer.aspx");
        }

        protected void viewEvidenceButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewEvidenceOfficer.aspx");
        }

        protected void viewCaseHistoryButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCaseHistoryOfficer.aspx");
        }

        protected void logOutButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}