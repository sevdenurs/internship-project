using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace projectfilm
{
    public partial class Form2 : Form
    {
        static string connectionString = "Data Source=DESKTOP-R37Q7E8\\SQLEXPRESS;Initial Catalog=FILMLER_DB;Integrated Security=True";

        public Form2()
        {
            InitializeComponent();
        }

        

        private void Form2_Load_1(object sender, EventArgs e)
        {
            SqlHelper sqlhelp3 = new SqlHelper(connectionString);
            DataTable dataTable = sqlhelp3.GetTable("sp_GetTurSorgulama");

            cb_turler.ValueMember = "id";
            cb_turler.DisplayMember = "text";
            cb_turler.DataSource = dataTable;

            SqlHelper sqlhelp4 = new SqlHelper(connectionString);
            DataTable dataTable1 = sqlhelp4.GetTable("sp_GetFilmAyarlanabilir");
            dg_tablo2.DataSource = dataTable1;

            SqlHelper sqlhelp5 = new SqlHelper(connectionString);
            DataTable dataTable2 = sqlhelp5.GetTable("sp_GetDilSorgulama");

            cb_dil.ValueMember = "id";
            cb_dil.DisplayMember = "text";
            cb_dil.DataSource = dataTable2;


            SqlHelper sqlhelp7 = new SqlHelper(connectionString);
            DataTable dataTable3 = sqlhelp7.GetTable("sp_GetYonetmenSorgulama");

            cb_yonetmen.ValueMember = "id";
            cb_yonetmen.DisplayMember = "text";
            cb_yonetmen.DisplayMember = "text";
            cb_yonetmen.DataSource = dataTable3;



        }

        private void cb_dil_SelectedIndexChanged(object sender, EventArgs e)
        {

            SqlHelper sqlhelp5 = new SqlHelper(connectionString);
            DataTable dataTable1 = sqlhelp5.GetTable("sp_GetFilmAyarlanabilir");
        }

        private void btn_ara_Click(object sender, EventArgs e)
        {
            Dictionary<string,object> parameters= new Dictionary<string,object>();
            parameters.Add("@tur_id", cb_turler.SelectedValue);
            parameters.Add("@dil_id", cb_dil.SelectedValue);
            parameters.Add("@yonetmen_id", cb_yonetmen.SelectedValue);
         //   parameters.Add("@oyuncu_id",cb_oyuncu.SelectedValue);

            SqlHelper sqlhelper6 = new SqlHelper(connectionString);
            DataTable dt_filtre = new DataTable();
            dt_filtre = sqlhelper6.GetTable("sp_GetFilmAyarlanabilir", parameters);

            dg_tablo2.DataSource = dt_filtre;

        }

        private void cb_yonetmen_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
