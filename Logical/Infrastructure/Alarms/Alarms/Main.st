(*********************************************************************************
 * Copyright:   B&R Industrial Automation GmbH 
 * Author:      lauryr 
 * Created:     May 7, 2025/11:50 AM 
 * Description: Alarm implementation for AlarmXCore and AlarmXHistory
 *********************************************************************************)

PROGRAM _INIT
	
	// Initializing function block
	MpAlarmXCore_0.Enable := TRUE;
	MpAlarmXCore_0.MpLink := ADR(gAlarmXCoreCarWash);
	
	// Initialize function block
	MpAlarmXHistory_0.Enable := TRUE;
	MpAlarmXHistory_0.MpLink := ADR(gAlarmXHistoryCarWash);
	
	
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	
	
	 
END_PROGRAM

PROGRAM _EXIT
	
	// Disabling function block
	MpAlarmXCore_0.Enable := FALSE;
	MpAlarmXCore_0();
	
	// Disabling function block
	MpAlarmXHistory_0.Enable := FALSE;
	MpAlarmXHistory_0();
	 
END_PROGRAM

