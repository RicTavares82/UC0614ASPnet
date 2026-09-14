using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace site
{
    public partial class page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_mostrar_Click(object sender, EventArgs e)
        {
            lbl_mensagem.Text = "Olá, " + tb_nome.Text + "!";
        }

        protected void rbl_regime1_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}