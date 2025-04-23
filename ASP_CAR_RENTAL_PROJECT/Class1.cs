using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Configuration;

namespace ASP_CAR_RENTAL_PROJECT
{
    public class Class1
    {
        String s = ConfigurationManager.ConnectionStrings["dbcoonnection"].ToString();
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        SqlConnection con;

        public void Connection()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        public SqlConnection GetConnection()
        {
            con = new SqlConnection(s);
            con.Open();
            return con;
        }

        

        public void insert(string fname,string lname,string email,string phone,string gender,string city,string address,string pickuppoint,string dropoffpoint,string pickupdate,string dropoffdate,string pickuptime,string dropofftime,string cartype)
        {
            Connection();
            cmd = new SqlCommand("Insert INTO car_rent_tbl(First_name,Last_name,Email,Phone,Gender,City,Address,Pickup_point,Dropoff_point,Pickup_Date,Dropoff_Date,Pickup_time,Dropoff_time,Car_type) VALUES('"+fname+"','"+lname+"','"+email+"','"+phone+"','"+gender+"','"+city+"','"+address+"','"+pickuppoint+"','"+dropoffpoint+"','"+pickupdate+"','"+dropoffdate+"','"+pickuptime+"','"+dropofftime+"','"+cartype+"');",con);
            cmd.ExecuteNonQuery();
        }

        public void contect_insert(string name,string email,string phone,string project,string subject,string message)
        {
            Connection();
            cmd = new SqlCommand("Insert INTO contect_tbl(Name,Email,Phone,Project,Subject,Message) VALUES('"+name+"','"+email+"','"+phone+"','"+project+"','"+subject+"','"+message+"')",con);
            cmd.ExecuteNonQuery();
        }

        public void RegisterUserInsert(string un, string em, string pw)
        {
            Connection();
            cmd = new SqlCommand("INSERT INTO RegisterTbl(UserName, UserEmail, UserPassword) VALUES('" + un + "', '" + em + "', '" + pw + "');", con);
            cmd.ExecuteNonQuery();

        }

        public int VerifyRegister(string un, string em)
        {
            int i;
            Connection();
            cmd = new SqlCommand("SELECT COUNT(*) FROM RegisterTbl WHERE UserName='" + un + "' OR UserEmail='" + em + "';", con);
            i = Convert.ToInt32(cmd.ExecuteScalar());

            return i;
        }

        public int LoginCheck(string un, string pw)
        {
            int i;
            Connection();
            cmd = new SqlCommand("SELECT COUNT(*) FROM RegisterTbl WHERE UserName='" + un + "' AND UserPassword='" + pw + "';", con);
            i = Convert.ToInt32(cmd.ExecuteScalar());

            return i;
        }

        public int AdminLoginCheck(string an, string pw)
        {
            int i;
            Connection();
            cmd = new SqlCommand("SELECT COUNT(*) FROM AdminLogin WHERE AdminName='" + an + "' AND AdminPassword='" + pw + "';", con);
            i = Convert.ToInt32(cmd.ExecuteScalar());

            return i;
        }

        public void AdminCarsInsert(string carimage, string carname, string carrentprice, string carseat, string cartype, string carfuel, string caraverage)
        {
            Connection();
            cmd = new SqlCommand("INSERT INTO Cars_details_tbl (Car_image, Car_name, Car_rental_price, Car_seats, Car_type, Car_fuel_type, Car_average) VALUES ('"+ carimage + "', '"+ carname + "', '"+ carrentprice + "', '"+ carseat + "', '"+ cartype + "', '"+ carfuel + "', '"+ caraverage + "')", con);
            cmd.ExecuteNonQuery();
        }

        public DataSet FillAdminCarData()
        {
            Connection();
            da = new SqlDataAdapter("SELECT * FROM Cars_details_tbl;", con);
            ds = new DataSet();
            da.Fill(ds);

            return ds;
        }
        public DataSet AdminCarSelect(int id)
        {
            Connection();
            da = new SqlDataAdapter("SELECT * FROM Cars_details_tbl WHERE Car_id='" + id + "';", con);
            ds = new DataSet();

            da.Fill(ds);

            return ds;
        }
        public void AdminCarUpdate(int id, string carimage, string carname, string carrentprice, string carseat, string cartype, string carfuel, string caraverage)
        {
            Connection();
            cmd = new SqlCommand("UPDATE Cars_details_tbl SET Car_image = '" + carimage + "',Car_name = '" + carname + "',Car_rental_price = '" + carrentprice + "',Car_seats = '" + carseat + "',Car_type = '" + cartype + "',Car_fuel_type = '" + carfuel + "',Car_average = '" + caraverage + "' WHERE Car_id = '"+id+"';", con);
            cmd.ExecuteNonQuery();
        }
        public void AdminCarDelete(int id)
        {
            Connection();

            cmd = new SqlCommand("DELETE FROM Cars_details_tbl WHERE Car_id='" + id + "';", con);
            cmd.ExecuteNonQuery();
        }
        public DataSet AdminBookedDate()
        {
            Connection();
            da = new SqlDataAdapter("SELECT * FROM car_rent_tbl;", con);
            ds = new DataSet();

            da.Fill(ds);

            return ds;
        }
        public DataSet AdminContectDate()
        {
            Connection();
            da = new SqlDataAdapter("SELECT * FROM contect_tbl;", con);
            ds = new DataSet();

            da.Fill(ds);

            return ds;
        }
    }
 
}