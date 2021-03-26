

class X2Ability_GWML_Modifiers extends X2Ability dependson (XComGameStateContext_Ability) config(Config_GWML);

//These functions aren't needed, so while I don't want to remove the code entirely - It's all commented out. 

/*
//Add two abilities for now
var config int GWML_MOBILITY;
var config int GWML_MOBILITY_MG;
var config int GWML_MOBILITY_BM;

var config int GWML_REACTIONFIRE;
var config int GWML_REACTIONFIRE_MG;
var config int GWML_REACTIONFIRE_BM;

var config int GWML_DETECTIONRADIUS;
var config int GWML_DETECTIONRADIUS_MG;
var config int GWML_DETECTIONRADIUS_BM;

// Create the Template
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> Templates;
	
	Templates.AddItem(AddGWMLModifiers_CV());
	Templates.AddItem(AddGWMLModifiers_MG());
	Templates.AddItem(AddGWMLModifiers_BM());
	
	return Templates;
}
//
//Modifier for GWML Conventional
//
static function X2AbilityTemplate AddGWMLModifiers_CV()
{
	local X2AbilityTemplate                 Template;	
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;
	local X2Effect_ModifyReactionFire           ReactionFire;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'GWML_StatModifier_CV');
	Template.IconImage = "img:///UILibrary_PerkIcons.UIPerk_standard"; 
	
	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;
	
	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;
	Template.AbilityTriggers.AddItem(default.UnitPostBeginPlayTrigger);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	ReactionFire = new class'X2Effect_ModifyReactionFire';

	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);
	PersistentStatChangeEffect.SetDisplayInfo(ePerkBuff_Passive, "", "", Template.IconImage, false,,Template.AbilitySourceName);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility, default.GWML_MOBILITY);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_DetectionModifier, default.GWML_DETECTIONRADIUS);

	ReactionFire.ReactionModifier = default.GWML_REACTIONFIRE;
	
	Template.AddTargetEffect(PersistentStatChangeEffect);
	Template.AddTargetEffect(ReactionFire);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	
	return Template;	
}
//
//Modifier for GWML Magnetic Upgrade
//
static function X2AbilityTemplate AddGWMLModifiers_MG()
{
	local X2AbilityTemplate                 Template;	
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;
	local X2Effect_ModifyReactionFire           ReactionFire;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'GWML_StatModifier_MG');
	Template.IconImage = "img:///UILibrary_PerkIcons.UIPerk_standard"; 
	
	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;
	
	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;
	Template.AbilityTriggers.AddItem(default.UnitPostBeginPlayTrigger);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	ReactionFire = new class'X2Effect_ModifyReactionFire';

	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);
	PersistentStatChangeEffect.SetDisplayInfo(ePerkBuff_Passive, "", "", Template.IconImage, false,,Template.AbilitySourceName);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility, default.GWML_MOBILITY_MG);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_DetectionModifier, default.GWML_DETECTIONRADIUS_MG);

	ReactionFire.ReactionModifier = default.GWML_REACTIONFIRE_MG;
	
	Template.AddTargetEffect(PersistentStatChangeEffect);
	Template.AddTargetEffect(ReactionFire);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	
	return Template;	
}

//
//Modifier for GWML Beam Upgrade
//
static function X2AbilityTemplate AddGWMLModifiers_BM()
{
	local X2AbilityTemplate                 Template;	
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;
	local X2Effect_ModifyReactionFire           ReactionFire;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'GWML_StatModifier_BM');
	Template.IconImage = "img:///UILibrary_PerkIcons.UIPerk_standard"; 
	
	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;
	
	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;
	Template.AbilityTriggers.AddItem(default.UnitPostBeginPlayTrigger);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	ReactionFire = new class'X2Effect_ModifyReactionFire';

	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);
	PersistentStatChangeEffect.SetDisplayInfo(ePerkBuff_Passive, "", "", Template.IconImage, false,,Template.AbilitySourceName);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility, default.GWML_MOBILITY_BM);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_DetectionModifier, default.GWML_DETECTIONRADIUS_BM);

	ReactionFire.ReactionModifier = default.GWML_REACTIONFIRE_BM;
	
	Template.AddTargetEffect(PersistentStatChangeEffect);
	Template.AddTargetEffect(ReactionFire);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	
	return Template;	
}
*/