<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="origem2.aspx.cs" Inherits="site.origem2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <div>
            <asp:Label ID="lbl_nome" runat="server" Text="Nome:"></asp:Label>
            <asp:TextBox ID="tb_nome" runat="server" Width="411px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lbl_morada" runat="server" Text="Morada:"></asp:Label>
            <asp:TextBox ID="tb_morada" runat="server" Width="401px"></asp:TextBox>
        </div>
            <p>
                <asp:Button ID="btn_enviar" runat="server" Height="42px" OnClick="btn_enviar_Click" Text="Enviar" Width="156px" />
            </p>
        </div>
        <br />
        <asp:Label ID="Label1" runat="server" Text="envio pelo lado do servidor (server transfer)"></asp:Label>
    </form>
</body>
</html>
