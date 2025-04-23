using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Collections.Specialized;
using System.ComponentModel.DataAnnotations;
using System.Configuration;



namespace ASP_CAR_RENTAL_PROJECT
{
    public partial class Login : System.Web.UI.Page
    {
        Class1 cs;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserLoggedIn"] != null && (bool)Session["UserLoggedIn"])
            {
                Response.Redirect("WebForm1.aspx");
            }
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            int i;
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            cs = new Class1();
            i = cs.LoginCheck(username, password);

            if (i > 0)
            {
                Session["UserLoggedIn"] = true;
                Session["Username"] = username;

                if (chkRememberMe.Checked)
                {
                    HttpCookie userCookie = new HttpCookie("UserLogin");
                    userCookie["Username"] = username;
                    userCookie.Expires = DateTime.Now.AddDays(7); // Remember for 7 days
                    Response.Cookies.Add(userCookie);
                }

                Response.Redirect("WebForm1.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Username or Password!');</script>");
            }
        }
    }
}