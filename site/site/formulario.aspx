<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formulario.aspx.cs" Inherits="site.formulario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Nome:
            <asp:TextBox ID="txb_nome" runat="server" Width="423px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txb_nome" ErrorMessage="Tem de inserir o nome!!!" ForeColor="#CC3300">*</asp:RequiredFieldValidator>
        </div>
        <p>
            Morada:<asp:TextBox ID="txb_morada" runat="server" TextMode="MultiLine" Width="385px"></asp:TextBox>
        </p>
        <p>
            Data Nacimento:
            <asp:TextBox ID="txb_date" runat="server" TextMode="Date"></asp:TextBox>
        </p>
        <p>
            Email:
            <asp:TextBox ID="txb_email" runat="server" TextMode="Email" Width="447px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txb_email" ErrorMessage="tens de preencher o email" ForeColor="#CC3300">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txb_email" ErrorMessage="email incorreto!!" ForeColor="#66FF33" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </p>
        <asp:Button ID="btn_submeter" runat="server" OnClick="btn_submeter_Click" Text="submeter" />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC3300" />
    </form>
</body>
</html>
