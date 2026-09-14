using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace site
{
    public partial class destino2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_nome.Text = Request.Form["tb_nome"];
            lbl_morada.Text = Request.Form["tb_morada"];
        }
    }
}