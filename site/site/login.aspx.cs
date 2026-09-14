using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace site
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_entrar_Click(object sender, EventArgs e)
        {
            if(tb_utilizador.Text == "admin" && tb_pass.Text == "admin")
            {
                Session["logado"] = "sim";
                Response.Redirect("app.aspx");
            }
            else
            {
                lbl_mensagem.Visible = true;
            }
        }
    }
}