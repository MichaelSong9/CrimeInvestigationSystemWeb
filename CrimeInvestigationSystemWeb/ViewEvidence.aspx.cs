using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrimeInvestigationSystemWeb
{
    public partial class ViewEvidence : System.Web.UI.Page
    {
        CrimeInvestigationDBEntities db = new CrimeInvestigationDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void caseIdDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            var caseId = Convert.ToInt32(caseIdDropDownList.SelectedValue);

            var evidenceList = db.AddEvidences.Where(x => x.CaseId == caseId).Select(x => new
            {
                x.Evidence,
                x.EvidenceType,
                x.AddSuspect.Name,
                x.Note,
                x.Points,
                x.AddCase.AddOfficer.OfficerName,
                x.Dates
                
            }).ToList();

            evidenceListGridView.DataSource = evidenceList;
            evidenceListGridView.DataBind();
        }
    }
}