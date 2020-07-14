﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class manageBook : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showBook();
        }

    }
    private void showBook()
    {
        string q = "select * from registration where emailID='"+Session["emailID"].ToString()+"'";
        DataTable dt = new DataTable();
        SqlDataAdapter dp = new SqlDataAdapter(q, con.con_pass());
        dp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        showBook();
        Response.Redirect("viewProfile.aspx");

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string name = GridView1.DataKeys[e.RowIndex].Value.ToString();
        deleteData(name);
        showBook();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        showBook();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox phone = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1");
        TextBox email = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2");
     
        // TextBox totalprice = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4");
        string name = GridView1.DataKeys[e.RowIndex].Value.ToString();
        updateData(name, phone.Text, email.Text);
        GridView1.EditIndex = -1;
        showBook();
        Response.Redirect("viewProfile.aspx");
    }
    private void deleteData(string name)
    {
        string str = "delete from registration where book_id='" + name + "'";
        SqlCommand cmd = new SqlCommand(str, con.con_pass());
        con.open_connection();
        cmd.ExecuteNonQuery();
        con.close_connection();
        showBook();



    }
    private void updateData(string id, string phone, string email)
    {
        //,requirement='"+desc+"',rdate='"+rdate+"'
        string query = "update registration set phone_no='" + phone + "',emailID='" + email + "' where userID='" + id + "'";
        SqlCommand cmd = new SqlCommand(query, con.con_pass());
        con.open_connection();
        cmd.ExecuteNonQuery();
        con.close_connection();
        showBook();
    }
}