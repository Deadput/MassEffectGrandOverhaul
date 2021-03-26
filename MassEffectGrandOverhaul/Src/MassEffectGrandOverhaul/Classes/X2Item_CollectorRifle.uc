class X2Item_CollectorRifle extends X2Item config(CollectorRifle);



//===================================================================== //Weapon Stat Variables
var config WeaponDamageValue COLLECTORRIFLE_BASEDAMAGE;
var config array<int> COLLECTORRIFLE_RANGE;
var config int COLLECTORRIFLE_AIM;
var config int COLLECTORRIFLE_CRITCHANCE;
var config int COLLECTORRIFLE_ICLIPSIZE;
var config int COLLECTORRIFLE_ISOUNDRANGE;
var config int COLLECTORRIFLE_IENVIRONMENTDAMAGE;
var config int COLLECTORRIFLE_ISUPPLIES;
var config int COLLECTORRIFLE_TRADINGPOSTVALUE;
var config int COLLECTORRIFLE_IPOINTS;
var config int COLLECTORRIFLE_IUPGRADESLOTS;

var config WeaponDamageValue COLLECTORRIFLE_MG_BASEDAMAGE;
var config array<int> COLLECTORRIFLE_MG_RANGE;
var config int COLLECTORRIFLE_MG_AIM;
var config int COLLECTORRIFLE_MG_CRITCHANCE;
var config int COLLECTORRIFLE_MG_ICLIPSIZE;
var config int COLLECTORRIFLE_MG_ISOUNDRANGE;
var config int COLLECTORRIFLE_MG_IENVIRONMENTDAMAGE;
var config int COLLECTORRIFLE_MG_ISUPPLIES;
var config int COLLECTORRIFLE_MG_TRADINGPOSTVALUE;
var config int COLLECTORRIFLE_MG_IPOINTS;
var config int COLLECTORRIFLE_MG_IUPGRADESLOTS;

var config WeaponDamageValue COLLECTORRIFLE_BM_BASEDAMAGE;
var config array<int> COLLECTORRIFLE_BM_RANGE;
var config int COLLECTORRIFLE_BM_AIM;
var config int COLLECTORRIFLE_BM_CRITCHANCE;
var config int COLLECTORRIFLE_BM_ICLIPSIZE;
var config int COLLECTORRIFLE_BM_ISOUNDRANGE;
var config int COLLECTORRIFLE_BM_IENVIRONMENTDAMAGE;
var config int COLLECTORRIFLE_BM_ISUPPLIES;
var config int COLLECTORRIFLE_BM_TRADINGPOSTVALUE;
var config int COLLECTORRIFLE_BM_IPOINTS;
var config int COLLECTORRIFLE_BM_IUPGRADESLOTS;

//===================================================================== //Template Starts
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> CollectorRifleWeaps;

	CollectorRifleWeaps.AddItem(CreateTemplate_CollectorRifle());
	CollectorRifleWeaps.AddItem(CreateTemplate_CollectorRifle_MG());
	CollectorRifleWeaps.AddItem(CreateTemplate_CollectorRifle_BM());

	return CollectorRifleWeaps;
}

