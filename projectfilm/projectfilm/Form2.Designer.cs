namespace projectfilm
{
    partial class Form2
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
            this.dg_tablo2 = new System.Windows.Forms.DataGridView();
            this.cb_turler = new System.Windows.Forms.ComboBox();
            this.cb_dil = new System.Windows.Forms.ComboBox();
            this.btn_ara = new System.Windows.Forms.Button();
            this.cb_yonetmen = new System.Windows.Forms.ComboBox();
            this.cb_oyuncu = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dg_tablo2)).BeginInit();
            this.SuspendLayout();
            // 
            // dg_tablo2
            // 
            this.dg_tablo2.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dg_tablo2.Location = new System.Drawing.Point(531, 12);
            this.dg_tablo2.Name = "dg_tablo2";
            this.dg_tablo2.RowHeadersWidth = 51;
            this.dg_tablo2.RowTemplate.Height = 24;
            this.dg_tablo2.Size = new System.Drawing.Size(603, 479);
            this.dg_tablo2.TabIndex = 0;
            // 
            // cb_turler
            // 
            this.cb_turler.FormattingEnabled = true;
            this.cb_turler.Location = new System.Drawing.Point(239, 84);
            this.cb_turler.Name = "cb_turler";
            this.cb_turler.Size = new System.Drawing.Size(142, 24);
            this.cb_turler.TabIndex = 1;
            // 
            // cb_dil
            // 
            this.cb_dil.FormattingEnabled = true;
            this.cb_dil.Location = new System.Drawing.Point(239, 137);
            this.cb_dil.Name = "cb_dil";
            this.cb_dil.Size = new System.Drawing.Size(142, 24);
            this.cb_dil.TabIndex = 2;
            this.cb_dil.SelectedIndexChanged += new System.EventHandler(this.cb_dil_SelectedIndexChanged);
            // 
            // btn_ara
            // 
            this.btn_ara.Location = new System.Drawing.Point(251, 313);
            this.btn_ara.Name = "btn_ara";
            this.btn_ara.Size = new System.Drawing.Size(97, 37);
            this.btn_ara.TabIndex = 3;
            this.btn_ara.Text = "Ara";
            this.btn_ara.UseVisualStyleBackColor = true;
            this.btn_ara.Click += new System.EventHandler(this.btn_ara_Click);
            // 
            // cb_yonetmen
            // 
            this.cb_yonetmen.FormattingEnabled = true;
            this.cb_yonetmen.Location = new System.Drawing.Point(239, 195);
            this.cb_yonetmen.Name = "cb_yonetmen";
            this.cb_yonetmen.Size = new System.Drawing.Size(142, 24);
            this.cb_yonetmen.TabIndex = 4;
            this.cb_yonetmen.SelectedIndexChanged += new System.EventHandler(this.cb_yonetmen_SelectedIndexChanged);
            // 
            // cb_oyuncu
            // 
            this.cb_oyuncu.FormattingEnabled = true;
            this.cb_oyuncu.Location = new System.Drawing.Point(239, 259);
            this.cb_oyuncu.Name = "cb_oyuncu";
            this.cb_oyuncu.Size = new System.Drawing.Size(142, 24);
            this.cb_oyuncu.TabIndex = 5;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label1.Location = new System.Drawing.Point(124, 92);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(74, 16);
            this.label1.TabIndex = 6;
            this.label1.Text = "Tür seçiniz:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label2.Location = new System.Drawing.Point(124, 145);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(70, 16);
            this.label2.TabIndex = 7;
            this.label2.Text = "Dil seçiniz:";
            // 
            // Form2
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1271, 587);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.cb_oyuncu);
            this.Controls.Add(this.cb_yonetmen);
            this.Controls.Add(this.btn_ara);
            this.Controls.Add(this.cb_dil);
            this.Controls.Add(this.cb_turler);
            this.Controls.Add(this.dg_tablo2);
            this.Name = "Form2";
            this.Text = "Form2";
            this.Load += new System.EventHandler(this.Form2_Load_1);
            ((System.ComponentModel.ISupportInitialize)(this.dg_tablo2)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dg_tablo2;
        private System.Windows.Forms.ComboBox cb_turler;
        private System.Windows.Forms.ComboBox cb_dil;
        private System.Windows.Forms.Button btn_ara;
        private System.Windows.Forms.ComboBox cb_yonetmen;
        private System.Windows.Forms.ComboBox cb_oyuncu;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
    }
}