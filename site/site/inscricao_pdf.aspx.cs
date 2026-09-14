using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.IO;
using System.Configuration;



namespace site
{
    public partial class inscricao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_gerarPDF_Click(object sender, EventArgs e)
        {
            //// caminho para a pagina web onde se encontra a pasta PDFs, para abrir o PDF gerado no browser.
            //string enderecoWeb = "https://localhost:44362/PDFs/";

            //// caminho para a pasta PDFs no servidor (forma basica)
            //string caminhoPDFs = "D:\\Cursos_e_Formacao\\ATEC\\Processos\\UC0614ASP-net\\site\\site\\PDFs";

            //--------------------------//

            string enderecoWeb = ConfigurationManager.AppSettings.Get("enderecoW");

            string caminhoPDFs = ConfigurationManager.AppSettings.Get("caminhoP");

            

            string PDFTemplate = caminhoPDFs + "\\Template\\Template_file.pdf";

            // nome do novo PDF a ser gerado, está comentado porque vou implementar a encriptação do nome.
            //string nomeNovoPDF = "ficheiro.pdf";

            string nomeNovoPDF = EncryptString(DateTime.Now.ToString().Replace(":", "").Replace("/", "").Replace(" ", "")) + ".pdf";
            
            // Response para ver na pagina o resultado do nome do PDF encriptado, para ver se está a funcionar.
            //Response.Write(nomeNovoPDF);

            string caminhoNovoPDF = caminhoPDFs + "\\" + nomeNovoPDF;

            // criar o leitor do PDF
            PdfReader preader = new PdfReader(PDFTemplate);

            // criar o escritor do PDF
            PdfStamper pstamper = new PdfStamper(preader, new FileStream(caminhoNovoPDF, FileMode.Create));

            // criar o objeto para manipular os campos do PDF
            AcroFields camposPDF = pstamper.AcroFields;

            camposPDF.SetField("num", txb_numero.Text);
            camposPDF.SetField("nome", txb_nome.Text);
            camposPDF.SetField("rua", txb_rua.Text);

            pstamper.Close();

            Response.Redirect(enderecoWeb + nomeNovoPDF);

        }

        public static string EncryptString(string Message)
        {
            string Passphrase = "formacao";
            byte[] Results;
            System.Text.UTF8Encoding UTF8 = new System.Text.UTF8Encoding();

            // Step 1. We hash the passphrase using MD5
            // We use the MD5 hash generator as the result is a 128 bit byte array
            // which is a valid length for the TripleDES encoder we use below

            MD5CryptoServiceProvider HashProvider = new MD5CryptoServiceProvider();
            byte[] TDESKey = HashProvider.ComputeHash(UTF8.GetBytes(Passphrase));

            // Step 2. Create a new TripleDESCryptoServiceProvider object
            TripleDESCryptoServiceProvider TDESAlgorithm = new TripleDESCryptoServiceProvider();

            // Step 3. Setup the encoder
            TDESAlgorithm.Key = TDESKey;
            TDESAlgorithm.Mode = CipherMode.ECB;
            TDESAlgorithm.Padding = PaddingMode.PKCS7;

            // Step 4. Convert the input string to a byte[]
            byte[] DataToEncrypt = UTF8.GetBytes(Message);

            // Step 5. Attempt to encrypt the string
            try
            {
                ICryptoTransform Encryptor = TDESAlgorithm.CreateEncryptor();
                Results = Encryptor.TransformFinalBlock(DataToEncrypt, 0, DataToEncrypt.Length);
            }
            finally
            {
                // Clear the TripleDes and Hashprovider services of any sensitive information
                TDESAlgorithm.Clear();
                HashProvider.Clear();
            }

            // Step 6. Return the encrypted string as a base64 encoded string

            string enc = Convert.ToBase64String(Results);
            enc = enc.Replace("+", "KKK");
            enc = enc.Replace("/", "JJJ");
            enc = enc.Replace("\\", "III");
            return enc;
        }

        protected void txb_numero_TextChanged(object sender, EventArgs e)
        {

        }
    }
}