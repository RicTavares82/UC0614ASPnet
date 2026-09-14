using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Configuration;
//using System.Web.Mail;

namespace site
{
    public partial class enviar_email : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_enviar_Click(object sender, EventArgs e)
        {
            MailMessage email = new MailMessage();
            SmtpClient servidor = new SmtpClient();


            //email.From = new MailAddress(tb_de.Text);

            email.To.Add(tb_para.Text);

            email.Subject = tb_assunto.Text;
            email.IsBodyHtml = true;
            email.Body = "Mensagem de texto no corpo do email";


            if(FileUpload1.HasFiles)
            {
                Attachment anexo = new Attachment(FileUpload1.FileContent, FileUpload1.FileName);
                email.Attachments.Add(anexo);
            }

            string gmailUser = ConfigurationManager.AppSettings["GmailSmtpUser"];
            string gmailPassword = ConfigurationManager.AppSettings["GmailSmtpAppPassword"];

            servidor.Host = "smtp.gmail.com";
            servidor.Port = 587;
            servidor.UseDefaultCredentials = false;
            servidor.DeliveryMethod = SmtpDeliveryMethod.Network;
            servidor.EnableSsl = true;
            servidor.Credentials = new System.Net.NetworkCredential(gmailUser, gmailPassword);

            email.From = new MailAddress(gmailUser);
            email.ReplyToList.Add(new MailAddress(tb_de.Text));

            servidor.Send(email);
        }
    }
}