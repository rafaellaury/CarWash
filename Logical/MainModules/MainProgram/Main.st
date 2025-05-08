//***
//SOMEONE SOMEWHERE AT SOMETIME
//***

PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)

	Chemicals.Parameter.StartPosition := PositionData.ChemStartPosn;
	Chemicals.Parameter.StopPosition := PositionData.ChemStopPosn;
	
	
    //	HighPressure.Parameter.StartPosition := 8.5;
	//	HighPressure.Parameter.StopPosition := 14.0;
	
	HighPressure.Parameter.StartPosition := PositionData.HighPressureStartPosn;
	HighPressure.Parameter.StopPosition := PositionData.HighPressureStopPosn;
	
	HighPressure.AnalogOutput.Velocity := 0.1;
	
//	HorizontalBrush.Parameter.StartPosition :=14.8;
//	HorizontalBrush.Parameter.StopPosition := 19.6;
	HorizontalBrush.AnalogOutput.Velocity := 0.1;
	
	HorizontalBrush.Parameter.StartPosition :=PositionData.HorzBrushStartPosn;
	HorizontalBrush.Parameter.StopPosition := PositionData.HorzBrushStopPosn;

	
	
//	VerticalBrush.Parameter.StartPosition := 20.5;
	//	VerticalBrush.Parameter.StopPosition := 25.5;
	
	VerticalBrush.Parameter.StartPosition := PositionData.VerticalBrushStartPosn;
	VerticalBrush.Parameter.StopPosition := PositionData.VerticalBrushStopPosn;
	
	
//	Underbody.Parameter.StartPosition := 26.0;
	//	Underbody.Parameter.StopPosition := 32.0;
	
	Underbody.Parameter.StartPosition := PositionData.UnderbodyStartPosn;
	Underbody.Parameter.StopPosition := PositionData.UnderbodyStopPosn;
	
	
	
//	HorizontalPolishing.Parameter.StartPosition := 32.2;
//	HorizontalPolishing.Parameter.StopPosition  := 38.2;
	HorizontalPolishing.AnalogOutput.Velocity := 0.1;
	
	HorizontalPolishing.Parameter.StartPosition := PositionData.HorzPolishStartPosn;
	HorizontalPolishing.Parameter.StopPosition  := PositionData.HorzPolishStopPosn;
	
	
	
	
//	
//	VerticalPolishing.Parameter.StartPosition := 38.8;
//	VerticalPolishing.Parameter.StopPosition :=  44.0;
	
	
	VerticalPolishing.Parameter.StartPosition := PositionData.VertPolishStartrPosn;
	VerticalPolishing.Parameter.StopPosition :=  PositionData.VertPolishStopPosn;
	
	
	
//	HotWax.Parameter.StartPosition := 44.2;
//	HotWax.Parameter.StopPosition := 49.2;
	
	HotWax.Parameter.StartPosition := PositionData.HotWaxStartPosn;
	HotWax.Parameter.StopPosition := PositionData.HotWaxStopPosn;
	
	
//	
	//	Dryyiing1.Parameter.StartPosition := 50.6;
	
	Dryyiing1.Parameter.StartPosition := PositionData.Dry1StartPosn;
	Dryyiing1.AnalogOutput.Velocity := 0.1;
	//	Dryying2.Parameter.StartPosition := 53.8;
	Dryying2.Parameter.StartPosition := PositionData.Dry2StartPosn;
	Dryying2.AnalogOutput.Velocity := 0.1;
	
	
	//	Dryyiing1.Parameter.StopPosition := 54.0;
	Dryyiing1.Parameter.StopPosition := PositionData.Dry1StopPosn;
	//	Dryying2.Parameter.StopPosition := 57.0;
		Dryying2.Parameter.StopPosition := PositionData.Dry2StopPosn;
	
	
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

