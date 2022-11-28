<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="fusuario.aspx.cs" Inherits="semana14_proyectoWeb.fusuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p class="text-center">
        INGRESO DE USUARIOS</p>
    <table align="center" style="width: 60%; border-color: #33CCFF; background-color: #CCCCFF">
        <tr>
            <td style="height: 25px; width: 293px">Usuario<asp:TextBox ID="txtusuario" runat="server" style="margin-left: 57" Width="155px"></asp:TextBox>
            </td>
            <td style="width: 330px; height: 25px">Usuarios del sistema</td>
        </tr>
        <tr>
            <td style="width: 293px">&nbsp;</td>
            <td style="width: 330px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 293px">Clave<asp:TextBox ID="txtclave" runat="server" style="margin-left: 57" Width="155px"></asp:TextBox>
            </td>
            <td rowspan="10" style="width: 330px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idusuarios" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="idusuarios" HeaderText="idusuarios" InsertVisible="False" ReadOnly="True" SortExpression="idusuarios" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Clave" HeaderText="Clave" SortExpression="Clave" />
                        <asp:BoundField DataField="Nivel" HeaderText="Nivel" SortExpression="Nivel" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:loginConnectionString %>" SelectCommand="SELECT * FROM [usuarios]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 293px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 293px">Nivel<asp:DropDownList ID="lstnivel" runat="server" DataSourceID="SqlDataSource2" DataTextField="Nivel" DataValueField="Nivel" Height="16px" Width="102px">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
        </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:loginConnectionString %>" SelectCommand="SELECT [Nivel] FROM [usuarios]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 293px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 293px">
                <asp:Button ID="Bnuevo" runat="server" OnClick="Button1_Click" Text="Nuevo" />
                <asp:Button ID="bmodificar" runat="server" OnClick="bmodificar_Click" Text="Modificar" />
                <asp:Button ID="bactualizar" runat="server" OnClick="bmodificar_Click" Text="Actualizar" />
            </td>
        </tr>
        <tr>
            <td style="width: 293px">
                <asp:Button ID="beliminar" runat="server" OnClick="beliminar_Click" Text="Eliminar" />
                <asp:Button ID="bguardar" runat="server" OnClick="bguardar_Click" Text="Guardar" />
            </td>
        </tr>
        <tr>
            <td style="width: 293px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 293px">Buscar por código de usuario</td>
        </tr>
        <tr>
            <td style="width: 293px"> <asp:TextBox ID="txtbuscar" runat="server" style="margin-left : 57" Width="91px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 293px">
                <asp:Button ID="bbuscar" runat="server" OnClick="bbuscar_Click" Text="Buscar" />
            </td>
        </tr>
        <tr>
            <td style="width: 293px">&nbsp;</td>
            <td style="width: 330px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 293px">Usuario modificado con éxito</td>
            <td style="width: 330px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 293px">
                <asp:Button ID="bsalir" runat="server" OnClick="bbuscar_Click" Text="Salir" />
            </td>
            <td style="width: 330px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 293px">&nbsp;</td>
            <td style="width: 330px">&nbsp;</td>
        </tr>
    </table>
    <p class="text-left">
        &nbsp;</p>
    <p>
        &nbsp;</p>
<p>
    &nbsp;</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
