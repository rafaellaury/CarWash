
ACTION VerBrushAction: 
	
	IF (AuxilaryCtrl.Inputs.AnalogInputCarPosition > VerticalBrush.Parameter.StartPosition) AND NOT VerticalBrush.Status.ProcessInitiated THEN
		VerticalBrush.AnalogOutput.LPosition := 0.4;
		VerticalBrush.AnalogOutput.RPosition := 0.4;
		VerticalBrush.DigitalOutput.Valve := TRUE;
		VerticalBrush.DigitalOutput.Motor := TRUE;
		VerticalBrush.Status.ProcessInitiated := TRUE;
	END_IF
	
	IF AuxilaryCtrl.Inputs.AnalogInputCarPosition > VerticalBrush.Parameter.StopPosition THEN
		VerticalBrush.DigitalOutput.Valve := FALSE;
		VerticalBrush.DigitalOutput.Motor := FALSE;
		IF CarWashRecipe.Underbody THEN
			MachineState := cwUNDERBODY;
		ELSIF CarWashRecipe.PolishHBrush THEN
			MachineState := cwPOLISH_HBRUSH;
		ELSIF CarWashRecipe.HotWax THEN
			MachineState := cwHOT_WAX;
		ELSE
			MachineState := cwDRYING;
		END_IF
					
	END_IF	

END_ACTION
