
TYPE
	Status : 	STRUCT 
		ProcessInitiated : BOOL;
		ProcessComplete : BOOL;
	END_STRUCT;
	IO : 	STRUCT 
		DigitalInput : DigitalInputType;
		DigitalOutput : DigitalOutputType;
		AnalogInput : AnalogInputType;
		AnalogOutput : AnalogOutputType;
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
		BrushUp : BOOL;
		BrushDown : BOOL;
		DoorDown : BOOL;
		DoorUp : BOOL;
	END_STRUCT;
	DigitalOutputType : 	STRUCT 
		WaterValve : BOOL;
		Refill : BOOL;
		NozzlesUp : BOOL;
		NozzlesDown : BOOL;
		PressurePump : BOOL;
		PressureValve : BOOL;
		Up : BOOL;
		Down : BOOL;
		Motor : BOOL;
		Valve : BOOL;
		LPosition : BOOL;
		RPosition : BOOL;
		Pump : BOOL;
		BrushUp : BOOL;
		BrushDown : BOOL;
		BrushMotor : BOOL;
		Blower : BOOL;
		Heater : BOOL;
		Velocity : BOOL;
		GreenLight : BOOL;
		OrangeLight : BOOL;
		RedLight : BOOL;
	END_STRUCT;
	AnalogInputType : 	STRUCT 
		SoilLevel : USINT;
		Level : USINT;
		LForce : USINT;
		LCrossForce : USINT;
		RForce : USINT;
		RCrossForce : USINT;
	END_STRUCT;
	AnalogOutputType : 	STRUCT 
		Velocity : USINT;
		LPosition : USINT;
		RPosition : USINT;
	END_STRUCT;
END_TYPE
