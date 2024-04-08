using System;
using System.Data;
using System.Data.SqlClient;

namespace Proyecto2
{
    public partial class ReporteCitas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarReporteCitas();
            }
        }

        private void CargarReporteCitas()
        {
            string connectionString = "Data Source=LAPTOP_ASUS\\SQLEXPRESS01;Initial Catalog=Veterinaria;Integrated Security=True";
            string query = "SELECT m.Nombre_Mascota, c.Proxima_fecha, c.Medico_Asignado FROM Citas c INNER JOIN Mascota m ON c.ID_Mascota = m.ID_Mascota WHERE c.Proxima_fecha >= GETDATE() ORDER BY c.Proxima_fecha";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);

                gvCitas.DataSource = dataTable;
                gvCitas.DataBind();
            }
        }
    }
}
