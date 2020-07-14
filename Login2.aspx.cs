using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Login : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string st1 = Request.QueryString["email"].ToString();
        string st2 = txtPass.Text;
       
        con.open_connection();
        string str = "select * from registration where emailID='" + st1 + "'";
        SqlCommand cmd = new SqlCommand(str, con.con_pass());
        SqlDataReader dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            if (dr["emailID"].ToString() == st1 && dr["password"].ToString() == st2 && dr["utype"].ToString().Equals("Advocate"))
            {
                Session["emailID"] = st1;
                // Session["age"] = dr["age"].ToString();
                Response.Redirect("viewProfile.aspx");
            }
            else if (dr["emailID"].ToString() == st1 && dr["password"].ToString() == st2 && dr["utype"].ToString().Equals("Citizen"))
            {
                Session["emailID"] = st1;
                // Session["age"] = dr["age"].ToString();
                Response.Redirect("citizen_viewProfile.aspx");
            }
        }
            
            
       
    }
}