using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrimeInvestigationSystemWeb
{
    public partial class ViewEvidenceOfficer : System.Web.UI.Page
    {
        CrimeInvestigationDBEntities db = new CrimeInvestigationDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var officerId = Session["OfficerId"].ToString();
            var id = db.AddOfficers.Where(x => x.OfficerId == officerId).Select(x => x.Id).ToList().LastOrDefault();
            var caseId = db.AddOfficerToCases.Where(x => x.OfficerId == id).Select(x => x.CaseId).ToList().LastOrDefault();
            var evidenceList = db.AddEvidences.Where(x => x.CaseId == caseId).Select(x => new
            {
                x.AddCase.CaseId,
                x.Evidence,
                x.EvidenceType,
                x.AddSuspect.Name,
                x.Note,
                x.Points,
                x.Dates
            }).ToList();

            evidenceGridView.DataSource = evidenceList;
            evidenceGridView.DataBind();
        }
    }
}