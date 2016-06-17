       class-id apo.Form1 is partial
                 inherits type System.Windows.Forms.Form.
       
       01 radScheduler1 type Telerik.WinControls.UI.RadScheduler.
       01 radCalendar1 type Telerik.WinControls.UI.RadCalendar.
       01 radButton1 type Telerik.WinControls.UI.RadButton.
       01 components type System.ComponentModel.IContainer.
      
      *> Required method for Designer support - do not modify
      *> the contents of this method with the code editor.
       method-id InitializeComponent private.
       local-storage section.
       01 schedulerDailyPrintStyle1 type Telerik.WinControls.UI.SchedulerDailyPrintStyle.
       procedure division.
       set schedulerDailyPrintStyle1 to new Telerik.WinControls.UI.SchedulerDailyPrintStyle
       set radScheduler1 to new Telerik.WinControls.UI.RadScheduler
       set radCalendar1 to new Telerik.WinControls.UI.RadCalendar
       set radButton1 to new Telerik.WinControls.UI.RadButton
       invoke radScheduler1 as type System.ComponentModel.ISupportInitialize::BeginInit
       invoke radCalendar1 as type System.ComponentModel.ISupportInitialize::BeginInit
       invoke radButton1 as type System.ComponentModel.ISupportInitialize::BeginInit
       invoke self::SuspendLayout
      *> 
      *> radScheduler1
      *> 
       set radScheduler1::Culture to new System.Globalization.CultureInfo("es-AR")
       set radScheduler1::Location to new System.Drawing.Point(12 12)
       set radScheduler1::Name to "radScheduler1"
       set schedulerDailyPrintStyle1::AppointmentFont to new System.Drawing.Font("Microsoft Sans Serif" 8.25 type System.Drawing.FontStyle::Regular type System.Drawing.GraphicsUnit::Point 0 as type System.Byte)
       set schedulerDailyPrintStyle1::DateEndRange to new System.DateTime(2016 6 21 0 0 0 0)
       set schedulerDailyPrintStyle1::DateHeadingFont to new System.Drawing.Font("Microsoft Sans Serif" 8.25 type System.Drawing.FontStyle::Bold)
       set schedulerDailyPrintStyle1::DateStartRange to new System.DateTime(2016 6 16 0 0 0 0)
       set schedulerDailyPrintStyle1::PageHeadingFont to new System.Drawing.Font("Microsoft Sans Serif" 22 type System.Drawing.FontStyle::Bold)
       set radScheduler1::PrintStyle to schedulerDailyPrintStyle1
       set radScheduler1::Size to new System.Drawing.Size(500 429)
       set radScheduler1::TabIndex to 0
       set radScheduler1::Text to "radScheduler1"
       invoke radScheduler1::add_CellElementDoubleClick(new System.EventHandler(self::radScheduler1_CellElementDoubleClick))
       invoke radScheduler1::add_AppointmentEditDialogShowing(new System.EventHandler[type Telerik.WinControls.UI.AppointmentEditDialogShowingEventArgs](self::radScheduler1_AppointmentEditDialogShowing))
       invoke radScheduler1::add_Click(new System.EventHandler(self::radScheduler1_Click))
      *> 
      *> radCalendar1
      *> 
       set radCalendar1::Location to new System.Drawing.Point(528 13)
       set radCalendar1::Name to "radCalendar1"
       set radCalendar1::Size to new System.Drawing.Size(257 380)
       set radCalendar1::TabIndex to 1
       set radCalendar1::Text to "radCalendar1"
       invoke radCalendar1::add_SelectionChanged(new System.EventHandler(self::radCalendar1_SelectionChanged))
      *> 
      *> radButton1
      *> 
       set radButton1::Location to new System.Drawing.Point(528 399)
       set radButton1::Name to "radButton1"
       set radButton1::Size to new System.Drawing.Size(257 42)
       set radButton1::TabIndex to 2
       set radButton1::Text to "radButton1"
      *> 
      *> Form1
      *> 
       set self::ClientSize to new System.Drawing.Size(806 453)
       invoke self::Controls::Add(radButton1)
       invoke self::Controls::Add(radCalendar1)
       invoke self::Controls::Add(radScheduler1)
       set self::Name to "Form1"
       set self::Text to "Form1"
       invoke self::add_Load(new System.EventHandler(self::Form1_Load))
       invoke radScheduler1 as type System.ComponentModel.ISupportInitialize::EndInit
       invoke radCalendar1 as type System.ComponentModel.ISupportInitialize::EndInit
       invoke radButton1 as type System.ComponentModel.ISupportInitialize::EndInit
       invoke self::ResumeLayout(False)
       end method.

      *> Clean up any resources being used.      
       method-id Dispose override protected.
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
