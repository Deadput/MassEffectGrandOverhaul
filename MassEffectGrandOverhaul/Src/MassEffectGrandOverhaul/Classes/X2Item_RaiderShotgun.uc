class X2Item_RaiderShotgun extends X2Item config(RaiderShotgun);



//===================================================================== //Weapon Stat Variables
var config WeaponDamageValue RAIDERSHOTGUN_BASEDAMAGE;
var config array<int> RAIDERSHOTGUN_RANGE;
var config int RAIDERSHOTGUN_AIM;
var config int RAIDERSHOTGUN_CRITCHANCE;
var config int RAIDERSHOTGUN_ICLIPSIZE;
var config int RAIDERSHOTGUN_ISOUNDRANGE;
var config int RAIDERSHOTGUN_IENVIRONMENTDAMAGE;
var config int RAIDERSHOTGUN_ISUPPLIES;
var config int RAIDERSHOTGUN_TRADINGPOSTVALUE;
var config int RAIDERSHOTGUN_IPOINTS;
var config int RAIDERSHOTGUN_IUPGRADESLOTS;

var config WeaponDamageValue RAIDERSHOTGUN_MG_BASEDAMAGE;
var config array<int> RAIDERSHOTGUN_MG_RANGE;
var config int RAIDERSHOTGUN_MG_AIM;
var config int RAIDERSHOTGUN_MG_CRITCHANCE;
var config int RAIDERSHOTGUN_MG_ICLIPSIZE;
var config int RAIDERSHOTGUN_MG_ISOUNDRANGE;
var config int RAIDERSHOTGUN_MG_IENVIRONMENTDAMAGE;
var config int RAIDERSHOTGUN_MG_ISUPPLIES;
var config int RAIDERSHOTGUN_MG_TRADINGPOSTVALUE;
var config int RAIDERSHOTGUN_MG_IPOINTS;
var config int RAIDERSHOTGUN_MG_IUPGRADESLOTS;

var config WeaponDamageValue RAIDERSHOTGUN_BM_BASEDAMAGE;
var config array<int> RAIDERSHOTGUN_BM_RANGE;
var config int RAIDERSHOTGUN_BM_AIM;
var config int RAIDERSHOTGUN_BM_CRITCHANCE;
var config int RAIDERSHOTGUN_BM_ICLIPSIZE;
var config int RAIDERSHOTGUN_BM_ISOUNDRANGE;
var config int RAIDERSHOTGUN_BM_IENVIRONMENTDAMAGE;
var config int RAIDERSHOTGUN_BM_ISUPPLIES;
var config int RAIDERSHOTGUN_BM_TRADINGPOSTVALUE;
var config int RAIDERSHOTGUN_BM_IPOINTS;
var config int RAIDERSHOTGUN_BM_IUPGRADESLOTS;

//===================================================================== //Template Starts
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> RaiderShotgunWeaps;

	RaiderShotgunWeaps.AddItem(CreateTemplate_RaiderShotgun());
	RaiderShotgunWeaps.AddItem(CreateTemplate_RaiderShotgun_MG());
	RaiderShotgunWeaps.AddItem(CreateTemplate_RaiderShotgun_BM());

	return RaiderShotgunWeaps;
}

//===================================================================== //Template Conventional Creation
static function X2DataTemplate CreateTemplate_RAIDERSHOTGUN()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_RAIDERSHOTGUN');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'shotgun';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///RaiderShotgun_Assets.UI.UI_RaiderShotgun_WP";
	Template.Tier = 0;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.RAIDERSHOTGUN_RANGE;
	Template.BaseDamage = default.RAIDERSHOTGUN_BASEDAMAGE;
	Template.Aim = default.RAIDERSHOTGUN_AIM;
	Template.CritChance = default.RAIDERSHOTGUN_CRITCHANCE;
	Template.iClipSize = default.RAIDERSHOTGUN_ICLIPSIZE;
	Template.iSoundRange = default.RAIDERSHOTGUN_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.RAIDERSHOTGUN_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.RAIDERSHOTGUN_IUPGRADESLOTS;
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
	Template.GameArchetype = "RaiderShotgun_Assets.Archetypes.ARC_Weap_Raider_Shotgun"; 
	
	return Template;
}
//===================================================================== //Template Magnetic Creation
static function X2DataTemplate CreateTemplate_RAIDERSHOTGUN_MG()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_RAIDERSHOTGUN_MG');
	Template.WeaponPanelImage = "_MagneticRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'shotgun';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///RaiderShotgun_Assets.UI.UI_RaiderShotgun_WP";
	Template.Tier = 2;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.RAIDERSHOTGUN_MG_RANGE;
	Template.BaseDamage = default.RAIDERSHOTGUN_MG_BASEDAMAGE;
	Template.Aim = default.RAIDERSHOTGUN_MG_AIM;
	Template.CritChance = default.RAIDERSHOTGUN_MG_CRITCHANCE;
	Template.iClipSize = default.RAIDERSHOTGUN_MG_ICLIPSIZE;
	Template.iSoundRange = default.RAIDERSHOTGUN_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.RAIDERSHOTGUN_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.RAIDERSHOTGUN_MG_IUPGRADESLOTS;
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
	Template.CreatorTemplateName = 'Shotgun_MG_Schematic';
	Template.BaseItem = 'WP_RAIDERSHOTGUN'; 
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "RaiderShotgun_Assets.Archetypes.ARC_Weap_Raider_Shotgun"; 
	
	return Template;
}
//===================================================================== //Template Beam Creation
static function X2DataTemplate CreateTemplate_RAIDERSHOTGUN_BM()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_RAIDERSHOTGUN_BM');
	Template.WeaponPanelImage = "_BeamRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'shotgun';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///RaiderShotgun_Assets.UI.UI_RaiderShotgun_WP";
	Template.Tier = 4;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.RAIDERSHOTGUN_BM_RANGE;
	Template.BaseDamage = default.RAIDERSHOTGUN_BM_BASEDAMAGE;
	Template.Aim = default.RAIDERSHOTGUN_BM_AIM;
	Template.CritChance = default.RAIDERSHOTGUN_BM_CRITCHANCE;
	Template.iClipSize = default.RAIDERSHOTGUN_BM_ICLIPSIZE;
	Template.iSoundRange = default.RAIDERSHOTGUN_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.RAIDERSHOTGUN_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.RAIDERSHOTGUN_BM_IUPGRADESLOTS;
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
	Template.CreatorTemplateName = 'Shotgun_BM_Schematic';
	Template.BaseItem = 'WP_RAIDERSHOTGUN_MG';  
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "RaiderShotgun_Assets.Archetypes.ARC_Weap_Raider_Shotgun"; 
	
	return Template;
}