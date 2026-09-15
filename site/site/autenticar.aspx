<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="autenticar.aspx.cs" Inherits="site.autenticar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            utilizador:
            <asp:TextBox ID="tb_utilizador" runat="server" OnTextChanged="tb_utilizador_TextChanged"></asp:TextBox>
            <br />
            <br />
            Pass: <asp:TextBox ID="tb_pass" runat="server"></asp:TextBox>
        </div>
        <p>
            <asp:Button ID="btn_entrar" runat="server" OnClick="btn_entrar_Click" Text="entrar" />
        </p>
        <asp:Label ID="lbl_mensagem" runat="server"></asp:Label>
    </form>
</body>
</html>
