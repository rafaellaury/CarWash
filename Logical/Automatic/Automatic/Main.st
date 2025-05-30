//
(*SOMEONE SOMEWHERE AT SOMETIME*)
//

PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC

	IF Machine.Cmd.Stop THEN
		Machine.Cmd.Start := FALSE;
		IF MachineState <> cwSTOP THEN
			PreviousState := MachineState;
			MachineState := cwSTOP;
		END_IF
	END_IF
	
	CASE MachineState OF
	
		cwINIT:
				
			AuxilaryCtrl.Outputs.DigitalOutputWaterValve := FALSE;
			
			(*Initializing High Pressure Station*)
			HighPressure.DigitalOutput.NozzlesDown := FALSE;
			HighPressure.DigitalOutput.NozzlesUp := FALSE;
			HighPressure.Status.ProcessInitiated := FALSE;
			
			(*Initializing Horz Brush Station*)
			HorizontalBrush.DigitalOutput.Up := FALSE;
			HorizontalBrush.DigitalOutput.Down := FALSE;
			HorizontalBrush.DigitalOutput.Motor := FALSE;
			HorizontalBrush.Status.ProcessInitiated := FALSE;
			
			(*Initializing Vertical Brush Station*)
			VerticalBrush.DigitalOutput.Valve := FALSE; 
			VerticalBrush.DigitalOutput.Motor :=  FALSE;
			VerticalBrush.AnalogOutput.LPosition := 0;
			VerticalBrush.AnalogOutput.RPosition := 0;
			VerticalBrush.Status.ProcessInitiated := FALSE;
			
			(*Initializing Underbody*)
			Underbody.DigitalOutput.Valve := FALSE;
			Underbody.DigitalOutput.Pump := FALSE;
			Underbody.Status.ProcessInitiated := FALSE;
			
			(*Initializing Horizontal Polishing*)
			HorizontalPolishing.DigitalOutput.Up := FALSE;
			HorizontalPolishing.DigitalOutput.Down := FALSE;
			HorizontalPolishing.DigitalOutput.Motor := FALSE;
			HorizontalPolishing.Status.ProcessInitiated := FALSE;
			
			(*Initializing Vertical Polishing*)
			VerticalPolishing.DigitalOutput.Motor := FALSE;
			VerticalPolishing.AnalogOutput.LPosition := 0;
			VerticalPolishing.AnalogOutput.RPosition := 0;
			VerticalPolishing.Status.ProcessInitiated := FALSE;
			
			(*Initializing Hot Wax*)
			HotWax.Status.ProcessInitiated := FALSE;
			HotWax.DigitalOutput.Valve := FALSE;
			HotWax.DigitalOutput.Pump := FALSE;
			
			(*Initializing Dryer*)
			Dryyiing1.Status.ProcessInitiated := FALSE;
			Dryyiing1.DigitalOutput.Blower := FALSE;
			Dryyiing1.DigitalOutput.Heater := FALSE;
			Dryyiing1.DigitalOutput.Up := FALSE;
			Dryyiing1.DigitalOutput.Down := FALSE;
			
			Dryying2.Status.ProcessInitiated := FALSE;
			Dryying2.DigitalOutput.Blower := FALSE;
			Dryying2.DigitalOutput.Heater := FALSE;
			Dryying2.DigitalOutput.Up := FALSE;
			Dryying2.DigitalOutput.Down := FALSE;
			
			VerticalDryer.DigitalOutput.Blower := FALSE;
			VerticalDryer.DigitalOutput.Heater := FALSE;
			
			(*Exit Door*)
			
			ExitDoor.Status.ProcessInitiated:= FALSE;
			ExitDoor.DigitalOutput.Up := FALSE;
			ExitDoor.DigitalOutput.Down := TRUE;
			ExitDoor.DigitalOutput.GreenLight := FALSE;
			ExitDoor.DigitalOutput.OrangeLight := FALSE;
			ExitDoor.DigitalOutput.RedLight := FALSE;

			MachineState := cwWAITING;
		
		cwWAITING:
			// Fill the chemical Tank if lower value
		
			IF Machine.Cmd.Start THEN
				MachineState := cwENTRANCE;
			END_IF;

		cwENTRANCE:
			IF Entrance.DigitalInput.Sensor THEN
				AuxilaryCtrl.Outputs.DigitalOutputWaterValve := TRUE;  // Turn this off in the end
				MachineState := cwCHEMICALS;
			END_IF
     
		cwCHEMICALS:
		
			Chemicals_Action;
		
		cwHIGH_PRESSURE:
			
			HighPressureAction;
		
		cwHBRUSH:
			
			HorzBrushAction;

		cwVBRUSH:
				
			VerBrushAction;
		
		cwUNDERBODY:
			
			UnderbodyAction;
			
		cwPOLISH_HBRUSH:
			
			HorzPolishAction;
			
		cwPOLISH_VBRUSH:
			
			VertPolishAction;
			
		cwHOT_WAX:
			
			HotWaxAction;
		
		cwDRYING:
			
			DryingAction;
		
		cwERROR:
			
		cwEXIT:
		
			ExitAction;
      
		cwSTOP:
			
			IF Machine.Cmd.Start THEN
				Machine.Cmd.Stop := FALSE;
				MachineState := PreviousState;
			END_IF

	END_CASE;
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

