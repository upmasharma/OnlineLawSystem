using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Web.Mail;
public partial class Login : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Random rnd = new Random();
        int otp=rnd.Next(123456780);
        // Gmail Address from where you send the mail
        var fromAddress = "trymeapdtc2013@gmail.com";
        // any address where the email will be sending
        var toAddress = txtUser.Text;
        //Password of your gmail address
        const string fromPassword = "apdtc@123";
        // Passing the values and make a email formate to display
        string subject = "Welcome to OTP Generation";
        string body = "OTP: " + otp + "\n";
        body += "Date: " + System.DateTime.Now.ToShortDateString() + "\n";
        body += "Time: " + System.DateTime.Now.ToShortTimeString() + "\n";
        body += "Description: \n" + "Valid Upto This Session" + "\n";
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
        con.open_connection();
        String st = "update registration set password='"+otp+"' where emailID='"+txtUser.Text+"' ";
        SqlCommand cmd = new SqlCommand(st,con.con_pass());
        cmd.ExecuteNonQuery();
        con.close_connection();
        Response.Write("<script>alert('OTP Send to Your Gmail ID') </script>");
        Response.Redirect("Login2.aspx?email=" + txtUser.Text);

        
    }
}