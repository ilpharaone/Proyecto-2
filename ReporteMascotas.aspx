<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReporteMascotas.aspx.cs" Inherits="Proyecto2.ReporteMascotas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reporte de Mascotas - Veterinaria UPI</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
</head>
<body>
    <div class="container mt-5">
        <h2>Reporte de Mascotas</h2>
        <form runat="server">
            <asp:GridView ID="gvMascotas" runat="server" CssClass="table table-striped" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="nombre_mascota" HeaderText="Nombre" />
                    <asp:BoundField DataField="tipo_mascota" HeaderText="Tipo" />
                    <asp:BoundField DataField="comida_favorita" HeaderText="Comida Favorita" />
                </Columns>
            </asp:GridView>
        </form>
    </div>
</body>
</html>
