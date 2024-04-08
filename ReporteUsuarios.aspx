<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReporteUsuarios.aspx.cs" Inherits="Proyecto2.ReporteUsuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reporte de Usuarios - Veterinaria UPI</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
</head>
<body>
    <div class="container mt-5">
        <h2>Reporte de Usuarios</h2>
        <form runat="server">
            <asp:GridView ID="gvUsuarios" runat="server" CssClass="table table-striped" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="Login_Usuario" HeaderText="Usuario" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                </Columns>
            </asp:GridView>
        </form>
    </div>
</body>
</html>
