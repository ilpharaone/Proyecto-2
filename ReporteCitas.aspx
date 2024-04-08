<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReporteCitas.aspx.cs" Inherits="Proyecto2.ReporteCitas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reporte de Citas - Veterinaria UPI</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
</head>
<body>
    <div class="container mt-5">
        <h2>Reporte de Control de Citas</h2>
        <form runat="server">
            <asp:GridView ID="gvCitas" runat="server" CssClass="table table-striped" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="Nombre_Mascota" HeaderText="Nombre Mascota" />
                    <asp:BoundField DataField="Proxima_fecha" HeaderText="Próxima Fecha" DataFormatString="{0:dd/MM/yyyy}" />
                    <asp:BoundField DataField="Medico_Asignado" HeaderText="Médico Asignado" />
                </Columns>
            </asp:GridView>
        </form>
    </div>
</body>
</html>
