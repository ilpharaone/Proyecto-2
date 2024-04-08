using System;
using System.Data.SqlClient;

namespace Proyecto2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int nada = 0;
            if (nada != 0)
                return;
           
            if (IsPostBack)
            {
           
                string usuario = Request.Form["txtUsuario"];
                string contrasena = Request.Form["txtContrasena"];

               
                if (ValidarCredenciales(usuario, contrasena))
                {
                    Response.Write("<script>alert('Bienvenido!');</script>");
                    Response.Redirect("Inicio.aspx");
                }
                else
                {
                    
                    Response.Write("<script>alert('Usuario o contraseña incorrectos');</script>");
                }
            }
        }

        private bool ValidarCredenciales(string usuario, string contrasena)
        {
         
            string connectionString = "Data Source=LAPTOP_ASUS\\SQLEXPRESS01;Initial Catalog=Veterinaria;Integrated Security=True";


            string query = "SELECT COUNT(*) FROM usuario WHERE login_usuario = @Usuario AND clave = @Contraseña";

       
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                  
                    command.Parameters.AddWithValue("@Usuario", usuario);
                    command.Parameters.AddWithValue("@Contraseña", contrasena);

                    
                    connection.Open();

                  
                    int count = (int)command.ExecuteScalar();

                    return count > 0;
                }
            }
        }
    }
}

