
PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	

	Machine.Cmd.Start;
	
	CASE MachineState OF
		
		cwINIT:
			
			
			
		
		cwWAITING:
			// Fill the chemical Tank if lower value
		
			IF Entrance.DigitalInput.Sensor THEN
				MachineState := cwENTRANCE;
			END_IF;

		cwENTRANCE:
			
		
			AuxilaryCtrl.Outputs.DigitalOutputWaterValve := TRUE;  // Turn this off in the end
			MachineState := cwCHEMICALS;
			
		
		cwCHEMICALS:
		
			Chemicals_Action;
			
			IF Chemicals.Status.ProcessComplete  THEN
				MachineState := cwHIGH_PRESSURE;
			END_IF;	
		
		cwHIGH_PRESSURE:
			
			IF (AuxilaryCtrl.Inputs.AnalogInputCarPosition > HighPressure.Parameter.StartPosition) AND NOT HighPressure.Status.ProcessComplete THEN
				HighPressureAction;
			END_IF
			
			IF HighPressure.Status.ProcessComplete THEN
				MachineState := cwHBRUSH;
			END_IF
		
		cwHBRUSH:
			
			IF (AuxilaryCtrl.Inputs.AnalogInputCarPosition > HorizontalBrush.Parameter.StartPosition) AND NOT HorizontalBrush.Status.ProcessComplete THEN
				HorzBrushAction;
			END_IF
			
			IF HorizontalBrush.Status.ProcessComplete THEN
				MachineState := cwVBRUSH;
			END_IF
			
		
		cwVBRUSH:
			
			IF (AuxilaryCtrl.Inputs.AnalogInputCarPosition > VerticalBrush.Parameter.StartPosition) AND NOT VerticalBrush.Status.ProcessComplete THEN
				VerBrushAction;
			END_IF
			
			IF VerticalBrush.Status.ProcessComplete THEN
				MachineState := cwUNDERBODY;
			END_IF
			
			
		
		cwUNDERBODY:
			
			IF (AuxilaryCtrl.Inputs.AnalogInputCarPosition > Underbody.Parameter.StartPosition) AND NOT Underbody.Status.ProcessComplete THEN
				UnderbodyAction;
			END_IF
			
			IF Underbody.Status.ProcessComplete THEN
				MachineState := cwPOLISH_HBRUSH;
			END_IF
			
		
		cwPOLISH_HBRUSH:
			
		
		cwPOLISH_VBRUSH:
			
		
		cwHOT_WAX:
			
		
		cwDRYING:
			
		
		cwERROR:
			
		
		cwEXIT:
		
		  

	END_CASE;
	
	
	
	
	
	
	
	
	 
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

