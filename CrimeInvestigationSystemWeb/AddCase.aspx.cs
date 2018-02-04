using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrimeInvestigationSystemWeb
{
    public partial class AddCase1 : System.Web.UI.Page
    {
        CrimeInvestigationDBEntities db = new CrimeInvestigationDBEntities();
        AddCase addCase = new AddCase();
        protected void Page_Load(object sender, EventArgs e)
        {
            //var officerList = db.AddOfficers.Select(x => x.OfficerId).ToList();
            //officerIdDropDownList.DataSource = officerList;
            //officerIdDropDownList.DataBind();
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            if (db.AddCases.Any(x => x.CaseId == caseIdTextBox.Text))
            {
                Response.Write("<script>alert('This case Id already exists!!!');</script>");
            }
            else
            {
                try
                {
                    var id = officerIdDropDownList.SelectedValue;
                    var s = db.AddOfficers.Where(x => x.OfficerId == id).Select(x => x.Id).ToList().LastOrDefault();
                    addCase.CaseId = caseIdTextBox.Text;
                    addCase.CaseName = nameTextBox.Text;
                    addCase.OfficerId = s;
                    addCase.Note = noteTextBox.Text;
                    db.AddCases.Add(addCase);
                    db.SaveChanges();
                    Response.Write("<script>alert('Case Saved Successfully!');</script>");
                }
                catch (Exception)
                {
                    Response.Write("<script>alert('An Error Occurred');</script>");
                }
            }

        }

        protected void officerIdDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            var id = officerIdDropDownList.SelectedValue;
            var officerName = db.AddOfficers.Where(x => x.OfficerId == id).Select(x => x.OfficerName).ToList().LastOrDefault();
            officerNameTextBox.Text = officerName;
        }
    }
}