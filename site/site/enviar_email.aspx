<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="enviar_email.aspx.cs" Inherits="site.enviar_email" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="De:"></asp:Label>
            <asp:TextBox ID="tb_de" runat="server" Width="419px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Para:"></asp:Label>
            <asp:TextBox ID="tb_para" runat="server" Width="407px"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <asp:Label runat="server" Text="Assunto:"></asp:Label>
            <asp:TextBox ID="tb_assunto" runat="server" Width="394px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Mensagem:"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Height="261px" TextMode="MultiLine" Width="487px"></asp:TextBox>
            <br />
            <br />
            <br />
            Anexos:<asp:FileUpload ID="FileUpload1" runat="server" Width="526px" />
            <br />
            <br />
            <br />
            <asp:Button ID="btn_enviar" runat="server" OnClick="btn_enviar_Click" Text="Enviar" />
        </div>
    </form>
</body>
</html>
