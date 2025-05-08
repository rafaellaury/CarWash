
ACTION HorzBrushAction: 
	
	IF (AuxilaryCtrl.Inputs.AnalogInputCarPosition > HorizontalBrush.Parameter.StartPosition) AND NOT HorizontalBrush.Status.ProcessInitiated THEN
		HorizontalBrush.DigitalOutput.Motor := TRUE;
		HorizontalBrush.DigitalOutput.Valve := TRUE;
		HorizontalBrush.DigitalOutput.Down := TRUE;
		HorizontalBrush.Status.ProcessInitiated := TRUE;
	END_IF
	
	IF HorizontalBrush.DigitalInput.SensorFront1 THEN
		HorizontalBrush.DigitalOutput.Down := FALSE;
	END_IF
	
	IF AuxilaryCtrl.Inputs.AnalogInputCarPosition > HorizontalBrush.Parameter.StopPosition THEN
		HorizontalBrush.DigitalOutput.Motor := FALSE;
		HorizontalBrush.DigitalOutput.Valve := FALSE;
		HorizontalBrush.DigitalOutput.Up := TRUE;
		MachineState := cwVBRUSH;
	END_IF
	
END_ACTION
