
ACTION ExitAction: 
	
	IF (AuxilaryCtrl.Inputs.AnalogInputCarPosition > ExitDoor.Parameter.StartPosition) AND NOT ExitDoor.Status.ProcessInitiated THEN
		ExitDoor.DigitalOutput.RedLight := FALSE;
		ExitDoor.DigitalOutput.GreenLight := TRUE;
		ExitDoor.Status.ProcessInitiated := TRUE;
	END_IF
	
		
	
	IF AuxilaryCtrl.Inputs.AnalogInputCarPosition > ExitDoor.Parameter.StartPosition THEN
		ExitDoor.DigitalOutput.Up := FALSE;
		ExitDoor.DigitalOutput.GreenLight := FALSE;
		ExitDoor.DigitalOutput.OrangeLight := FALSE;
		ExitDoor.DigitalOutput.RedLight := FALSE;
		MachineState:= cwINIT;
	END_IF
	
	

END_ACTION
