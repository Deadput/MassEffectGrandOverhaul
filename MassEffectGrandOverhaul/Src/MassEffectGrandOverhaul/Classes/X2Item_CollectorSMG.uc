class X2Item_CollectorSMG extends X2Item config(CollectorSMG);

// Weapon Stat Variables
var config WeaponDamageValue COLLECTORSMG_BASEDAMAGE;
var config array<int> COLLECTORSMG_RANGE;
var config int COLLECTORSMG_AIM;
var config int COLLECTORSMG_CRITCHANCE;
var config int COLLECTORSMG_ICLIPSIZE;
var config int COLLECTORSMG_ISOUNDRANGE;
var config int COLLECTORSMG_IENVIRONMENTDAMAGE;
var config int COLLECTORSMG_ISUPPLIES;
var config int COLLECTORSMG_TRADINGPOSTVALUE;
var config int COLLECTORSMG_IPOINTS;
var config int COLLECTORSMG_IUPGRADESLOTS;

var config WeaponDamageValue COLLECTORSMG_MG_BASEDAMAGE;
var config array<int> COLLECTORSMG_MG_RANGE;
var config int COLLECTORSMG_MG_AIM;
var config int COLLECTORSMG_MG_CRITCHANCE;
var config int COLLECTORSMG_MG_ICLIPSIZE;
var config int COLLECTORSMG_MG_ISOUNDRANGE;
var config int COLLECTORSMG_MG_IENVIRONMENTDAMAGE;
var config int COLLECTORSMG_MG_ISUPPLIES;
var config int COLLECTORSMG_MG_TRADINGPOSTVALUE;
var config int COLLECTORSMG_MG_IPOINTS;
var config int COLLECTORSMG_MG_IUPGRADESLOTS;

var config WeaponDamageValue COLLECTORSMG_BM_BASEDAMAGE;
var config array<int> COLLECTORSMG_BM_RANGE;
var config int COLLECTORSMG_BM_AIM;
var config int COLLECTORSMG_BM_CRITCHANCE;
var config int COLLECTORSMG_BM_ICLIPSIZE;
var config int COLLECTORSMG_BM_ISOUNDRANGE;
var config int COLLECTORSMG_BM_IENVIRONMENTDAMAGE;
var config int COLLECTORSMG_BM_ISUPPLIES;
var config int COLLECTORSMG_BM_TRADINGPOSTVALUE;
var config int COLLECTORSMG_BM_IPOINTS;
var config int COLLECTORSMG_BM_IUPGRADESLOTS;
// Template Start
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> CollectorSMGWeaps;

	CollectorSMGWeaps.AddItem(CreateTemplate_CollectorSMG());
	CollectorSMGWeaps.AddItem(CreateTemplate_CollectorSMG_MG());
	CollectorSMGWeaps.AddItem(CreateTemplate_CollectorSMG_BM());

	return CollectorSMGWeaps;

}

// M8 Avenger Conventional Template
static function X2DataTemplate CreateTemplate_CollectorSMG()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_CollectorSMG');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	// Weapon Classifications
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'bullpup';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///CollectorSMG_Assets.UI.UI_CollectorSMG_WP";
	Template.Tier = 0;
	// Weapon Stats
	Template.BaseDamage = default.COLLECTORSMG_BASEDAMAGE;
	Template.RangeAccuracy = default.COLLECTORSMG_RANGE;
	Template.Aim = default.COLLECTORSMG_AIM;
	Template.CritChance = default.COLLECTORSMG_CRITCHANCE;
	Template.iClipSize = default.COLLECTORSMG_ICLIPSIZE;
	Template.iSoundRange = default.COLLECTORSMG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.COLLECTORSMG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.COLLECTORSMG_IUPGRADESLOTS;
	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	//Weapon Abilities
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('PistolReturnFire');
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
	Template.GameArchetype = "CollectorSMG_Assets.ARC_Weap_Collector_SMG";

	return Template;
}


// M8 Avenger Magnetic Template
static function X2DataTemplate CreateTemplate_CollectorSMG_MG()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_CollectorSMG_MG');
	Template.WeaponPanelImage = "_MagneticRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	// Weapon Classifications
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'bullpup';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///CollectorSMG_Assets.UI.UI_CollectorSMG_WP";
	Template.Tier = 2;
	// Weapon Stats
	Template.BaseDamage = default.COLLECTORSMG_MG_BASEDAMAGE;
	Template.RangeAccuracy = default.COLLECTORSMG_MG_RANGE;
	Template.Aim = default.COLLECTORSMG_MG_AIM;
	Template.CritChance = default.COLLECTORSMG_MG_CRITCHANCE;
	Template.iClipSize = default.COLLECTORSMG_MG_ICLIPSIZE;
	Template.iSoundRange = default.COLLECTORSMG_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.COLLECTORSMG_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.COLLECTORSMG_MG_IUPGRADESLOTS;
	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	//Weapon Abilities
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('PistolReturnFire');
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
	Template.CreatorTemplateName = 'CollectorSMG_MG_Schematic';
	Template.BaseItem = 'WP_CollectorSMG'; 
	// Weapon Asset
	Template.GameArchetype = "CollectorSMG_Assets.ARC_Weap_Collector_SMG";

	return Template;
}

//Template Beam Creation
static function X2DataTemplate CreateTemplate_CollectorSMG_BM()
{
	local X2WeaponTemplate Template;
	//Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_CollectorSMG_BM');
	Template.WeaponPanelImage = "_BeamRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'bullpup';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///CollectorSMG_Assets.UI.UI_CollectorSMG_WP";
	Template.Tier = 4;
	//Weapon Stat pointers
	Template.BaseDamage = default.COLLECTORSMG_BM_BASEDAMAGE;
	Template.RangeAccuracy = default.COLLECTORSMG_BM_RANGE;
	Template.Aim = default.COLLECTORSMG_BM_AIM;
	Template.CritChance = default.COLLECTORSMG_BM_CRITCHANCE;
	Template.iClipSize = default.COLLECTORSMG_BM_ICLIPSIZE;
	Template.iSoundRange = default.COLLECTORSMG_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.COLLECTORSMG_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.COLLECTORSMG_BM_IUPGRADESLOTS;
	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	//Weapon Ability pointers
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('PistolReturnFire');
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
	Template.CreatorTemplateName = 'CollectorSMG_BM_Schematic';
	Template.BaseItem = 'WP_CollectorSMG_MG';  
	//Weapon Assets
	Template.GameArchetype = "CollectorSMG_Assets.ARC_Weap_Collector_SMG"; 
	
	return Template;
}