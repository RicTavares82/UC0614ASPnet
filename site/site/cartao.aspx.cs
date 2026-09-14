using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace site
{
    public partial class cartao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_gerar_Click(object sender, EventArgs e)
        {
            //// caminho para a pagina web onde se encontra a pasta PDFs, para abrir o PDF gerado no browser.
            //string enderecoWeb = "https://localhost:44362/PDFs/";

            //// caminho para a pasta PDFs no servidor (forma basica)
            //string caminhoPDFs = "D:\\Cursos_e_Formacao\\ATEC\\Processos\\UC0614ASP-net\\site\\site\\PDFs";

            //--------------------------//

            string enderecoWeb = ConfigurationManager.AppSettings.Get("enderecoW");

            string caminhoPDFs = ConfigurationManager.AppSettings.Get("caminhoP");


            string PDFTemplate = caminhoPDFs + "\\Template\\template_cartao.pdf";

            // nome do novo PDF a ser gerado, está comentado porque vou implementar a encriptação do nome.
            //string nomeNovoPDF = "ficheiro.pdf";

            //// encriptar o nome do PDF
            //string nomeNovoPDF = EncryptString(DateTime.Now.ToString().Replace(":", "").Replace("/", "").Replace(" ", "")) + ".pdf";

            string nomeNovoPDF = DateTime.Now.ToString().Replace(":", "").Replace("/", "").Replace(" ", "") + ".pdf";

            // Response para ver na pagina o resultado do nome do PDF encriptado, para ver se está a funcionar.
            //Response.Write(nomeNovoPDF);

            string caminhoNovoPDF = caminhoPDFs + "\\" + nomeNovoPDF;

            // criar o leitor do PDF
            PdfReader preader = new PdfReader(PDFTemplate);

            // criar o escritor do PDF
            PdfStamper pstamper = new PdfStamper(preader, new FileStream(caminhoNovoPDF, FileMode.Create));

            // criar o objeto para manipular os campos do PDF
            AcroFields camposPDF = pstamper.AcroFields;

            camposPDF.SetField("numero", txb_numero.Text);
            camposPDF.SetField("nome", txb_nome.Text);
            camposPDF.SetField("curso", txb_curso.Text);

            pstamper.Close();

            //esta linha redireciona para o PDF gerado, abrindo-o no browser
            Response.Redirect(enderecoWeb + nomeNovoPDF);
        }
    }
}