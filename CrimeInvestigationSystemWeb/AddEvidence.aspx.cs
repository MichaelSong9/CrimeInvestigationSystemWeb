using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrimeInvestigationSystemWeb
{
    public partial class AddEvidence1 : System.Web.UI.Page
    {
        CrimeInvestigationDBEntities db = new CrimeInvestigationDBEntities();
        AddEvidence addEvidence = new AddEvidence();
        protected void Page_Load(object sender, EventArgs e)
        {
            var officerId = Session["OfficerId"].ToString();
            //var officerId = 1001.ToString();
            var id = db.AddOfficers.Where(x => x.OfficerId == officerId).Select(x => x.Id).ToList().LastOrDefault();
            var caseId =
                db.AddOfficerToCases.Where(x => x.OfficerId == id).Select(x => x.CaseId).ToList().LastOrDefault();
            var caseRealId = db.AddCases.Where(x => x.Id == caseId).Select(x => x.CaseId).ToList().LastOrDefault();

            //var suspectList = db.AddSuspects.Where(x => x.CaseId == caseId).Select(x => x.Name).ToList();
            //suspectDropDownList.DataSource = suspectList;
            //suspectDropDownList.DataBind();
            caseIdTextBox.Text = caseRealId.ToString();
            ViewState["caseId"] = caseId;
            Session["CaseId"] = caseId;
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            //var suspectId =
            //    db.AddSuspects.Where(x => x.Name == suspectDropDownList.SelectedValue)
            //        .Select(x => x.Id)
            //        .ToList()
            //        .LastOrDefault();

            try
            {
                addEvidence.CaseId = Convert.ToInt32(ViewState["caseId"].ToString());
                addEvidence.EvidenceType = evidenceDropDownList.SelectedValue;
                addEvidence.Evidence = evidenceTextBox.Text;
                addEvidence.SuspectId = Convert.ToInt32(suspectDropDownList.SelectedValue);
                //addEvidence.SuspectId = suspectDropDownList.SelectedIndex;
                addEvidence.Note = noteTextBox.Text;
                addEvidence.Points = Convert.ToInt16(pointsTextBox.Text);
                addEvidence.Dates = DateTime.Now.ToShortDateString();
                db.AddEvidences.Add(addEvidence);
                db.SaveChanges();
                Response.Write("<script>alert('Saved Successfully!!!');</script>");
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Error!!!');</script>");
            }
        }
    }
}