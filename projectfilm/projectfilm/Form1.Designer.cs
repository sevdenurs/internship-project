namespace projectfilm
{
    partial class FilmlerListesi
    {
        /// <summary>
        ///Gerekli tasarımcı değişkeni.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///Kullanılan tüm kaynakları temizleyin.
        /// </summary>
        ///<param name="disposing">yönetilen kaynaklar dispose edilmeliyse doğru; aksi halde yanlış.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer üretilen kod

        /// <summary>
        /// Tasarımcı desteği için gerekli metot - bu metodun 
        ///içeriğini kod düzenleyici ile değiştirmeyin.
        /// </summary>
        private void InitializeComponent()
        {
            this.dg_tablo = new System.Windows.Forms.DataGridView();
            this.btnFilmEkle = new System.Windows.Forms.Button();
            this.btnFilmSil = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txtBoxdil = new System.Windows.Forms.TextBox();
            this.txtBoxyapimci = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.txtBoxsenarist = new System.Windows.Forms.TextBox();
            this.txtBoxyonetmen = new System.Windows.Forms.TextBox();
            this.txtBoxoyuncu = new System.Windows.Forms.TextBox();
            this.lbloyuncu = new System.Windows.Forms.Label();
            this.txtBoxsirket = new System.Windows.Forms.TextBox();
            this.lblfilmsirket = new System.Windows.Forms.Label();
            this.txtboxfilmtur = new System.Windows.Forms.TextBox();
            this.lblFilmTur = new System.Windows.Forms.Label();
            this.lblYil = new System.Windows.Forms.Label();
            this.txtboxYil = new System.Windows.Forms.DateTimePicker();
            this.txtboxSure = new System.Windows.Forms.TextBox();
            this.txtboxPuan = new System.Windows.Forms.TextBox();
            this.txtboxFilm = new System.Windows.Forms.TextBox();
            this.lblSure = new System.Windows.Forms.Label();
            this.lblFilmPuan = new System.Windows.Forms.Label();
            this.lblFilmAd = new System.Windows.Forms.Label();
            this.btnFilmGüncele = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dg_tablo)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // dg_tablo
            // 
            this.dg_tablo.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dg_tablo.Location = new System.Drawing.Point(790, 27);
            this.dg_tablo.Name = "dg_tablo";
            this.dg_tablo.ReadOnly = true;
            this.dg_tablo.RowHeadersWidth = 51;
            this.dg_tablo.Size = new System.Drawing.Size(497, 500);
            this.dg_tablo.TabIndex = 0;
            // 
            // btnFilmEkle
            // 
            this.btnFilmEkle.Location = new System.Drawing.Point(563, 27);
            this.btnFilmEkle.Name = "btnFilmEkle";
            this.btnFilmEkle.Size = new System.Drawing.Size(196, 60);
            this.btnFilmEkle.TabIndex = 1;
            this.btnFilmEkle.Text = "Film Ekle";
            this.btnFilmEkle.UseVisualStyleBackColor = true;
            this.btnFilmEkle.Click += new System.EventHandler(this.btnFilmEkle_Click);
            // 
            // btnFilmSil
            // 
            this.btnFilmSil.Location = new System.Drawing.Point(563, 99);
            this.btnFilmSil.Name = "btnFilmSil";
            this.btnFilmSil.Size = new System.Drawing.Size(196, 60);
            this.btnFilmSil.TabIndex = 2;
            this.btnFilmSil.Text = "Film Sil";
            this.btnFilmSil.UseVisualStyleBackColor = true;
            this.btnFilmSil.Click += new System.EventHandler(this.btnFilmSil_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.txtBoxdil);
            this.groupBox1.Controls.Add(this.txtBoxyapimci);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.txtBoxsenarist);
            this.groupBox1.Controls.Add(this.txtBoxyonetmen);
            this.groupBox1.Controls.Add(this.txtBoxoyuncu);
            this.groupBox1.Controls.Add(this.lbloyuncu);
            this.groupBox1.Controls.Add(this.txtBoxsirket);
            this.groupBox1.Controls.Add(this.lblfilmsirket);
            this.groupBox1.Controls.Add(this.txtboxfilmtur);
            this.groupBox1.Controls.Add(this.lblFilmTur);
            this.groupBox1.Controls.Add(this.lblYil);
            this.groupBox1.Controls.Add(this.txtboxYil);
            this.groupBox1.Controls.Add(this.txtboxSure);
            this.groupBox1.Controls.Add(this.txtboxPuan);
            this.groupBox1.Controls.Add(this.txtboxFilm);
            this.groupBox1.Controls.Add(this.lblSure);
            this.groupBox1.Controls.Add(this.lblFilmPuan);
            this.groupBox1.Controls.Add(this.lblFilmAd);
            this.groupBox1.Location = new System.Drawing.Point(25, -3);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(463, 530);
            this.groupBox1.TabIndex = 12;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "groupBox1";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(36, 514);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(53, 16);
            this.label4.TabIndex = 28;
            this.label4.Text = "DilGirin:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(36, 464);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(86, 16);
            this.label3.TabIndex = 27;
            this.label3.Text = "YapimciGirin:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(36, 419);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(86, 16);
            this.label2.TabIndex = 26;
            this.label2.Text = "SenaristGirin:";
            // 
            // txtBoxdil
            // 
            this.txtBoxdil.Location = new System.Drawing.Point(171, 501);
            this.txtBoxdil.Multiline = true;
            this.txtBoxdil.Name = "txtBoxdil";
            this.txtBoxdil.Size = new System.Drawing.Size(235, 29);
            this.txtBoxdil.TabIndex = 25;
            // 
            // txtBoxyapimci
            // 
            this.txtBoxyapimci.Location = new System.Drawing.Point(171, 451);
            this.txtBoxyapimci.Multiline = true;
            this.txtBoxyapimci.Name = "txtBoxyapimci";
            this.txtBoxyapimci.Size = new System.Drawing.Size(235, 29);
            this.txtBoxyapimci.TabIndex = 24;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(36, 372);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(98, 16);
            this.label1.TabIndex = 23;
            this.label1.Text = "YönetmenGirin:";
            // 
            // txtBoxsenarist
            // 
            this.txtBoxsenarist.Location = new System.Drawing.Point(171, 406);
            this.txtBoxsenarist.Multiline = true;
            this.txtBoxsenarist.Name = "txtBoxsenarist";
            this.txtBoxsenarist.Size = new System.Drawing.Size(235, 29);
            this.txtBoxsenarist.TabIndex = 22;
            // 
            // txtBoxyonetmen
            // 
            this.txtBoxyonetmen.Location = new System.Drawing.Point(171, 359);
            this.txtBoxyonetmen.Multiline = true;
            this.txtBoxyonetmen.Name = "txtBoxyonetmen";
            this.txtBoxyonetmen.Size = new System.Drawing.Size(235, 29);
            this.txtBoxyonetmen.TabIndex = 21;
            // 
            // txtBoxoyuncu
            // 
            this.txtBoxoyuncu.Location = new System.Drawing.Point(171, 309);
            this.txtBoxoyuncu.Multiline = true;
            this.txtBoxoyuncu.Name = "txtBoxoyuncu";
            this.txtBoxoyuncu.Size = new System.Drawing.Size(235, 29);
            this.txtBoxoyuncu.TabIndex = 20;
            // 
            // lbloyuncu
            // 
            this.lbloyuncu.AutoSize = true;
            this.lbloyuncu.Location = new System.Drawing.Point(31, 322);
            this.lbloyuncu.Name = "lbloyuncu";
            this.lbloyuncu.Size = new System.Drawing.Size(85, 16);
            this.lbloyuncu.TabIndex = 19;
            this.lbloyuncu.Text = "Oyuncu Girin:";
            // 
            // txtBoxsirket
            // 
            this.txtBoxsirket.Location = new System.Drawing.Point(171, 267);
            this.txtBoxsirket.Multiline = true;
            this.txtBoxsirket.Name = "txtBoxsirket";
            this.txtBoxsirket.Size = new System.Drawing.Size(235, 29);
            this.txtBoxsirket.TabIndex = 18;
            // 
            // lblfilmsirket
            // 
            this.lblfilmsirket.AutoSize = true;
            this.lblfilmsirket.Location = new System.Drawing.Point(31, 280);
            this.lblfilmsirket.Name = "lblfilmsirket";
            this.lblfilmsirket.Size = new System.Drawing.Size(105, 16);
            this.lblfilmsirket.TabIndex = 17;
            this.lblfilmsirket.Text = "Film Şirketi Girin:";
            // 
            // txtboxfilmtur
            // 
            this.txtboxfilmtur.Location = new System.Drawing.Point(171, 213);
            this.txtboxfilmtur.Multiline = true;
            this.txtboxfilmtur.Name = "txtboxfilmtur";
            this.txtboxfilmtur.Size = new System.Drawing.Size(235, 29);
            this.txtboxfilmtur.TabIndex = 16;
            // 
            // lblFilmTur
            // 
            this.lblFilmTur.AutoSize = true;
            this.lblFilmTur.Location = new System.Drawing.Point(31, 226);
            this.lblFilmTur.Name = "lblFilmTur";
            this.lblFilmTur.Size = new System.Drawing.Size(95, 16);
            this.lblFilmTur.TabIndex = 15;
            this.lblFilmTur.Text = "Film Türü Girin:";
            // 
            // lblYil
            // 
            this.lblYil.AutoSize = true;
            this.lblYil.Location = new System.Drawing.Point(31, 176);
            this.lblYil.Name = "lblYil";
            this.lblYil.Size = new System.Drawing.Size(56, 16);
            this.lblYil.TabIndex = 9;
            this.lblYil.Text = "Film Yılı:";
            // 
            // txtboxYil
            // 
            this.txtboxYil.Location = new System.Drawing.Point(171, 170);
            this.txtboxYil.Name = "txtboxYil";
            this.txtboxYil.Size = new System.Drawing.Size(235, 22);
            this.txtboxYil.TabIndex = 14;
            // 
            // txtboxSure
            // 
            this.txtboxSure.Location = new System.Drawing.Point(171, 128);
            this.txtboxSure.Multiline = true;
            this.txtboxSure.Name = "txtboxSure";
            this.txtboxSure.Size = new System.Drawing.Size(235, 29);
            this.txtboxSure.TabIndex = 8;
            // 
            // txtboxPuan
            // 
            this.txtboxPuan.Location = new System.Drawing.Point(171, 81);
            this.txtboxPuan.Multiline = true;
            this.txtboxPuan.Name = "txtboxPuan";
            this.txtboxPuan.Size = new System.Drawing.Size(235, 29);
            this.txtboxPuan.TabIndex = 7;
            // 
            // txtboxFilm
            // 
            this.txtboxFilm.Location = new System.Drawing.Point(171, 31);
            this.txtboxFilm.Multiline = true;
            this.txtboxFilm.Name = "txtboxFilm";
            this.txtboxFilm.Size = new System.Drawing.Size(235, 29);
            this.txtboxFilm.TabIndex = 6;
            // 
            // lblSure
            // 
            this.lblSure.AutoSize = true;
            this.lblSure.Location = new System.Drawing.Point(31, 141);
            this.lblSure.Name = "lblSure";
            this.lblSure.Size = new System.Drawing.Size(106, 16);
            this.lblSure.TabIndex = 3;
            this.lblSure.Text = "Film Süresi Girin:";
            // 
            // lblFilmPuan
            // 
            this.lblFilmPuan.AutoSize = true;
            this.lblFilmPuan.Location = new System.Drawing.Point(31, 94);
            this.lblFilmPuan.Name = "lblFilmPuan";
            this.lblFilmPuan.Size = new System.Drawing.Size(102, 16);
            this.lblFilmPuan.TabIndex = 2;
            this.lblFilmPuan.Text = "Film Puanı Girin:";
            // 
            // lblFilmAd
            // 
            this.lblFilmAd.AutoSize = true;
            this.lblFilmAd.Location = new System.Drawing.Point(36, 44);
            this.lblFilmAd.Name = "lblFilmAd";
            this.lblFilmAd.Size = new System.Drawing.Size(97, 16);
            this.lblFilmAd.TabIndex = 1;
            this.lblFilmAd.Text = "Film Adı Giriniz:";
            // 
            // btnFilmGüncele
            // 
            this.btnFilmGüncele.Location = new System.Drawing.Point(563, 180);
            this.btnFilmGüncele.Name = "btnFilmGüncele";
            this.btnFilmGüncele.Size = new System.Drawing.Size(196, 60);
            this.btnFilmGüncele.TabIndex = 13;
            this.btnFilmGüncele.Text = "Film Güncelle";
            this.btnFilmGüncele.UseVisualStyleBackColor = true;
            // 
            // FilmlerListesi
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1436, 739);
            this.Controls.Add(this.btnFilmGüncele);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.btnFilmSil);
            this.Controls.Add(this.btnFilmEkle);
            this.Controls.Add(this.dg_tablo);
            this.Name = "FilmlerListesi";
            this.Text = "Filmler";
            this.Load += new System.EventHandler(this.FilmlerListesi_Load_1);
            ((System.ComponentModel.ISupportInitialize)(this.dg_tablo)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dg_tablo;
        private System.Windows.Forms.Button btnFilmEkle;
        private System.Windows.Forms.Button btnFilmSil;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label lblYil;
        private System.Windows.Forms.TextBox txtboxSure;
        private System.Windows.Forms.TextBox txtboxPuan;
        private System.Windows.Forms.TextBox txtboxFilm;
        private System.Windows.Forms.Label lblSure;
        private System.Windows.Forms.Label lblFilmPuan;
        private System.Windows.Forms.Label lblFilmAd;
        private System.Windows.Forms.Button btnFilmGüncele;
        private System.Windows.Forms.DateTimePicker txtboxYil;
        private System.Windows.Forms.TextBox txtboxfilmtur;
        private System.Windows.Forms.Label lblFilmTur;
        private System.Windows.Forms.TextBox txtBoxsirket;
        private System.Windows.Forms.Label lblfilmsirket;
        private System.Windows.Forms.TextBox txtBoxsenarist;
        private System.Windows.Forms.TextBox txtBoxyonetmen;
        private System.Windows.Forms.TextBox txtBoxoyuncu;
        private System.Windows.Forms.Label lbloyuncu;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtBoxyapimci;
        private System.Windows.Forms.TextBox txtBoxdil;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
    }
}

