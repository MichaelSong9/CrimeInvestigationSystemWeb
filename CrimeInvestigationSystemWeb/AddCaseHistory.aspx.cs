using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrimeInvestigationSystemWeb
{
    public partial class AddCaseHistory1 : System.Web.UI.Page
    {
        CrimeInvestigationDBEntities db = new CrimeInvestigationDBEntities();
        AddCaseHistory addCaseHistory = new AddCaseHistory();
        protected void Page_Load(object sender, EventArgs e)
        {
            var officerId = Session["OfficerId"].ToString();
            var id = db.AddOfficers.Where(x => x.OfficerId == officerId).Select(x => x.Id).ToList().LastOrDefault();
            var caseId = db.AddOfficerToCases.Where(x => x.OfficerId == id).Select(x => x.CaseId).ToList().LastOrDefault();
            ViewState["CaseId"] = caseId;
            var caseViewId = db.AddCases.Where(x => x.Id == caseId).Select(x => x.CaseId).ToList().LastOrDefault();
            caseIdTextBox.Text = caseViewId;

        }

        protected void sabeButton_Click(object sender, EventArgs e)
        {
            try
            {
                addCaseHistory.CaseId = Convert.ToInt32(ViewState["CaseId"]);
                addCaseHistory.Note = noteTextBox.Text;
                addCaseHistory.Dates = DateTime.Now.ToShortDateString();
                db.AddCaseHistories.Add(addCaseHistory);
                db.SaveChanges();
                Response.Write("<script>alert('Saved Successfully!');</script>");
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Error Occurred!');</script>");
            }
        }
    }
}