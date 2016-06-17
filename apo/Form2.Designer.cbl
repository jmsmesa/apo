       class-id apo.Form2
                 is partial inherits type System.Windows.Forms.Form.

       01 radTextBox1 type Telerik.WinControls.UI.RadTextBox.
       01 radButton1 type Telerik.WinControls.UI.RadButton.
       01 radDateTimePicker1 type Telerik.WinControls.UI.RadDateTimePicker.
       01 components type System.ComponentModel.IContainer.

      *> Required method for Designer support - do not modify
      *> the contents of this method with the code editor.
       method-id InitializeComponent private.
       procedure division.
       set radTextBox1 to new Telerik.WinControls.UI.RadTextBox
       set radButton1 to new Telerik.WinControls.UI.RadButton
       set radDateTimePicker1 to new Telerik.WinControls.UI.RadDateTimePicker
       invoke radTextBox1 as type System.ComponentModel.ISupportInitialize::BeginInit
       invoke radButton1 as type System.ComponentModel.ISupportInitialize::BeginInit
       invoke radDateTimePicker1 as type System.ComponentModel.ISupportInitialize::BeginInit
       invoke self::SuspendLayout
      *> 
      *> radTextBox1
      *> 
       set radTextBox1::Location to new System.Drawing.Point(13 13)
       set radTextBox1::Name to "radTextBox1"
       set radTextBox1::Size to new System.Drawing.Size(100 20)
       set radTextBox1::TabIndex to 0
      *> 
      *> radButton1
      *> 
       set radButton1::Location to new System.Drawing.Point(262 325)
       set radButton1::Name to "radButton1"
       set radButton1::Size to new System.Drawing.Size(110 24)
       set radButton1::TabIndex to 1
       set radButton1::Text to "radButton1"
       invoke radButton1::add_Click(new System.EventHandler(self::radButton1_Click))
      *> 
      *> radDateTimePicker1
      *> 
       set radDateTimePicker1::Location to new System.Drawing.Point(13 40)
       set radDateTimePicker1::Name to "radDateTimePicker1"
       set radDateTimePicker1::Size to new System.Drawing.Size(164 20)
       set radDateTimePicker1::TabIndex to 2
       set radDateTimePicker1::TabStop to False
       set radDateTimePicker1::Text to "jueves, 16 de junio de 2016"
       set radDateTimePicker1::Value to new System.DateTime(2016 6 16 17 48 49 629)
      *> 
      *> Form2
      *> 
       set self::ClientSize to new System.Drawing.Size(384 361)
       invoke self::Controls::Add(radDateTimePicker1)
       invoke self::Controls::Add(radButton1)
       invoke self::Controls::Add(radTextBox1)
       set self::Name to "Form2"
       set self::Text to "Form2"
       invoke self::add_Load(new System.EventHandler(self::Form2_Load))
       invoke radTextBox1 as type System.ComponentModel.ISupportInitialize::EndInit
       invoke radButton1 as type System.ComponentModel.ISupportInitialize::EndInit
       invoke radDateTimePicker1 as type System.ComponentModel.ISupportInitialize::EndInit
       invoke self::ResumeLayout(False)
       invoke self::PerformLayout
       end method.

      *> Clean up any resources being used.
       method-id Dispose override is protected.
       procedure division using by value disposing as condition-value.
           if disposing then
               if components not = null then
                   invoke components::Dispose()
               end-if
           end-if
           invoke super::Dispose(by value disposing)
           goback.
       end method.

       end class.
