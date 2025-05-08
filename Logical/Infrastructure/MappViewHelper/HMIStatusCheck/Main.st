
PROGRAM _INIT
	(* Insert code here *)
	
	SetLightsFalse;
	
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	
	IF MachineState <> cwWAITING THEN
		EnableRecipe := FALSE;
	END_IF
		
	CASE MachineState OF
		cwINIT:
			
			IF Index > 0 THEN
				Index := 0;
				SetLightsFalse;
			END_IF
			
			MachineStatus := 'Initializing the machine';
			MachineStatusShort := 'cwINIT';
		
		cwWAITING:
			
			MachineStatus := 'Waiting for Recipe selection and Start signal';
			MachineStatusShort := 'cwWAITING';
			EnableRecipe := TRUE;

		cwENTRANCE:
			
			StationLights[Index] := TRUE;
			MachineStatus := 'Car Wash started, car at entrance';
			MachineStatusShort := 'cwENTRANCE';
				
		cwCHEMICALS:
		
			IF Index <> 1 THEN
				Index := 1;
			END_IF
						
			StationLights[Index] := TRUE;
			MachineStatus := 'Chemicals Station active';
			MachineStatusShort := 'cwCHEMICALS';
			
					
		cwHIGH_PRESSURE:
			
			IF Index <> 2 THEN
				Index := 2;
			END_IF
						
			StationLights[Index] := TRUE;
			MachineStatus := 'High Pressure Station active';
			MachineStatusShort := 'cwHIGH_PRESSURE';
				
		cwHBRUSH:
			
			IF Index <> 3 THEN
				Index := 3;
			END_IF
						
			StationLights[Index] := TRUE;
			MachineStatus := 'Horizontal Brush Station active';
			MachineStatusShort := 'cwHBRUSH';
		
		cwVBRUSH:
				
			IF Index <> 4 THEN
				Index := 4;
			END_IF
						
			StationLights[Index] := TRUE;
			MachineStatus := 'Vertical Brush Station active';
			MachineStatusShort := 'cwVBRUSH';	
		
		cwUNDERBODY:
			
			IF Index <> 5 THEN
				Index := 5;
			END_IF
						
			StationLights[Index] := TRUE;
			MachineStatus := 'Underbody Station active';	
			MachineStatusShort := 'cwPOLISH';
		
		cwPOLISH_HBRUSH:
			
			IF Index <> 6 THEN
				Index := 6;
			END_IF
						
			StationLights[Index] := TRUE;
			MachineStatus := 'Polish Horizontal Brush Station active';	
			MachineStatusShort := 'cwPOLISH_HBRUSH';
		
		cwPOLISH_VBRUSH:
			
			IF Index <> 7 THEN
				Index := 7;
			END_IF
						
			StationLights[Index] := TRUE;
			MachineStatus := 'Polish Vertical Brush Station active';
			MachineStatusShort := 'cwPOLISH_VBRUSH';	
		
		cwHOT_WAX:
			
			IF Index <> 8 THEN
				Index := 8;
			END_IF
						
			StationLights[Index] := TRUE;
			MachineStatus := 'Hot Wax Station active';	
			MachineStatusShort := 'cwHOT_WAX';
		
		cwDRYING:
			
			IF Index <> 9 THEN
				Index := 9;
			END_IF
						
			StationLights[Index] := TRUE;
			MachineStatus := 'Drying Station active';
			MachineStatusShort := 'cwDRYING';
		
		cwERROR:

			IF StationLights[Index] THEN
				Index := 0;
				SetLightsFalse;
			END_IF
		
			MachineStatus := 'Car wash is in error';
			MachineStatusShort := 'cwERROR';
			
		cwEXIT:
			
			IF Index <> 10 THEN
				Index := 10;
			END_IF
						
			StationLights[Index] := TRUE;
			MachineStatus := 'Car at exit, car wash complete';
			MachineStatusShort := 'cwEXIT';
		
	END_CASE
	
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

