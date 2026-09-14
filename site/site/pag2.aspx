<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pag2.aspx.cs" Inherits="site.pag2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Curso:
            <asp:DropDownList ID="ddl_curso" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_curso_SelectedIndexChanged">
                <asp:ListItem>-------</asp:ListItem>
                <asp:ListItem>cet tpsi</asp:ListItem>
                <asp:ListItem>cet redes</asp:ListItem>
                <asp:ListItem>cet mecratronica</asp:ListItem>
            </asp:DropDownList>
        </div>
        <p>
            Modulo: <asp:DropDownList ID="ddl_modulo" runat="server">
            </asp:DropDownList>
        </p>
    </form>
</body>
</html>
