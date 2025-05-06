(*********************************************************************************
 * Copyright:   B&R Industrial Automation GmbH 
 * Author:      lauryr 
 * Created:     May 6, 2025/1:15 PM 
 * Description: Simple "recipe" system to select one of four possible programs.
 *********************************************************************************)

PROGRAM _INIT
	
END_PROGRAM

PROGRAM _CYCLIC
	
	// Only update recipe if the CarWash is not running
	IF NOT ProgramRunning THEN
		// If Mini is selected, deactivate all others and set local Program to MINI
		IF diMini THEN
			diMini := FALSE;
			MiniSelected := TRUE;
			MidiSelected := FALSE;
			MaxiSelected := FALSE;
			MultiSelected := FALSE;
			LocalProgramSelection := MINI;
		// If Midi is selected, deactivate all others and set local Program to MIDI
		ELSIF diMidi THEN
			diMidi := FALSE;
			MiniSelected := FALSE;
			MidiSelected := TRUE;
			MaxiSelected := FALSE;
			MultiSelected := FALSE;
			LocalProgramSelection := MIDI;
		// If Maxi is selected, deactivate all others and set local Program to MAXI
		ELSIF diMaxi THEN
			diMaxi := FALSE;
			MiniSelected := FALSE;
			MidiSelected := FALSE;
			MaxiSelected := TRUE;
			MultiSelected := FALSE;
			LocalProgramSelection := MAXI;
		// If Multi is selected, deactivate all others and set local Program to MULTI
		ELSIF diMulti THEN
			diMulti := FALSE;
			MiniSelected := FALSE;
			MidiSelected := FALSE;
			MaxiSelected := FALSE;
			MultiSelected := TRUE;
			LocalProgramSelection := MULTI;
		END_IF
	END_IF
	
	// If the confirm button is pressed, set the Global Program
	IF ConfirmSelection THEN
		gSelectedProgram := LocalProgramSelection;
		ProgramRunning := TRUE;
		ConfirmSelection := FALSE;
	END_IF
	
END_PROGRAM

PROGRAM _EXIT
	
END_PROGRAM

