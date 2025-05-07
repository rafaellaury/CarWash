
TYPE
	Input : 	STRUCT 
		AnalogInputWaterLvl : USINT;
		AnalogInputCarPosition : LREAL;
	END_STRUCT;
	Output : 	STRUCT 
		DigitalOutputConvMotor : BOOL;
		DigitalOutputWaterValve : BOOL;
		DigitalOutputWaterRefill : BOOL;
	END_STRUCT;
	AuxilaryIO : 	STRUCT 
		Inputs : Input;
		Outputs : Output;
	END_STRUCT;
END_TYPE
