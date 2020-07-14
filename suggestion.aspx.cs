using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class suggestion : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.open_connection();
        string st = "insert into suggestion values('"+DropDownList1.SelectedItem+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+Session["emailID"]+"','"+System.DateTime.Now.ToShortDateString()+"')";
        SqlCommand cmd = new SqlCommand(st,con.con_pass());
        cmd.ExecuteNonQuery();

        con.close_connection();
        Response.Write("<script>alert('Your Suggestion Given Successfully') </script>");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.open_connection();
        string str = "select * from add_details1 where section='" + DropDownList1.SelectedItem + "'";
        SqlCommand cmd = new SqlCommand(str, con.con_pass());
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            TextBox2.Text = dr["ctype"].ToString();

            TextBox3.Text = dr["cdes"].ToString();
        }


        con.close_connection();

    }
}