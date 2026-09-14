using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace site
{
    public partial class pag2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void ddl_curso_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddl_modulo.Items.Clear();

            if (ddl_curso.SelectedItem.ToString() == "cet tpsi")
            {
                ddl_modulo.Items.Add("Base de dados");
                ddl_modulo.Items.Add("Algoritmos");
                ddl_modulo.Items.Add("Programação Orientada a Objetos");
                ddl_modulo.Items.Add("Integração de Sistemas");

            }
            else if (ddl_curso.SelectedItem.ToString() == "cet redes")
            {
                ddl_modulo.Items.Add("Comunicaões Rádio");
                ddl_modulo.Items.Add("Cablagem");
                ddl_modulo.Items.Add("Topologia de Redes");
                ddl_modulo.Items.Add("Administração de Sistemas");
            }
            else if (ddl_curso.SelectedItem.ToString() == "cet mecratronica")
            {
                ddl_modulo.Items.Add("Electicidade");
                ddl_modulo.Items.Add("Fisica");
                ddl_modulo.Items.Add("Mecânica");
            }
        }
        protected void ddl_modulo_SelectedIndexChanged(object sender, EventArgs e)
        {
        


        }
    }
}