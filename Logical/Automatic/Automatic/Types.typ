
TYPE
	StateMachine : 
		(
		cwINIT,
		cwWAITING,
		cwENTRANCE,
		cwCHEMICALS,
		cwHIGH_PRESSURE,
		cwHBRUSH,
		cwVBRUSH,
		cwUNDERBODY,
		cwPOLISH_HBRUSH,
		cwPOLISH_VBRUSH,
		cwHOT_WAX,
		cwDRYING,
		cwERROR,
		cwEXIT
		);
	ControlStructure : 	STRUCT 
		Cmd : CommandType;
		Par : ParameterType;
		Status : StatusType;
	END_STRUCT;
	CommandType : 	STRUCT 
		Start : BOOL;
		Stop : BOOL;
		Reset : BOOL;
	END_STRUCT;
	ParameterType : 	STRUCT 
		WashProgram : INT;
	END_STRUCT;
	StatusType : 	STRUCT 
		Running : BOOL;
		Sopped : BOOL;
	END_STRUCT;
END_TYPE
