/*namespace projectfilm
{
    partial class form_giris
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.lblKullanici = new System.Windows.Forms.Label();
            this.txtkullanici_adi = new System.Windows.Forms.TextBox();
            this.txtkullanici_sifre = new System.Windows.Forms.TextBox();
            this.btnkullanici = new System.Windows.Forms.Button();
            this.btnadmin = new System.Windows.Forms.Button();
            this.txtadmin_sifre = new System.Windows.Forms.TextBox();
            this.txtadmin_ad = new System.Windows.Forms.TextBox();
            this.lbladmin = new System.Windows.Forms.Label();
            this.lblkullanici_adi = new System.Windows.Forms.Label();
            this.lblkullanici_giris = new System.Windows.Forms.Label();
            this.lbladmin_sifre = new System.Windows.Forms.Label();
            this.lbladmin_ad = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // lblKullanici
            // 
            this.lblKullanici.AutoSize = true;
            this.lblKullanici.Location = new System.Drawing.Point(165, 146);
            this.lblKullanici.Name = "lblKullanici";
            this.lblKullanici.Size = new System.Drawing.Size(86, 16);
            this.lblKullanici.TabIndex = 0;
            this.lblKullanici.Text = "Kullanici Giriş";
            // 
            // txtkullanici_adi
            // 
            this.txtkullanici_adi.Location = new System.Drawing.Point(168, 202);
            this.txtkullanici_adi.Name = "txtkullanici_adi";
            this.txtkullanici_adi.Size = new System.Drawing.Size(109, 22);
            this.txtkullanici_adi.TabIndex = 1;
            // 
            // txtkullanici_sifre
            // 
            this.txtkullanici_sifre.Location = new System.Drawing.Point(168, 272);
            this.txtkullanici_sifre.Name = "txtkullanici_sifre";
            this.txtkullanici_sifre.Size = new System.Drawing.Size(109, 22);
            this.txtkullanici_sifre.TabIndex = 2;
            // 
            // btnkullanici
            // 
            this.btnkullanici.Location = new System.Drawing.Point(168, 341);
            this.btnkullanici.Name = "btnkullanici";
            this.btnkullanici.Size = new System.Drawing.Size(109, 46);
            this.btnkullanici.TabIndex = 3;
            this.btnkullanici.Text = "Giriş";
            this.btnkullanici.UseVisualStyleBackColor = true;
            this.btnkullanici.Click += new System.EventHandler(this.btnkullanici_Click);
            // 
            // btnadmin
            // 
            this.btnadmin.Location = new System.Drawing.Point(484, 341);
            this.btnadmin.Name = "btnadmin";
            this.btnadmin.Size = new System.Drawing.Size(109, 46);
            this.btnadmin.TabIndex = 7;
            this.btnadmin.Text = "Giriş";
            this.btnadmin.UseVisualStyleBackColor = true;
            this.btnadmin.Click += new System.EventHandler(this.btnadmin_Click);
            // 
            // txtadmin_sifre
            // 
            this.txtadmin_sifre.Location = new System.Drawing.Point(484, 272);
            this.txtadmin_sifre.Name = "txtadmin_sifre";
            this.txtadmin_sifre.Size = new System.Drawing.Size(109, 22);
            this.txtadmin_sifre.TabIndex = 6;
            // 
            // txtadmin_ad
            // 
            this.txtadmin_ad.Location = new System.Drawing.Point(484, 202);
            this.txtadmin_ad.Name = "txtadmin_ad";
            this.txtadmin_ad.Size = new System.Drawing.Size(109, 22);
            this.txtadmin_ad.TabIndex = 5;
            // 
            // lbladmin
            // 
            this.lbladmin.AutoSize = true;
            this.lbladmin.Location = new System.Drawing.Point(481, 146);
            this.lbladmin.Name = "lbladmin";
            this.lbladmin.Size = new System.Drawing.Size(75, 16);
            this.lbladmin.TabIndex = 4;
            this.lbladmin.Text = "Admin Giriş";
            // 
            // lblkullanici_adi
            // 
            this.lblkullanici_adi.AutoSize = true;
            this.lblkullanici_adi.Location = new System.Drawing.Point(68, 208);
            this.lblkullanici_adi.Name = "lblkullanici_adi";
            this.lblkullanici_adi.Size = new System.Drawing.Size(79, 16);
            this.lblkullanici_adi.TabIndex = 8;
            this.lblkullanici_adi.Text = "Kullanıcı Adı";
            // 
            // lblkullanici_giris
            // 
            this.lblkullanici_giris.AutoSize = true;
            this.lblkullanici_giris.Location = new System.Drawing.Point(68, 278);
            this.lblkullanici_giris.Name = "lblkullanici_giris";
            this.lblkullanici_giris.Size = new System.Drawing.Size(34, 16);
            this.lblkullanici_giris.TabIndex = 9;
            this.lblkullanici_giris.Text = "Sifre";
            // 
            // lbladmin_sifre
            // 
            this.lbladmin_sifre.AutoSize = true;
            this.lbladmin_sifre.Location = new System.Drawing.Point(384, 272);
            this.lbladmin_sifre.Name = "lbladmin_sifre";
            this.lbladmin_sifre.Size = new System.Drawing.Size(34, 16);
            this.lbladmin_sifre.TabIndex = 11;
            this.lbladmin_sifre.Text = "Sifre";
            // 
            // lbladmin_ad
            // 
            this.lbladmin_ad.AutoSize = true;
            this.lbladmin_ad.Location = new System.Drawing.Point(384, 208);
            this.lbladmin_ad.Name = "lbladmin_ad";
            this.lbladmin_ad.Size = new System.Drawing.Size(45, 16);
            this.lbladmin_ad.TabIndex = 10;
            this.lbladmin_ad.Text = "Admin";
            // 
            // form_giris
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 577);
            this.Controls.Add(this.lbladmin_sifre);
            this.Controls.Add(this.lbladmin_ad);
            this.Controls.Add(this.lblkullanici_giris);
            this.Controls.Add(this.lblkullanici_adi);
            this.Controls.Add(this.btnadmin);
            this.Controls.Add(this.txtadmin_sifre);
            this.Controls.Add(this.txtadmin_ad);
            this.Controls.Add(this.lbladmin);
            this.Controls.Add(this.btnkullanici);
            this.Controls.Add(this.txtkullanici_sifre);
            this.Controls.Add(this.txtkullanici_adi);
            this.Controls.Add(this.lblKullanici);
            this.Name = "form_giris";
            this.Text = "Giriş";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblKullanici;
        private System.Windows.Forms.TextBox txtkullanici_adi;
        private System.Windows.Forms.TextBox txtkullanici_sifre;
        private System.Windows.Forms.Button btnkullanici;
        private System.Windows.Forms.Button btnadmin;
        private System.Windows.Forms.TextBox txtadmin_sifre;
        private System.Windows.Forms.TextBox txtadmin_ad;
        private System.Windows.Forms.Label lbladmin;
        private System.Windows.Forms.Label lblkullanici_adi;
        private System.Windows.Forms.Label lblkullanici_giris;
        private System.Windows.Forms.Label lbladmin_sifre;
        private System.Windows.Forms.Label lbladmin_ad;
    }
}
  */