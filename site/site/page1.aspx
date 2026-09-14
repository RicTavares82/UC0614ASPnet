<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="page1.aspx.cs" Inherits="site.page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Nome:</div>
        <p>
            <asp:TextBox ID="tb_nome" runat="server" Width="452px"></asp:TextBox>
        </p>
        <asp:Button ID="btn_mostrar" runat="server" Text="MOSTRAR" OnClick="btn_mostrar_Click" />
        <p>
           <h1><asp:Label ID="lbl_mensagem" runat="server" Text="Label"></asp:Label></h1>
        </p>
        <p>
            Data Nascimento
            <asp:TextBox ID="txb_data" runat="server" TextMode="Date"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            Regime:</p>
        <p style="width: 153px">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>noturno</asp:ListItem>
                <asp:ListItem>diurno</asp:ListItem>
            </asp:RadioButtonList>
        </p>
        <p>
            hobbies:</p>
        <p>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                <asp:ListItem>pesca</asp:ListItem>
                <asp:ListItem>running</asp:ListItem>
                <asp:ListItem>leitura</asp:ListItem>
            </asp:CheckBoxList>
        </p>
        <p>
            Curso:</p>
        <p>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>redes</asp:ListItem>
                <asp:ListItem>mecatronic</asp:ListItem>
                <asp:ListItem>electronica</asp:ListItem>
            </asp:DropDownList>
        </p>
    </form>
</body>
</html>
