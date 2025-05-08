
ACTION HorzPolishAction: 
	
	IF (AuxilaryCtrl.Inputs.AnalogInputCarPosition > HorizontalPolishing.Parameter.StartPosition) AND NOT HorizontalPolishing.Status.ProcessInitiated THEN
		HorizontalPolishing.DigitalOutput.Motor := TRUE;
		HorizontalPolishing.DigitalOutput.Down := TRUE;
		HorizontalPolishing.Status.ProcessInitiated := TRUE;
	END_IF
	
	IF HorizontalPolishing.DigitalInput.SensorFront1 THEN
		HorizontalPolishing.DigitalOutput.Down := FALSE;
	END_IF
	
	
	IF AuxilaryCtrl.Inputs.AnalogInputCarPosition > HorizontalPolishing.Parameter.StopPosition THEN
		HorizontalPolishing.DigitalOutput.Motor := FALSE;
		HorizontalPolishing.DigitalOutput.Up := TRUE;
		MachineState := cwPOLISH_VBRUSH;
	END_IF
	
	

END_ACTION
