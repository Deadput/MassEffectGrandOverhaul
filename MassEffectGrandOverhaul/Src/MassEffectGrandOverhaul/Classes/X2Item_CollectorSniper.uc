class X2Item_CollectorSniper extends X2Item config(CollectorSniper);



//===================================================================== //Weapon Stat Variables
var config WeaponDamageValue COLLECTORSNIPER_BASEDAMAGE;
var config array<int> COLLECTORSNIPER_RANGE;
var config int COLLECTORSNIPER_AIM;
var config int COLLECTORSNIPER_CRITCHANCE;
var config int COLLECTORSNIPER_ICLIPSIZE;
var config int COLLECTORSNIPER_ISOUNDRANGE;
var config int COLLECTORSNIPER_IENVIRONMENTDAMAGE;
var config int COLLECTORSNIPER_ISUPPLIES;
var config int COLLECTORSNIPER_TRADINGPOSTVALUE;
var config int COLLECTORSNIPER_IPOINTS;
var config int COLLECTORSNIPER_IUPGRADESLOTS;

var config WeaponDamageValue COLLECTORSNIPER_MG_BASEDAMAGE;
var config array<int> COLLECTORSNIPER_MG_RANGE;
var config int COLLECTORSNIPER_MG_AIM;
var config int COLLECTORSNIPER_MG_CRITCHANCE;
var config int COLLECTORSNIPER_MG_ICLIPSIZE;
var config int COLLECTORSNIPER_MG_ISOUNDRANGE;
var config int COLLECTORSNIPER_MG_IENVIRONMENTDAMAGE;
var config int COLLECTORSNIPER_MG_ISUPPLIES;
var config int COLLECTORSNIPER_MG_TRADINGPOSTVALUE;
var config int COLLECTORSNIPER_MG_IPOINTS;
var config int COLLECTORSNIPER_MG_IUPGRADESLOTS;

var config WeaponDamageValue COLLECTORSNIPER_BM_BASEDAMAGE;
var config array<int> COLLECTORSNIPER_BM_RANGE;
var config int COLLECTORSNIPER_BM_AIM;
var config int COLLECTORSNIPER_BM_CRITCHANCE;
var config int COLLECTORSNIPER_BM_ICLIPSIZE;
var config int COLLECTORSNIPER_BM_ISOUNDRANGE;
var config int COLLECTORSNIPER_BM_IENVIRONMENTDAMAGE;
var config int COLLECTORSNIPER_BM_ISUPPLIES;
var config int COLLECTORSNIPER_BM_TRADINGPOSTVALUE;
var config int COLLECTORSNIPER_BM_IPOINTS;
var config int COLLECTORSNIPER_BM_IUPGRADESLOTS;

//===================================================================== //Template Starts
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> CollectorSniperWeaps;

	CollectorSniperWeaps.AddItem(CreateTemplate_CollectorSniper());
	CollectorSniperWeaps.AddItem(CreateTemplate_CollectorSniper_MG());
	CollectorSniperWeaps.AddItem(CreateTemplate_CollectorSniper_BM());

	return CollectorSniperWeaps;
}

//===================================================================== //Template Conventional Creation
static function X2DataTemplate CreateTemplate_COLLECTORSNIPER()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_COLLECTORSNIPER');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sniper_rifle';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///CollectorSniper_Assets.UI.UI_CollectorSniper_WP";
	Template.Tier = 0;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.COLLECTORSNIPER_RANGE;
	Template.BaseDamage = default.COLLECTORSNIPER_BASEDAMAGE;
	Template.Aim = default.COLLECTORSNIPER_AIM;
	Template.CritChance = default.COLLECTORSNIPER_CRITCHANCE;
	Template.iClipSize = default.COLLECTORSNIPER_ICLIPSIZE;
	Template.iSoundRange = default.COLLECTORSNIPER_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.COLLECTORSNIPER_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.COLLECTORSNIPER_IUPGRADESLOTS;
	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	//===================================================================== //Weapon Ability pointers
	Template.iTypicalActionCost = 2;
	Template.bIsLargeWeapon = true;
	Template.Abilities.AddItem('SniperStandardFire');
	Template.Abilities.AddItem('SniperRifleOverwatch');	
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
	Template.GameArchetype = "CollectorSniper_Assets.Archetypes.ARC_Weap_Collector_Sniper"; 
	
	return Template;
}
//===================================================================== //Template Magnetic Creation
static function X2DataTemplate CreateTemplate_COLLECTORSNIPER_MG()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_COLLECTORSNIPER_MG');
	Template.WeaponPanelImage = "_MagneticRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sniper_rifle';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///CollectorSniper_Assets.UI.UI_CollectorSniper_WP";
	Template.Tier = 2;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.COLLECTORSNIPER_MG_RANGE;
	Template.BaseDamage = default.COLLECTORSNIPER_MG_BASEDAMAGE;
	Template.Aim = default.COLLECTORSNIPER_MG_AIM;
	Template.CritChance = default.COLLECTORSNIPER_MG_CRITCHANCE;
	Template.iClipSize = default.COLLECTORSNIPER_MG_ICLIPSIZE;
	Template.iSoundRange = default.COLLECTORSNIPER_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.COLLECTORSNIPER_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.COLLECTORSNIPER_MG_IUPGRADESLOTS;
	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	//===================================================================== //Weapon Ability pointers
	Template.iTypicalActionCost = 2;
	Template.bIsLargeWeapon = true;
	Template.Abilities.AddItem('SniperStandardFire');
	Template.Abilities.AddItem('SniperRifleOverwatch');	
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
	Template.CreatorTemplateName = 'SniperRifle_MG_Schematic';
	Template.BaseItem = 'WP_COLLECTORSNIPER'; 
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "CollectorSniper_Assets.Archetypes.ARC_Weap_Collector_Sniper"; 
	
	return Template;
}
//===================================================================== //Template Beam Creation
static function X2DataTemplate CreateTemplate_COLLECTORSNIPER_BM()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_COLLECTORSNIPER_BM');
	Template.WeaponPanelImage = "_BeamRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sniper_rifle';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///CollectorSniper_Assets.UI.UI_CollectorSniper_WP";
	Template.Tier = 4;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.COLLECTORSNIPER_BM_RANGE;
	Template.BaseDamage = default.COLLECTORSNIPER_BM_BASEDAMAGE;
	Template.Aim = default.COLLECTORSNIPER_BM_AIM;
	Template.CritChance = default.COLLECTORSNIPER_BM_CRITCHANCE;
	Template.iClipSize = default.COLLECTORSNIPER_BM_ICLIPSIZE;
	Template.iSoundRange = default.COLLECTORSNIPER_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.COLLECTORSNIPER_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.COLLECTORSNIPER_BM_IUPGRADESLOTS;
	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	//===================================================================== //Weapon Ability pointers
	Template.iTypicalActionCost = 2;
	Template.bIsLargeWeapon = true;
	Template.Abilities.AddItem('SniperStandardFire');
	Template.Abilities.AddItem('SniperRifleOverwatch');	
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
	Template.CreatorTemplateName = 'SniperRifle_BM_Schematic';
	Template.BaseItem = 'WP_COLLECTORSNIPER_MG';  
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "CollectorSniper_Assets.Archetypes.ARC_Weap_Collector_Sniper"; 
	
	return Template;
}