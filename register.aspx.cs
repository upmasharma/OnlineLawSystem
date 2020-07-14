﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class register : System.Web.UI.Page
{
    connection con = new connection();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        fillid();
    }
    public void fillid()
    {
        con.open_connection();
        string str = "select * from registration order by userid";
        SqlCommand cmd = new SqlCommand(str, con.con_pass());
        SqlDataReader dr = cmd.ExecuteReader();
        int i = 0;
        while (dr.Read())
        {
            int a = 0;
            a = Convert.ToInt32(dr["userid"].ToString());
            ViewState["sid"] = a.ToString();
            i = i + 1;
        }
        if (i > 0)
        {
            int a = Convert.ToInt32(ViewState["sid"].ToString());
            a = a + 1;
            txtID.Text = a.ToString();
        }
        else
            txtID.Text = "101";
        con.close_connection();
    }
    
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            string utype = "User";
            string dob = TextBox1.Text;
            con.open_connection();
            string str = "insert into registration values('" + txtID.Text + "','" + txtEmail.Text + "','" + txtFname.Text + "','" + txtLName.Text + "','" + radGen.Text + "','" + txtFather.Text + "','" + txtPass.Text + "','" + dob + "','" + txtAdd.Text + "','" + txtCity.Text + "','" + txtState.Text + "','" + txtPostal.Text + "','" + txtCountry.Text + "','" + txtPone.Text + "','" + System.DateTime.Now.ToString() + "','"+Image1.ImageUrl+"','"+utype+"','"+txtAge.Text+"','"+TextBox2.Text+"')";
            SqlCommand cmd = new SqlCommand(str, con.con_pass());
            cmd.ExecuteNonQuery();
            con.close_connection();

            Label9.Visible = true;
            Label9.Text = "!!..Hi.." + txtFname.Text + " " + txtLName.Text + "', Your Account is successfully created..!!";


        }
        catch (Exception ex)
        {
            Label9.Visible = true;
            Label9.Text = ex.Message;
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            try
            {
                string filename = System.IO.Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("~/uploadImage/") + filename);
                // Console.Write(filename);
                Image1.ImageUrl = "~/uploadImage/" + filename;
                Image1.Visible = true;
                // TextBox9.Text = Image1.ImageUrl;
                FileUpload1.Visible = false;
                Button2.Visible = false;
            }
            catch (Exception ex)
            {
                //StatusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
            }
        }
    }
}