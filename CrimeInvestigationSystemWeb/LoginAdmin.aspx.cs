using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrimeInvestigationSystemWeb
{
    public partial class LoginAdmin : System.Web.UI.Page
    {
        CrimeInvestigationDBEntities db = new CrimeInvestigationDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            var pass = db.AdminLogins.Where(x => x.AdminId == adminIdTextBox.Text).Select(x => x.Password).ToList().LastOrDefault();
            if (pass == passwordTextBox.Text)
            {
                Response.Redirect("AdminMenu.aspx");
            }
            else
            {
                Response.Write("<script>alert('Check your Password!!');</script>");
            }
        }
    }
}