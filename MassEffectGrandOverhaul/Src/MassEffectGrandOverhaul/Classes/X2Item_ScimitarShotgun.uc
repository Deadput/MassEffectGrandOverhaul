class X2Item_ScimitarShotgun extends X2Item config(ScimitarShotgun);



//===================================================================== //Weapon Stat Variables
var config WeaponDamageValue SCIMITARSHOTGUN_BASEDAMAGE;
var config array<int> SCIMITARSHOTGUN_RANGE;
var config int SCIMITARSHOTGUN_AIM;
var config int SCIMITARSHOTGUN_CRITCHANCE;
var config int SCIMITARSHOTGUN_ICLIPSIZE;
var config int SCIMITARSHOTGUN_ISOUNDRANGE;
var config int SCIMITARSHOTGUN_IENVIRONMENTDAMAGE;
var config int SCIMITARSHOTGUN_ISUPPLIES;
var config int SCIMITARSHOTGUN_TRADINGPOSTVALUE;
var config int SCIMITARSHOTGUN_IPOINTS;
var config int SCIMITARSHOTGUN_IUPGRADESLOTS;

var config WeaponDamageValue SCIMITARSHOTGUN_MG_BASEDAMAGE;
var config array<int> SCIMITARSHOTGUN_MG_RANGE;
var config int SCIMITARSHOTGUN_MG_AIM;
var config int SCIMITARSHOTGUN_MG_CRITCHANCE;
var config int SCIMITARSHOTGUN_MG_ICLIPSIZE;
var config int SCIMITARSHOTGUN_MG_ISOUNDRANGE;
var config int SCIMITARSHOTGUN_MG_IENVIRONMENTDAMAGE;
var config int SCIMITARSHOTGUN_MG_ISUPPLIES;
var config int SCIMITARSHOTGUN_MG_TRADINGPOSTVALUE;
var config int SCIMITARSHOTGUN_MG_IPOINTS;
var config int SCIMITARSHOTGUN_MG_IUPGRADESLOTS;

var config WeaponDamageValue SCIMITARSHOTGUN_BM_BASEDAMAGE;
var config array<int> SCIMITARSHOTGUN_BM_RANGE;
var config int SCIMITARSHOTGUN_BM_AIM;
var config int SCIMITARSHOTGUN_BM_CRITCHANCE;
var config int SCIMITARSHOTGUN_BM_ICLIPSIZE;
var config int SCIMITARSHOTGUN_BM_ISOUNDRANGE;
var config int SCIMITARSHOTGUN_BM_IENVIRONMENTDAMAGE;
var config int SCIMITARSHOTGUN_BM_ISUPPLIES;
var config int SCIMITARSHOTGUN_BM_TRADINGPOSTVALUE;
var config int SCIMITARSHOTGUN_BM_IPOINTS;
var config int SCIMITARSHOTGUN_BM_IUPGRADESLOTS;

//===================================================================== //Template Starts
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> ScimitarShotgunWeaps;

	ScimitarShotgunWeaps.AddItem(CreateTemplate_ScimitarShotgun());
	ScimitarShotgunWeaps.AddItem(CreateTemplate_ScimitarShotgun_MG());
	ScimitarShotgunWeaps.AddItem(CreateTemplate_ScimitarShotgun_BM());

	return ScimitarShotgunWeaps;
}

//===================================================================== //Template Conventional Creation
static function X2DataTemplate CreateTemplate_SCIMITARSHOTGUN()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_SCIMITARSHOTGUN');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'shotgun';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///ScimitarShotgun_Assets.UI.UI_ScimitarShotgun_WP";
	Template.Tier = 0;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.SCIMITARSHOTGUN_RANGE;
	Template.BaseDamage = default.SCIMITARSHOTGUN_BASEDAMAGE;
	Template.Aim = default.SCIMITARSHOTGUN_AIM;
	Template.CritChance = default.SCIMITARSHOTGUN_CRITCHANCE;
	Template.iClipSize = default.SCIMITARSHOTGUN_ICLIPSIZE;
	Template.iSoundRange = default.SCIMITARSHOTGUN_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.SCIMITARSHOTGUN_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.SCIMITARSHOTGUN_IUPGRADESLOTS;
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
	Template.GameArchetype = "ScimitarShotgun_Assets.Archetypes.ARC_Weap_Scimitar_Shotgun"; 
	
	return Template;
}
//===================================================================== //Template Magnetic Creation
static function X2DataTemplate CreateTemplate_SCIMITARSHOTGUN_MG()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_SCIMITARSHOTGUN_MG');
	Template.WeaponPanelImage = "_MagneticRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'shotgun';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///ScimitarShotgun_Assets.UI.UI_ScimitarShotgun_WP";
	Template.Tier = 2;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.SCIMITARSHOTGUN_MG_RANGE;
	Template.BaseDamage = default.SCIMITARSHOTGUN_MG_BASEDAMAGE;
	Template.Aim = default.SCIMITARSHOTGUN_MG_AIM;
	Template.CritChance = default.SCIMITARSHOTGUN_MG_CRITCHANCE;
	Template.iClipSize = default.SCIMITARSHOTGUN_MG_ICLIPSIZE;
	Template.iSoundRange = default.SCIMITARSHOTGUN_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.SCIMITARSHOTGUN_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.SCIMITARSHOTGUN_MG_IUPGRADESLOTS;
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
	Template.BaseItem = 'WP_SCIMITARSHOTGUN'; 
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "ScimitarShotgun_Assets.Archetypes.ARC_Weap_Scimitar_Shotgun"; 
	
	return Template;
}
//===================================================================== //Template Beam Creation
static function X2DataTemplate CreateTemplate_SCIMITARSHOTGUN_BM()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_SCIMITARSHOTGUN_BM');
	Template.WeaponPanelImage = "_BeamRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'shotgun';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///ScimitarShotgun_Assets.UI.UI_ScimitarShotgun_WP";
	Template.Tier = 4;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.SCIMITARSHOTGUN_BM_RANGE;
	Template.BaseDamage = default.SCIMITARSHOTGUN_BM_BASEDAMAGE;
	Template.Aim = default.SCIMITARSHOTGUN_BM_AIM;
	Template.CritChance = default.SCIMITARSHOTGUN_BM_CRITCHANCE;
	Template.iClipSize = default.SCIMITARSHOTGUN_BM_ICLIPSIZE;
	Template.iSoundRange = default.SCIMITARSHOTGUN_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.SCIMITARSHOTGUN_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.SCIMITARSHOTGUN_BM_IUPGRADESLOTS;
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
	Template.BaseItem = 'WP_SCIMITARSHOTGUN_MG';  
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "ScimitarShotgun_Assets.Archetypes.ARC_Weap_Scimitar_Shotgun"; 
	
	return Template;
}