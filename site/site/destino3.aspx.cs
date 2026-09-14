using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace site
{
    public partial class destino3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_nome.Text = Session["nome"].ToString();
            lbl_morada.Text = Session["morada"].ToString();
        }

        protected void btn_terminar_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
        }
    }
}