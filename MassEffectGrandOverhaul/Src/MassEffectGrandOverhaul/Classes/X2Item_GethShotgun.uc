class X2Item_GethShotgun extends X2Item config(GethShotgun);



//===================================================================== //Weapon Stat Variables
var config WeaponDamageValue GETHSHOTGUN_BASEDAMAGE;
var config array<int> GETHSHOTGUN_RANGE;
var config int GETHSHOTGUN_AIM;
var config int GETHSHOTGUN_CRITCHANCE;
var config int GETHSHOTGUN_ICLIPSIZE;
var config int GETHSHOTGUN_ISOUNDRANGE;
var config int GETHSHOTGUN_IENVIRONMENTDAMAGE;
var config int GETHSHOTGUN_ISUPPLIES;
var config int GETHSHOTGUN_TRADINGPOSTVALUE;
var config int GETHSHOTGUN_IPOINTS;
var config int GETHSHOTGUN_IUPGRADESLOTS;

var config WeaponDamageValue GETHSHOTGUN_MG_BASEDAMAGE;
var config array<int> GETHSHOTGUN_MG_RANGE;
var config int GETHSHOTGUN_MG_AIM;
var config int GETHSHOTGUN_MG_CRITCHANCE;
var config int GETHSHOTGUN_MG_ICLIPSIZE;
var config int GETHSHOTGUN_MG_ISOUNDRANGE;
var config int GETHSHOTGUN_MG_IENVIRONMENTDAMAGE;
var config int GETHSHOTGUN_MG_ISUPPLIES;
var config int GETHSHOTGUN_MG_TRADINGPOSTVALUE;
var config int GETHSHOTGUN_MG_IPOINTS;
var config int GETHSHOTGUN_MG_IUPGRADESLOTS;

var config WeaponDamageValue GETHSHOTGUN_BM_BASEDAMAGE;
var config array<int> GETHSHOTGUN_BM_RANGE;
var config int GETHSHOTGUN_BM_AIM;
var config int GETHSHOTGUN_BM_CRITCHANCE;
var config int GETHSHOTGUN_BM_ICLIPSIZE;
var config int GETHSHOTGUN_BM_ISOUNDRANGE;
var config int GETHSHOTGUN_BM_IENVIRONMENTDAMAGE;
var config int GETHSHOTGUN_BM_ISUPPLIES;
var config int GETHSHOTGUN_BM_TRADINGPOSTVALUE;
var config int GETHSHOTGUN_BM_IPOINTS;
var config int GETHSHOTGUN_BM_IUPGRADESLOTS;

//===================================================================== //Template Starts
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> GethShotgunWeaps;

	GethShotgunWeaps.AddItem(CreateTemplate_GethShotgun());
	GethShotgunWeaps.AddItem(CreateTemplate_GethShotgun_MG());
	GethShotgunWeaps.AddItem(CreateTemplate_GethShotgun_BM());

	return GethShotgunWeaps;
}

//===================================================================== //Template Conventional Creation
static function X2DataTemplate CreateTemplate_GETHSHOTGUN()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_GETHSHOTGUN');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'shotgun';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///GethShotgun_Assets.UI.UI_GethShotgun_WP";
	Template.Tier = 0;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.GETHSHOTGUN_RANGE;
	Template.BaseDamage = default.GETHSHOTGUN_BASEDAMAGE;
	Template.Aim = default.GETHSHOTGUN_AIM;
	Template.CritChance = default.GETHSHOTGUN_CRITCHANCE;
	Template.iClipSize = default.GETHSHOTGUN_ICLIPSIZE;
	Template.iSoundRange = default.GETHSHOTGUN_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.GETHSHOTGUN_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.GETHSHOTGUN_IUPGRADESLOTS;
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
	Template.GameArchetype = "GethShotgun_Assets.Archetypes.ARC_Weap_Geth_Shotgun"; 
	
	return Template;
}
//===================================================================== //Template Magnetic Creation
static function X2DataTemplate CreateTemplate_GETHSHOTGUN_MG()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_GETHSHOTGUN_MG');
	Template.WeaponPanelImage = "_MagneticRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'shotgun';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///GethShotgun_Assets.UI.UI_GethShotgun_WP";
	Template.Tier = 2;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.GETHSHOTGUN_MG_RANGE;
	Template.BaseDamage = default.GETHSHOTGUN_MG_BASEDAMAGE;
	Template.Aim = default.GETHSHOTGUN_MG_AIM;
	Template.CritChance = default.GETHSHOTGUN_MG_CRITCHANCE;
	Template.iClipSize = default.GETHSHOTGUN_MG_ICLIPSIZE;
	Template.iSoundRange = default.GETHSHOTGUN_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.GETHSHOTGUN_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.GETHSHOTGUN_MG_IUPGRADESLOTS;
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
	Template.BaseItem = 'WP_GETHSHOTGUN'; 
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "GethShotgun_Assets.Archetypes.ARC_Weap_Geth_Shotgun"; 
	
	return Template;
}
//===================================================================== //Template Beam Creation
static function X2DataTemplate CreateTemplate_GETHSHOTGUN_BM()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_GETHSHOTGUN_BM');
	Template.WeaponPanelImage = "_BeamRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'shotgun';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///GethShotgun_Assets.UI.UI_GethShotgun_WP";
	Template.Tier = 4;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.GETHSHOTGUN_BM_RANGE;
	Template.BaseDamage = default.GETHSHOTGUN_BM_BASEDAMAGE;
	Template.Aim = default.GETHSHOTGUN_BM_AIM;
	Template.CritChance = default.GETHSHOTGUN_BM_CRITCHANCE;
	Template.iClipSize = default.GETHSHOTGUN_BM_ICLIPSIZE;
	Template.iSoundRange = default.GETHSHOTGUN_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.GETHSHOTGUN_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.GETHSHOTGUN_BM_IUPGRADESLOTS;
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
	Template.BaseItem = 'WP_GETHSHOTGUN_MG';  
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "GethShotgun_Assets.Archetypes.ARC_Weap_Geth_Shotgun"; 
	
	return Template;
}