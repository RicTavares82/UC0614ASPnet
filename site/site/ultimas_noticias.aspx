<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ultimas_noticias.aspx.cs" Inherits="site.ultimas_noticias" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Últimas Notícias</h1>
            <br />
            <br />
            <br />
            <asp:Xml ID="Xml1" runat="server" TransformSource="~/XSLTFile1.xslt"></asp:Xml>



            <link href="css/noticias_estilos.css" rel="stylesheet" />



            <br />
        </div>
    </form>
</body>
</html>
