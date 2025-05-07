
ACTION HighPressureAction: 
	
	HighPressure.DigitalOutput.Pump := TRUE;
	HighPressure.DigitalOutput.Valve := TRUE;
	HighPressure.DigitalOutput.NozzlesDown := TRUE;
	
	IF HighPressure.DigitalInput.SensorFront1 THEN
		HighPressure.DigitalOutput.NozzlesDown := FALSE;
		HighPressure.DigitalOutput.NozzlesUp := TRUE;
	END_IF
	
	IF NOT HighPressure.DigitalInput.SensorFront1 THEN
		HighPressure.DigitalOutput.NozzlesUp := FALSE;
	END_IF
	
	IF AuxilaryCtrl.Inputs.AnalogInputCarPosition > HighPressure.Parameter.StopPosition THEN
		HighPressure.DigitalOutput.Pump := FALSE;
		HighPressure.DigitalOutput.Valve := FALSE;
		HighPressure.Status.ProcessComplete := TRUE;
		HighPressure.DigitalOutput.NozzlesUp := TRUE;
	END_IF

	
END_ACTION
