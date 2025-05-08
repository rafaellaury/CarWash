//
(*SOMEONE SOMEWHERE AT SOMETIME*)
//

PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)

	(*Paramet setting*)
	Chemicals.Parameter.StartPosition := PositionData.ChemStartPosn;
	Chemicals.Parameter.StopPosition := PositionData.ChemStopPosn;
	
	(*Paramet setting*)
	HighPressure.Parameter.StartPosition := PositionData.HighPressureStartPosn;
	HighPressure.Parameter.StopPosition := PositionData.HighPressureStopPosn;
	HighPressure.AnalogOutput.Velocity := 0.1;
	
	(*Paramet setting*)
	HorizontalBrush.AnalogOutput.Velocity := 0.1;
	HorizontalBrush.Parameter.StartPosition :=PositionData.HorzBrushStartPosn;
	HorizontalBrush.Parameter.StopPosition := PositionData.HorzBrushStopPosn;

	(*Paramet setting*)
	VerticalBrush.Parameter.StartPosition := PositionData.VerticalBrushStartPosn;
	VerticalBrush.Parameter.StopPosition := PositionData.VerticalBrushStopPosn;
	
	(*Paramet setting*)
	Underbody.Parameter.StartPosition := PositionData.UnderbodyStartPosn;
	Underbody.Parameter.StopPosition := PositionData.UnderbodyStopPosn;
	
	(*Paramet setting*)
	HorizontalPolishing.AnalogOutput.Velocity := 0.1;
	
	(*Paramet setting*)
	HorizontalPolishing.Parameter.StartPosition := PositionData.HorzPolishStartPosn;
	HorizontalPolishing.Parameter.StopPosition  := PositionData.HorzPolishStopPosn;
	
	(*Paramet setting*)
	VerticalPolishing.Parameter.StartPosition := PositionData.VertPolishStartrPosn;
	VerticalPolishing.Parameter.StopPosition :=  PositionData.VertPolishStopPosn;
	
	(*Paramet setting*)
	HotWax.Parameter.StartPosition := PositionData.HotWaxStartPosn;
	HotWax.Parameter.StopPosition := PositionData.HotWaxStopPosn;
	
	(*Paramet setting*)
	Dryyiing1.Parameter.StartPosition := PositionData.Dry1StartPosn;
	Dryyiing1.AnalogOutput.Velocity := 0.1;

	(*Paramet setting*)
	Dryying2.Parameter.StartPosition := PositionData.Dry2StartPosn;
	Dryying2.AnalogOutput.Velocity := 0.1;
	
	(*Paramet setting*)
	Dryyiing1.Parameter.StopPosition := PositionData.Dry1StopPosn;
	Dryying2.Parameter.StopPosition := PositionData.Dry2StopPosn;
	
	(*Paramet setting*)
	ExitDoor.Parameter.StartPosition := PositionData.ExitStartPosn;
	ExitDoor.Parameter.StopPosition := PositionData.ExitStopPosition;
	
	Chemicals_Action;
	HighPressureAction;
	HorzBrushAction;
	VerBrushAction;
	UnderbodyAction;
	HorzPolishAction;
	VertPolishAction;
	HotWaxAction;
	DryingAction;
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

