       class-id apo.Form1 is partial
                 inherits type System.Windows.Forms.Form.
       
       working-storage section.
       01 f2                       type apo.Form2.
       01 appointment              type Telerik.WinControls.UI.Appointment.
       01 x                        type TimeSpan.

       method-id NEW.
       procedure division.
           invoke self::InitializeComponent
           goback.
       end method.

       method-id radScheduler1_AppointmentEditDialogShowing final private.
       procedure division using by value sender as object e as type Telerik.WinControls.UI.AppointmentEditDialogShowingEventArgs.
            set f2 to new apo.Form2 
            set f2::Evento to e::Appointment::Summary
            set f2::Fecha  to e::Appointment::Start 
            set e::Cancel to true
            invoke F2::add_Closed(new EventHandler(self::Window_Closed2))
            
            invoke f2::Show 
            
       end method.

       method-id Window_Closed2 final private.
       
       procedure division using by value sender as object e as type System.EventArgs.

          set appointment to New Telerik.WinControls.UI.Appointment(f2::Fecha, x, f2::Evento, f2::Evento)
          set appointment::StatusId = 2
          set appointment::BackgroundId = 6
          invoke radScheduler1::Appointments::Add(appointment)
       end method.
      
       method-id Form1_Load final private.
       procedure division using by value sender as object e as type System.EventArgs.
          
       end method.

       method-id radScheduler1_Click final private.
       procedure division using by value sender as object e as type System.EventArgs.
       end method.

       method-id radScheduler1_CellElementDoubleClick final private.
       procedure division using by value sender as object e as type System.EventArgs.
           
       end method.

       method-id radCalendar1_SelectionChanged final private.
       procedure division using by value sender as object e as type System.EventArgs.
           set radScheduler1::FocusedDate to radCalendar1::SelectedDate
       end method.

       end class.
