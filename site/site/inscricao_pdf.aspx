<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inscricao_pdf.aspx.cs" Inherits="site.inscricao" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            <asp:Label ID="lb_numero" runat="server" Text="Numero:"></asp:Label>
&nbsp;
            <asp:TextBox ID="txb_numero" runat="server" OnTextChanged="txb_numero_TextChanged"></asp:TextBox>
        </p>
        <br />
        <br />
        <asp:Label ID="lb_nome" runat="server" Text="Nome:"></asp:Label>
&nbsp;
        <asp:TextBox ID="txb_nome" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Label ID="lb_rua" runat="server" Text="Rua:"></asp:Label>
&nbsp;
        <asp:TextBox ID="txb_rua" runat="server"></asp:TextBox>
        <br />
        <p>
            <asp:Button ID="btn_gerarPDF" runat="server" OnClick="btn_gerarPDF_Click" Text="Gerar" />
        </p>
    </form>
</body>
</html>
