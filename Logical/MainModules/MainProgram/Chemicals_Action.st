
ACTION Chemicals_Action: 
	
		
	IF (AuxilaryCtrl.Inputs.AnalogInputCarPosition > Chemicals.Parameter.StartPosition) AND NOT Chemicals.Status.ProcessComplete THEN
		Chemicals.DigitalOutput.WaterValve := TRUE;                            // Turning the Valve ON
		Chemicals.AnalogOutput.Valve := Entrance.AnalogInput.SoilLevel;        // Cleaning agent
	END_IF
	
	IF AuxilaryCtrl.Inputs.AnalogInputCarPosition > Chemicals.Parameter.StopPosition THEN
		Chemicals.DigitalOutput.WaterValve := FALSE;
		Chemicals.Status.ProcessComplete := TRUE;
	END_IF
		

END_ACTION
