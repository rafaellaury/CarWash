
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
		Level : DINT;
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
	PositionHolder : 	STRUCT 
		ChemStartPosn : LREAL;
		ChemStopPosn : LREAL;
		HighPressureStartPosn : LREAL;
		HighPressureStopPosn : LREAL;
		HorzBrushStartPosn : LREAL;
		HorzBrushStopPosn : LREAL;
		VerticalBrushStartPosn : LREAL;
		VerticalBrushStopPosn : LREAL;
		UnderbodyStartPosn : LREAL;
		UnderbodyStopPosn : LREAL;
		HorzPolishStartPosn : LREAL;
		HorzPolishStopPosn : LREAL;
		VertPolishStartrPosn : LREAL;
		VertPolishStopPosn : LREAL;
		HotWaxStartPosn : LREAL;
		HotWaxStopPosn : LREAL;
		Dry1StartPosn : LREAL;
		Dry1StopPosn : LREAL;
		Dry2StartPosn : LREAL;
		Dry2StopPosn : LREAL;
		ExitStartPosn : LREAL;
		ExitStopPosition : LREAL;
	END_STRUCT;
END_TYPE
