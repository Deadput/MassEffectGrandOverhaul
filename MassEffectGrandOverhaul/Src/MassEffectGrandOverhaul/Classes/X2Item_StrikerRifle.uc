class X2Item_StrikerRifle extends X2Item config(StrikerRifle);



//===================================================================== //Weapon Stat Variables
var config WeaponDamageValue STRIKERRIFLE_BASEDAMAGE;
var config array<int> STRIKERRIFLE_RANGE;
var config int STRIKERRIFLE_AIM;
var config int STRIKERRIFLE_CRITCHANCE;
var config int STRIKERRIFLE_ICLIPSIZE;
var config int STRIKERRIFLE_ISOUNDRANGE;
var config int STRIKERRIFLE_IENVIRONMENTDAMAGE;
var config int STRIKERRIFLE_ISUPPLIES;
var config int STRIKERRIFLE_TRADINGPOSTVALUE;
var config int STRIKERRIFLE_IPOINTS;
var config int STRIKERRIFLE_IUPGRADESLOTS;

var config WeaponDamageValue STRIKERRIFLE_MG_BASEDAMAGE;
var config array<int> STRIKERRIFLE_MG_RANGE;
var config int STRIKERRIFLE_MG_AIM;
var config int STRIKERRIFLE_MG_CRITCHANCE;
var config int STRIKERRIFLE_MG_ICLIPSIZE;
var config int STRIKERRIFLE_MG_ISOUNDRANGE;
var config int STRIKERRIFLE_MG_IENVIRONMENTDAMAGE;
var config int STRIKERRIFLE_MG_ISUPPLIES;
var config int STRIKERRIFLE_MG_TRADINGPOSTVALUE;
var config int STRIKERRIFLE_MG_IPOINTS;
var config int STRIKERRIFLE_MG_IUPGRADESLOTS;

var config WeaponDamageValue STRIKERRIFLE_BM_BASEDAMAGE;
var config array<int> STRIKERRIFLE_BM_RANGE;
var config int STRIKERRIFLE_BM_AIM;
var config int STRIKERRIFLE_BM_CRITCHANCE;
var config int STRIKERRIFLE_BM_ICLIPSIZE;
var config int STRIKERRIFLE_BM_ISOUNDRANGE;
var config int STRIKERRIFLE_BM_IENVIRONMENTDAMAGE;
var config int STRIKERRIFLE_BM_ISUPPLIES;
var config int STRIKERRIFLE_BM_TRADINGPOSTVALUE;
var config int STRIKERRIFLE_BM_IPOINTS;
var config int STRIKERRIFLE_BM_IUPGRADESLOTS;

//===================================================================== //Template Starts
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> StrikerRifleWeaps;

	StrikerRifleWeaps.AddItem(CreateTemplate_StrikerRifle());
	StrikerRifleWeaps.AddItem(CreateTemplate_StrikerRifle_MG());
	StrikerRifleWeaps.AddItem(CreateTemplate_StrikerRifle_BM());

	return StrikerRifleWeaps;
}

//===================================================================== //Template Conventional Creation
static function X2DataTemplate CreateTemplate_StrikerRifle()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_StrikerRifle');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'cannon';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///StrikerRifle_Assets.UI.UI_StrikerRifle_WP";
	Template.Tier = 0;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.STRIKERRIFLE_RANGE;
	Template.BaseDamage = default.STRIKERRIFLE_BASEDAMAGE;
	Template.Aim = default.STRIKERRIFLE_AIM;
	Template.CritChance = default.STRIKERRIFLE_CRITCHANCE;
	Template.iClipSize = default.STRIKERRIFLE_ICLIPSIZE;
	Template.iSoundRange = default.STRIKERRIFLE_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.STRIKERRIFLE_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.STRIKERRIFLE_IUPGRADESLOTS;
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
	Template.GameArchetype = "StrikerRifle_Assets.Archetypes.ARC_Weap_Striker_Rifle"; 
	
	return Template;
}
//===================================================================== //Template Magnetic Creation
static function X2DataTemplate CreateTemplate_StrikerRifle_MG()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_StrikerRifle_MG');
	Template.WeaponPanelImage = "_MagneticRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'cannon';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///StrikerRifle_Assets.UI.UI_StrikerRifle_WP";
	Template.Tier = 2;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.STRIKERRIFLE_MG_RANGE;
	Template.BaseDamage = default.STRIKERRIFLE_MG_BASEDAMAGE;
	Template.Aim = default.STRIKERRIFLE_MG_AIM;
	Template.CritChance = default.STRIKERRIFLE_MG_CRITCHANCE;
	Template.iClipSize = default.STRIKERRIFLE_MG_ICLIPSIZE;
	Template.iSoundRange = default.STRIKERRIFLE_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.STRIKERRIFLE_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.STRIKERRIFLE_MG_IUPGRADESLOTS;
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
	Template.BaseItem = 'WP_StrikerRifle'; 
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "StrikerRifle_Assets.Archetypes.ARC_Weap_Striker_Rifle"; 
	
	return Template;
}
//===================================================================== //Template Beam Creation
static function X2DataTemplate CreateTemplate_StrikerRifle_BM()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_StrikerRifle_BM');
	Template.WeaponPanelImage = "_BeamRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'cannon';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///StrikerRifle_Assets.UI.UI_StrikerRifle_WP";
	Template.Tier = 4;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.STRIKERRIFLE_BM_RANGE;
	Template.BaseDamage = default.STRIKERRIFLE_BM_BASEDAMAGE;
	Template.Aim = default.STRIKERRIFLE_BM_AIM;
	Template.CritChance = default.STRIKERRIFLE_BM_CRITCHANCE;
	Template.iClipSize = default.STRIKERRIFLE_BM_ICLIPSIZE;
	Template.iSoundRange = default.STRIKERRIFLE_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.STRIKERRIFLE_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.STRIKERRIFLE_BM_IUPGRADESLOTS;
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
	Template.BaseItem = 'WP_StrikerRifle_MG';  
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "StrikerRifle_Assets.Archetypes.ARC_Weap_Striker_Rifle"; 
	
	return Template;
}