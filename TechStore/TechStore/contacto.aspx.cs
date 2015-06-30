using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;
namespace TechStore
{
     public partial class contacto : System.Web.UI.Page
     {
          protected void Page_Load(object sender, EventArgs e)
          {
               Menu navbar = new Menu(nav);
          }

          protected void enviar_Click(object sender, EventArgs e)
          {
               System.Net.Mail.MailMessage msg = new System.Net.Mail.MailMessage();
               msg.To.Add("fco.sansoto@gmail.com");
               msg.From = new MailAddress(mail.Text, "Tech Store", System.Text.Encoding.UTF8);
               msg.Subject = "Prueba de correo a GMail";
               msg.SubjectEncoding = System.Text.Encoding.UTF8;
               msg.Body = comentario.Text;
               msg.BodyEncoding = System.Text.Encoding.UTF8;
               msg.IsBodyHtml = false;
               //Aquí es donde se hace lo especial
               SmtpClient client = new SmtpClient();
               client.Credentials = new System.Net.NetworkCredential(mail.Text, password.Text);
               client.Port = 25;
               client.Host = "smtp.gmail.com";
               client.EnableSsl = true; //Esto es para que vaya a través de SSL que es obligatorio con GMail
               client.Send(msg);
          }
     }
}