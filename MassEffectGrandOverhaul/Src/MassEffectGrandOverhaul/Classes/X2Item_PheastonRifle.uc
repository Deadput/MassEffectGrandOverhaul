class X2Item_PheastonRifle extends X2Item config(PheastonRifle);



//===================================================================== //Weapon Stat Variables
var config WeaponDamageValue PHEASTONRIFLE_BASEDAMAGE;
var config array<int> PHEASTONRIFLE_RANGE;
var config int PHEASTONRIFLE_AIM;
var config int PHEASTONRIFLE_CRITCHANCE;
var config int PHEASTONRIFLE_ICLIPSIZE;
var config int PHEASTONRIFLE_ISOUNDRANGE;
var config int PHEASTONRIFLE_IENVIRONMENTDAMAGE;
var config int PHEASTONRIFLE_ISUPPLIES;
var config int PHEASTONRIFLE_TRADINGPOSTVALUE;
var config int PHEASTONRIFLE_IPOINTS;
var config int PHEASTONRIFLE_IUPGRADESLOTS;

var config WeaponDamageValue PHEASTONRIFLE_MG_BASEDAMAGE;
var config array<int> PHEASTONRIFLE_MG_RANGE;
var config int PHEASTONRIFLE_MG_AIM;
var config int PHEASTONRIFLE_MG_CRITCHANCE;
var config int PHEASTONRIFLE_MG_ICLIPSIZE;
var config int PHEASTONRIFLE_MG_ISOUNDRANGE;
var config int PHEASTONRIFLE_MG_IENVIRONMENTDAMAGE;
var config int PHEASTONRIFLE_MG_ISUPPLIES;
var config int PHEASTONRIFLE_MG_TRADINGPOSTVALUE;
var config int PHEASTONRIFLE_MG_IPOINTS;
var config int PHEASTONRIFLE_MG_IUPGRADESLOTS;

var config WeaponDamageValue PHEASTONRIFLE_BM_BASEDAMAGE;
var config array<int> PHEASTONRIFLE_BM_RANGE;
var config int PHEASTONRIFLE_BM_AIM;
var config int PHEASTONRIFLE_BM_CRITCHANCE;
var config int PHEASTONRIFLE_BM_ICLIPSIZE;
var config int PHEASTONRIFLE_BM_ISOUNDRANGE;
var config int PHEASTONRIFLE_BM_IENVIRONMENTDAMAGE;
var config int PHEASTONRIFLE_BM_ISUPPLIES;
var config int PHEASTONRIFLE_BM_TRADINGPOSTVALUE;
var config int PHEASTONRIFLE_BM_IPOINTS;
var config int PHEASTONRIFLE_BM_IUPGRADESLOTS;

//===================================================================== //Template Starts
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> PheastonRifleWeaps;

	PheastonRifleWeaps.AddItem(CreateTemplate_PheastonRifle());
	PheastonRifleWeaps.AddItem(CreateTemplate_PheastonRifle_MG());
	PheastonRifleWeaps.AddItem(CreateTemplate_PheastonRifle_BM());

	return PheastonRifleWeaps;
}

//===================================================================== //Template Conventional Creation
static function X2DataTemplate CreateTemplate_PheastonRifle()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_PheastonRifle');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'rifle';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///PheastonRifle_Assets.UI.UI_PheastonRifle_WP";
	Template.Tier = 0;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.PHEASTONRIFLE_RANGE;
	Template.BaseDamage = default.PHEASTONRIFLE_BASEDAMAGE;
	Template.Aim = default.PHEASTONRIFLE_AIM;
	Template.CritChance = default.PHEASTONRIFLE_CRITCHANCE;
	Template.iClipSize = default.PHEASTONRIFLE_ICLIPSIZE;
	Template.iSoundRange = default.PHEASTONRIFLE_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.PHEASTONRIFLE_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.PHEASTONRIFLE_IUPGRADESLOTS;
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
	Template.GameArchetype = "PheastonRifle_Assets.Archetypes.ARC_Weap_Pheaston_Rifle"; 
	
	return Template;
}
//===================================================================== //Template Magnetic Creation
static function X2DataTemplate CreateTemplate_PheastonRifle_MG()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_PheastonRifle_MG');
	Template.WeaponPanelImage = "_MagneticRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'rifle';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///PheastonRifle_Assets.UI.UI_PheastonRifle_WP";
	Template.Tier = 2;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.PHEASTONRIFLE_MG_RANGE;
	Template.BaseDamage = default.PHEASTONRIFLE_MG_BASEDAMAGE;
	Template.Aim = default.PHEASTONRIFLE_MG_AIM;
	Template.CritChance = default.PHEASTONRIFLE_MG_CRITCHANCE;
	Template.iClipSize = default.PHEASTONRIFLE_MG_ICLIPSIZE;
	Template.iSoundRange = default.PHEASTONRIFLE_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.PHEASTONRIFLE_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.PHEASTONRIFLE_MG_IUPGRADESLOTS;
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
	Template.BaseItem = 'WP_PheastonRifle'; 
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "PheastonRifle_Assets.Archetypes.ARC_Weap_Pheaston_Rifle"; 
	
	return Template;
}
//===================================================================== //Template Beam Creation
static function X2DataTemplate CreateTemplate_PheastonRifle_BM()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_PheastonRifle_BM');
	Template.WeaponPanelImage = "_BeamRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'rifle';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///PheastonRifle_Assets.UI.UI_PheastonRifle_WP";
	Template.Tier = 4;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.PHEASTONRIFLE_BM_RANGE;
	Template.BaseDamage = default.PHEASTONRIFLE_BM_BASEDAMAGE;
	Template.Aim = default.PHEASTONRIFLE_BM_AIM;
	Template.CritChance = default.PHEASTONRIFLE_BM_CRITCHANCE;
	Template.iClipSize = default.PHEASTONRIFLE_BM_ICLIPSIZE;
	Template.iSoundRange = default.PHEASTONRIFLE_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.PHEASTONRIFLE_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.PHEASTONRIFLE_BM_IUPGRADESLOTS;
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
	Template.BaseItem = 'WP_PheastonRifle_MG';  
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "PheastonRifle_Assets.Archetypes.ARC_Weap_Pheaston_Rifle"; 
	
	return Template;
}

	defaultproperties
	{
	bShouldCreateDifficultyVariants = true
	}