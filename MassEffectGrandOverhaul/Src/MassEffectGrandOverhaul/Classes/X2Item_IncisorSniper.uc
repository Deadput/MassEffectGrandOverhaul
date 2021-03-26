class X2Item_IncisorSniper extends X2Item config(IncisorSniper);



//===================================================================== //Weapon Stat Variables
var config WeaponDamageValue INCISORSNIPER_BASEDAMAGE;
var config array<int> INCISORSNIPER_RANGE;
var config int INCISORSNIPER_AIM;
var config int INCISORSNIPER_CRITCHANCE;
var config int INCISORSNIPER_ICLIPSIZE;
var config int INCISORSNIPER_ISOUNDRANGE;
var config int INCISORSNIPER_IENVIRONMENTDAMAGE;
var config int INCISORSNIPER_ISUPPLIES;
var config int INCISORSNIPER_TRADINGPOSTVALUE;
var config int INCISORSNIPER_IPOINTS;
var config int INCISORSNIPER_IUPGRADESLOTS;

var config WeaponDamageValue INCISORSNIPER_MG_BASEDAMAGE;
var config array<int> INCISORSNIPER_MG_RANGE;
var config int INCISORSNIPER_MG_AIM;
var config int INCISORSNIPER_MG_CRITCHANCE;
var config int INCISORSNIPER_MG_ICLIPSIZE;
var config int INCISORSNIPER_MG_ISOUNDRANGE;
var config int INCISORSNIPER_MG_IENVIRONMENTDAMAGE;
var config int INCISORSNIPER_MG_ISUPPLIES;
var config int INCISORSNIPER_MG_TRADINGPOSTVALUE;
var config int INCISORSNIPER_MG_IPOINTS;
var config int INCISORSNIPER_MG_IUPGRADESLOTS;

var config WeaponDamageValue INCISORSNIPER_BM_BASEDAMAGE;
var config array<int> INCISORSNIPER_BM_RANGE;
var config int INCISORSNIPER_BM_AIM;
var config int INCISORSNIPER_BM_CRITCHANCE;
var config int INCISORSNIPER_BM_ICLIPSIZE;
var config int INCISORSNIPER_BM_ISOUNDRANGE;
var config int INCISORSNIPER_BM_IENVIRONMENTDAMAGE;
var config int INCISORSNIPER_BM_ISUPPLIES;
var config int INCISORSNIPER_BM_TRADINGPOSTVALUE;
var config int INCISORSNIPER_BM_IPOINTS;
var config int INCISORSNIPER_BM_IUPGRADESLOTS;

//===================================================================== //Template Starts
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> IncisorSniperWeaps;

	IncisorSniperWeaps.AddItem(CreateTemplate_IncisorSniper());
	IncisorSniperWeaps.AddItem(CreateTemplate_IncisorSniper_MG());
	IncisorSniperWeaps.AddItem(CreateTemplate_IncisorSniper_BM());

	return IncisorSniperWeaps;
}

//===================================================================== //Template Conventional Creation
static function X2DataTemplate CreateTemplate_INCISORSNIPER()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_INCISORSNIPER');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sniper_rifle';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///IncisorSniper_Assets.UI.UI_IncisorSniper_WP";
	Template.Tier = 0;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.INCISORSNIPER_RANGE;
	Template.BaseDamage = default.INCISORSNIPER_BASEDAMAGE;
	Template.Aim = default.INCISORSNIPER_AIM;
	Template.CritChance = default.INCISORSNIPER_CRITCHANCE;
	Template.iClipSize = default.INCISORSNIPER_ICLIPSIZE;
	Template.iSoundRange = default.INCISORSNIPER_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.INCISORSNIPER_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.INCISORSNIPER_IUPGRADESLOTS;
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
	Template.GameArchetype = "IncisorSniper_Assets.Archetypes.ARC_Weap_Incisor_Sniper"; 
	
	return Template;
}
//===================================================================== //Template Magnetic Creation
static function X2DataTemplate CreateTemplate_INCISORSNIPER_MG()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_INCISORSNIPER_MG');
	Template.WeaponPanelImage = "_MagneticRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sniper_rifle';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///IncisorSniper_Assets.UI.UI_IncisorSniper_WP";
	Template.Tier = 2;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.INCISORSNIPER_MG_RANGE;
	Template.BaseDamage = default.INCISORSNIPER_MG_BASEDAMAGE;
	Template.Aim = default.INCISORSNIPER_MG_AIM;
	Template.CritChance = default.INCISORSNIPER_MG_CRITCHANCE;
	Template.iClipSize = default.INCISORSNIPER_MG_ICLIPSIZE;
	Template.iSoundRange = default.INCISORSNIPER_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.INCISORSNIPER_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.INCISORSNIPER_MG_IUPGRADESLOTS;
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
	Template.BaseItem = 'WP_INCISORSNIPER'; 
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "IncisorSniper_Assets.Archetypes.ARC_Weap_Incisor_Sniper"; 
	
	return Template;
}
//===================================================================== //Template Beam Creation
static function X2DataTemplate CreateTemplate_INCISORSNIPER_BM()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_INCISORSNIPER_BM');
	Template.WeaponPanelImage = "_BeamRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sniper_rifle';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///IncisorSniper_Assets.UI.UI_IncisorSniper_WP";
	Template.Tier = 4;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.INCISORSNIPER_BM_RANGE;
	Template.BaseDamage = default.INCISORSNIPER_BM_BASEDAMAGE;
	Template.Aim = default.INCISORSNIPER_BM_AIM;
	Template.CritChance = default.INCISORSNIPER_BM_CRITCHANCE;
	Template.iClipSize = default.INCISORSNIPER_BM_ICLIPSIZE;
	Template.iSoundRange = default.INCISORSNIPER_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.INCISORSNIPER_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.INCISORSNIPER_BM_IUPGRADESLOTS;
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
	Template.BaseItem = 'WP_INCISORSNIPER_MG';  
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "IncisorSniper_Assets.Archetypes.ARC_Weap_Incisor_Sniper"; 
	
	return Template;
}