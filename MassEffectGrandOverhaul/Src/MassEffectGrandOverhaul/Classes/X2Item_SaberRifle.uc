class X2Item_SaberRifle extends X2Item config(SaberRifle);



//===================================================================== //Weapon Stat Variables
var config WeaponDamageValue SABERRIFLE_BASEDAMAGE;
var config array<int> SABERRIFLE_RANGE;
var config int SABERRIFLE_AIM;
var config int SABERRIFLE_CRITCHANCE;
var config int SABERRIFLE_ICLIPSIZE;
var config int SABERRIFLE_ISOUNDRANGE;
var config int SABERRIFLE_IENVIRONMENTDAMAGE;
var config int SABERRIFLE_ISUPPLIES;
var config int SABERRIFLE_TRADINGPOSTVALUE;
var config int SABERRIFLE_IPOINTS;
var config int SABERRIFLE_IUPGRADESLOTS;

var config WeaponDamageValue SABERRIFLE_MG_BASEDAMAGE;
var config array<int> SABERRIFLE_MG_RANGE;
var config int SABERRIFLE_MG_AIM;
var config int SABERRIFLE_MG_CRITCHANCE;
var config int SABERRIFLE_MG_ICLIPSIZE;
var config int SABERRIFLE_MG_ISOUNDRANGE;
var config int SABERRIFLE_MG_IENVIRONMENTDAMAGE;
var config int SABERRIFLE_MG_ISUPPLIES;
var config int SABERRIFLE_MG_TRADINGPOSTVALUE;
var config int SABERRIFLE_MG_IPOINTS;
var config int SABERRIFLE_MG_IUPGRADESLOTS;

var config WeaponDamageValue SABERRIFLE_BM_BASEDAMAGE;
var config array<int> SABERRIFLE_BM_RANGE;
var config int SABERRIFLE_BM_AIM;
var config int SABERRIFLE_BM_CRITCHANCE;
var config int SABERRIFLE_BM_ICLIPSIZE;
var config int SABERRIFLE_BM_ISOUNDRANGE;
var config int SABERRIFLE_BM_IENVIRONMENTDAMAGE;
var config int SABERRIFLE_BM_ISUPPLIES;
var config int SABERRIFLE_BM_TRADINGPOSTVALUE;
var config int SABERRIFLE_BM_IPOINTS;
var config int SABERRIFLE_BM_IUPGRADESLOTS;

//===================================================================== //Template Starts
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> SaberRifleWeaps;

	SaberRifleWeaps.AddItem(CreateTemplate_SaberRifle());
	SaberRifleWeaps.AddItem(CreateTemplate_SaberRifle_MG());
	SaberRifleWeaps.AddItem(CreateTemplate_SaberRifle_BM());

	return SaberRifleWeaps;
}

//===================================================================== //Template Conventional Creation
static function X2DataTemplate CreateTemplate_SaberRifle()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_SaberRifle');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'cannon';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///SaberRifle_Assets.UI.UI_SaberRifle_WP";
	Template.Tier = 0;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.SABERRIFLE_RANGE;
	Template.BaseDamage = default.SABERRIFLE_BASEDAMAGE;
	Template.Aim = default.SABERRIFLE_AIM;
	Template.CritChance = default.SABERRIFLE_CRITCHANCE;
	Template.iClipSize = default.SABERRIFLE_ICLIPSIZE;
	Template.iSoundRange = default.SABERRIFLE_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.SABERRIFLE_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.SABERRIFLE_IUPGRADESLOTS;
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
	//===================================================================== //Upgrade Template
	//Template.UpgradeItem = 'AssaultRifle_MG'; 
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "SaberRifle_Assets.Archetypes.ARC_Weap_Saber_Rifle"; 
	
	return Template;
}
//===================================================================== //Template Magnetic Creation
static function X2DataTemplate CreateTemplate_SaberRifle_MG()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_SaberRifle_MG');
	Template.WeaponPanelImage = "_MagneticRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'cannon';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///SaberRifle_Assets.UI.UI_SaberRifle_WP";
	Template.Tier = 2;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.SABERRIFLE_MG_RANGE;
	Template.BaseDamage = default.SABERRIFLE_MG_BASEDAMAGE;
	Template.Aim = default.SABERRIFLE_MG_AIM;
	Template.CritChance = default.SABERRIFLE_MG_CRITCHANCE;
	Template.iClipSize = default.SABERRIFLE_MG_ICLIPSIZE;
	Template.iSoundRange = default.SABERRIFLE_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.SABERRIFLE_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.SABERRIFLE_MG_IUPGRADESLOTS;
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
	Template.CreatorTemplateName = 'Cannon_MG_Schematic';
	Template.BaseItem = 'WP_SaberRifle'; 
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "SaberRifle_Assets.Archetypes.ARC_Weap_Saber_Rifle"; 
	
	return Template;
}
//===================================================================== //Template Beam Creation
static function X2DataTemplate CreateTemplate_SaberRifle_BM()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_SaberRifle_BM');
	Template.WeaponPanelImage = "_BeamRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'cannon';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///SaberRifle_Assets.UI.UI_SaberRifle_WP";
	Template.Tier = 4;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.SABERRIFLE_BM_RANGE;
	Template.BaseDamage = default.SABERRIFLE_BM_BASEDAMAGE;
	Template.Aim = default.SABERRIFLE_BM_AIM;
	Template.CritChance = default.SABERRIFLE_BM_CRITCHANCE;
	Template.iClipSize = default.SABERRIFLE_BM_ICLIPSIZE;
	Template.iSoundRange = default.SABERRIFLE_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.SABERRIFLE_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.SABERRIFLE_BM_IUPGRADESLOTS;
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
	Template.CreatorTemplateName = 'Cannon_BM_Schematic';
	Template.BaseItem = 'WP_SaberRifle_MG';  
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "SaberRifle_Assets.Archetypes.ARC_Weap_Saber_Rifle"; 
	
	return Template;
}