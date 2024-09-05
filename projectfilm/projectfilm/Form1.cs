using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace projectfilm
{
    public partial class FilmlerListesi : Form
    {
        static string connectionString = "Data Source=DESKTOP-R37Q7E8\\SQLEXPRESS;Initial Catalog=FILMLER_DB;Integrated Security=True";

        public FilmlerListesi()
        {
            InitializeComponent();
        }

        private void btnFilmEkle_Click(object sender, EventArgs e)
        {
            try
            {
                Dictionary<string, object> film = new Dictionary<string, object>
                {
                    { "@film_ad", txtboxFilm.Text },
                    { "@puan", float.Parse(txtboxPuan.Text) },
                    { "@sure", Convert.ToInt32(txtboxSure.Text) },
                    { "@yil", DateTime.Parse(txtboxYil.Text) },
                    { "@tur_id", txtboxfilmtur.Text },
                    { "@sirket_id", txtBoxsirket.Text },
                    { "@oyuncu_id", txtBoxoyuncu.Text },
                    { "@yonetmen_id", txtBoxyonetmen.Text },
                    { "@senarist_id", txtBoxsenarist.Text },
                    { "@yapimci_id", txtBoxyapimci.Text },
                    { "@dil_id", txtBoxdil.Text }

                };

                SqlHelper sqlhelp = new SqlHelper(connectionString);
                sqlhelp.ExecuteNonQuery("sp_InsertFilmHepsi", film);

                MessageBox.Show("Film başarıyla eklendi.", "Başarılı", MessageBoxButtons.OK, MessageBoxIcon.Information);
                LoadFilms();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Hata: " + ex.Message, "Hata", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void FilmlerListesi_Load(object sender, EventArgs e)
        {
            LoadFilms();
        }

        private void LoadFilms()
        {
            SqlHelper sqlhelp = new SqlHelper(connectionString);
            DataTable dataTable = sqlhelp.GetTable("sp_GetFilmSorgulama");
            dg_tablo.DataSource = dataTable;
        }

        private void btnFilmSil_Click(object sender, EventArgs e)
        {
            if (dg_tablo.SelectedRows.Count > 0)
            {
                string film_id = dg_tablo.SelectedRows[0].Cells["film_id"].Value.ToString();

                Dictionary<string, object> parameters = new Dictionary<string, object>
                {
                    { "@film_id", film_id }
                };

                SqlHelper sqlhelp = new SqlHelper(connectionString);
                try
                {
                    sqlhelp.ExecuteNonQuery("sp_DeleteFilm", parameters);
                    MessageBox.Show("Film başarıyla silindi.", "Başarılı", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    LoadFilms();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Hata: " + ex.Message, "Hata", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            else
            {
                MessageBox.Show("Lütfen silmek istediğiniz filmi seçin.", "Uyarı", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void dg_tablo_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                DataGridViewRow row = this.dg_tablo.Rows[e.RowIndex];

                txtboxFilm.Text = row.Cells["film_ad"].Value.ToString();
                txtboxPuan.Text = row.Cells["puan"].Value.ToString();
                txtboxSure.Text = row.Cells["sure"].Value.ToString();
                txtboxfilmtur.Text = row.Cells["tur"].Value.ToString();
                txtBoxsirket.Text = row.Cells["sirket"].Value.ToString();
                txtBoxoyuncu.Text = row.Cells["oyuncu"].Value.ToString();
                txtboxYil.Text = row.Cells["yil"].Value.ToString();
                txtBoxsenarist.Text = row.Cells["senarist"].Value.ToString();
                txtBoxyapimci.Text = row.Cells["yapimci"].Value.ToString();
                txtBoxyonetmen.Text = row.Cells["yonetmen"].Value.ToString();
                txtBoxdil.Text = row.Cells["dil"].Value.ToString();

            }
        }

        private void btnFilmGuncelle_Click(object sender, EventArgs e)
        {
            if (dg_tablo.SelectedRows.Count > 0)
            {
                try
                {
                    string film_id = dg_tablo.SelectedRows[0].Cells["film_id"].Value.ToString();

                    Dictionary<string, object> parameters = new Dictionary<string, object>
                    {
                        { "@film_id", film_id },
                        { "@film_ad", txtboxFilm.Text },
                        { "@puan", txtboxPuan.Text },
                        { "@sure", txtboxSure.Text },
                        { "@yil", txtboxYil.Text },
                        { "@sirket_id", txtBoxsirket.Text },
                        { "@tur_id", txtboxfilmtur.Text },
                        { "@oyuncu_id", txtBoxoyuncu.Text },
                        { "@yapimci_id", txtBoxyapimci.Text },
                        { "@senarist_id", txtBoxsenarist.Text },
                        {"@dil_id",txtBoxdil.Text },
                    };

                    SqlHelper sqlhelp = new SqlHelper(connectionString);
                    sqlhelp.ExecuteNonQuery("sp_UpdateFilm", parameters);
                    MessageBox.Show("Film başarıyla güncellendi.", "Başarılı", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    LoadFilms();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Hata: " + ex.Message, "Hata", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            else
            {
                MessageBox.Show("Lütfen güncellemek istediğiniz filmi seçin.", "Uyarı", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void FilmlerListesi_Load_1(object sender, EventArgs e)
        {
            LoadFilms();
        }
    }
}
