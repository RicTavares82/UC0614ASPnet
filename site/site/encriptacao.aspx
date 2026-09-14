<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="encriptacao.aspx.cs" Inherits="site.encriptacao" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lbl_pass" runat="server" Text="Password:  "></asp:Label>
            <asp:TextBox ID="tb_pass" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
        </div>
        <asp:Button ID="btn_encript" runat="server" OnClick="btn_encript_Click" Text="Encriptar" />
&nbsp;
        <br />
        <br />
        <br />
        <asp:Label ID="lbl_encriptado" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
&nbsp;
        <asp:Button ID="btn_descript" runat="server" OnClick="btn_descript_Click" Text="Desencriptar" />
        <br />
        <br />
        <br />
        <asp:Label ID="lbl_desencriptado" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
