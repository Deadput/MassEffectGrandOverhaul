class X2Ability_VestAbilities extends X2Ability_ItemGrantedAbilitySet config(UtilityItem);


var config int CeramicWeave_HealPerTurn, CeramicWeave_MaxHeal, CeramicWeave_Shield;
var config int AlloyWeave_HealPerTurn, AlloyWeave_MaxHeal, AlloyWeave_Shield;
var config int ChitanWeave_HealPerTurn, ChitanWeave_MaxHeal, ChitanWeave_Shield;
var config int CarapaceWeave_HealPerTurn, CarapaceWeave_MaxHeal, CarapaceWeave_Shield;


static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> Templates;
		
	Templates.AddItem(CeramicWeaveAbility());
	Templates.AddItem(AlloyWeaveAbility());
	Templates.AddItem(ChitanWeaveAbility());
	Templates.AddItem(CarapaceWeaveAbility());
			
	return Templates;
}


//Template.OverrideAbilities.AddItem('IRI_VestAblativeHPBonus');


static function X2AbilityTemplate CeramicWeaveAbility()
{
	local X2AbilityTemplate                 Template;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;
	local X2Effect_AutoMendShield			RegenerationEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'CeramicWeaveAbility');
	Template.IconImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_Scorch_Circuits";

	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;

	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;
	Template.AbilityTriggers.AddItem(default.UnitPostBeginPlayTrigger);
	
	// Build the regeneration effect
	RegenerationEffect = new class'X2Effect_AutoMendShield';
	RegenerationEffect.BuildPersistentEffect(1, true, true, false, eGameRule_PlayerTurnBegin);
	RegenerationEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage, true, , Template.AbilitySourceName);
	RegenerationEffect.HealAmount = default.CeramicWeave_HealPerTurn;
	RegenerationEffect.MaxHealAmount = default.CeramicWeave_MaxHeal;
	RegenerationEffect.HealthRegeneratedName = 'CeramicWeaveShieldRegenerated';
	Template.AddTargetEffect(RegenerationEffect);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);
	PersistentStatChangeEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage, false, , Template.AbilitySourceName);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ShieldHP, default.CeramicWeave_Shield);
	Template.AddTargetEffect(PersistentStatChangeEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;

	return Template;
}

static function X2AbilityTemplate AlloyWeaveAbility()
{
	local X2AbilityTemplate                 Template;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;
	local X2Effect_AutoMendShield			RegenerationEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'AlloyWeaveAbility');
	Template.IconImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_Scorch_Circuits";

	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;

	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;
	Template.AbilityTriggers.AddItem(default.UnitPostBeginPlayTrigger);
	
	// Build the regeneration effect
	RegenerationEffect = new class'X2Effect_AutoMendShield';
	RegenerationEffect.BuildPersistentEffect(1, true, true, false, eGameRule_PlayerTurnBegin);
	RegenerationEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage, true, , Template.AbilitySourceName);
	RegenerationEffect.HealAmount = default.AlloyWeave_HealPerTurn;
	RegenerationEffect.MaxHealAmount = default.AlloyWeave_MaxHeal;
	RegenerationEffect.HealthRegeneratedName = 'AlloyWeaveShieldRegenerated';
	Template.AddTargetEffect(RegenerationEffect);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);
	PersistentStatChangeEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage, false, , Template.AbilitySourceName);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ShieldHP, default.AlloyWeave_Shield);
	Template.AddTargetEffect(PersistentStatChangeEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;

	return Template;
}


static function X2AbilityTemplate ChitanWeaveAbility()
{
	local X2AbilityTemplate                 Template;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;
	local X2Effect_AutoMendShield			RegenerationEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'ChitanWeaveAbility');
	Template.IconImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_Scorch_Circuits";

	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;

	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;
	Template.AbilityTriggers.AddItem(default.UnitPostBeginPlayTrigger);
	
	// Build the regeneration effect
	RegenerationEffect = new class'X2Effect_AutoMendShield';
	RegenerationEffect.BuildPersistentEffect(1, true, true, false, eGameRule_PlayerTurnBegin);
	RegenerationEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage, true, , Template.AbilitySourceName);
	RegenerationEffect.HealAmount = default.ChitanWeave_HealPerTurn;
	RegenerationEffect.MaxHealAmount = default.ChitanWeave_MaxHeal;
	RegenerationEffect.HealthRegeneratedName = 'ChitanWeaveShieldRegenerated';
	Template.AddTargetEffect(RegenerationEffect);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);
	PersistentStatChangeEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage, false, , Template.AbilitySourceName);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ShieldHP, default.ChitanWeave_Shield);
	Template.AddTargetEffect(PersistentStatChangeEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;

	return Template;
}

static function X2AbilityTemplate CarapaceWeaveAbility()
{
	local X2AbilityTemplate                 Template;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;
	local X2Effect_AutoMendShield			RegenerationEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'CarapaceWeaveAbility');
	Template.IconImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_Scorch_Circuits";

	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;

	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;
	Template.AbilityTriggers.AddItem(default.UnitPostBeginPlayTrigger);
	
	// Build the regeneration effect
	RegenerationEffect = new class'X2Effect_AutoMendShield';
	RegenerationEffect.BuildPersistentEffect(1, true, true, false, eGameRule_PlayerTurnBegin);
	RegenerationEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage, true, , Template.AbilitySourceName);
	RegenerationEffect.HealAmount = default.CarapaceWeave_HealPerTurn;
	RegenerationEffect.MaxHealAmount = default.CarapaceWeave_MaxHeal;
	RegenerationEffect.HealthRegeneratedName = 'CarapaceWeaveShieldRegenerated';
	Template.AddTargetEffect(RegenerationEffect);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);
	PersistentStatChangeEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage, false, , Template.AbilitySourceName);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ShieldHP, default.CarapaceWeave_Shield);
	Template.AddTargetEffect(PersistentStatChangeEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;

	return Template;
}