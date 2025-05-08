
ACTION UnderbodyAction: 
	
	IF (AuxilaryCtrl.Inputs.AnalogInputCarPosition > Underbody.Parameter.StartPosition) AND NOT Underbody.Status.ProcessInitiated THEN
		Underbody.DigitalOutput.Valve := TRUE;
		Underbody.DigitalOutput.Pump := TRUE;
		Underbody.Status.ProcessInitiated := TRUE;
	END_IF
	
	
	IF AuxilaryCtrl.Inputs.AnalogInputCarPosition > Underbody.Parameter.StopPosition THEN
		Underbody.DigitalOutput.Valve := FALSE;
		Underbody.DigitalOutput.Pump := FALSE;

		IF CarWashRecipe.PolishHBrush THEN
			MachineState := cwPOLISH_HBRUSH;
		ELSIF CarWashRecipe.HotWax THEN
			MachineState := cwHOT_WAX;
		ELSE
			MachineState := cwDRYING;
		END_IF
    
	END_IF
	
END_ACTION
