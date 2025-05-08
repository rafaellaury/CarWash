
ACTION HotWaxAction: 
	
	IF (AuxilaryCtrl.Inputs.AnalogInputCarPosition > HotWax.Parameter.StartPosition) AND NOT HotWax.Status.ProcessInitiated THEN
		HotWax.DigitalOutput.Valve := TRUE;
		HotWax.DigitalOutput.Pump := TRUE;
		HotWax.Status.ProcessInitiated := TRUE;
	END_IF
	
	IF AuxilaryCtrl.Inputs.AnalogInputCarPosition > HotWax.Parameter.StopPosition THEN
		HotWax.DigitalOutput.Valve := FALSE;
		HotWax.DigitalOutput.Pump := FALSE;
		MachineState := cwPOLISH_HBRUSH;
	END_IF
	

END_ACTION
