<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inserir_utilizador.aspx.cs" Inherits="site.inserir_utilizador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Utilizador:<asp:TextBox ID="tb_utilizador" runat="server" Width="367px"></asp:TextBox>
            <br />
            <br />
            palavra-passe:
            <asp:TextBox ID="tb_passe" runat="server" Width="331px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btn_inserir" runat="server" OnClick="btn_inserir_Click" Text="Inserir" />
            <br />
            <br />
        </div>
        <asp:Label ID="lbl_mensagem" runat="server"></asp:Label>
    </form>
</body>
</html>
