using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrimeInvestigationSystemWeb
{
    public partial class AddResult1 : System.Web.UI.Page
    {
        CrimeInvestigationDBEntities db = new CrimeInvestigationDBEntities();
        AddResult addResult = new AddResult();
        Report report = new Report();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void caseIdDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            var caseId = Convert.ToInt32(caseIdDropDownList.SelectedValue);
            var caseName = db.AddCases.Where(x => x.Id == caseId).Select(x => x.CaseName).ToList().LastOrDefault();
            caseNameTextBox.Text = caseName;

            var suspectList = db.AddSuspects.Where(x => x.CaseId == caseId).Select(x => x.Name).ToList();

            suspectDropDownList.DataSource = suspectList;
            suspectDropDownList.DataBind();
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            var caseId = Convert.ToInt32(caseIdDropDownList.SelectedValue);
            //var suspectId = Convert.ToInt32(suspectDropDownList.SelectedValue);

            try
            {
                addResult.CaseId = Convert.ToInt32(caseIdDropDownList.SelectedValue);
                addResult.Suspect = suspectDropDownList.SelectedValue;
                addResult.Note = noteTextBox.Text;
                db.AddResults.Add(addResult);
                db.SaveChanges();
                Response.Write("<script>alert('Result Saved Successfully!');</script>");
            }
            catch (Exception)
            {
                Response.Write("<script>alert('An Error Occurred');</script>");
            }

            var caseRealId = db.AddCases.Where(x => x.Id == caseId).Select(x => x.CaseId).ToList().LastOrDefault();
            var caseName = db.AddCases.Where(x => x.Id == caseId).Select(x => x.CaseName).ToList().LastOrDefault();
            //var suspectName = db.AddSuspects.Where(x => x.Id == suspectId).Select(x => x.Name).ToList().LastOrDefault();
            var note = noteTextBox.Text;
            report.CaseId = caseRealId;
            report.CaseName = caseName;
            report.Suspect = suspectDropDownList.SelectedValue;
            report.Note = note;
            db.Reports.Add(report);
            db.SaveChanges();

        }
    }
}