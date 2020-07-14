using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class feedback : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        fillid();
    }
    public void fillid()
    {
        con.open_connection();
        string str = "select * from feedback order by fid";
        SqlCommand cmd = new SqlCommand(str, con.con_pass());
        SqlDataReader dr = cmd.ExecuteReader();
        int i = 0;
        while (dr.Read())
        {
            int a = 0;
            a = Convert.ToInt32(dr["fid"].ToString());
            ViewState["sid"] = a.ToString();
            i = i + 1;
        }
        if (i > 0)
        {
            int a = Convert.ToInt32(ViewState["sid"].ToString());
            a = a + 1;
            TextBox1.Text = a.ToString();
        }
        else
            TextBox1.Text = "1";
        con.close_connection();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            con.open_connection();
            string st = "insert into feedback values ('"+TextBox1.Text+"','"+TextBox2.Text+"','"+Session["emailID"]+"','"+TextBox3.Text+"','"+System.DateTime.Now.ToShortDateString()+"')";
            SqlCommand cmd = new SqlCommand(st,con.con_pass());
            cmd.ExecuteNonQuery();
            con.close_connection();
            Response.Write("<script>alert('Feedback Submitted Successfully') </script>");
        }
        catch (Exception ex)
        {

            Response.Write("<script>alert('Feedback Not Submitted Successfully') </script>");
        
        }
    }
}