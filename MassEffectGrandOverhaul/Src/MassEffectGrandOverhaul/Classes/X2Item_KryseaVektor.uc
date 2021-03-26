class X2Item_KryseaVektor extends X2Item config(KryseaVektor);

// Weapon Stat Variables
var config WeaponDamageValue KRYSEAVEKTOR_BASEDAMAGE;
var config array<int> KRYSEAVEKTOR_RANGE;
var config int KRYSEAVEKTOR_AIM;
var config int KRYSEAVEKTOR_CRITCHANCE;
var config int KRYSEAVEKTOR_ICLIPSIZE;
var config int KRYSEAVEKTOR_ISOUNDRANGE;
var config int KRYSEAVEKTOR_IENVIRONMENTDAMAGE;
var config int KRYSEAVEKTOR_ISUPPLIES;
var config int KRYSEAVEKTOR_TRADINGPOSTVALUE;
var config int KRYSEAVEKTOR_IPOINTS;
var config int KRYSEAVEKTOR_IUPGRADESLOTS;

var config WeaponDamageValue KRYSEAVEKTOR_MG_BASEDAMAGE;
var config array<int> KRYSEAVEKTOR_MG_RANGE;
var config int KRYSEAVEKTOR_MG_AIM;
var config int KRYSEAVEKTOR_MG_CRITCHANCE;
var config int KRYSEAVEKTOR_MG_ICLIPSIZE;
var config int KRYSEAVEKTOR_MG_ISOUNDRANGE;
var config int KRYSEAVEKTOR_MG_IENVIRONMENTDAMAGE;
var config int KRYSEAVEKTOR_MG_ISUPPLIES;
var config int KRYSEAVEKTOR_MG_TRADINGPOSTVALUE;
var config int KRYSEAVEKTOR_MG_IPOINTS;
var config int KRYSEAVEKTOR_MG_IUPGRADESLOTS;

var config WeaponDamageValue KRYSEAVEKTOR_BM_BASEDAMAGE;
var config array<int> KRYSEAVEKTOR_BM_RANGE;
var config int KRYSEAVEKTOR_BM_AIM;
var config int KRYSEAVEKTOR_BM_CRITCHANCE;
var config int KRYSEAVEKTOR_BM_ICLIPSIZE;
var config int KRYSEAVEKTOR_BM_ISOUNDRANGE;
var config int KRYSEAVEKTOR_BM_IENVIRONMENTDAMAGE;
var config int KRYSEAVEKTOR_BM_ISUPPLIES;
var config int KRYSEAVEKTOR_BM_TRADINGPOSTVALUE;
var config int KRYSEAVEKTOR_BM_IPOINTS;
var config int KRYSEAVEKTOR_BM_IUPGRADESLOTS;

// Template Start
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> KryseaVektorWeaps;

	KryseaVektorWeaps.AddItem(CreateTemplate_KryseaVektor());
	KryseaVektorWeaps.AddItem(CreateTemplate_KryseaVektor_MG());
	KryseaVektorWeaps.AddItem(CreateTemplate_KryseaVektor_BM());

	return KryseaVektorWeaps;

}

// M-97 Viper Conventional Template
static function X2DataTemplate CreateTemplate_KryseaVektor()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_KryseaVektor');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	// Weapon Classifications
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'vektor_rifle';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///KryseaSniper_Assets.UI.UI_KryseaSniper_WP";
	Template.Tier = 0;
	// Weapon Stats
	Template.BaseDamage = default.KRYSEAVEKTOR_BASEDAMAGE;
	Template.RangeAccuracy = default.KRYSEAVEKTOR_RANGE;
	Template.Aim = default.KRYSEAVEKTOR_AIM;
	Template.CritChance = default.KRYSEAVEKTOR_CRITCHANCE;
	Template.iClipSize = default.KRYSEAVEKTOR_ICLIPSIZE;
	Template.iSoundRange = default.KRYSEAVEKTOR_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.KRYSEAVEKTOR_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.KRYSEAVEKTOR_IUPGRADESLOTS;
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
	Template.GameArchetype = "KryseaSniper_Assets.Archetypes.ARC_Weap_Krysea_Sniper";

	return Template;
}


// M-97 Viper Magnetic Template
static function X2DataTemplate CreateTemplate_KryseaVektor_MG()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_KryseaVektor_MG');
	Template.WeaponPanelImage = "_MagneticRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	// Weapon Classifications
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'vektor_rifle';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///KryseaSniper_Assets.UI.UI_KryseaSniper_WP";
	Template.Tier = 2;
	// Weapon Stats
	Template.BaseDamage = default.KRYSEAVEKTOR_MG_BASEDAMAGE;
	Template.RangeAccuracy = default.KRYSEAVEKTOR_MG_RANGE;
	Template.Aim = default.KRYSEAVEKTOR_MG_AIM;
	Template.CritChance = default.KRYSEAVEKTOR_MG_CRITCHANCE;
	Template.iClipSize = default.KRYSEAVEKTOR_MG_ICLIPSIZE;
	Template.iSoundRange = default.KRYSEAVEKTOR_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.KRYSEAVEKTOR_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.KRYSEAVEKTOR_MG_IUPGRADESLOTS;
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
	Template.BaseItem = 'WP_KryseaVektor'; 
	// Weapon Asset
	Template.GameArchetype = "KryseaSniper_Assets.Archetypes.ARC_Weap_Krysea_Sniper";

	return Template;
}

//Template Beam Creation
static function X2DataTemplate CreateTemplate_KryseaVektor_BM()
{
	local X2WeaponTemplate Template;
	//Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_KryseaVektor_BM');
	Template.WeaponPanelImage = "_BeamRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'vektor_rifle';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///KryseaSniper_Assets.UI.UI_KryseaSniper_WP";

	Template.Tier = 4;
	//Weapon Stat pointers
	Template.BaseDamage = default.KRYSEAVEKTOR_BM_BASEDAMAGE;
	Template.RangeAccuracy = default.KRYSEAVEKTOR_BM_RANGE;
	Template.Aim = default.KRYSEAVEKTOR_BM_AIM;
	Template.CritChance = default.KRYSEAVEKTOR_BM_CRITCHANCE;
	Template.iClipSize = default.KRYSEAVEKTOR_BM_ICLIPSIZE;
	Template.iSoundRange = default.KRYSEAVEKTOR_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.KRYSEAVEKTOR_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.KRYSEAVEKTOR_BM_IUPGRADESLOTS;
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
	Template.BaseItem = 'WP_KryseaVektor_MG';  
	//Weapon Assets
	Template.GameArchetype = "KryseaSniper_Assets.Archetypes.ARC_Weap_Krysea_Sniper";

	return Template;
}