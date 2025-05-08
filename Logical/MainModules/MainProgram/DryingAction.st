
ACTION DryingAction: 
	
	
	IF (AuxilaryCtrl.Inputs.AnalogInputCarPosition > Dryyiing1.Parameter.StartPosition) AND NOT Dryyiing1.Status.ProcessInitiated THEN
		Dryyiing1.DigitalOutput.Blower := TRUE;
		Dryyiing1.DigitalOutput.Heater := TRUE;
		Dryyiing1.DigitalOutput.Down := TRUE;
		Dryyiing1.Status.ProcessInitiated := TRUE;
		VerticalDryer.DigitalOutput.Blower := TRUE;
		VerticalDryer.DigitalOutput.Heater := TRUE;
	END_IF
	
	IF Dryyiing1.DigitalInput.SensorFront1 THEN
		Dryyiing1.DigitalOutput.Down := FALSE;
	END_IF
	
	
	IF AuxilaryCtrl.Inputs.AnalogInputCarPosition > Dryyiing1.Parameter.StopPosition THEN
		Dryyiing1.DigitalOutput.Blower := FALSE;
		Dryyiing1.DigitalOutput.Heater := FALSE;
		Dryyiing1.DigitalOutput.Up := TRUE;
	END_IF
	
	
	
		
	IF (AuxilaryCtrl.Inputs.AnalogInputCarPosition > Dryying2.Parameter.StartPosition) AND NOT Dryying2.Status.ProcessInitiated THEN
		Dryying2.DigitalOutput.Blower := TRUE;
		Dryying2.DigitalOutput.Heater := TRUE;
		Dryying2.DigitalOutput.Down := TRUE;
		Dryying2.Status.ProcessInitiated := TRUE;
	END_IF

	IF Dryying2.DigitalInput.SensorFront1 THEN
		Dryying2.DigitalOutput.Down := FALSE;
	END_IF
		
	IF AuxilaryCtrl.Inputs.AnalogInputCarPosition > Dryying2.Parameter.StopPosition THEN
		Dryying2.DigitalOutput.Blower := FALSE;
		Dryying2.DigitalOutput.Heater := FALSE;
		Dryying2.DigitalOutput.Up := TRUE;
		VerticalDryer.DigitalOutput.Blower := FALSE;
		VerticalDryer.DigitalOutput.Heater := FALSE;
		MachineState := cwEXIT;
	END_IF
	
		
		
		
	
	
			
		
		
	

END_ACTION
