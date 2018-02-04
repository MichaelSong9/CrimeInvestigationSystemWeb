using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrimeInvestigationSystemWeb
{
    public partial class AddOfficer1 : System.Web.UI.Page
    {
        CrimeInvestigationDBEntities db = new CrimeInvestigationDBEntities();
        AddOfficer addOfficer = new AddOfficer();
        OfficerLogin officerLogin = new OfficerLogin();
        protected void Page_Load(object sender, EventArgs e)
        {

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

                    if (db.AddOfficers.Any(x => x.OfficerId == officerIdTextBox.Text))
                    {
                        Response.Write("<script>alert('Officer Id already exists!!');</script>");
                    }
                    else
                    {
                        try
                        {
                            addOfficer.OfficerId = officerIdTextBox.Text;
                            addOfficer.OfficerName = nameTextBox.Text;
                            addOfficer.MobileNo = mobileNoTextBox.Text;
                            addOfficer.Address = addressTextBox.Text;
                            addOfficer.Mail = mailTextBox.Text;
                            addOfficer.Area = areaTextBox.Text;
                            addOfficer.Image = picture;
                            db.AddOfficers.Add(addOfficer);
                            db.SaveChanges();

                            officerLogin.OfficerId = officerIdTextBox.Text;
                            officerLogin.Password = passwordTextBox.Text;
                            db.OfficerLogins.Add(officerLogin);
                            db.SaveChanges();

                            Response.Write("<script>alert('Officer Saved Successfully!');</script>");
                        }
                        catch (Exception)
                        {
                            Response.Write("<script>alert('Something went wrong');</script>");

                        }
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