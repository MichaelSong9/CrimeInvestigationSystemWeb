using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrimeInvestigationSystemWeb
{
    public partial class ViewCaseHistoryAdmin : System.Web.UI.Page
    {
        CrimeInvestigationDBEntities db = new CrimeInvestigationDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void caseIdDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            var caseId = Convert.ToInt32(caseIdDropDownList.SelectedValue);
            var caseHistoryList = db.AddCaseHistories.Where(x => x.CaseId == caseId).Select(x => new
            {
                x.AddCase.CaseId,
                x.Note,
                x.Dates
            }).ToList();

            caseHistoryGridView.DataSource = caseHistoryList;
            caseHistoryGridView.DataBind();
        }
    }
}