//===================================================================== //Template Conventional Creation
static function X2DataTemplate CreateTemplate_CollectorRifle()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_CollectorRifle');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'rifle';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///CollectorRifle_Assets.UI.UI_CollectorRifle_WP";
	Template.Tier = 0;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.COLLECTORRIFLE_RANGE;
	Template.BaseDamage = default.COLLECTORRIFLE_BASEDAMAGE;
	Template.Aim = default.COLLECTORRIFLE_AIM;
	Template.CritChance = default.COLLECTORRIFLE_CRITCHANCE;
	Template.iClipSize = default.COLLECTORRIFLE_ICLIPSIZE;
	Template.iSoundRange = default.COLLECTORRIFLE_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.COLLECTORRIFLE_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.COLLECTORRIFLE_IUPGRADESLOTS;
	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	//===================================================================== //Weapon Ability pointers
	Template.Abilities.AddItem('StandardShot');	
	Template.Abilities.AddItem('Overwatch');	
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	//===================================================================== //Weapon Attatchment pointers
	Template.UIArmoryCameraPointTag = 'UIPawnLocation_WeaponUpgrade_AssaultRifle';
	Template.AddDefaultAttachment('Mag', "", , "");
	Template.AddDefaultAttachment('Optic', "", , "");
	Template.AddDefaultAttachment('Reargrip', "", , "");
	Template.AddDefaultAttachment('Stock', "", , "");
	Template.AddDefaultAttachment('Trigger', "", , "");
	Template.AddDefaultAttachment('Light', "", , "");
	//===================================================================== //Can Be Built?
	Template.iPhysicsImpulse = 5;
	Template.StartingItem = true;
	Template.CanBeBuilt = false;	
	Template.bInfiniteItem = true;
	//===================================================================== //Physics
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "CollectorRifle_Assets.Archetypes.ARC_Weap_Collector_Rifle"; 
	
	return Template;
}
//===================================================================== //Template Magnetic Creation
static function X2DataTemplate CreateTemplate_CollectorRifle_MG()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_CollectorRifle_MG');
	Template.WeaponPanelImage = "_MagneticRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'rifle';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///CollectorRifle_Assets.UI.UI_CollectorRifle_WP";
	Template.Tier = 2;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.COLLECTORRIFLE_MG_RANGE;
	Template.BaseDamage = default.COLLECTORRIFLE_MG_BASEDAMAGE;
	Template.Aim = default.COLLECTORRIFLE_MG_AIM;
	Template.CritChance = default.COLLECTORRIFLE_MG_CRITCHANCE;
	Template.iClipSize = default.COLLECTORRIFLE_MG_ICLIPSIZE;
	Template.iSoundRange = default.COLLECTORRIFLE_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.COLLECTORRIFLE_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.COLLECTORRIFLE_MG_IUPGRADESLOTS;
	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	//===================================================================== //Weapon Ability pointers
	Template.Abilities.AddItem('StandardShot');	
	Template.Abilities.AddItem('Overwatch');	
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	//===================================================================== //Weapon Attatchment pointers
	Template.UIArmoryCameraPointTag = 'UIPawnLocation_WeaponUpgrade_AssaultRifle';
	Template.AddDefaultAttachment('Mag', "", , "");
	Template.AddDefaultAttachment('Optic', "", , "");
	Template.AddDefaultAttachment('Reargrip', "", , "");
	Template.AddDefaultAttachment('Stock', "", , "");
	Template.AddDefaultAttachment('Trigger', "", , "");
	Template.AddDefaultAttachment('Light', "", , "");
	//===================================================================== //Can Be Built?
	Template.iPhysicsImpulse = 5;
	Template.CanBeBuilt = false;	
	Template.bInfiniteItem = true;
	//===================================================================== //Physics
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;
	//===================================================================== //Upgrade Template
	Template.CreatorTemplateName = 'AssaultRifle_MG_Schematic';
	Template.BaseItem = 'WP_CollectorRifle'; 
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "CollectorRifle_Assets.Archetypes.ARC_Weap_Collector_Rifle"; 
	
	return Template;
}
//===================================================================== //Template Beam Creation
static function X2DataTemplate CreateTemplate_CollectorRifle_BM()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_CollectorRifle_BM');
	Template.WeaponPanelImage = "_BeamRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'rifle';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///CollectorRifle_Assets.UI.UI_CollectorRifle_WP";
	Template.Tier = 4;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.COLLECTORRIFLE_BM_RANGE;
	Template.BaseDamage = default.COLLECTORRIFLE_BM_BASEDAMAGE;
	Template.Aim = default.COLLECTORRIFLE_BM_AIM;
	Template.CritChance = default.COLLECTORRIFLE_BM_CRITCHANCE;
	Template.iClipSize = default.COLLECTORRIFLE_BM_ICLIPSIZE;
	Template.iSoundRange = default.COLLECTORRIFLE_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.COLLECTORRIFLE_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.COLLECTORRIFLE_BM_IUPGRADESLOTS;
	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	//===================================================================== //Weapon Ability pointers
	Template.Abilities.AddItem('StandardShot');	
	Template.Abilities.AddItem('Overwatch');	
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	//===================================================================== //Weapon Attatchment pointers
	Template.UIArmoryCameraPointTag = 'UIPawnLocation_WeaponUpgrade_AssaultRifle';
	Template.AddDefaultAttachment('Mag', "", , "");
	Template.AddDefaultAttachment('Optic', "", , "");
	Template.AddDefaultAttachment('Reargrip', "", , "");
	Template.AddDefaultAttachment('Stock', "", , "");
	Template.AddDefaultAttachment('Trigger', "", , "");
	Template.AddDefaultAttachment('Light', "", , "");
	//===================================================================== //Can Be Built?
	Template.iPhysicsImpulse = 5;
	Template.CanBeBuilt = false;	
	Template.bInfiniteItem = true;
	//===================================================================== //Physics
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;
	//===================================================================== //Upgrade Template
	Template.CreatorTemplateName = 'AssaultRifle_BM_Schematic';
	Template.BaseItem = 'WP_CollectorRifle_MG';  
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "CollectorRifle_Assets.Archetypes.ARC_Weap_Collector_Rifle"; 
	
	return Template;
}

	defaultproperties
	{
	bShouldCreateDifficultyVariants = true
	}