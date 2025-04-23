using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Configuration;
using System.Data.SqlClient;

namespace ASP_CAR_RENTAL_PROJECT
{
    public partial class contact : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        SqlCommand cmd;
        DataSet ds;
        Class1 c1;
        public void Connection()
        {
            c1 = new Class1();
            c1.Connection();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Connection();
        }

        protected void sentmessage_Click(object sender, EventArgs e)
        {
            Connection();
            c1.contect_insert(name.Text,email.Text, phone.Text, project.Text, subject.Text,message.Text);
        }
    }
}