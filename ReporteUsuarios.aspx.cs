using System;
using System.Data;
using System.Data.SqlClient;

namespace Proyecto2
{
    public partial class ReporteUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarReporteUsuarios();
            }
        }

        private void CargarReporteUsuarios()
        {
            string connectionString = "Data Source=LAPTOP_ASUS\\SQLEXPRESS01;Initial Catalog=Veterinaria;Integrated Security=True";
            string query = "SELECT Login_Usuario, Nombre FROM Usuario";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);

                gvUsuarios.DataSource = dataTable;
                gvUsuarios.DataBind();
            }
        }
    }
}
