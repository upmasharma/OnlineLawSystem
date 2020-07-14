using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
public partial class forgotPassword : System.Web.UI.Page
{
    connection con = new connection();
    string pass = null; 
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        con.open_connection();
        string st = "select * from registration where emailid='"+TextBox1.Text+"' ";
        SqlCommand cmd = new SqlCommand(st,con.con_pass());
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            pass = dr["password"].ToString();
        }

        con.close_connection();
        SendMail();
    }
    protected void SendMail()
    {
        //Random rnd = new Random();
        //int otp = rnd.Next(123456789);
        //Session["otp"] = rnd.Next(123456789);
        // Gmail Address from where you send the mail
        //var fromAddress = "simmisaluja2013@gmail.com";
        var fromAddress = "trymeapdtc2013@gmail.com";
        // any address where the email will be sending
        var toAddress = TextBox1.Text;
        //Password of your gmail address  Session["pwd"]
        const string fromPassword = "apdtc@123";
        // const string fromPassword = Session["pwd"];
        // Passing the values and make a email formate to display
        string subject = "Forgot Password";
        string body = "Password Details " + "\n";
        body += pass + "\n";
        //  body += "Password: " + txtPass.Text + "\n";
        // body += "Description:Thanks for Registerning with us" + "\n";
        // smtp settings
        var smtp = new System.Net.Mail.SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            smtp.Timeout = 20000;
        }
        // Passing values to smtp object
        smtp.Send(fromAddress, toAddress, subject, body);
        //Response.Write("<script>alert('Please Purchase Product You get 10 % discount') </script>");
    }
}