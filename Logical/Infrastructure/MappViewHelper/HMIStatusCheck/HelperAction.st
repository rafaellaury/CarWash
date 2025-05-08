(*********************************************************************************
 * Copyright:   B&R Industrial Automation GmbH 
 * Author:      lauryr 
 * Created:     May 8, 2025/11:03 AM 
 * Description: Helper action file for the main
 *********************************************************************************)

ACTION SetLightsFalse: 

	// Set all lights off
	FOR i := 0 TO 10 DO
		StationLights[i] := FALSE;
	END_FOR
	
	
END_ACTION
