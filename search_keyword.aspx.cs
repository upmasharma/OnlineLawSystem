using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class search_keyword : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        ShowDetails();
    }
    private void ShowDetails()
    {
        string q = "select * from add_details1 ";
        DataTable dt = new DataTable();
        SqlDataAdapter dp = new SqlDataAdapter(q, con.con_pass());
        dp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
           string q = "select * from add_details1 where section like '%" + TextBox1.Text + "%' OR ctype like '%"+TextBox1.Text+"%'  ";
            DataTable dt = new DataTable();
            SqlDataAdapter dp = new SqlDataAdapter(q, con.con_pass());
            dp.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
            else
            {
                Response.Write("<script>alert('Not Found') </script>");
            }
        }
        
    
}