
ACTION VertPolishAction: 
	
	IF (AuxilaryCtrl.Inputs.AnalogInputCarPosition > VerticalPolishing.Parameter.StartPosition) AND NOT VerticalPolishing.Status.ProcessInitiated THEN
		VerticalPolishing.AnalogOutput.LPosition := 0.4;
		VerticalPolishing.AnalogOutput.RPosition := 0.4;
		VerticalPolishing.DigitalOutput.Motor := TRUE;
		VerticalPolishing.Status.ProcessInitiated := TRUE;
	END_IF
	
	IF AuxilaryCtrl.Inputs.AnalogInputCarPosition > VerticalPolishing.Parameter.StopPosition THEN
		VerticalPolishing.DigitalOutput.Motor := FALSE;
		MachineState := cwHOT_WAX;
	END_IF
	
		

END_ACTION
