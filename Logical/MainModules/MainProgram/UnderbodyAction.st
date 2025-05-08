
ACTION UnderbodyAction: 
	
	Underbody.DigitalOutput.Valve := TRUE;
	Underbody.DigitalOutput.Pump := TRUE;
	
	IF AuxilaryCtrl.Inputs.AnalogInputCarPosition > Underbody.Parameter.StopPosition THEN
		Underbody.DigitalOutput.Valve := FALSE;
		Underbody.DigitalOutput.Pump := FALSE;
		Underbody.Status.ProcessComplete := TRUE;
	END_IF
	
		

END_ACTION
