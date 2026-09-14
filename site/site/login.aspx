<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="site.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lbl_utilizador" runat="server" Text="Utilizador:"></asp:Label>
            <asp:TextBox ID="tb_utilizador" runat="server" Width="265px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="lbl_pass" runat="server" Text="Password: "></asp:Label>
            <asp:TextBox ID="tb_pass" runat="server" TextMode="Password" Width="275px"></asp:TextBox>
            <br />
            <br />
        </div>
        <asp:Button ID="btn_entrar" runat="server" OnClick="btn_entrar_Click" Text="Entrar" />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="lbl_mensagem" runat="server" ForeColor="#FF3300" Text="utilizador ou pass errados" Visible="False"></asp:Label>
    </form>
</body>
</html>
