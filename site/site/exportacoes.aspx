<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="exportacoes.aspx.cs" Inherits="site.exportacoes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Nome:<asp:TextBox ID="tb_nome" runat="server" Width="370px"></asp:TextBox>
            <br />
            <br />
            Morada:<asp:TextBox ID="tb_morada" runat="server"></asp:TextBox>
            <br />
            <br />
        </div>
        <asp:Button ID="btn_excel" runat="server" OnClick="btn_excel_Click" Text="Excel" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_word" runat="server" OnClick="btn_word_Click" Text="Word" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_xml" runat="server" OnClick="btn_xml_Click" Text="Xml" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_pdf" runat="server" OnClick="btn_pdf_Click" Text="PDF" />
    </form>
</body>
</html>
