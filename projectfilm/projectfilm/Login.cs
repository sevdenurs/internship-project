using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
/*
namespace projectfilm
{
    public partial class form_giris : Form
    {
        static string connectionString = "Data Source=DESKTOP-R37Q7E8\\SQLEXPRESS;Initial Catalog=FILMLER_DB;Integrated Security=True";

        public form_giris()
        {
            InitializeComponent();
        }

        private void btnkullanici_Click(object sender, EventArgs e)
        {
            Dictionary<string, object> parameters = new Dictionary<string, object>();
            SqlHelper sqlhelp = new SqlHelper(form_giris.connectionString);
            parameters.Add("@kullanici_nickname",txtkullanici_adi.Text);
            parameters.Add("@passwords", txtkullanici_sifre.Text);
        }

        private void btnadmin_Click(object sender, EventArgs e)
        {
            Dictionary<string, object> parameters = new Dictionary<string, object>();

            SqlHelper sqlhelp7= new SqlHelper(form_giris.connectionString);
            parameters.Add("@calisan_nickname", txtadmin_ad.Text);
            parameters.Add("@calisan_passwords",txtadmin_sifre.Text);

            if (sqlhelp7.("sp_Adminikontrol", parameters))
            {
                FilmlerListesi form = new FilmlerListesi();

                form.Show();
            }
            else
            {
                MessageBox.Show("giris basarili");
            }
        }
    }
} 
*/