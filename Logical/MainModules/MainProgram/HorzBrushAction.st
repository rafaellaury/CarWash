
ACTION HorzBrushAction: 
	
	HighPressure.DigitalOutput.NozzlesUp := FALSE;
	
	HorizontalBrush.DigitalOutput.Motor := TRUE;
	HorizontalBrush.DigitalOutput.Valve := TRUE;
	HorizontalBrush.DigitalOutput.Down := TRUE;
	
	IF HorizontalBrush.DigitalInput.SensorFront1 THEN
		HorizontalBrush.DigitalOutput.Down := FALSE;
		HorizontalBrush.DigitalOutput.Up := TRUE;
	END_IF
	
	IF NOT HorizontalBrush.DigitalInput.SensorFront1 THEN
		HorizontalBrush.DigitalOutput.Up := FALSE;
	END_IF
	
	IF AuxilaryCtrl.Inputs.AnalogInputCarPosition > HorizontalBrush.Parameter.StopPosition THEN
		HorizontalBrush.DigitalOutput.Motor := FALSE;
		HorizontalBrush.DigitalOutput.Valve := FALSE;
		HorizontalBrush.Status.ProcessComplete := TRUE;
		HorizontalBrush.DigitalOutput.Up := TRUE;
	END_IF
	
		
		
		
		
	
	
	
END_ACTION
