using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace site
{
    public partial class template_noticias2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            XmlDocument url = new XmlDocument();
            url.Load("https://www.noticiasaominuto.com/rss/ultima-hora");

            Xml2.Document = url;

            XmlDocument url1 = new XmlDocument();
            url1.Load("https://www.noticiasaominuto.com/rss/desporto");

            Xml3.Document = url1;



        }
    }
}