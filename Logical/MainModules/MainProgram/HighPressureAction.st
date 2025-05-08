
ACTION HighPressureAction: 
	
	IF (AuxilaryCtrl.Inputs.AnalogInputCarPosition > HighPressure.Parameter.StartPosition) AND NOT HighPressure.Status.ProcessInitiated THEN
		HighPressure.DigitalOutput.Pump := TRUE;
		HighPressure.DigitalOutput.Valve := TRUE;
		HighPressure.DigitalOutput.NozzlesDown := TRUE;
		HighPressure.Status.ProcessInitiated := TRUE;
	END_IF
	
	IF HighPressure.DigitalInput.SensorFront1 THEN
		HighPressure.DigitalOutput.NozzlesDown := FALSE;
	END_IF
	
	
	IF AuxilaryCtrl.Inputs.AnalogInputCarPosition > HighPressure.Parameter.StopPosition THEN
		HighPressure.DigitalOutput.Pump := FALSE;
		HighPressure.DigitalOutput.Valve := FALSE;
		HighPressure.DigitalOutput.NozzlesUp := TRUE;
		MachineState := cwHBRUSH;
	END_IF

	
END_ACTION
