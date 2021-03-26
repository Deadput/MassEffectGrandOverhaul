class X2Item_AdasRifle extends X2Item config(AdasRifle);



//===================================================================== //Weapon Stat Variables
var config WeaponDamageValue ADASRIFLE_BASEDAMAGE;
var config array<int> ADASRIFLE_RANGE;
var config int ADASRIFLE_AIM;
var config int ADASRIFLE_CRITCHANCE;
var config int ADASRIFLE_ICLIPSIZE;
var config int ADASRIFLE_ISOUNDRANGE;
var config int ADASRIFLE_IENVIRONMENTDAMAGE;
var config int ADASRIFLE_ISUPPLIES;
var config int ADASRIFLE_TRADINGPOSTVALUE;
var config int ADASRIFLE_IPOINTS;
var config int ADASRIFLE_IUPGRADESLOTS;

var config WeaponDamageValue ADASRIFLE_MG_BASEDAMAGE;
var config array<int> ADASRIFLE_MG_RANGE;
var config int ADASRIFLE_MG_AIM;
var config int ADASRIFLE_MG_CRITCHANCE;
var config int ADASRIFLE_MG_ICLIPSIZE;
var config int ADASRIFLE_MG_ISOUNDRANGE;
var config int ADASRIFLE_MG_IENVIRONMENTDAMAGE;
var config int ADASRIFLE_MG_ISUPPLIES;
var config int ADASRIFLE_MG_TRADINGPOSTVALUE;
var config int ADASRIFLE_MG_IPOINTS;
var config int ADASRIFLE_MG_IUPGRADESLOTS;

var config WeaponDamageValue ADASRIFLE_BM_BASEDAMAGE;
var config array<int> ADASRIFLE_BM_RANGE;
var config int ADASRIFLE_BM_AIM;
var config int ADASRIFLE_BM_CRITCHANCE;
var config int ADASRIFLE_BM_ICLIPSIZE;
var config int ADASRIFLE_BM_ISOUNDRANGE;
var config int ADASRIFLE_BM_IENVIRONMENTDAMAGE;
var config int ADASRIFLE_BM_ISUPPLIES;
var config int ADASRIFLE_BM_TRADINGPOSTVALUE;
var config int ADASRIFLE_BM_IPOINTS;
var config int ADASRIFLE_BM_IUPGRADESLOTS;

//===================================================================== //Template Starts
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> AdasRifleWeaps;

	AdasRifleWeaps.AddItem(CreateTemplate_AdasRifle());
	AdasRifleWeaps.AddItem(CreateTemplate_AdasRifle_MG());
	AdasRifleWeaps.AddItem(CreateTemplate_AdasRifle_BM());

	return AdasRifleWeaps;
}

//===================================================================== //Template Conventional Creation
static function X2DataTemplate CreateTemplate_AdasRifle()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_AdasRifle');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'rifle';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///AdasRifle_Assets.UI.UI_AdasRifle_WP";
	Template.Tier = 0;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.ADASRIFLE_RANGE;
	Template.BaseDamage = default.ADASRIFLE_BASEDAMAGE;
	Template.Aim = default.ADASRIFLE_AIM;
	Template.CritChance = default.ADASRIFLE_CRITCHANCE;
	Template.iClipSize = default.ADASRIFLE_ICLIPSIZE;
	Template.iSoundRange = default.ADASRIFLE_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.ADASRIFLE_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.ADASRIFLE_IUPGRADESLOTS;
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
	Template.GameArchetype = "AdasRifle_Assets.ARC_Weap_Adas_Rifle"; 
	
	return Template;
}
//===================================================================== //Template Magnetic Creation
static function X2DataTemplate CreateTemplate_AdasRifle_MG()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_AdasRifle_MG');
	Template.WeaponPanelImage = "_MagneticRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'rifle';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///AdasRifle_Assets.UI.UI_AdasRifle_WP";
	Template.Tier = 2;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.ADASRIFLE_MG_RANGE;
	Template.BaseDamage = default.ADASRIFLE_MG_BASEDAMAGE;
	Template.Aim = default.ADASRIFLE_MG_AIM;
	Template.CritChance = default.ADASRIFLE_MG_CRITCHANCE;
	Template.iClipSize = default.ADASRIFLE_MG_ICLIPSIZE;
	Template.iSoundRange = default.ADASRIFLE_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.ADASRIFLE_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.ADASRIFLE_MG_IUPGRADESLOTS;
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
	Template.BaseItem = 'WP_AdasRifle'; 
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "AdasRifle_Assets.ARC_Weap_Adas_Rifle"; 
	
	return Template;
}
//===================================================================== //Template Beam Creation
static function X2DataTemplate CreateTemplate_AdasRifle_BM()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_AdasRifle_BM');
	Template.WeaponPanelImage = "_BeamRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'rifle';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///AdasRifle_Assets.UI.UI_AdasRifle_WP";
	Template.Tier = 4;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.ADASRIFLE_BM_RANGE;
	Template.BaseDamage = default.ADASRIFLE_BM_BASEDAMAGE;
	Template.Aim = default.ADASRIFLE_BM_AIM;
	Template.CritChance = default.ADASRIFLE_BM_CRITCHANCE;
	Template.iClipSize = default.ADASRIFLE_BM_ICLIPSIZE;
	Template.iSoundRange = default.ADASRIFLE_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.ADASRIFLE_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.ADASRIFLE_BM_IUPGRADESLOTS;
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
	Template.BaseItem = 'WP_AdasRifle_MG';  
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "AdasRifle_Assets.ARC_Weap_Adas_Rifle"; 
	
	return Template;
}

	defaultproperties
	{
	bShouldCreateDifficultyVariants = true
	}