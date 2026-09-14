using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace site
{
    public partial class valida_pw_segura : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_validar_Click(object sender, EventArgs e)
        {
            lbl_mensagem.Text = validaPW(tb_pass.Text, 6, 1, 1, 1, 1);
        }

        public string validaPW(string palavra_passe, int min_caracteres, int min_maiusculas, int min_minusculas, int min_algarismos, int min_especiais)
        {
            string situacao = "forte";
            
            
            Regex maiusculas = new Regex("[A-Z]");
            Regex minusculas = new Regex("[a-z]");
            Regex algarismos = new Regex("[0-9]");
            Regex especiais = new Regex("[^A-Za-z0-9]");
            Regex plica = new Regex("'");


            if(palavra_passe.Length < min_caracteres)
            {
                situacao = "Numero insuficientes de caracteres";
            }                    
            if (maiusculas.Matches(palavra_passe).Count < min_maiusculas)
            {
                situacao = "faltam caracteres maiusculas";
            }
            if (minusculas.Matches(palavra_passe).Count < min_minusculas)
            {
                situacao = "faltam caracteres minusculos";
            }
            if (algarismos.Matches(palavra_passe).Count < min_algarismos)
            {
                situacao = "faltam numeros";
            }
            if (especiais.Matches(palavra_passe).Count < min_especiais)
            {
                situacao = "faltam caracteres especiais";
            }
            if (plica.Matches(palavra_passe).Count > 0)
            {
                situacao = "o caractere plica \" ' \" não pode ser usado";
            }

            return situacao;
            
        }

    }
}