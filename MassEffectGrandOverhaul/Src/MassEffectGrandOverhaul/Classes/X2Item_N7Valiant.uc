class X2Item_N7Valiant extends X2Item config(N7Valiant);

// Weapon Stat Variables
var config WeaponDamageValue N7Valiant_BASEDAMAGE;
var config array<int> N7Valiant_RANGE;
var config int N7Valiant_AIM;
var config int N7Valiant_CRITCHANCE;
var config int N7Valiant_ICLIPSIZE;
var config int N7Valiant_ISOUNDRANGE;
var config int N7Valiant_IENVIRONMENTDAMAGE;
var config int N7Valiant_ISUPPLIES;
var config int N7Valiant_TRADINGPOSTVALUE;
var config int N7Valiant_IPOINTS;
var config int N7Valiant_IUPGRADESLOTS;

var config WeaponDamageValue N7Valiant_MG_BASEDAMAGE;
var config array<int> N7Valiant_MG_RANGE;
var config int N7Valiant_MG_AIM;
var config int N7Valiant_MG_CRITCHANCE;
var config int N7Valiant_MG_ICLIPSIZE;
var config int N7Valiant_MG_ISOUNDRANGE;
var config int N7Valiant_MG_IENVIRONMENTDAMAGE;
var config int N7Valiant_MG_ISUPPLIES;
var config int N7Valiant_MG_TRADINGPOSTVALUE;
var config int N7Valiant_MG_IPOINTS;
var config int N7Valiant_MG_IUPGRADESLOTS;

var config WeaponDamageValue N7Valiant_BM_BASEDAMAGE;
var config array<int> N7Valiant_BM_RANGE;
var config int N7Valiant_BM_AIM;
var config int N7Valiant_BM_CRITCHANCE;
var config int N7Valiant_BM_ICLIPSIZE;
var config int N7Valiant_BM_ISOUNDRANGE;
var config int N7Valiant_BM_IENVIRONMENTDAMAGE;
var config int N7Valiant_BM_ISUPPLIES;
var config int N7Valiant_BM_TRADINGPOSTVALUE;
var config int N7Valiant_BM_IPOINTS;
var config int N7Valiant_BM_IUPGRADESLOTS;
// Template Start
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> N7ValiantWeaps;

	N7ValiantWeaps.AddItem(CreateTemplate_N7Valiant());
	N7ValiantWeaps.AddItem(CreateTemplate_N7Valiant_MG());
	N7ValiantWeaps.AddItem(CreateTemplate_N7Valiant_BM());

	return N7ValiantWeaps;

}

// M-97 Viper Conventional Template
static function X2DataTemplate CreateTemplate_N7Valiant()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_N7Valiant');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	// Weapon Classifications
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sniper_rifle';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///N7Valiant_Assets.UILibrary.UI_M97Viper";
	Template.Tier = 0;
	// Weapon Stats
	Template.BaseDamage = default.N7Valiant_BASEDAMAGE;
	Template.RangeAccuracy = default.N7Valiant_RANGE;
	Template.Aim = default.N7Valiant_AIM;
	Template.CritChance = default.N7Valiant_CRITCHANCE;
	Template.iClipSize = default.N7Valiant_ICLIPSIZE;
	Template.iSoundRange = default.N7Valiant_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.N7Valiant_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.N7Valiant_IUPGRADESLOTS;
	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	//Weapon Abilities
	Template.iTypicalActionCost = 2;
	Template.bIsLargeWeapon = true;
	Template.Abilities.AddItem('SniperStandardFire');
	Template.Abilities.AddItem('SniperRifleOverwatch');	
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// Weapon Buildability
	Template.iPhysicsImpulse = 5;
	Template.StartingItem = true;
	Template.CanBeBuilt = false;	
	// Knockback
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;
	// Weapon Asset
	Template.GameArchetype = "N7Valiant_Assets.WP_M97Viper_CV";

	return Template;
}


// M-97 Viper Magnetic Template
static function X2DataTemplate CreateTemplate_N7Valiant_MG()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_N7Valiant_MG');
	Template.WeaponPanelImage = "_MagneticRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	// Weapon Classifications
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sniper_rifle';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///N7Valiant_Assets.UILibrary.UI_M97Viper";
	Template.Tier = 2;
	// Weapon Stats
	Template.BaseDamage = default.N7Valiant_MG_BASEDAMAGE;
	Template.RangeAccuracy = default.N7Valiant_MG_RANGE;
	Template.Aim = default.N7Valiant_MG_AIM;
	Template.CritChance = default.N7Valiant_MG_CRITCHANCE;
	Template.iClipSize = default.N7Valiant_MG_ICLIPSIZE;
	Template.iSoundRange = default.N7Valiant_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.N7Valiant_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.N7Valiant_MG_IUPGRADESLOTS;
	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	//Weapon Abilities
	Template.iTypicalActionCost = 2;
	Template.bIsLargeWeapon = true;
	Template.Abilities.AddItem('SniperStandardFire');
	Template.Abilities.AddItem('SniperRifleOverwatch');	
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// Weapon Buildability
	Template.iPhysicsImpulse = 5;
	Template.CanBeBuilt = false;	
	// Knockback
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;
	// Upgrade Data
	Template.CreatorTemplateName = 'N7Valiant_MG_Schematic';
	Template.BaseItem = 'WP_N7Valiant'; 
	// Weapon Asset
	Template.GameArchetype = "N7Valiant_Assets.WP_M97Viper_CV";

	return Template;
}

//Template Beam Creation
static function X2DataTemplate CreateTemplate_N7Valiant_BM()
{
	local X2WeaponTemplate Template;
	//Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_N7Valiant_BM');
	Template.WeaponPanelImage = "_BeamRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sniper_rifle';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///N7Valiant_Assets.UILibrary.UI_M97Viper";
	Template.Tier = 4;
	//Weapon Stat pointers
	Template.BaseDamage = default.N7Valiant_BM_BASEDAMAGE;
	Template.RangeAccuracy = default.N7Valiant_BM_RANGE;
	Template.Aim = default.N7Valiant_BM_AIM;
	Template.CritChance = default.N7Valiant_BM_CRITCHANCE;
	Template.iClipSize = default.N7Valiant_BM_ICLIPSIZE;
	Template.iSoundRange = default.N7Valiant_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.N7Valiant_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.N7Valiant_BM_IUPGRADESLOTS;
	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	//Weapon Ability pointers
	Template.iTypicalActionCost = 2;
	Template.bIsLargeWeapon = true;
	Template.Abilities.AddItem('SniperStandardFire');
	Template.Abilities.AddItem('SniperRifleOverwatch');	
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	//Can Be Built?
	Template.iPhysicsImpulse = 5;
	Template.CanBeBuilt = false;	
	//Physics
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;
	//Upgrade Template
	Template.CreatorTemplateName = 'N7Valiant_BM_Schematic';
	Template.BaseItem = 'WP_N7Valiant_MG';  
	//Weapon Assets
	Template.GameArchetype = "N7Valiant_Assets.WP_M97Viper_CV";
	
	return Template;
}