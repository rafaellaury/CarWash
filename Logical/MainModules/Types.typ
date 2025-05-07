
TYPE
	IOtype : 	STRUCT 
		DigitalInput : DigitalInputType;
		DigitalOutput : DigitalOutputType;
		AnalogInput : AnalogInputType;
		AnalogOutput : AnalogOutputType;
		Status : StatusType;
		Parameter : ParameterType;
	END_STRUCT;
	DigitalInputType : 	STRUCT 
		Sensor : BOOL;
		SensorFront1 : BOOL;
		SensorFront2 : BOOL;
		SensorBack1 : BOOL;
		SensorBack2 : BOOL;
		NozzlesUp : BOOL;
		NozzlesDown : BOOL;
		Pump : BOOL;
		Up : BOOL;
		Down : BOOL;
		LClose : BOOL;
		Lopen : BOOL;
		RClose : BOOL;
		Ropen : BOOL;
		DoorDown : BOOL;
		DoorUp : BOOL;
	END_STRUCT;
	DigitalOutputType : 	STRUCT 
		WaterValve : BOOL;
		Refill : BOOL;
		NozzlesUp : BOOL;
		NozzlesDown : BOOL;
		Up : BOOL;
		Down : BOOL;
		Motor : BOOL;
		Valve : BOOL;
		LPosition : BOOL;
		RPosition : BOOL;
		Pump : BOOL;
		Blower : BOOL;
		Heater : BOOL;
		Velocity : BOOL;
		GreenLight : BOOL;
		OrangeLight : BOOL;
		RedLight : BOOL;
	END_STRUCT;
	AnalogInputType : 	STRUCT 
		SoilLevel : DINT;
		Level : USINT;
		LForce : USINT;
		LCrossForce : USINT;
		RForce : USINT;
		RCrossForce : USINT;
		ChemLevel : DINT;
	END_STRUCT;
	AnalogOutputType : 	STRUCT 
		Velocity : LREAL;
		LPosition : LREAL;
		RPosition : LREAL;
		Valve : DINT;
	END_STRUCT;
	StatusType : 	STRUCT 
		ProcessInitiated : BOOL;
		ProcessComplete : BOOL;
	END_STRUCT;
	ParameterType : 	STRUCT 
		StartPosition : LREAL;
		StopPosition : LREAL;
	END_STRUCT;
END_TYPE
