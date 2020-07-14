using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class addSpecialization : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Session["emailID"].ToString();
        con.open_connection();

       
        string str = "select * from registration where emailID='" + Session["emailID"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(str, con.con_pass());
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            TextBox2.Text = dr["uspl"].ToString();
        }
        con.close_connection();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.open_connection();
        string st = "update registration set uspl='"+TextBox3.Text+"' where emailID='"+TextBox1.Text+"'";
        SqlCommand cmd = new SqlCommand(st,con.con_pass());
        cmd.ExecuteNonQuery();

        con.close_connection();

    }
}