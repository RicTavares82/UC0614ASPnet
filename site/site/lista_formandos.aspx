<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lista_formandos.aspx.cs" Inherits="site.lista_formandos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Lista de Formandos</h1>
        <p>&nbsp;</p>
        <p>Curso:
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="curso" DataValueField="curso" Height="28px" Width="357px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:atec0226ConnectionString %>" SelectCommand="SELECT DISTINCT [curso] FROM [formandos]"></asp:SqlDataSource>
        </p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="num" DataSourceID="SqlDataSource1" Height="224px" PageSize="5" Width="844px">
            <Columns>
                <asp:BoundField DataField="num" HeaderText="Nº" InsertVisible="False" ReadOnly="True" SortExpression="num" />
                <asp:BoundField DataField="nome" HeaderText="Nome" SortExpression="nome" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                <asp:BoundField DataField="curso" HeaderText="Curso" SortExpression="curso" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Image" CancelImageUrl="~/icons/cancelar.png" DeleteImageUrl="~/icons/apagar.png" EditImageUrl="~/icons/editar.png" UpdateImageUrl="~/icons/confirmar.png" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:atec0226ConnectionString %>" DeleteCommand="DELETE FROM [formandos] WHERE [num] = @num" InsertCommand="INSERT INTO [formandos] ([nome], [email], [curso]) VALUES (@nome, @email, @curso)" SelectCommand="SELECT * FROM [formandos] WHERE ([curso] = @curso)" UpdateCommand="UPDATE [formandos] SET [nome] = @nome, [email] = @email, [curso] = @curso WHERE [num] = @num">
            <DeleteParameters>
                <asp:Parameter Name="num" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nome" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="curso" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="curso" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="nome" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="curso" Type="String" />
                <asp:Parameter Name="num" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    </form>
</body>
</html>
