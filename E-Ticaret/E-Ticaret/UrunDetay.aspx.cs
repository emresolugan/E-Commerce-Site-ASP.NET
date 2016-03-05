using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Ticaret
{
    public partial class UrunDetay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(Request.QueryString["uid"]))
                Response.Redirect("~/Anasayfa.aspx");
            // Baglanti nesnemiz:
            SqlConnection conn;
            SqlCommand comm;
            string connectionString = ConfigurationManager.ConnectionStrings["ETticaretConnectionString"].ConnectionString;
            conn = new SqlConnection(connectionString);

            comm = new SqlCommand("SELECT ürün.Fiyat, ürün.Ad, ürün.Resim, ürün.Stok, ürün.ürünID FROM ürün WHERE ürün.ürünID=@uid", conn);
            comm.Parameters.AddWithValue("@uid", Request.QueryString["uid"]);

            conn.Open();
            SqlDataReader rd = comm.ExecuteReader();
            while (rd.Read())
            {
                LabelFiyat.Text = rd[0].ToString();
                LabelAd.Text = rd[1].ToString();
                Image1.ImageUrl = rd[2].ToString();
                LabelStok.Text = rd[3].ToString();
            }
            conn.Close();
        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {

             if (String.IsNullOrEmpty(Request.QueryString["uid"]))
                Response.Redirect("~/Anasayfa.aspx");

             Response.Redirect("ÖdemeBilgi.aspx?uid=" + Request.QueryString["uid"]);
        }
    }
}