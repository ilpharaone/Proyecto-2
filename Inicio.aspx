<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Proyecto2.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inicio - Veterinaria UPI</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
        }
        h2 {
            text-align: center;
            color: #007bff;
            margin-bottom: 30px;
        }
        .nav-link {
            color: #007bff !important;
            font-weight: bold;
        }
        .nav-link:hover {
            color: #0056b3 !important;
        }
        .dropdown-menu {
            background-color: #f8f9fa;
            border: none;
        }
        .dropdown-item {
            color: #343a40 !important;
            font-weight: bold;
        }
        .dropdown-item:hover {
            background-color: #dee2e6 !important;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Bienvenido a la Veterinaria UPI</h2>
        <!-- Aquí podría ir la imagen representativa de la veterinaria -->
    </div>
    <div class="container">
        <ul class="nav nav-pills justify-content-center">
            <li class="nav-item">
                <a class="nav-link" href="#">Inicio</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                    Reportes
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="ReporteUsuarios.aspx">Reporte de Usuarios</a>
                    <a class="dropdown-item" href="ReporteMascotas.aspx">Reporte de Mascotas</a>
                    <a class="dropdown-item" href="ReporteCitas.aspx">Reporte de Control de Citas</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Salir</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Login.aspx">Login</a>
            </li>
        </ul>
    </div>

    <!-- JavaScript necesario para el funcionamiento del menú desplegable -->
    <!-- <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script> -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@1.16.1/dist/umd/popper.min.js"></script>
    <!-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> -->
    
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
