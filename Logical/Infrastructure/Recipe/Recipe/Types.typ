
TYPE
	RecipeCreateSteps : 
		( (*Steps for creating recipes*)
		IDLE := 0, (*Idle State *)
		CREATE_1 := 10, (*Create coffee mappRegular*)
		DONE_1 := 11, (*mappRegular was created*)
		CREATE_2 := 20, (*Create coffee mappEspresso*)
		DONE_2 := 21, (*mappEspresso was created*)
		CREATE_3 := 30, (*Create coffee mappCappuccino*)
		DONE_3 := 31, (*mappCappuccino was created*)
		CREATE_4 := 40, (*Create coffee mappMilkCoffee*)
		DONE_4 := 41, (*mappMilkCoffee was created*)
		REFRESH := 42,
		LOAD := 43,
		ALL_DONE := 50 (*All recipes were created*)
		);
	CarWashRecipePVType : 	STRUCT 
		Underbody : BOOL;
		PolishHBrush : BOOL;
		PolishVBrush : BOOL;
		HotWax : BOOL;
	END_STRUCT;
END_TYPE
