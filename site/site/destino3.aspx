<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="destino3.aspx.cs" Inherits="site.destino3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <div>
        <div>
            <br />
            <asp:Label ID="lbl_nome" runat="server" Text="Label"></asp:Label>
        </div>
            <br />
            <br />
            <asp:Label ID="lbl_morada" runat="server" Text="Label"></asp:Label>
        </div>
            <br />
            <asp:Button ID="btn_terminar" runat="server" OnClick="btn_terminar_Click" Text="logout" />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="recebe pela variavel de sessão"></asp:Label>
        </div>
    </form>
</body>
</html>
