<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cartao.aspx.cs" Inherits="site.cartao" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="numero:"></asp:Label>
        <asp:TextBox ID="txb_numero" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="nome:"></asp:Label>
        <asp:TextBox ID="txb_nome" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="curso:"></asp:Label>
        <asp:TextBox ID="txb_curso" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btn_gerar" runat="server" OnClick="btn_gerar_Click" Text="Gerar" />
    </form>
</body>
</html>
