
TYPE
	SimInputsType : 	STRUCT  (*Simulated inputs (coming from the RobotStudio model)*)
		diEntranceSensor : BOOL; (*Photocell: Entrance sensor*)
		diHighPressSensorFront1 : BOOL; (*Front light barrier, "1" is always used for the lower light barrier*)
		diHighPressSensorFront2 : BOOL; (*Front light barrier, "2" is always used for the upper light barrier*)
		diHighPressSensorBack1 : BOOL; (*Back lower light barrier*)
		diHighPressSensorBack2 : BOOL; (*Back upper light barrier*)
		diHighPressNozzlesUp : BOOL; (*End switch: nozzle rail is fully up*)
		diHighPressNozzlesDown : BOOL; (*End switch: nozzle rail is fully down*)
		diHBrushSensorFront1 : BOOL; (*Front lower light barrier*)
		diHBrushSensorFront2 : BOOL; (*Front upper light barrier*)
		diHBrushSensorBack1 : BOOL; (*Back lower light barrier*)
		diHBrushSensorBack2 : BOOL; (*Back upper light barrier*)
		diHBrushUp : BOOL; (*End switch: horizontal brush is fully up*)
		diHBrushDown : BOOL; (*End switch: horizontal brush is fully down*)
		diVBrushLClose : BOOL; (*End switch: left vertical brush is closed*)
		diVBrushLOpen : BOOL; (*End switch: left vertical brush is open*)
		diVBrushRClose : BOOL; (*End switch: right vertical brush is closed*)
		diVBrushROpen : BOOL; (*End switch: right vertical brush is open*)
		diHPolishSensorFront1 : BOOL;
		diHPolishSensorFront2 : BOOL;
		diHPolishSensorBack1 : BOOL;
		diHPolishSensorBack2 : BOOL;
		diHPolishBrushUp : BOOL;
		diHPolishBrushDown : BOOL;
		diVPolishLClose : BOOL;
		diVPolishLOpen : BOOL;
		diVPolishRClose : BOOL;
		diVPolishROpen : BOOL;
		diHDry1SensorFront1 : BOOL;
		diHDry1SensorFront2 : BOOL;
		diHDry1SensorBack1 : BOOL;
		diHDry1SensorBack2 : BOOL;
		diHDry1Up : BOOL;
		diHDry1Down : BOOL;
		diHDry2SensorFront1 : BOOL;
		diHDry2SensorFront2 : BOOL;
		diHDry2SensorBack1 : BOOL;
		diHDry2SensorBack2 : BOOL;
		diHDry2Up : BOOL;
		diHDry2Down : BOOL;
		diExitSensor : BOOL; (*Photocell: Exit sensor*)
		diExitDoorUp : BOOL; (*End switch: Exit door is fully open*)
		diExitDoorDown : BOOL; (*End switch: Exit door is fully closed*)
		aiWaterLevel : DINT; (*Fill level of water tank*)
		aiCarPosition : LREAL; (*Position of the car on the conveyor, unit [m]*)
		aiEntranceSoilLevel : DINT; (*Level of soiling: 0V = no reflection (dirty), 10V = full reflection (clean)*)
		aiChemLevel : DINT; (*Fill level of chemicals tank: 0V = empty, 10V = full*)
		aiVBrushLForce : DINT; (*Left force sensor in direction of movement, range 0 - 10V = 0 - 200 N (in 9 steps)*)
		aiVBrushLCrossForce : DINT; (*Left cross force sensor, range 0 - 10V = 0 - 200 N (in 9 steps)*)
		aiVBrushRForce : DINT; (*Right force sensor in direction of movement, range 0 - 10V = 0 - 200 N (in 9 steps)*)
		aiVBrushRCrossForce : DINT; (*Right cross force sensor, range 0 - 10V = 0 - 200 N (in 9 steps)*)
		aiVPolishLForce : DINT;
		aiVPolishLCrossForce : DINT;
		aiVPolishRForce : DINT;
		aiVPolishRCrossForce : DINT;
		aiWaxLevel : DINT; (*Fill level of hot wax tank: 0V = empty, 10V = full*)
		aiHeartbeat : DINT; (*Life counter to check connection between AS and RobotStudio*)
	END_STRUCT;
	SimOutputsType : 	STRUCT  (*Simulated outputs (going to the RobotStudio model)*)
		doWaterValve : BOOL; (*Main water supply for the car wash plant*)
		doWaterRefill : BOOL; (*Refill the water tank*)
		doConveyorMotor : BOOL; (*Conveyor chain to move the vehicle through the car wash*)
		doChemWaterValve : BOOL; (*Spray mixture of water and cleaning agent*)
		doChemRefill : BOOL; (*Refill chemicals tank*)
		doHighPressNozzlesUp : BOOL; (*Relay for lifting the nozzle rail*)
		doHighPressNozzlesDown : BOOL; (*Relay for lowering the nozzle rail*)
		doHighPressPump : BOOL; (*Central high pressure pump*)
		doHighPressValve : BOOL; (*Solenoid valve to activate high pressure spray*)
		doHBrushUp : BOOL; (*Relay for lifting the horizontal brush*)
		doHBrushDown : BOOL; (*Relay for lowering the horizontal brush*)
		doHBrushMotor : BOOL; (*Activate electric motor to turn the horizontal brush*)
		doHBrushValve : BOOL; (*Solenoid valve for activating water spray nozzles*)
		doVBrushMotor : BOOL; (*Activate electric motor to turn the vertical brushes*)
		doVBrushValve : BOOL; (*Solenoid valve to activate spray nozzles of vertical brushes*)
		doUnderbodyValve : BOOL; (*Solenoid valve to activate underbody spray nozzles*)
		doUnderbodyPump : BOOL; (*High pressure pump for underbody spray supply*)
		doHPolishBrushUp : BOOL;
		doHPolishBrushDown : BOOL;
		doHPolishBrushMotor : BOOL;
		doVPolishMotor : BOOL;
		doWaxValve : BOOL; (*Solenoid valve to spray hot liquid wax*)
		doWaxPump : BOOL; (*Pump for wax supply*)
		doWaxRefill : BOOL; (*Refill wax tank*)
		doHDry1Up : BOOL;
		doHDry1Down : BOOL;
		doHDry1Blower : BOOL; (*Blower relay*)
		doHDry1Heater : BOOL; (*Heater relay*)
		doVDryBlower : BOOL; (*Blower relay*)
		doVDryHeater : BOOL; (*Heater relay*)
		doHDry2Up : BOOL;
		doHDry2Down : BOOL;
		doHDry2Blower : BOOL;
		doHDry2Heater : BOOL;
		doExitGreenLight : BOOL; (*Green light*)
		doExitOrangeLight : BOOL; (*Orange light*)
		doExitRedLight : BOOL; (*Red light*)
		doExitDoorUp : BOOL; (*Relay for opening the exit door*)
		doExitDoorDown : BOOL; (*Relay for closing the exit door*)
		aoChemValve : DINT; (*0...32767 = 0...100% open *)
		aoHighPressVelocity : LREAL; (*Velocity of the vertical high pressure rail, unit [m/s], max: 0.5 m/s*)
		aoHBrushVelocity : LREAL; (*Velocity for the vertical brush movement, unit [m/s], max: 0,5 m/s*)
		aoVBrushLPosition : LREAL; (*Vertical left brush set position, unit [m], valid range: 0 - 1 m*)
		aoVBrushRPosition : LREAL; (*Vertical right brush set position, unit [m], valid range: 0 - 1 m*)
		aoHPolishBrushVelocity : LREAL;
		aoVPolishLPosition : LREAL;
		aoVPolishRPosition : LREAL;
		aoHDry1Velocity : LREAL;
		aoHDry2Velocity : LREAL;
		aoHeartbeat : DINT; (*Life counter to check connection between AS and RobotStudio*)
	END_STRUCT;
END_TYPE
