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
    public partial class admincars : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        SqlCommand cmd;
        DataSet ds;
        String fnm;
        
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
        public void UploadImage()
        {
            if (carimage.HasFile)
            {
                fnm = "cars/" + Path.GetFileName(carimage.FileName);
                carimage.SaveAs(Server.MapPath("~/" + fnm));

                // Debug/logging
                System.Diagnostics.Debug.WriteLine("Image path: " + fnm);
            }
            else
            {
                fnm = "";  // fallback
                System.Diagnostics.Debug.WriteLine("No image uploaded");
            }
        }


        void empty()
        {
            carname.Text = "";
            carrent.Text = "";
            caraverage.Text = "";
            carseats.ClearSelection();
            cartype.ClearSelection();
            carfuel.ClearSelection();

            save.Text = "Save";
        }
        public void FillGrid()
        {
            c1 = new Class1();

            CarsInfo.DataSource = c1.FillAdminCarData();
            CarsInfo.DataBind();

        }
        protected void Unnamed1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void save_Click(object sender, EventArgs e)
        {
            
        }

        public void FillText()
        {
            c1 = new Class1();

            ds = c1.AdminCarSelect(Convert.ToInt32(ViewState["Car_id"]));


            carname.Text = ds.Tables[0].Rows[0][2].ToString();
            carrent.Text = ds.Tables[0].Rows[0][3].ToString();
            carseats.SelectedValue = ds.Tables[0].Rows[0][4].ToString();
            cartype.SelectedValue = ds.Tables[0].Rows[0][5].ToString();
            carfuel.SelectedValue = ds.Tables[0].Rows[0][6].ToString();
            caraverage.Text = ds.Tables[0].Rows[0][7].ToString();

        }

        protected void CarsInfo_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
        }

        protected void save_Click1(object sender, EventArgs e)
        {
           
        }

        protected void CarsInfo_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "edit")
            {
                int id = Convert.ToInt16(e.CommandArgument);
                ViewState["Car_id"] = id;
                FillText();
                save.Text = "Update";
            }
            else if (e.CommandName == "delete")
            {
                c1 = new Class1();
                int id = Convert.ToInt16(e.CommandArgument);
                c1.AdminCarDelete(id);
                FillGrid();
            }
        }

        protected void save_Click2(object sender, EventArgs e)
        {
            Connection();
            UploadImage();  

            if (save.Text == "Save")
            {
                c1.AdminCarsInsert(fnm, carname.Text, carrent.Text, carseats.SelectedValue, cartype.SelectedValue, carfuel.SelectedValue, caraverage.Text);
                FillGrid();
                empty();
            }
            else
            {
                Connection();
                c1 = new Class1();

                c1.AdminCarUpdate(Convert.ToInt32(ViewState["Car_id"]), fnm, carname.Text, carrent.Text, carseats.SelectedValue, cartype.SelectedValue, carfuel.SelectedValue, caraverage.Text);
                empty();
                FillGrid();
            }
        }
    }
}