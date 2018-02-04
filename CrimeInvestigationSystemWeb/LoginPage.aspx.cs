using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrimeInvestigationSystemWeb
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void adminLoginButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginAdmin.aspx");
        }

        protected void officerLoginButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginOfficer.aspx");
        }
    }
}