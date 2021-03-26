class X2Item_GWML_Weapon extends X2Item config(Config_GWML); 

//=======================================================================================
// Standard Grenade Launcher Values
//=======================================================================================
var config int GWML_ISOUNDRANGE;
var config int GWML_IENVIRONMENTDAMAGE;
var config int GWML_TRADINGPOSTVALUE;
var config int GWML_ICLIPSIZE;
var config int GWML_RANGEBONUS;
var config int GWML_RADIUSBONUS;
var config int GWML_UPGRADESLOTS;

static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> ModWeapons;
	ModWeapons.AddItem(CreateTemplate_GWML_GrenadeLauncher());
	return ModWeapons;
}

//=======================================================================================
// Standard Grenade Launcher Template
//=======================================================================================
static function X2GrenadeLauncherTemplate CreateTemplate_GWML_GrenadeLauncher()
{
	local X2GrenadeLauncherTemplate Template;

	`CREATE_X2TEMPLATE(class'X2GrenadeLauncherTemplate', Template, 'GWML');
	
	//Image in Loadout
	Template.strImage = "img:///UILibrary_LWSecondariesWOTC.InventoryArt.Inv_Conv_LWGauntlet";
	//Sound in Loudout
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";

	Template.Tier = 0;
	
	//Attributes
	Template.iSoundRange = default.GWML_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.GWML_IENVIRONMENTDAMAGE;
	Template.TradingPostValue = default.GWML_TRADINGPOSTVALUE;
	Template.iClipSize = default.GWML_ICLIPSIZE;
	Template.NumUpgradeSlots = default.GWML_UPGRADESLOTS;

	Template.IncreaseGrenadeRadius = default.GWML_RADIUSBONUS;
	Template.IncreaseGrenadeRange = default.GWML_RANGEBONUS;
	Template.SetUIStatMarkup(class'XLocalizedData'.default.GrenadeRangeBonusLabel, , default.GWML_RANGEBONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.GrenadeRadiusBonusLabel, , default.GWML_RADIUSBONUS);

	
	//Source Model, Animations, Etc.
	Template.GameArchetype = "LWGauntletWOTC.Archetypes.WP_Gauntlet_RocketLauncher_CV";
	
	//When is this weapon available?
	Template.StartingItem = false;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;

	//Unused
	//Template.Abilities.AddItem('GWML_StatModifier_CV');
	//Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, eStat_Mobility, class'X2Ability_GWML_Modifiers'.default.GWML_MOBILITY);

	return Template;
}

defaultproperties
{
bShouldCreateDifficultyVariants = true
}
