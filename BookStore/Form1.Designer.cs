﻿namespace BookStore
{
  partial class Form1
  {
    /// <summary>
    /// Обязательная переменная конструктора.
    /// </summary>
    private System.ComponentModel.IContainer components = null;

    /// <summary>
    /// Освободить все используемые ресурсы.
    /// </summary>
    /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
    protected override void Dispose(bool disposing)
    {
      if (disposing && (components != null))
      {
        components.Dispose();
      }
      base.Dispose(disposing);
    }

    #region Код, автоматически созданный конструктором форм Windows

    /// <summary>
    /// Требуемый метод для поддержки конструктора — не изменяйте 
    /// содержимое этого метода с помощью редактора кода.
    /// </summary>
    private void InitializeComponent()
    {
      this.groupBox1 = new System.Windows.Forms.GroupBox();
      this.button2 = new System.Windows.Forms.Button();
      this.button1 = new System.Windows.Forms.Button();
      this.label2 = new System.Windows.Forms.Label();
      this.label1 = new System.Windows.Forms.Label();
      this.textBox2 = new System.Windows.Forms.TextBox();
      this.textBox1 = new System.Windows.Forms.TextBox();
      this.groupBox1.SuspendLayout();
      this.SuspendLayout();
      // 
      // groupBox1
      // 
      this.groupBox1.Controls.Add(this.button2);
      this.groupBox1.Controls.Add(this.button1);
      this.groupBox1.Controls.Add(this.label2);
      this.groupBox1.Controls.Add(this.label1);
      this.groupBox1.Controls.Add(this.textBox2);
      this.groupBox1.Controls.Add(this.textBox1);
      this.groupBox1.Location = new System.Drawing.Point(32, 39);
      this.groupBox1.Name = "groupBox1";
      this.groupBox1.Size = new System.Drawing.Size(448, 296);
      this.groupBox1.TabIndex = 0;
      this.groupBox1.TabStop = false;
      this.groupBox1.Text = "Авторизация";
      // 
      // button2
      // 
      this.button2.Location = new System.Drawing.Point(89, 220);
      this.button2.Name = "button2";
      this.button2.Size = new System.Drawing.Size(129, 47);
      this.button2.TabIndex = 5;
      this.button2.Text = "Регистрация";
      this.button2.UseVisualStyleBackColor = true;
      this.button2.Click += new System.EventHandler(this.button2_Click);
      // 
      // button1
      // 
      this.button1.Location = new System.Drawing.Point(227, 220);
      this.button1.Name = "button1";
      this.button1.Size = new System.Drawing.Size(129, 47);
      this.button1.TabIndex = 4;
      this.button1.Text = "Вход";
      this.button1.UseVisualStyleBackColor = true;
      this.button1.Click += new System.EventHandler(this.button1_Click_1);
      // 
      // label2
      // 
      this.label2.AutoSize = true;
      this.label2.Location = new System.Drawing.Point(85, 131);
      this.label2.Name = "label2";
      this.label2.Size = new System.Drawing.Size(67, 20);
      this.label2.TabIndex = 3;
      this.label2.Text = "Пароль";
      // 
      // label1
      // 
      this.label1.AutoSize = true;
      this.label1.Location = new System.Drawing.Point(85, 42);
      this.label1.Name = "label1";
      this.label1.Size = new System.Drawing.Size(55, 20);
      this.label1.TabIndex = 2;
      this.label1.Text = "Логин";
      // 
      // textBox2
      // 
      this.textBox2.Location = new System.Drawing.Point(85, 154);
      this.textBox2.Name = "textBox2";
      this.textBox2.Size = new System.Drawing.Size(271, 26);
      this.textBox2.TabIndex = 1;
      this.textBox2.UseSystemPasswordChar = true;
      // 
      // textBox1
      // 
      this.textBox1.Location = new System.Drawing.Point(85, 68);
      this.textBox1.Name = "textBox1";
      this.textBox1.Size = new System.Drawing.Size(271, 26);
      this.textBox1.TabIndex = 0;
      // 
      // Form1
      // 
      this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
      this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
      this.ClientSize = new System.Drawing.Size(519, 374);
      this.Controls.Add(this.groupBox1);
      this.Name = "Form1";
      this.Text = "Авторизация";
      this.groupBox1.ResumeLayout(false);
      this.groupBox1.PerformLayout();
      this.ResumeLayout(false);

    }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.TextBox textBox1;
    }
}

