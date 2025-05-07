
ACTION VerBrushAction: 
	
	HorizontalBrush.DigitalOutput.Up := FALSE;
	
	VerticalBrush.AnalogOutput.LPosition := 0.5;
	VerticalBrush.AnalogOutput.RPosition := 0.5;
	VerticalBrush.DigitalOutput.Valve := TRUE;
	VerticalBrush.DigitalOutput.Motor := TRUE;
	
	IF AuxilaryCtrl.Inputs.AnalogInputCarPosition > VerticalBrush.Parameter.StopPosition THEN
		VerticalBrush.DigitalOutput.Valve := FALSE;
		VerticalBrush.DigitalOutput.Motor := FALSE;
		VerticalBrush.Status.ProcessComplete := TRUE;
	END_IF
	
		
	
	
	

END_ACTION
