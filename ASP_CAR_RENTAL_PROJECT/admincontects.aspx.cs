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
    public partial class admincontects : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        SqlCommand cmd;
        DataSet ds;

        Class1 c1;
        protected void Page_Load(object sender, EventArgs e)
        {
            FillGrid();
        }
        public void Connection()
        {
            c1 = new Class1();
            c1.Connection();
        }
        public void FillGrid()
        {
            c1 = new Class1();

            contectdata.DataSource = c1.AdminContectDate();
            contectdata.DataBind();

        }
    }
}