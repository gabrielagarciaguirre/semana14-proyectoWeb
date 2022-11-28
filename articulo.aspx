<% @ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="articulo.aspx.cs" Inherits="semana14_proyectoWeb.articulo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <p>
         <center style="text-align: center">
             <strong>LISTADO DE ARTICULOS POR CATEGORIA Y PROEVEDOR
    </strong>
    </p>
    <p>
        
        SELECCIONE CATEGORIA</p>
   
    <p>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Tornillos</asp:ListItem>
            <asp:ListItem>Puertas</asp:ListItem>
            <asp:ListItem>Laminas</asp:ListItem>
            <asp:ListItem>Clavos</asp:ListItem>
            <asp:ListItem>Motores</asp:ListItem>
        </asp:DropDownList>
        
</p>

            <p>
                SELECCIONE PROVEDOR</p>
    <p>
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>Proveedor</asp:ListItem>
            <asp:ListItem>Alministrador</asp:ListItem>
            <asp:ListItem>Supervisor</asp:ListItem>
            <asp:ListItem>Empleados</asp:ListItem>
        </asp:DropDownList>
            </p>
    <p>
        ARTICULOS POR PROVEEDOR
         <center>
    </p>
</asp:Content>
