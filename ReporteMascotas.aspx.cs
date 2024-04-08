using System;
using System.Data;
using System.Data.SqlClient;

namespace Proyecto2
{
    public partial class ReporteMascotas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarReporteMascotas();
            }
        }

        private void CargarReporteMascotas()
        {
            string connectionString = "Data Source=LAPTOP_ASUS\\SQLEXPRESS01;Initial Catalog=Veterinaria;Integrated Security=True";
            string query = "SELECT nombre_mascota, tipo_mascota, comida_favorita FROM Mascota";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);

                gvMascotas.DataSource = dataTable;
                gvMascotas.DataBind();
            }
        }
    }
}
