<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="valida_pw_segura.aspx.cs" Inherits="site.valida_pw_segura" %>

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
        <asp:Button ID="btn_validar" runat="server" OnClick="btn_validar_Click" Text="validar" />
&nbsp;
        <br />
        <br />
        <br />
        <asp:Label ID="lbl_mensagem" runat="server" Text="Label"></asp:Label>
        <br />
    </form>
</body>
</html>
