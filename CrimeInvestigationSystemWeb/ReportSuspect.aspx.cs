using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrimeInvestigationSystemWeb
{
    public partial class ReportSuspect : System.Web.UI.Page
    {
        CrimeInvestigationDBEntities db = new CrimeInvestigationDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var reportSuspectCaseId = Convert.ToInt16(Session["ReportSuspect"].ToString());


            //var viewSuspectList = db.AddSuspects.Where(x => x.CaseId == reportSuspectCaseId).Select(x => new
            //{
            //    x.Name,
            //    x.MobileNo,
            //    x.Address,
            //    x.Relation,
            //    x.Note,
            //    x.Dates,
            //    Points = x.AddEvidences.Where(y => y.CaseId == x.CaseId).Select(y => y.Points)
            //}).OrderBy(x => x.Points).ToList();


            var viewSuspectList = db.AddEvidences.Where(x => x.CaseId == reportSuspectCaseId).Select(x => new
            {
                x.AddSuspect.Name,
                x.AddSuspect.MobileNo,
                x.AddSuspect.Address,
                x.AddSuspect.Relation,
                x.AddSuspect.Note,
                x.AddSuspect.Dates,
                x.Points,
                x.EvidenceType
            }).OrderByDescending(x => x.Points).ToList();
            suspectGridView.DataSource = viewSuspectList;
            suspectGridView.DataBind();
        }
    }
}