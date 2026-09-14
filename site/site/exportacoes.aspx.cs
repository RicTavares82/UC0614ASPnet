using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;

namespace site
{
    public partial class exportacoes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_excel_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.AddHeader("content-disposition", "attachment;filename=ficheiro.xls");
            Response.ContentType = "application/vnd.ms-excel";

            Response.BinaryWrite(System.Text.Encoding.UTF8.GetPreamble());//leitura/escrita de caracteres especiais

            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);

            htw.Write($"<table><tr><td><b>Nome:</b></td><td>{tb_nome.Text}</td></tr><tr><td><b>Morada:</b></td><td>{tb_morada.Text}</td></tr></table>");

            Response.Write(sw.ToString());
            Response.End();
        }

        protected void btn_word_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.AddHeader("content-disposition", "attachment;filename=ficheiro.doc");
            Response.ContentType = "application/vnd.ms-word";

            Response.BinaryWrite(System.Text.Encoding.UTF8.GetPreamble());//leitura/escrita de caracteres especiais

            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);

            htw.Write($"<table><tr><td><b>Nome:</b></td><td>{tb_nome.Text}</td></tr><tr><td><b>Morada:</b></td><td>{tb_morada.Text}</td></tr></table>");

            Response.Write(sw.ToString());
            Response.End();


        }

        protected void btn_xml_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.AddHeader("content-disposition", "attachment;filename=ficheiro.xml");
            Response.ContentType = "application/xml";

            Response.BinaryWrite(System.Text.Encoding.UTF8.GetPreamble());//leitura/escrita de caracteres especiais

            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);

            htw.Write($"<formandos><nome>{tb_nome.Text}</nome><morada>{tb_morada.Text}</morada></formandos>");

            Response.Write(sw.ToString());
            Response.End();

        }

        protected void btn_pdf_Click(object sender, EventArgs e)
        {

            Response.Clear();
            Response.AddHeader("content-disposition", "attachment;filename=ficheiro.pdf");
            Response.ContentType = "application/pdf";

            string conteudo =$"<table><tr><td><b>Nome:</b></td><td>{tb_nome.Text}</td></tr><tr><td><b>Morada:</b></td><td>{tb_morada.Text}</td></tr></table>";

            StringReader sr = new StringReader(conteudo);

            Document pdfdoc = new Document(PageSize.A4,10F,10F,10F,10F);

            HTMLWorker htmlw = new HTMLWorker(pdfdoc);

            PdfWriter.GetInstance(pdfdoc, Response.OutputStream);

            pdfdoc.Open();

            htmlw.Parse(sr);

            pdfdoc.Close();

        }

    }
}