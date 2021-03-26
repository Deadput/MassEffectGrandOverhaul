class X2Item_GethPulseRIfle extends X2Item config(GethPulseRIfle);

// Weapon Stat Variables
var config WeaponDamageValue GethPulseRIfle_BASEDAMAGE;
var config array<int> GethPulseRIfle_RANGE;
var config int GethPulseRIfle_AIM;
var config int GethPulseRIfle_CRITCHANCE;
var config int GethPulseRIfle_ICLIPSIZE;
var config int GethPulseRIfle_ISOUNDRANGE;
var config int GethPulseRIfle_IENVIRONMENTDAMAGE;
var config int GethPulseRIfle_ISUPPLIES;
var config int GethPulseRIfle_TRADINGPOSTVALUE;
var config int GethPulseRIfle_IPOINTS;
var config int GethPulseRIfle_IUPGRADESLOTS;

var config WeaponDamageValue GethPulseRIfle_MG_BASEDAMAGE;
var config array<int> GethPulseRIfle_MG_RANGE;
var config int GethPulseRIfle_MG_AIM;
var config int GethPulseRIfle_MG_CRITCHANCE;
var config int GethPulseRIfle_MG_ICLIPSIZE;
var config int GethPulseRIfle_MG_ISOUNDRANGE;
var config int GethPulseRIfle_MG_IENVIRONMENTDAMAGE;
var config int GethPulseRIfle_MG_ISUPPLIES;
var config int GethPulseRIfle_MG_TRADINGPOSTVALUE;
var config int GethPulseRIfle_MG_IPOINTS;
var config int GethPulseRIfle_MG_IUPGRADESLOTS;

var config WeaponDamageValue GethPulseRIfle_BM_BASEDAMAGE;
var config array<int> GethPulseRIfle_BM_RANGE;
var config int GethPulseRIfle_BM_AIM;
var config int GethPulseRIfle_BM_CRITCHANCE;
var config int GethPulseRIfle_BM_ICLIPSIZE;
var config int GethPulseRIfle_BM_ISOUNDRANGE;
var config int GethPulseRIfle_BM_IENVIRONMENTDAMAGE;
var config int GethPulseRIfle_BM_ISUPPLIES;
var config int GethPulseRIfle_BM_TRADINGPOSTVALUE;
var config int GethPulseRIfle_BM_IPOINTS;
var config int GethPulseRIfle_BM_IUPGRADESLOTS;
// Template Start
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> GethPulseRIfleWeaps;

	GethPulseRIfleWeaps.AddItem(CreateTemplate_GethPulseRIfle());
	GethPulseRIfleWeaps.AddItem(CreateTemplate_GethPulseRIfle_MG());
	GethPulseRIfleWeaps.AddItem(CreateTemplate_GethPulseRIfle_BM());

	return GethPulseRIfleWeaps;

}

// Conventional Template
static function X2DataTemplate CreateTemplate_GethPulseRIfle()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_GethPulseRIfle');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	// Weapon Classifications
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'rifle';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///Geth_Pulse_Rifle.Textures.Tex_Geth_Pulse_Rifle_UI";
	Template.Tier = 0;
	// Weapon Stats
	Template.BaseDamage = default.GethPulseRIfle_BASEDAMAGE;
	Template.RangeAccuracy = default.GethPulseRIfle_RANGE;
	Template.Aim = default.GethPulseRIfle_AIM;
	Template.CritChance = default.GethPulseRIfle_CRITCHANCE;
	Template.iClipSize = default.GethPulseRIfle_ICLIPSIZE;
	Template.iSoundRange = default.GethPulseRIfle_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.GethPulseRIfle_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.GethPulseRIfle_IUPGRADESLOTS;
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
	Template.GameArchetype = "Geth_Pulse_Rifle.ARC_Geth_Pulse_Rifle";

	return Template;
}


// Magnetic Template
static function X2DataTemplate CreateTemplate_GethPulseRIfle_MG()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_GethPulseRIfle_MG');
	Template.WeaponPanelImage = "_MagneticRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	// Weapon Classifications
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'rifle';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///Geth_Pulse_Rifle.Textures.Tex_Geth_Pulse_Rifle_UI";
	Template.Tier = 2;
	// Weapon Stats
	Template.BaseDamage = default.GethPulseRIfle_MG_BASEDAMAGE;
	Template.RangeAccuracy = default.GethPulseRIfle_MG_RANGE;
	Template.Aim = default.GethPulseRIfle_MG_AIM;
	Template.CritChance = default.GethPulseRIfle_MG_CRITCHANCE;
	Template.iClipSize = default.GethPulseRIfle_MG_ICLIPSIZE;
	Template.iSoundRange = default.GethPulseRIfle_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.GethPulseRIfle_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.GethPulseRIfle_MG_IUPGRADESLOTS;
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
	Template.BaseItem = 'WP_GethPulseRIfle'; 
	// Weapon Asset
	Template.GameArchetype = "Geth_Pulse_Rifle.ARC_Geth_Pulse_Rifle";

	return Template;
}

//Template Beam Creation
static function X2DataTemplate CreateTemplate_GethPulseRIfle_BM()
{
	local X2WeaponTemplate Template;
	//Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_GethPulseRIfle_BM');
	Template.WeaponPanelImage = "_BeamRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'rifle';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///Geth_Pulse_Rifle.Textures.Tex_Geth_Pulse_Rifle_UI";
	Template.Tier = 4;
	//Weapon Stat pointers
	Template.BaseDamage = default.GethPulseRIfle_BM_BASEDAMAGE;
	Template.RangeAccuracy = default.GethPulseRIfle_BM_RANGE;
	Template.Aim = default.GethPulseRIfle_BM_AIM;
	Template.CritChance = default.GethPulseRIfle_BM_CRITCHANCE;
	Template.iClipSize = default.GethPulseRIfle_BM_ICLIPSIZE;
	Template.iSoundRange = default.GethPulseRIfle_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.GethPulseRIfle_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.GethPulseRIfle_BM_IUPGRADESLOTS;
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
	Template.BaseItem = 'WP_GethPulseRIfle_MG';  
	//Weapon Assets
	Template.GameArchetype = "Geth_Pulse_Rifle.ARC_Geth_Pulse_Rifle"; 
	
	return Template;
}