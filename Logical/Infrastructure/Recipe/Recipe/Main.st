
PROGRAM _INIT
	
	MpRecipeXml_0.Enable := TRUE;
	MpRecipeXml_0.MpLink := ADR(gRecipeXml_CarWash);
	MpRecipeXml_0.DeviceName := ADR('LOCAL');
	
	MpRecipeRegPar_0.Enable := TRUE;
	MpRecipeRegPar_0.MpLink := ADR(gRecipeXml_CarWash);
	MpRecipeRegPar_0.PVName := ADR('::CarWashRecipe');
	
	MpRecipeUI_0.Enable := TRUE;
	MpRecipeUI_0.MpLink := ADR(gRecipeXml_CarWash);
	MpRecipeUI_0.UIConnect := ADR(MpRecipeUIConnect);
	 
END_PROGRAM

PROGRAM _CYCLIC
	
	selectedValue;
	
	CreateRecipes;
	
	IF CarWashRecipe.HotWax THEN
		RecipeShort := 4;
	ELSIF CarWashRecipe.PolishHBrush THEN
		RecipeShort := 3;
	ELSIF CarWashRecipe.Underbody THEN
		RecipeShort := 2;
	ELSE
		RecipeShort := 1;
	END_IF
		
	MpRecipeUIConnect.Recipe.Load;
	
	MpRecipeXml_0();
	MpRecipeRegPar_0();
	MpRecipeUI_0();
	 
END_PROGRAM

PROGRAM _EXIT
	
	MpRecipeXml_0.Enable := FALSE;
	MpRecipeXml_0();
	
	MpRecipeRegPar_0.Enable := FALSE;
	MpRecipeRegPar_0();
	
	MpRecipeUI_0.Enable := FALSE;
	MpRecipeUI_0();
		
END_PROGRAM

