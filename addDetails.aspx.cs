﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class addDetails : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            con.open_connection();
            string st = "insert into add_details1 values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
            SqlCommand cmd = new SqlCommand(st, con.con_pass());
            cmd.ExecuteNonQuery();
            con.close_connection();
            Response.Write("<script>alert('Details Added Successfully') </script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Section Already Register') </script>");
        }

    }
}