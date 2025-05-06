
PROGRAM _INIT
	SimInputs;
	SimOutputs;	 
END_PROGRAM

PROGRAM _CYCLIC
	SimOutputs.aoHeartbeat := SimOutputs.aoHeartbeat + 1;
	
	IF (SimOutputs.aoHeartbeat - SimInputs.aiHeartbeat < SIM_TRESHOLD) AND (SimInputs.aiHeartbeat <> 0) THEN
		SimConnected := TRUE;
	ELSE
		SimConnected := FALSE;
	END_IF;
	 
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

