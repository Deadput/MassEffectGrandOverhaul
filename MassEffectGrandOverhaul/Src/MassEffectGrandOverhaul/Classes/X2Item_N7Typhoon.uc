class X2Item_N7Typhoon extends X2Item config(N7Typhoon);

// Weapon Stat Variables
var config WeaponDamageValue N7Typhoon_BASEDAMAGE;
var config array<int> N7Typhoon_RANGE;
var config int N7Typhoon_AIM;
var config int N7Typhoon_CRITCHANCE;
var config int N7Typhoon_ICLIPSIZE;
var config int N7Typhoon_ISOUNDRANGE;
var config int N7Typhoon_IENVIRONMENTDAMAGE;
var config int N7Typhoon_ISUPPLIES;
var config int N7Typhoon_TRADINGPOSTVALUE;
var config int N7Typhoon_IPOINTS;
var config int N7Typhoon_IUPGRADESLOTS;

var config WeaponDamageValue N7Typhoon_MG_BASEDAMAGE;
var config array<int> N7Typhoon_MG_RANGE;
var config int N7Typhoon_MG_AIM;
var config int N7Typhoon_MG_CRITCHANCE;
var config int N7Typhoon_MG_ICLIPSIZE;
var config int N7Typhoon_MG_ISOUNDRANGE;
var config int N7Typhoon_MG_IENVIRONMENTDAMAGE;
var config int N7Typhoon_MG_ISUPPLIES;
var config int N7Typhoon_MG_TRADINGPOSTVALUE;
var config int N7Typhoon_MG_IPOINTS;
var config int N7Typhoon_MG_IUPGRADESLOTS;

var config WeaponDamageValue N7Typhoon_BM_BASEDAMAGE;
var config array<int> N7Typhoon_BM_RANGE;
var config int N7Typhoon_BM_AIM;
var config int N7Typhoon_BM_CRITCHANCE;
var config int N7Typhoon_BM_ICLIPSIZE;
var config int N7Typhoon_BM_ISOUNDRANGE;
var config int N7Typhoon_BM_IENVIRONMENTDAMAGE;
var config int N7Typhoon_BM_ISUPPLIES;
var config int N7Typhoon_BM_TRADINGPOSTVALUE;
var config int N7Typhoon_BM_IPOINTS;
var config int N7Typhoon_BM_IUPGRADESLOTS;
// Template Start
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> N7TyphoonWeaps;

	N7TyphoonWeaps.AddItem(CreateTemplate_N7Typhoon());
	N7TyphoonWeaps.AddItem(CreateTemplate_N7Typhoon_MG());
	N7TyphoonWeaps.AddItem(CreateTemplate_N7Typhoon_BM());

	return N7TyphoonWeaps;

}


static function X2DataTemplate CreateTemplate_N7Typhoon()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_N7Typhoon');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	// Weapon Classifications
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'cannon';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///N7Typhoon_Assets.Textures.Tex_N7_Typhoon_UI";
	Template.Tier = 0;
	// Weapon Stats
	Template.BaseDamage = default.N7Typhoon_BASEDAMAGE;
	Template.RangeAccuracy = default.N7Typhoon_RANGE;
	Template.Aim = default.N7Typhoon_AIM;
	Template.CritChance = default.N7Typhoon_CRITCHANCE;
	Template.iClipSize = default.N7Typhoon_ICLIPSIZE;
	Template.iSoundRange = default.N7Typhoon_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.N7Typhoon_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.N7Typhoon_IUPGRADESLOTS;
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
	Template.GameArchetype = "N7Typhoon_Assets.ARC_N7Typhoon_Weapon";

	return Template;
}


static function X2DataTemplate CreateTemplate_N7Typhoon_MG()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_N7Typhoon_MG');
	Template.WeaponPanelImage = "_MagneticRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	// Weapon Classifications
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'cannon';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///N7Typhoon_Assets.Textures.Tex_N7_Typhoon_UI";
	Template.Tier = 2;
	// Weapon Stats
	Template.BaseDamage = default.N7Typhoon_MG_BASEDAMAGE;
	Template.RangeAccuracy = default.N7Typhoon_MG_RANGE;
	Template.Aim = default.N7Typhoon_MG_AIM;
	Template.CritChance = default.N7Typhoon_MG_CRITCHANCE;
	Template.iClipSize = default.N7Typhoon_MG_ICLIPSIZE;
	Template.iSoundRange = default.N7Typhoon_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.N7Typhoon_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.N7Typhoon_MG_IUPGRADESLOTS;
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
	Template.CreatorTemplateName = 'N7Typhoon_MG_Schematic';
	Template.BaseItem = 'WP_N7Typhoon'; 
	// Weapon Asset
	Template.GameArchetype = "N7Typhoon_Assets.ARC_N7Typhoon_Weapon";

	return Template;
}


static function X2DataTemplate CreateTemplate_N7Typhoon_BM()
{
	local X2WeaponTemplate Template;
	//Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_N7Typhoon_BM');
	Template.WeaponPanelImage = "_BeamRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'cannon';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///N7Typhoon_Assets.Textures.Tex_N7_Typhoon_UI";
	Template.Tier = 4;
	//Weapon Stat pointers
	Template.BaseDamage = default.N7Typhoon_BM_BASEDAMAGE;
	Template.RangeAccuracy = default.N7Typhoon_BM_RANGE;
	Template.Aim = default.N7Typhoon_BM_AIM;
	Template.CritChance = default.N7Typhoon_BM_CRITCHANCE;
	Template.iClipSize = default.N7Typhoon_BM_ICLIPSIZE;
	Template.iSoundRange = default.N7Typhoon_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.N7Typhoon_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.N7Typhoon_BM_IUPGRADESLOTS;
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
	Template.CreatorTemplateName = 'N7Typhoon_BM_Schematic';
	Template.BaseItem = 'WP_N7Typhoon_MG';  
	//Weapon Assets
	Template.GameArchetype = "N7Typhoon_Assets.ARC_N7Typhoon_Weapon"; 
	
	return Template;
}