class X2Item_IndraVektor extends X2Item config(IndraVektor);

// Weapon Stat Variables
var config WeaponDamageValue INDRAVEKTOR_BASEDAMAGE;
var config array<int> INDRAVEKTOR_RANGE;
var config int INDRAVEKTOR_AIM;
var config int INDRAVEKTOR_CRITCHANCE;
var config int INDRAVEKTOR_ICLIPSIZE;
var config int INDRAVEKTOR_ISOUNDRANGE;
var config int INDRAVEKTOR_IENVIRONMENTDAMAGE;
var config int INDRAVEKTOR_ISUPPLIES;
var config int INDRAVEKTOR_TRADINGPOSTVALUE;
var config int INDRAVEKTOR_IPOINTS;
var config int INDRAVEKTOR_IUPGRADESLOTS;

var config WeaponDamageValue INDRAVEKTOR_MG_BASEDAMAGE;
var config array<int> INDRAVEKTOR_MG_RANGE;
var config int INDRAVEKTOR_MG_AIM;
var config int INDRAVEKTOR_MG_CRITCHANCE;
var config int INDRAVEKTOR_MG_ICLIPSIZE;
var config int INDRAVEKTOR_MG_ISOUNDRANGE;
var config int INDRAVEKTOR_MG_IENVIRONMENTDAMAGE;
var config int INDRAVEKTOR_MG_ISUPPLIES;
var config int INDRAVEKTOR_MG_TRADINGPOSTVALUE;
var config int INDRAVEKTOR_MG_IPOINTS;
var config int INDRAVEKTOR_MG_IUPGRADESLOTS;

var config WeaponDamageValue INDRAVEKTOR_BM_BASEDAMAGE;
var config array<int> INDRAVEKTOR_BM_RANGE;
var config int INDRAVEKTOR_BM_AIM;
var config int INDRAVEKTOR_BM_CRITCHANCE;
var config int INDRAVEKTOR_BM_ICLIPSIZE;
var config int INDRAVEKTOR_BM_ISOUNDRANGE;
var config int INDRAVEKTOR_BM_IENVIRONMENTDAMAGE;
var config int INDRAVEKTOR_BM_ISUPPLIES;
var config int INDRAVEKTOR_BM_TRADINGPOSTVALUE;
var config int INDRAVEKTOR_BM_IPOINTS;
var config int INDRAVEKTOR_BM_IUPGRADESLOTS;

// Template Start
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> IndraVektorWeaps;

	IndraVektorWeaps.AddItem(CreateTemplate_IndraVektor());
	IndraVektorWeaps.AddItem(CreateTemplate_IndraVektor_MG());
	IndraVektorWeaps.AddItem(CreateTemplate_IndraVektor_BM());

	return IndraVektorWeaps;

}

// M-97 Viper Conventional Template
static function X2DataTemplate CreateTemplate_IndraVektor()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_IndraVektor');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	// Weapon Classifications
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'vektor_rifle';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///IndraSniper_Assets.UI.UI_IndraSniper_WP";
	Template.Tier = 0;
	// Weapon Stats
	Template.BaseDamage = default.INDRAVEKTOR_BASEDAMAGE;
	Template.RangeAccuracy = default.INDRAVEKTOR_RANGE;
	Template.Aim = default.INDRAVEKTOR_AIM;
	Template.CritChance = default.INDRAVEKTOR_CRITCHANCE;
	Template.iClipSize = default.INDRAVEKTOR_ICLIPSIZE;
	Template.iSoundRange = default.INDRAVEKTOR_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.INDRAVEKTOR_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.INDRAVEKTOR_IUPGRADESLOTS;
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
	Template.GameArchetype = "IndraSniper_Assets.Archetypes.ARC_Weap_Indra_Sniper";

	return Template;
}


// M-97 Viper Magnetic Template
static function X2DataTemplate CreateTemplate_IndraVektor_MG()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_IndraVektor_MG');
	Template.WeaponPanelImage = "_MagneticRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	// Weapon Classifications
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'vektor_rifle';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///IndraSniper_Assets.UI.UI_IndraSniper_WP";
	Template.Tier = 2;
	// Weapon Stats
	Template.BaseDamage = default.INDRAVEKTOR_MG_BASEDAMAGE;
	Template.RangeAccuracy = default.INDRAVEKTOR_MG_RANGE;
	Template.Aim = default.INDRAVEKTOR_MG_AIM;
	Template.CritChance = default.INDRAVEKTOR_MG_CRITCHANCE;
	Template.iClipSize = default.INDRAVEKTOR_MG_ICLIPSIZE;
	Template.iSoundRange = default.INDRAVEKTOR_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.INDRAVEKTOR_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.INDRAVEKTOR_MG_IUPGRADESLOTS;
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
	Template.CreatorTemplateName = 'VektorRifle_MG_Schematic';
	Template.BaseItem = 'WP_IndraVektor'; 
	// Weapon Asset
	Template.GameArchetype = "IndraSniper_Assets.Archetypes.ARC_Weap_Indra_Sniper";

	return Template;
}

//Template Beam Creation
static function X2DataTemplate CreateTemplate_IndraVektor_BM()
{
	local X2WeaponTemplate Template;
	//Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_IndraVektor_BM');
	Template.WeaponPanelImage = "_BeamRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'vektor_rifle';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///IndraSniper_Assets.UI.UI_IndraSniper_WP";

	Template.Tier = 4;
	//Weapon Stat pointers
	Template.BaseDamage = default.INDRAVEKTOR_BM_BASEDAMAGE;
	Template.RangeAccuracy = default.INDRAVEKTOR_BM_RANGE;
	Template.Aim = default.INDRAVEKTOR_BM_AIM;
	Template.CritChance = default.INDRAVEKTOR_BM_CRITCHANCE;
	Template.iClipSize = default.INDRAVEKTOR_BM_ICLIPSIZE;
	Template.iSoundRange = default.INDRAVEKTOR_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.INDRAVEKTOR_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.INDRAVEKTOR_BM_IUPGRADESLOTS;
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
	Template.CreatorTemplateName = 'VektorRifle_BM_Schematic';
	Template.BaseItem = 'WP_IndraVektor_MG';  
	//Weapon Assets
	Template.GameArchetype = "IndraSniper_Assets.Archetypes.ARC_Weap_Indra_Sniper";

	return Template;
}