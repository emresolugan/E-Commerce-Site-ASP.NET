using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.XPath;
using System.Xml.Linq;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;

namespace E_Ticaret
{
    public partial class ÖdemeBilgi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
               tutar.Text = rd[0].ToString();
            }
            conn.Close();       
          
            ddlMonth.Items.Add("1");
            ddlMonth.Items.Add("2");
            ddlMonth.Items.Add("3");
            ddlMonth.Items.Add("4");
            ddlMonth.Items.Add("5");
            ddlMonth.Items.Add("6");
            ddlMonth.Items.Add("7");
            ddlMonth.Items.Add("8");
            ddlMonth.Items.Add("9");
            ddlMonth.Items.Add("10");
            ddlMonth.Items.Add("11");
            ddlMonth.Items.Add("12");
            ddlYear.Items.Add("2015");
            ddlYear.Items.Add("2016");
            ddlYear.Items.Add("2017");
            ddlYear.Items.Add("2018");
            ddlYear.Items.Add("2019");
            ddlYear.Items.Add("2020");
            ddlYear.Items.Add("2021");
        }      
     
        protected void btnCheckout_Click(object sender,EventArgs e)
        {
            string dosyayolu = Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().GetName().CodeBase) + "\\Banka.xml";
            int i = 0,sayac=0;
            XmlDocument xmldoc = new XmlDocument();
            xmldoc.Load(dosyayolu);

            XmlNode secilen = xmldoc.ChildNodes[1];
            
             string [] ttar = tutar.Text.Split('.');
             string [] ttr = ttar[1].Split(' ');
                string a = ttar[0] + ttr[0];

               

            foreach (XmlNode item in secilen)
            {
                if (item.Attributes["KartNo"].Value == txtCardNumber.Text)
                {
                    ++i;

                    if (Convert.ToInt32(a) > Convert.ToInt32(item.ChildNodes[5].InnerText))
                    {
                        sayac = 1;
                        Label1.Text = "Üzgünüz bakiyeniz yetersiz.İşleminiz Geçersiz...";
                        break;
                    }
                    if (item.ChildNodes[0].InnerText == txtCardName.Text)
                    {
                        ++i;
                        if (item.ChildNodes[1].InnerText == ddlMonth.Text)
                        {
                            ++i;
                            if (item.ChildNodes[2].InnerText == ddlYear.Text)
                            {
                                ++i;
                                if (item.ChildNodes[3].InnerText == txtCCV.Text)
                                {
                                    ++i;
                                    if (item.ChildNodes[4].InnerText == telefon.Text)
                                    {
                                        ++i;
                                        Label1.Text = "İşleminiz Onaylandı...";
                                    }
                                }
                            }
                        }
                    }
                }

                if(i!=6 && sayac!=1)
                { 
                    Label1.Text = "Girdiğiniz Bilgiler Yanlış.Lütfen Kontrol Ediniz...";
                }
               

            }
        }

    }
}