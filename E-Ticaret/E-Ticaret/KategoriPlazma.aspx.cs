using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace E_Ticaret
{
    public partial class KategoriPlazma : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                VeriyiBagla();
        }

        public void VeriyiBagla()
        {
            // Baglanti nesnemiz:
            SqlConnection conn;
            SqlCommand comm;
            SqlDataReader reader;
            string connectionString = ConfigurationManager.ConnectionStrings["ETticaretConnectionString"].ConnectionString;
            conn = new SqlConnection(connectionString);

            comm = new SqlCommand("SELECT ürün.Fiyat, ürün.Ad, ürün.Resim, ürün.ürünID  FROM ürün WHERE ürün.KategoriID=4", conn);
            conn.Open();
            reader = comm.ExecuteReader();
            DataList1.DataSourceID = null;
            DataList1.DataSource = reader;
            DataList1.DataBind();
            reader.Close();
            conn.Close();


        }

        
        
    }
}