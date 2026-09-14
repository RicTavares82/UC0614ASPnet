using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace site
{
    public partial class destino : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_nome.Text = Request.QueryString["nome"].ToString();
            lbl_morada.Text = Request.QueryString["morada"].ToString();
        }
    }
}