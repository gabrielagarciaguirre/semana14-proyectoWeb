<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="f_acceso.aspx.cs" Inherits="semana14_proyectoWeb.f_acceso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
    <table align="center" style="width: 40%; border: 1px solid #66CCFF; background-color: #CCFFCC">
        <tr>
            <td class="modal-sm" style="height: 22px; text-align: center; width: 81px">Usuario</td>
            <td class="text-center" style="height: 22px; width: 241px">
                <asp:TextBox ID="tusuario" runat="server" style="margin-left: 57" Width="155px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="height: 20px; text-align: center; width: 81px"></td>
            <td class="text-center" style="height: 20px; width: 241px">&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="text-align: center; width: 81px">Clave</td>
            <td class="text-center" style="width: 241px">
                <asp:TextBox ID="tclave" runat="server" Width="153px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 81px">&nbsp;</td>
            <td class="text-center" style="width: 241px">&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 81px">&nbsp;&nbsp;</td>
            <td class="text-center" style="width: 241px">
                <asp:Button ID="Bingresar" runat="server" OnClick="Bingresar_Click" style="margin-left: 0" Text="Ingresar al sistema" Width="159px" />
            </td>
        </tr>
    </table>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
