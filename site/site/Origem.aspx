<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Origem.aspx.cs" Inherits="site.Origem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;<asp:Label ID="lbl_nome" runat="server" Text="Nome:"></asp:Label>
            <asp:TextBox ID="tb_nome" runat="server" Width="411px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lbl_morada" runat="server" Text="Morada:"></asp:Label>
            <asp:TextBox ID="tb_morada" runat="server" Width="401px"></asp:TextBox>
        </div>
        <p>
            <asp:Button ID="btn_enviar" runat="server" Height="42px" OnClick="btn_enviar_Click" Text="Enviar" Width="156px" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Envio pelo URL"></asp:Label>
        </p>
    </form>
</body>
</html>
