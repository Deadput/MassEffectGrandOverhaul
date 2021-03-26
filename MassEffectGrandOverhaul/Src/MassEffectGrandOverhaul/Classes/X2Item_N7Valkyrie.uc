class X2Item_N7Valkyrie extends X2Item config(N7Valkyrie);

// Weapon Stat Variables
var config WeaponDamageValue N7VALKYRIE_BASEDAMAGE;
var config array<int> N7VALKYRIE_RANGE;
var config int N7VALKYRIE_AIM;
var config int N7VALKYRIE_CRITCHANCE;
var config int N7VALKYRIE_ICLIPSIZE;
var config int N7VALKYRIE_ISOUNDRANGE;
var config int N7VALKYRIE_IENVIRONMENTDAMAGE;
var config int N7VALKYRIE_ISUPPLIES;
var config int N7VALKYRIE_TRADINGPOSTVALUE;
var config int N7VALKYRIE_IPOINTS;
var config int N7VALKYRIE_IUPGRADESLOTS;

var config WeaponDamageValue N7VALKYRIE_MG_BASEDAMAGE;
var config array<int> N7VALKYRIE_MG_RANGE;
var config int N7VALKYRIE_MG_AIM;
var config int N7VALKYRIE_MG_CRITCHANCE;
var config int N7VALKYRIE_MG_ICLIPSIZE;
var config int N7VALKYRIE_MG_ISOUNDRANGE;
var config int N7VALKYRIE_MG_IENVIRONMENTDAMAGE;
var config int N7VALKYRIE_MG_ISUPPLIES;
var config int N7VALKYRIE_MG_TRADINGPOSTVALUE;
var config int N7VALKYRIE_MG_IPOINTS;
var config int N7VALKYRIE_MG_IUPGRADESLOTS;

var config WeaponDamageValue N7VALKYRIE_BM_BASEDAMAGE;
var config array<int> N7VALKYRIE_BM_RANGE;
var config int N7VALKYRIE_BM_AIM;
var config int N7VALKYRIE_BM_CRITCHANCE;
var config int N7VALKYRIE_BM_ICLIPSIZE;
var config int N7VALKYRIE_BM_ISOUNDRANGE;
var config int N7VALKYRIE_BM_IENVIRONMENTDAMAGE;
var config int N7VALKYRIE_BM_ISUPPLIES;
var config int N7VALKYRIE_BM_TRADINGPOSTVALUE;
var config int N7VALKYRIE_BM_IPOINTS;
var config int N7VALKYRIE_BM_IUPGRADESLOTS;
// Template Start
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> N7ValkyrieWeaps;

	N7ValkyrieWeaps.AddItem(CreateTemplate_N7Valkyrie());
	N7ValkyrieWeaps.AddItem(CreateTemplate_N7Valkyrie_MG());
	N7ValkyrieWeaps.AddItem(CreateTemplate_N7Valkyrie_BM());

	return N7ValkyrieWeaps;

}


static function X2DataTemplate CreateTemplate_N7Valkyrie()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_N7Valkyrie');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	// Weapon Classifications
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'rifle';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///N7Valkyrie_Assets.UILibrary.Inv_N7Valkyrie";
	Template.Tier = 0;
	// Weapon Stats
	Template.BaseDamage = default.N7VALKYRIE_BASEDAMAGE;
	Template.RangeAccuracy = default.N7VALKYRIE_RANGE;
	Template.Aim = default.N7VALKYRIE_AIM;
	Template.CritChance = default.N7VALKYRIE_CRITCHANCE;
	Template.iClipSize = default.N7VALKYRIE_ICLIPSIZE;
	Template.iSoundRange = default.N7VALKYRIE_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.N7VALKYRIE_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.N7VALKYRIE_IUPGRADESLOTS;
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
	Template.GameArchetype = "N7Valkyrie_Assets.WP_N7Valkyrie_CV";

	return Template;
}


static function X2DataTemplate CreateTemplate_N7Valkyrie_MG()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_N7Valkyrie_MG');
	Template.WeaponPanelImage = "_MagneticRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	// Weapon Classifications
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'rifle';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///N7Valkyrie_Assets.UILibrary.Inv_N7Valkyrie";
	Template.Tier = 2;
	// Weapon Stats
	Template.BaseDamage = default.N7VALKYRIE_MG_BASEDAMAGE;
	Template.RangeAccuracy = default.N7VALKYRIE_MG_RANGE;
	Template.Aim = default.N7VALKYRIE_MG_AIM;
	Template.CritChance = default.N7VALKYRIE_MG_CRITCHANCE;
	Template.iClipSize = default.N7VALKYRIE_MG_ICLIPSIZE;
	Template.iSoundRange = default.N7VALKYRIE_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.N7VALKYRIE_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.N7VALKYRIE_MG_IUPGRADESLOTS;
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
	Template.CreatorTemplateName = 'N7Valkyrie_MG_Schematic';
	Template.BaseItem = 'WP_N7Valkyrie'; 
	// Weapon Asset
	Template.GameArchetype = "N7Valkyrie_Assets.WP_N7Valkyrie_CV";

	return Template;
}


static function X2DataTemplate CreateTemplate_N7Valkyrie_BM()
{
	local X2WeaponTemplate Template;
	//Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_N7Valkyrie_BM');
	Template.WeaponPanelImage = "_BeamRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'rifle';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///N7Valkyrie_Assets.UILibrary.Inv_N7Valkyrie";
	Template.Tier = 4;
	//Weapon Stat pointers
	Template.BaseDamage = default.N7VALKYRIE_BM_BASEDAMAGE;
	Template.RangeAccuracy = default.N7VALKYRIE_BM_RANGE;
	Template.Aim = default.N7VALKYRIE_BM_AIM;
	Template.CritChance = default.N7VALKYRIE_BM_CRITCHANCE;
	Template.iClipSize = default.N7VALKYRIE_BM_ICLIPSIZE;
	Template.iSoundRange = default.N7VALKYRIE_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.N7VALKYRIE_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.N7VALKYRIE_BM_IUPGRADESLOTS;
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
	Template.CreatorTemplateName = 'N7Valkyrie_BM_Schematic';
	Template.BaseItem = 'WP_N7Valkyrie_MG';  
	//Weapon Assets
	Template.GameArchetype = "N7Valkyrie_Assets.WP_N7Valkyrie_CV"; 
	
	return Template;
}