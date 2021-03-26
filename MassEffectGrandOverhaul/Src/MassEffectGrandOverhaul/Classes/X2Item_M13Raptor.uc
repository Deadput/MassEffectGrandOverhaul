class X2Item_M13Raptor extends X2Item config(M13Raptor);

// Weapon Stat Variables
var config WeaponDamageValue M13RAPTOR_BASEDAMAGE;
var config array<int> M13RAPTOR_RANGE;
var config int M13RAPTOR_AIM;
var config int M13RAPTOR_CRITCHANCE;
var config int M13RAPTOR_ICLIPSIZE;
var config int M13RAPTOR_ISOUNDRANGE;
var config int M13RAPTOR_IENVIRONMENTDAMAGE;
var config int M13RAPTOR_ISUPPLIES;
var config int M13RAPTOR_TRADINGPOSTVALUE;
var config int M13RAPTOR_IPOINTS;
var config int M13RAPTOR_IUPGRADESLOTS;

var config WeaponDamageValue M13RAPTOR_MG_BASEDAMAGE;
var config array<int> M13RAPTOR_MG_RANGE;
var config int M13RAPTOR_MG_AIM;
var config int M13RAPTOR_MG_CRITCHANCE;
var config int M13RAPTOR_MG_ICLIPSIZE;
var config int M13RAPTOR_MG_ISOUNDRANGE;
var config int M13RAPTOR_MG_IENVIRONMENTDAMAGE;
var config int M13RAPTOR_MG_ISUPPLIES;
var config int M13RAPTOR_MG_TRADINGPOSTVALUE;
var config int M13RAPTOR_MG_IPOINTS;
var config int M13RAPTOR_MG_IUPGRADESLOTS;

var config WeaponDamageValue M13RAPTOR_BM_BASEDAMAGE;
var config array<int> M13RAPTOR_BM_RANGE;
var config int M13RAPTOR_BM_AIM;
var config int M13RAPTOR_BM_CRITCHANCE;
var config int M13RAPTOR_BM_ICLIPSIZE;
var config int M13RAPTOR_BM_ISOUNDRANGE;
var config int M13RAPTOR_BM_IENVIRONMENTDAMAGE;
var config int M13RAPTOR_BM_ISUPPLIES;
var config int M13RAPTOR_BM_TRADINGPOSTVALUE;
var config int M13RAPTOR_BM_IPOINTS;
var config int M13RAPTOR_BM_IUPGRADESLOTS;
// Template Start
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> M13RaptorWeaps;

	M13RaptorWeaps.AddItem(CreateTemplate_M13Raptor());
	M13RaptorWeaps.AddItem(CreateTemplate_M13Raptor_MG());
	M13RaptorWeaps.AddItem(CreateTemplate_M13Raptor_BM());

	return M13RaptorWeaps;

}

// M-97 Viper Conventional Template
static function X2DataTemplate CreateTemplate_M13Raptor()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_M13Raptor');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	// Weapon Classifications
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sniper_rifle';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///M13Raptor_Assets.Inv_M13RaptorBlue";
	Template.Tier = 0;
	// Weapon Stats
	Template.BaseDamage = default.M13RAPTOR_BASEDAMAGE;
	Template.RangeAccuracy = default.M13RAPTOR_RANGE;
	Template.Aim = default.M13RAPTOR_AIM;
	Template.CritChance = default.M13RAPTOR_CRITCHANCE;
	Template.iClipSize = default.M13RAPTOR_ICLIPSIZE;
	Template.iSoundRange = default.M13RAPTOR_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.M13RAPTOR_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.M13RAPTOR_IUPGRADESLOTS;
	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	//Weapon Abilities
	Template.iTypicalActionCost = 1;
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
	Template.bInfiniteItem = true;
	// Knockback
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;
	// Weapon Asset
	Template.GameArchetype = "M13Raptor_Assets.ARC_M13Raptor_Blue";

	return Template;
}


// M-97 Viper Magnetic Template
static function X2DataTemplate CreateTemplate_M13Raptor_MG()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_M13Raptor_MG');
	Template.WeaponPanelImage = "_MagneticRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	// Weapon Classifications
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sniper_rifle';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///M13Raptor_Assets.Inv_M13RaptorBlue";
	Template.Tier = 2;
	// Weapon Stats
	Template.BaseDamage = default.M13RAPTOR_MG_BASEDAMAGE;
	Template.RangeAccuracy = default.M13RAPTOR_MG_RANGE;
	Template.Aim = default.M13RAPTOR_MG_AIM;
	Template.CritChance = default.M13RAPTOR_MG_CRITCHANCE;
	Template.iClipSize = default.M13RAPTOR_MG_ICLIPSIZE;
	Template.iSoundRange = default.M13RAPTOR_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.M13RAPTOR_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.M13RAPTOR_MG_IUPGRADESLOTS;
	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	//Weapon Abilities
	Template.iTypicalActionCost = 1;
	Template.bIsLargeWeapon = true;
	Template.Abilities.AddItem('SniperStandardFire');
	Template.Abilities.AddItem('SniperRifleOverwatch');	
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
	Template.CreatorTemplateName = 'SniperRifle_MG_Schematic';
	Template.BaseItem = 'WP_M13Raptor'; 
	// Weapon Asset
	Template.GameArchetype = "M13Raptor_Assets.ARC_M13Raptor_Blue";

	return Template;
}

//Template Beam Creation
static function X2DataTemplate CreateTemplate_M13Raptor_BM()
{
	local X2WeaponTemplate Template;
	//Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_M13Raptor_BM');
	Template.WeaponPanelImage = "_BeamRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sniper_rifle';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///M13Raptor_Assets.Inv_M13RaptorBlue";
	Template.Tier = 4;
	//Weapon Stat pointers
	Template.BaseDamage = default.M13RAPTOR_BM_BASEDAMAGE;
	Template.RangeAccuracy = default.M13RAPTOR_BM_RANGE;
	Template.Aim = default.M13RAPTOR_BM_AIM;
	Template.CritChance = default.M13RAPTOR_BM_CRITCHANCE;
	Template.iClipSize = default.M13RAPTOR_BM_ICLIPSIZE;
	Template.iSoundRange = default.M13RAPTOR_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.M13RAPTOR_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.M13RAPTOR_BM_IUPGRADESLOTS;
	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	//Weapon Ability pointers
	Template.iTypicalActionCost = 1;
	Template.bIsLargeWeapon = true;
	Template.Abilities.AddItem('SniperStandardFire');
	Template.Abilities.AddItem('SniperRifleOverwatch');	
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
	Template.CreatorTemplateName = 'SniperRifle_BM_Schematic';
	Template.BaseItem = 'WP_M13Raptor_MG';  
	//Weapon Assets
	Template.GameArchetype = "M13Raptor_Assets.ARC_M13Raptor_Blue";
	
	return Template;
}