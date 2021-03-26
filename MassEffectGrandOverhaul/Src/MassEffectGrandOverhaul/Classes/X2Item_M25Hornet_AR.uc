class X2Item_M25Hornet_AR extends X2Item config(M25HornetAR);

// Weapon Stat Variables
var config WeaponDamageValue M25HORNET_AR_BASEDAMAGE;
var config array<int> M25HORNET_AR_RANGE;
var config int M25HORNET_AR_AIM;
var config int M25HORNET_AR_CRITCHANCE;
var config int M25HORNET_AR_ICLIPSIZE;
var config int M25HORNET_AR_ISOUNDRANGE;
var config int M25HORNET_AR_IENVIRONMENTDAMAGE;
var config int M25HORNET_AR_ISUPPLIES;
var config int M25HORNET_AR_TRADINGPOSTVALUE;
var config int M25HORNET_AR_IPOINTS;
var config int M25HORNET_AR_IUPGRADESLOTS;

var config WeaponDamageValue M25HORNET_AR_MG_BASEDAMAGE;
var config array<int> M25HORNET_AR_MG_RANGE;
var config int M25HORNET_AR_MG_AIM;
var config int M25HORNET_AR_MG_CRITCHANCE;
var config int M25HORNET_AR_MG_ICLIPSIZE;
var config int M25HORNET_AR_MG_ISOUNDRANGE;
var config int M25HORNET_AR_MG_IENVIRONMENTDAMAGE;
var config int M25HORNET_AR_MG_ISUPPLIES;
var config int M25HORNET_AR_MG_TRADINGPOSTVALUE;
var config int M25HORNET_AR_MG_IPOINTS;
var config int M25HORNET_AR_MG_IUPGRADESLOTS;

var config WeaponDamageValue M25HORNET_AR_BM_BASEDAMAGE;
var config array<int> M25HORNET_AR_BM_RANGE;
var config int M25HORNET_AR_BM_AIM;
var config int M25HORNET_AR_BM_CRITCHANCE;
var config int M25HORNET_AR_BM_ICLIPSIZE;
var config int M25HORNET_AR_BM_ISOUNDRANGE;
var config int M25HORNET_AR_BM_IENVIRONMENTDAMAGE;
var config int M25HORNET_AR_BM_ISUPPLIES;
var config int M25HORNET_AR_BM_TRADINGPOSTVALUE;
var config int M25HORNET_AR_BM_IPOINTS;
var config int M25HORNET_AR_BM_IUPGRADESLOTS;
// Template Start
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> M25Hornet_ARWeaps;

	M25Hornet_ARWeaps.AddItem(CreateTemplate_M25Hornet_AR());
	M25Hornet_ARWeaps.AddItem(CreateTemplate_M25Hornet_AR_MG());
	M25Hornet_ARWeaps.AddItem(CreateTemplate_M25Hornet_AR_BM());

	return M25Hornet_ARWeaps;

}

// M8 Avenger Conventional Template
static function X2DataTemplate CreateTemplate_M25Hornet_AR()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_M25Hornet_AR');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	// Weapon Classifications
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'rifle';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///M25Hornet_AR_Assets.Inv_M25Hornet";
	Template.Tier = 0;
	// Weapon Stats
	Template.BaseDamage = default.M25HORNET_AR_BASEDAMAGE;
	Template.RangeAccuracy = default.M25HORNET_AR_RANGE;
	Template.Aim = default.M25HORNET_AR_AIM;
	Template.CritChance = default.M25HORNET_AR_CRITCHANCE;
	Template.iClipSize = default.M25HORNET_AR_ICLIPSIZE;
	Template.iSoundRange = default.M25HORNET_AR_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.M25HORNET_AR_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.M25HORNET_AR_IUPGRADESLOTS;
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
	Template.bInfiniteItem = true;
	// Knockback
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;
	// Weapon Asset
	Template.GameArchetype = "M25Hornet_Assets.ARC_M25Hornet";

	return Template;
}


// M8 Avenger Magnetic Template
static function X2DataTemplate CreateTemplate_M25Hornet_AR_MG()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_M25Hornet_AR_MG');
	Template.WeaponPanelImage = "_MagneticRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	// Weapon Classifications
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'rifle';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///M25Hornet_AR_Assets.Inv_M25Hornet";
	Template.Tier = 2;
	// Weapon Stats
	Template.BaseDamage = default.M25HORNET_AR_MG_BASEDAMAGE;
	Template.RangeAccuracy = default.M25HORNET_AR_MG_RANGE;
	Template.Aim = default.M25HORNET_AR_MG_AIM;
	Template.CritChance = default.M25HORNET_AR_MG_CRITCHANCE;
	Template.iClipSize = default.M25HORNET_AR_MG_ICLIPSIZE;
	Template.iSoundRange = default.M25HORNET_AR_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.M25HORNET_AR_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.M25HORNET_AR_MG_IUPGRADESLOTS;
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
	Template.bInfiniteItem = true;
	// Knockback
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;
	// Upgrade Data
	Template.CreatorTemplateName = 'AssaultRifle_MG_Schematic';
	Template.BaseItem = 'WP_M25Hornet_AR'; 
	// Weapon Asset
	Template.GameArchetype = "M25Hornet_Assets.ARC_M25Hornet";

	return Template;
}

//Template Beam Creation
static function X2DataTemplate CreateTemplate_M25Hornet_AR_BM()
{
	local X2WeaponTemplate Template;
	//Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_M25Hornet_AR_BM');
	Template.WeaponPanelImage = "_BeamRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'rifle';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///M25Hornet_AR_Assets.Inv_M25Hornet";
	Template.Tier = 4;
	//Weapon Stat pointers
	Template.BaseDamage = default.M25HORNET_AR_BM_BASEDAMAGE;
	Template.RangeAccuracy = default.M25HORNET_AR_BM_RANGE;
	Template.Aim = default.M25HORNET_AR_BM_AIM;
	Template.CritChance = default.M25HORNET_AR_BM_CRITCHANCE;
	Template.iClipSize = default.M25HORNET_AR_BM_ICLIPSIZE;
	Template.iSoundRange = default.M25HORNET_AR_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.M25HORNET_AR_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.M25HORNET_AR_BM_IUPGRADESLOTS;
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
	Template.bInfiniteItem = true;
	//Physics
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;
	//Upgrade Template
	Template.CreatorTemplateName = 'AssaultRifle_BM_Schematic';
	Template.BaseItem = 'WP_M25Hornet_AR_MG';  
	//Weapon Assets
	Template.GameArchetype = "M25Hornet_Assets.ARC_M25Hornet";
	
	return Template;
}