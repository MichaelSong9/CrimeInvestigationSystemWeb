using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrimeInvestigationSystemWeb
{
    public partial class AddSuspect1 : System.Web.UI.Page
    {
        CrimeInvestigationDBEntities db = new CrimeInvestigationDBEntities();
        AddSuspect addSuspect = new AddSuspect();
        protected void Page_Load(object sender, EventArgs e)
        {
            var officerId = Session["OfficerId"].ToString();
            //var officerId = 1001.ToString();
            var id = db.AddOfficers.Where(x => x.OfficerId == officerId).Select(x => x.Id).ToList().LastOrDefault();
            var caseId =
                db.AddOfficerToCases.Where(x => x.OfficerId == id).Select(x => x.CaseId).ToList().LastOrDefault();
            var caseRealId = db.AddCases.Where(x => x.Id == caseId).Select(x => x.CaseId).ToList().LastOrDefault();

            caseIdTextBox.Text = caseRealId;
            ViewState["caseId"] = caseId;
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            
            string path = Server.MapPath("Images/");

            if (FileUpload1.HasFile)
            {
                string ext = Path.GetExtension(FileUpload1.FileName);

                if (ext == ".jpg" || ext == ".png")
                {
                    FileUpload1.SaveAs(path + FileUpload1.FileName);
                    string picture = "Images/" + FileUpload1.FileName;

                    try
                    {
                        addSuspect.CaseId = Convert.ToInt32(ViewState["caseId"].ToString());
                        addSuspect.Name = nameTextBox.Text;
                        addSuspect.MobileNo = mobileTextBox.Text;
                        addSuspect.Address = addressTextBox.Text;
                        addSuspect.Relation = relationTextBox.Text;
                        addSuspect.Note = noteTextBox.Text;
                        addSuspect.Image = picture;
                        addSuspect.Dates = DateTime.Now.ToShortDateString();
                        db.AddSuspects.Add(addSuspect);
                        db.SaveChanges();

                        Response.Write("<script>alert('Saved Successfully!');</script>");
                    }
                    catch (Exception)
                    {
                        Response.Write("<script>alert('Something went wrong');</script>");

                    }
                }
                else
                {
                    Response.Write("<script>alert('Upload jpg or png format');</script>");
                }
            }

            else
            {
                Response.Write("<script>alert('Upload first');</script>");
            }

        }
    }
}