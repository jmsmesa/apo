       class-id apo.Form2 is partial
                 inherits type System.Windows.Forms.Form.

       working-storage section.
       01 Evento  string property.
       01 Fecha   type DateTime property.
       method-id NEW.
       procedure division.
           invoke self::InitializeComponent()
           goback.
       end method.

       method-id Form2_Load final private.
       procedure division using by value sender as object e as type System.EventArgs.

          set radTextBox1::Text to Evento
          set radDateTimePicker1::Value to fecha
       end method.

       method-id radButton1_Click final private.
       procedure division using by value sender as object e as type System.EventArgs.
           set Evento to radTextBox1::Text 
           set Fecha  to radDateTimePicker1::Value 
           invoke self::Close
       end method.

       end class.
