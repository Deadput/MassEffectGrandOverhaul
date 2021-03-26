class X2Item_M98Widow extends X2Item config(M98Widow);

// Weapon Stat Variables
var config WeaponDamageValue M98WIDOW_BASEDAMAGE;
var config array<int> M98WIDOW_RANGE;
var config int M98WIDOW_AIM;
var config int M98WIDOW_CRITCHANCE;
var config int M98WIDOW_ICLIPSIZE;
var config int M98WIDOW_ISOUNDRANGE;
var config int M98WIDOW_IENVIRONMENTDAMAGE;
var config int M98WIDOW_ISUPPLIES;
var config int M98WIDOW_TRADINGPOSTVALUE;
var config int M98WIDOW_IPOINTS;
var config int M98WIDOW_IUPGRADESLOTS;

var config WeaponDamageValue M98WIDOW_MG_BASEDAMAGE;
var config array<int> M98WIDOW_MG_RANGE;
var config int M98WIDOW_MG_AIM;
var config int M98WIDOW_MG_CRITCHANCE;
var config int M98WIDOW_MG_ICLIPSIZE;
var config int M98WIDOW_MG_ISOUNDRANGE;
var config int M98WIDOW_MG_IENVIRONMENTDAMAGE;
var config int M98WIDOW_MG_ISUPPLIES;
var config int M98WIDOW_MG_TRADINGPOSTVALUE;
var config int M98WIDOW_MG_IPOINTS;
var config int M98WIDOW_MG_IUPGRADESLOTS;

var config WeaponDamageValue M98WIDOW_BM_BASEDAMAGE;
var config array<int> M98WIDOW_BM_RANGE;
var config int M98WIDOW_BM_AIM;
var config int M98WIDOW_BM_CRITCHANCE;
var config int M98WIDOW_BM_ICLIPSIZE;
var config int M98WIDOW_BM_ISOUNDRANGE;
var config int M98WIDOW_BM_IENVIRONMENTDAMAGE;
var config int M98WIDOW_BM_ISUPPLIES;
var config int M98WIDOW_BM_TRADINGPOSTVALUE;
var config int M98WIDOW_BM_IPOINTS;
var config int M98WIDOW_BM_IUPGRADESLOTS;
// Template Start
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> M98WidowWeaps;

	M98WidowWeaps.AddItem(CreateTemplate_M98Widow());
	M98WidowWeaps.AddItem(CreateTemplate_M98Widow_MG());
	M98WidowWeaps.AddItem(CreateTemplate_M98Widow_BM());

	return M98WidowWeaps;

}

// M-97 Viper Conventional Template
static function X2DataTemplate CreateTemplate_M98Widow()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_M98Widow');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	// Weapon Classifications
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sniper_rifle';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///M98_Widow_Assets.Textures.Tex_Weap_M98_Widow_UI";
	Template.Tier = 0;
	// Weapon Stats
	Template.BaseDamage = default.M98WIDOW_BASEDAMAGE;
	Template.RangeAccuracy = default.M98WIDOW_RANGE;
	Template.Aim = default.M98WIDOW_AIM;
	Template.CritChance = default.M98WIDOW_CRITCHANCE;
	Template.iClipSize = default.M98WIDOW_ICLIPSIZE;
	Template.iSoundRange = default.M98WIDOW_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.M98WIDOW_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.M98WIDOW_IUPGRADESLOTS;
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
	Template.bInfiniteItem = true;
	// Knockback
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;
	// Weapon Asset
	Template.GameArchetype = "M98_Widow_Assets.ARC_M98_Widow";

	return Template;
}


// M-97 Viper Magnetic Template
static function X2DataTemplate CreateTemplate_M98Widow_MG()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_M98Widow_MG');
	Template.WeaponPanelImage = "_MagneticRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	// Weapon Classifications
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sniper_rifle';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///M98_Widow_Assets.Textures.Tex_Weap_M98_Widow_UI";
	Template.Tier = 2;
	// Weapon Stats
	Template.BaseDamage = default.M98WIDOW_MG_BASEDAMAGE;
	Template.RangeAccuracy = default.M98WIDOW_MG_RANGE;
	Template.Aim = default.M98WIDOW_MG_AIM;
	Template.CritChance = default.M98WIDOW_MG_CRITCHANCE;
	Template.iClipSize = default.M98WIDOW_MG_ICLIPSIZE;
	Template.iSoundRange = default.M98WIDOW_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.M98WIDOW_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.M98WIDOW_MG_IUPGRADESLOTS;
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
	Template.bInfiniteItem = true;
	// Knockback
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;
	// Upgrade Data
	Template.CreatorTemplateName = 'SniperRifle_MG_Schematic';
	Template.BaseItem = 'WP_M98Widow'; 
	// Weapon Asset
	Template.GameArchetype = "M98_Widow_Assets.ARC_M98_Widow";

	return Template;
}

//Template Beam Creation
static function X2DataTemplate CreateTemplate_M98Widow_BM()
{
	local X2WeaponTemplate Template;
	//Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_M98Widow_BM');
	Template.WeaponPanelImage = "_BeamRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sniper_rifle';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///M98_Widow_Assets.Textures.Tex_Weap_M98_Widow_UI";
	Template.Tier = 4;
	//Weapon Stat pointers
	Template.BaseDamage = default.M98WIDOW_BM_BASEDAMAGE;
	Template.RangeAccuracy = default.M98WIDOW_BM_RANGE;
	Template.Aim = default.M98WIDOW_BM_AIM;
	Template.CritChance = default.M98WIDOW_BM_CRITCHANCE;
	Template.iClipSize = default.M98WIDOW_BM_ICLIPSIZE;
	Template.iSoundRange = default.M98WIDOW_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.M98WIDOW_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.M98WIDOW_BM_IUPGRADESLOTS;
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
	Template.bInfiniteItem = true;
	//Physics
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;
	//Upgrade Template
	Template.CreatorTemplateName = 'SniperRifle_BM_Schematic';
	Template.BaseItem = 'WP_M98Widow_MG';  
	//Weapon Assets
	Template.GameArchetype = "M98_Widow_Assets.ARC_M98_Widow";
	
	return Template;
}