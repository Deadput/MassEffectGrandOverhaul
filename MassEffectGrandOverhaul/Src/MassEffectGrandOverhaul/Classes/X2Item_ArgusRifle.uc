class X2Item_ArgusRifle extends X2Item config(ArgusRifle);



//===================================================================== //Weapon Stat Variables
var config WeaponDamageValue ARGUSRIFLE_BASEDAMAGE;
var config array<int> ARGUSRIFLE_RANGE;
var config int ARGUSRIFLE_AIM;
var config int ARGUSRIFLE_CRITCHANCE;
var config int ARGUSRIFLE_ICLIPSIZE;
var config int ARGUSRIFLE_ISOUNDRANGE;
var config int ARGUSRIFLE_IENVIRONMENTDAMAGE;
var config int ARGUSRIFLE_ISUPPLIES;
var config int ARGUSRIFLE_TRADINGPOSTVALUE;
var config int ARGUSRIFLE_IPOINTS;
var config int ARGUSRIFLE_IUPGRADESLOTS;

var config WeaponDamageValue ARGUSRIFLE_MG_BASEDAMAGE;
var config array<int> ARGUSRIFLE_MG_RANGE;
var config int ARGUSRIFLE_MG_AIM;
var config int ARGUSRIFLE_MG_CRITCHANCE;
var config int ARGUSRIFLE_MG_ICLIPSIZE;
var config int ARGUSRIFLE_MG_ISOUNDRANGE;
var config int ARGUSRIFLE_MG_IENVIRONMENTDAMAGE;
var config int ARGUSRIFLE_MG_ISUPPLIES;
var config int ARGUSRIFLE_MG_TRADINGPOSTVALUE;
var config int ARGUSRIFLE_MG_IPOINTS;
var config int ARGUSRIFLE_MG_IUPGRADESLOTS;

var config WeaponDamageValue ARGUSRIFLE_BM_BASEDAMAGE;
var config array<int> ARGUSRIFLE_BM_RANGE;
var config int ARGUSRIFLE_BM_AIM;
var config int ARGUSRIFLE_BM_CRITCHANCE;
var config int ARGUSRIFLE_BM_ICLIPSIZE;
var config int ARGUSRIFLE_BM_ISOUNDRANGE;
var config int ARGUSRIFLE_BM_IENVIRONMENTDAMAGE;
var config int ARGUSRIFLE_BM_ISUPPLIES;
var config int ARGUSRIFLE_BM_TRADINGPOSTVALUE;
var config int ARGUSRIFLE_BM_IPOINTS;
var config int ARGUSRIFLE_BM_IUPGRADESLOTS;

//===================================================================== //Template Starts
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> ArgusRifleWeaps;

	ArgusRifleWeaps.AddItem(CreateTemplate_ArgusRifle());
	ArgusRifleWeaps.AddItem(CreateTemplate_ArgusRifle_MG());
	ArgusRifleWeaps.AddItem(CreateTemplate_ArgusRifle_BM());

	return ArgusRifleWeaps;
}

//===================================================================== //Template Conventional Creation
static function X2DataTemplate CreateTemplate_ArgusRifle()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_ArgusRifle');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'bullpup';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///ArgusRifle_Assets.UI.UI_ArgusRifle_WP";
	Template.Tier = 0;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.ARGUSRIFLE_RANGE;
	Template.BaseDamage = default.ARGUSRIFLE_BASEDAMAGE;
	Template.Aim = default.ARGUSRIFLE_AIM;
	Template.CritChance = default.ARGUSRIFLE_CRITCHANCE;
	Template.iClipSize = default.ARGUSRIFLE_ICLIPSIZE;
	Template.iSoundRange = default.ARGUSRIFLE_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.ARGUSRIFLE_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.ARGUSRIFLE_IUPGRADESLOTS;
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
	Template.GameArchetype = "ArgusRifle_Assets.ARC_Weap_Argus_Rifle"; 
	
	return Template;
}
//===================================================================== //Template Magnetic Creation
static function X2DataTemplate CreateTemplate_ArgusRifle_MG()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_ArgusRifle_MG');
	Template.WeaponPanelImage = "_MagneticRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'bullpup';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///ArgusRifle_Assets.UI.UI_ArgusRifle_WP";
	Template.Tier = 2;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.ARGUSRIFLE_MG_RANGE;
	Template.BaseDamage = default.ARGUSRIFLE_MG_BASEDAMAGE;
	Template.Aim = default.ARGUSRIFLE_MG_AIM;
	Template.CritChance = default.ARGUSRIFLE_MG_CRITCHANCE;
	Template.iClipSize = default.ARGUSRIFLE_MG_ICLIPSIZE;
	Template.iSoundRange = default.ARGUSRIFLE_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.ARGUSRIFLE_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.ARGUSRIFLE_MG_IUPGRADESLOTS;
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
	Template.BaseItem = 'WP_ArgusRifle'; 
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "ArgusRifle_Assets.ARC_Weap_Argus_Rifle"; 
	
	return Template;
}
//===================================================================== //Template Beam Creation
static function X2DataTemplate CreateTemplate_ArgusRifle_BM()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_ArgusRifle_BM');
	Template.WeaponPanelImage = "_BeamRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'bullpup';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///ArgusRifle_Assets.UI.UI_ArgusRifle_WP";
	Template.Tier = 4;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.ARGUSRIFLE_BM_RANGE;
	Template.BaseDamage = default.ARGUSRIFLE_BM_BASEDAMAGE;
	Template.Aim = default.ARGUSRIFLE_BM_AIM;
	Template.CritChance = default.ARGUSRIFLE_BM_CRITCHANCE;
	Template.iClipSize = default.ARGUSRIFLE_BM_ICLIPSIZE;
	Template.iSoundRange = default.ARGUSRIFLE_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.ARGUSRIFLE_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.ARGUSRIFLE_BM_IUPGRADESLOTS;
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
	Template.BaseItem = 'WP_ArgusRifle_MG';  
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "ArgusRifle_Assets.ARC_Weap_Argus_Rifle"; 
	
	return Template;
}

	defaultproperties
	{
	bShouldCreateDifficultyVariants = true
	}