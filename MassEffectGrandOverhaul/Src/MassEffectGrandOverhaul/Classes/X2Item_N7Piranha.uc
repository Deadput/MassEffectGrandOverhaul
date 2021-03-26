class X2Item_N7Piranha extends X2Item config(N7Piranha);

// Weapon Stat Variables
var config WeaponDamageValue N7Piranha_BASEDAMAGE;
var config array<int> N7Piranha_RANGE;
var config int N7Piranha_AIM;
var config int N7Piranha_CRITCHANCE;
var config int N7Piranha_ICLIPSIZE;
var config int N7Piranha_ISOUNDRANGE;
var config int N7Piranha_IENVIRONMENTDAMAGE;
var config int N7Piranha_ISUPPLIES;
var config int N7Piranha_TRADINGPOSTVALUE;
var config int N7Piranha_IPOINTS;
var config int N7Piranha_IUPGRADESLOTS;

var config WeaponDamageValue N7Piranha_MG_BASEDAMAGE;
var config array<int> N7Piranha_MG_RANGE;
var config int N7Piranha_MG_AIM;
var config int N7Piranha_MG_CRITCHANCE;
var config int N7Piranha_MG_ICLIPSIZE;
var config int N7Piranha_MG_ISOUNDRANGE;
var config int N7Piranha_MG_IENVIRONMENTDAMAGE;
var config int N7Piranha_MG_ISUPPLIES;
var config int N7Piranha_MG_TRADINGPOSTVALUE;
var config int N7Piranha_MG_IPOINTS;
var config int N7Piranha_MG_IUPGRADESLOTS;

var config WeaponDamageValue N7Piranha_BM_BASEDAMAGE;
var config array<int> N7Piranha_BM_RANGE;
var config int N7Piranha_BM_AIM;
var config int N7Piranha_BM_CRITCHANCE;
var config int N7Piranha_BM_ICLIPSIZE;
var config int N7Piranha_BM_ISOUNDRANGE;
var config int N7Piranha_BM_IENVIRONMENTDAMAGE;
var config int N7Piranha_BM_ISUPPLIES;
var config int N7Piranha_BM_TRADINGPOSTVALUE;
var config int N7Piranha_BM_IPOINTS;
var config int N7Piranha_BM_IUPGRADESLOTS;
// Template Start
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> N7PiranhaWeaps;

	N7PiranhaWeaps.AddItem(CreateTemplate_N7Piranha());
	N7PiranhaWeaps.AddItem(CreateTemplate_N7Piranha_MG());
	N7PiranhaWeaps.AddItem(CreateTemplate_N7Piranha_BM());

	return N7PiranhaWeaps;

}

// M-23 Katana Conventional Template
static function X2DataTemplate CreateTemplate_N7Piranha()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_N7Piranha');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	// Weapon Classifications
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'Bullpup';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///N7Piranha_Assets.UILibrary.Inv_M23Katana";
	Template.Tier = 0;
	// Weapon Stats
	Template.BaseDamage = default.N7Piranha_BASEDAMAGE;
	Template.RangeAccuracy = default.N7Piranha_RANGE;
	Template.Aim = default.N7Piranha_AIM;
	Template.CritChance = default.N7Piranha_CRITCHANCE;
	Template.iClipSize = default.N7Piranha_ICLIPSIZE;
	Template.iSoundRange = default.N7Piranha_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.N7Piranha_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.N7Piranha_IUPGRADESLOTS;
	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	//Weapon Abilities
	Template.Abilities.AddItem('StandardShot');	
	Template.Abilities.AddItem('Overwatch');	
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
	Template.GameArchetype = "N7Piranha_Assets.WP_M23Katana_CV";

	return Template;
}


// M-23 Katana Magnetic Template
static function X2DataTemplate CreateTemplate_N7Piranha_MG()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_N7Piranha_MG');
	Template.WeaponPanelImage = "_MagneticRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	// Weapon Classifications
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'Bullpup';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///N7Piranha_Assets.UILibrary.Inv_M23Katana";
	Template.Tier = 2;
	// Weapon Stats
	Template.BaseDamage = default.N7Piranha_MG_BASEDAMAGE;
	Template.RangeAccuracy = default.N7Piranha_MG_RANGE;
	Template.Aim = default.N7Piranha_MG_AIM;
	Template.CritChance = default.N7Piranha_MG_CRITCHANCE;
	Template.iClipSize = default.N7Piranha_MG_ICLIPSIZE;
	Template.iSoundRange = default.N7Piranha_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.N7Piranha_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.N7Piranha_MG_IUPGRADESLOTS;
	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	//Weapon Abilities
	Template.Abilities.AddItem('StandardShot');	
	Template.Abilities.AddItem('Overwatch');	
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
	Template.CreatorTemplateName = 'N7Piranha_MG_Schematic';
	Template.BaseItem = 'WP_N7Piranha'; 
	// Weapon Asset
	Template.GameArchetype = "N7Piranha_Assets.WP_M23Katana_CV";

	return Template;
}

//Template Beam Creation
static function X2DataTemplate CreateTemplate_N7Piranha_BM()
{
	local X2WeaponTemplate Template;
	//Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_N7Piranha_BM');
	Template.WeaponPanelImage = "_BeamRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'bullpup';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///N7Piranha_Assets.UILibrary.Inv_M23Katana";
	Template.Tier = 4;
	//Weapon Stat pointers
	Template.BaseDamage = default.N7Piranha_BM_BASEDAMAGE;
	Template.RangeAccuracy = default.N7Piranha_BM_RANGE;
	Template.Aim = default.N7Piranha_BM_AIM;
	Template.CritChance = default.N7Piranha_BM_CRITCHANCE;
	Template.iClipSize = default.N7Piranha_BM_ICLIPSIZE;
	Template.iSoundRange = default.N7Piranha_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.N7Piranha_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.N7Piranha_BM_IUPGRADESLOTS;
	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	//Weapon Ability pointers
	Template.Abilities.AddItem('StandardShot');	
	Template.Abilities.AddItem('Overwatch');	
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
	Template.CreatorTemplateName = 'N7Piranha_BM_Schematic';
	Template.BaseItem = 'WP_N7Piranha_MG';  
	//Weapon Assets
	Template.GameArchetype = "N7Piranha_Assets.WP_M23Katana_CV";
	
	return Template;
}