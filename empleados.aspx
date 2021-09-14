<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="empleados.aspx.cs" Inherits="pr_web_umg_2021.empleados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
    <asp:Label ID="lbl_codigo" runat="server" Text="Codigo" CssClass="badge" Font-Bold="True" Font-Size="Medium"></asp:Label>
    <asp:TextBox ID="txt_codigo" runat="server" CssClass="form-control" placeholder="Ejemplo: E001" Width="576px"></asp:TextBox>

    <asp:Label ID="lbl_nombres" runat="server" Text="Nombres" CssClass="badge" Font-Bold="True" Font-Size="Medium"></asp:Label>
    <asp:TextBox ID="txt_nombres" runat="server" CssClass="form-control" placeholder="Ejemplo: Nombre1 Nombre 2" Width="575px"></asp:TextBox>

    <asp:Label ID="lbl_apellidos" runat="server" Text="Apellidos" CssClass="badge" Font-Bold="True" Font-Size="Medium"></asp:Label>
    <asp:TextBox ID="txt_apellidos" runat="server" CssClass="form-control" placeholder="Ejemplo: Apellido 1 Apellido 2" Width="576px"></asp:TextBox>

    <asp:Label ID="lbl_direccion" runat="server" Text="Direccion" CssClass="badge" Font-Bold="True" Font-Size="Medium"></asp:Label>
    <asp:TextBox ID="txt_direccion" runat="server" CssClass="form-control" placeholder="Ejemplo: Calle Avenida lugar location" Width="574px"></asp:TextBox>

    <asp:Label ID="lbl_telefono" runat="server" Text="Telefono" CssClass="badge" Font-Bold="True" Font-Size="Medium"></asp:Label>
    <asp:TextBox ID="txt_telefono" runat="server" CssClass="form-control" placeholder="Ejemplo: 4528-8595" Width="573px"></asp:TextBox>

    <asp:Label ID="lbl_fn" runat="server" Text="Fecha de Nacimiento" CssClass="badge" Font-Bold="True" Font-Size="Medium"></asp:Label>
    <asp:TextBox ID="txt_fn" runat="server" CssClass="form-control" placeholder="Ejemplo: E001" Width="575px" TextMode="Date"></asp:TextBox>

    <asp:Label ID="lbl_puesto" runat="server" Text="Puesto" CssClass="badge" Font-Bold="True" Font-Size="Medium"></asp:Label>
    <asp:DropDownList ID="drop_puesto" runat="server" CssClass="form-control" Width="602px"></asp:DropDownList>

    <br />
    
        <asp:Button ID="btn_agregar" runat="server" Text="Agregar" CssClass="btn btn-info btn-lg" OnClick="btn_agregar_Click" />
        <asp:Button ID="btn_modificar" runat="server" Text="Modificar" CssClass="btn btn-success btn-lg" OnClick="btn_modificar_Click"  />

        <br />
        <br />
        <asp:GridView ID="grid_empleados" runat="server" AutoGenerateColumns="False" CssClass="table-condensed" DataKeyNames="id,id_puesto" OnSelectedIndexChanged="grid_empleados_SelectedIndexChanged" OnRowDeleting="grid_empleados_RowDeleting" Width="1006px" >  
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="btn_ver" runat="server" CausesValidation="False" CommandName="Select" Text="Ver" CssClass="btn btn-info" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="btn_eliminar" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" CssClass="btn btn-danger " OnClientClick="javascript:if(!confirm('¿Desea Eliminar?'))return false" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="codigo" HeaderText="Código" />
                <asp:BoundField DataField="nombres" HeaderText="Nombres" />
                <asp:BoundField DataField="apellidos" HeaderText="Apellidos" />
                <asp:BoundField DataField="direccion" HeaderText="Dirección" />
                <asp:BoundField DataField="telefono" HeaderText="Teléfono" />
                <asp:BoundField DataField="fecha_nacimiento" DataFormatString="{0:d}" HeaderText="Fecha De Nacimiento" />
                <asp:BoundField DataField="puesto" HeaderText="Puesto" />
            </Columns>
            <EmptyDataTemplate>
                &quot;Sin Datos&quot;
            </EmptyDataTemplate>
        </asp:GridView>

        </div>
</asp:Content>
 