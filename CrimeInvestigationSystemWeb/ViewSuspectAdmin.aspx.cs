using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Common.CommandTrees;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrimeInvestigationSystemWeb
{
    public partial class ViewSuspectAdmin : System.Web.UI.Page
    {
        CrimeInvestigationDBEntities db = new CrimeInvestigationDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void caseIdDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            var caseId = Convert.ToInt32(caseIdDropDownList.SelectedValue);

            var viewSuspectList = db.AddSuspects.Where(x => x.CaseId == caseId).Select(x => x).OrderBy(x=>x.Name).ToList();
            suspectGridView.DataSource = viewSuspectList;
            suspectGridView.DataBind();

            //var suspectList = db.AddEvidences.Where(x => x.CaseId == caseId).Select(x => x.SuspectId).ToList();
            //List<Suspect> detailsList = new List<Suspect>();

            //foreach (var suspectId in suspectList)
            //{
            //    var lis = db.AddEvidences.Where(x => x.SuspectId == suspectId).Select(x => new
            //    {
            //        Image = x.AddSuspect.Image,
            //        Name = x.AddSuspect.Name,
            //        MobileNo = x.AddSuspect.MobileNo,
            //        EvidenceType = x.EvidenceType,
            //        Ponits = x.Points
            //    }).ToList();
            //    detailsList.Add(lis);
            //}


            //var details = db.AddSuspects.Where(x => x.CaseId == caseId).Select(x => new
            //{
            //    Image = x.Image,
            //    Name = x.Name,
            //    MobileNo = x.MobileNo,
            //    //EvidenceType = x.AddEvidences.Where(y=>y.CaseId==caseId).Select(y=>y.EvidenceType).ToList().LastOrDefault(),
            //    //Points = x.AddEvidences.Where(y => y.CaseId == caseId).Select(y => y.Points).ToList().LastOrDefault(),

            //    Dates = x.Dates
            //}).ToList();

            //detailsGridView.DataSource = details;
            //detailsGridView.DataBind();




            //var q = (from addSuspect in db.AddSuspects
            //         join addEvidence in db.AddEvidences on addSuspect.Id equals addEvidence.SuspectId
            //         orderby addSuspect.Name
            //         select new
            //         {
            //             addSuspect.CaseId,
            //             addEvidence.EvidenceType,
            //             addEvidence.Points,
            //             addSuspect.Image,
            //             addSuspect.Name,
            //             addSuspect.MobileNo
            //         }).ToList();

            


            var l = db.AddEvidences.Where(x => x.SuspectId == x.AddSuspect.Id).Select(x => new
            {
                x.CaseId,
                x.AddSuspect.Image,
                x.AddSuspect.Name,
                x.AddSuspect.MobileNo,
                x.EvidenceType,
                x.Points
            }).ToList();
            var li = l.Where(x => x.CaseId == caseId).Select(x => x).ToList();
            detailsGridView.DataSource = li;
            detailsGridView.DataBind();

        }

        protected void getReportButton_OnClick(object sender, EventArgs e)
        {
            Session["ReportSuspect"] = caseIdDropDownList.SelectedValue;

            Response.Redirect("ReportSuspect.aspx");
        }
    }
}