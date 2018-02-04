using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrimeInvestigationSystemWeb
{
    public partial class AddOfficerToCase1 : System.Web.UI.Page
    {
        CrimeInvestigationDBEntities db = new CrimeInvestigationDBEntities();
        AddOfficerToCase addOfficerToCase = new AddOfficerToCase();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            try
            {
                var id = officerIdDropDownList.SelectedValue;
                var officerId = db.AddOfficers.Where(x => x.OfficerId == id).Select(x => x.Id).ToList().LastOrDefault();

                var ids = caseIdDropDownList.SelectedValue;
                var caseId = db.AddCases.Where(x => x.CaseId == ids).Select(x => x.Id).ToList().LastOrDefault();

                addOfficerToCase.CaseId = caseId;
                addOfficerToCase.OfficerId = officerId;
                db.AddOfficerToCases.Add(addOfficerToCase);
                db.SaveChanges();
                Response.Write("<script>alert('Successfully!');</script>");
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Error!');</script>");
            }
        }

        protected void caseIdDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            var id = caseIdDropDownList.SelectedValue;
            var caseName = db.AddCases.Where(x => x.CaseId == id).Select(x => x.CaseName).ToList().LastOrDefault();
            caseNameTextBox.Text = caseName;
        }

        protected void officerIdDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            var id = officerIdDropDownList.SelectedValue;
            var officerName = db.AddOfficers.Where(x => x.OfficerId == id).Select(x => x.OfficerName).ToList().LastOrDefault();
            officerNameTextBox.Text = officerName;
        }
    }
}