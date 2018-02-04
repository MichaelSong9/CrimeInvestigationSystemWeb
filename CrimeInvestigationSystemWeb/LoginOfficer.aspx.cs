using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrimeInvestigationSystemWeb
{
    public partial class LoginOfficer : System.Web.UI.Page
    {
        CrimeInvestigationDBEntities db = new CrimeInvestigationDBEntities();
        //OfficerLogin officerLogin = new OfficerLogin();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            var email = officerIdTextBox.Text;
            var pass = db.OfficerLogins.Where(x => x.OfficerId == email).Select(x => x.Password).ToList().LastOrDefault();
            if (pass == passwordTextBox.Text)
            {
                Session["OfficerId"] = email;
                Response.Redirect("OfficerMenu.aspx");
            }
            else
            {
                Response.Write("<script>alert('Check your Password!!');</script>");
            }
        }
    }
}