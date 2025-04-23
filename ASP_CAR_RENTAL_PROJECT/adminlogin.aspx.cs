using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_CAR_RENTAL_PROJECT
{
    
    public partial class adminlogin : System.Web.UI.Page
    {
        Class1 cs;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AdminLoggedIn"] != null && (bool)Session["AdminLoggedIn"])
            {
                Response.Redirect("admincars.aspx");
            }

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            int i;
            string adminname = txtadminname.Text;
            string password = txtadminPassword.Text;

            cs = new Class1();
            i = cs.AdminLoginCheck(adminname, password);

            if (i > 0)
            {
                Session["AdminLoggedIn"] = true;
                Session["Adminname"] = adminname;

                Response.Redirect("admincars.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Username or Password!');</script>");
            }
        }
    }
}