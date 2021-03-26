class X2Item_JavelinSniper extends X2Item config(JavelinSniper);



//===================================================================== //Weapon Stat Variables
var config WeaponDamageValue JAVELINSNIPER_BASEDAMAGE;
var config array<int> JAVELINSNIPER_RANGE;
var config int JAVELINSNIPER_AIM;
var config int JAVELINSNIPER_CRITCHANCE;
var config int JAVELINSNIPER_ICLIPSIZE;
var config int JAVELINSNIPER_ISOUNDRANGE;
var config int JAVELINSNIPER_IENVIRONMENTDAMAGE;
var config int JAVELINSNIPER_ISUPPLIES;
var config int JAVELINSNIPER_TRADINGPOSTVALUE;
var config int JAVELINSNIPER_IPOINTS;
var config int JAVELINSNIPER_IUPGRADESLOTS;

var config WeaponDamageValue JAVELINSNIPER_MG_BASEDAMAGE;
var config array<int> JAVELINSNIPER_MG_RANGE;
var config int JAVELINSNIPER_MG_AIM;
var config int JAVELINSNIPER_MG_CRITCHANCE;
var config int JAVELINSNIPER_MG_ICLIPSIZE;
var config int JAVELINSNIPER_MG_ISOUNDRANGE;
var config int JAVELINSNIPER_MG_IENVIRONMENTDAMAGE;
var config int JAVELINSNIPER_MG_ISUPPLIES;
var config int JAVELINSNIPER_MG_TRADINGPOSTVALUE;
var config int JAVELINSNIPER_MG_IPOINTS;
var config int JAVELINSNIPER_MG_IUPGRADESLOTS;

var config WeaponDamageValue JAVELINSNIPER_BM_BASEDAMAGE;
var config array<int> JAVELINSNIPER_BM_RANGE;
var config int JAVELINSNIPER_BM_AIM;
var config int JAVELINSNIPER_BM_CRITCHANCE;
var config int JAVELINSNIPER_BM_ICLIPSIZE;
var config int JAVELINSNIPER_BM_ISOUNDRANGE;
var config int JAVELINSNIPER_BM_IENVIRONMENTDAMAGE;
var config int JAVELINSNIPER_BM_ISUPPLIES;
var config int JAVELINSNIPER_BM_TRADINGPOSTVALUE;
var config int JAVELINSNIPER_BM_IPOINTS;
var config int JAVELINSNIPER_BM_IUPGRADESLOTS;

//===================================================================== //Template Starts
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> JavelinSniperWeaps;

	JavelinSniperWeaps.AddItem(CreateTemplate_JavelinSniper());
	JavelinSniperWeaps.AddItem(CreateTemplate_JavelinSniper_MG());
	JavelinSniperWeaps.AddItem(CreateTemplate_JavelinSniper_BM());

	return JavelinSniperWeaps;
}

//===================================================================== //Template Conventional Creation
static function X2DataTemplate CreateTemplate_JAVELINSNIPER()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_JAVELINSNIPER');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sniper_rifle';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///JavelinSniper_Assets.UI.UI_JavelinSniper_WP";
	Template.Tier = 0;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.JAVELINSNIPER_RANGE;
	Template.BaseDamage = default.JAVELINSNIPER_BASEDAMAGE;
	Template.Aim = default.JAVELINSNIPER_AIM;
	Template.CritChance = default.JAVELINSNIPER_CRITCHANCE;
	Template.iClipSize = default.JAVELINSNIPER_ICLIPSIZE;
	Template.iSoundRange = default.JAVELINSNIPER_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.JAVELINSNIPER_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.JAVELINSNIPER_IUPGRADESLOTS;
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
	Template.GameArchetype = "JavelinSniper_Assets.Archetypes.ARC_Weap_Javelin_Sniper"; 
	
	return Template;
}
//===================================================================== //Template Magnetic Creation
static function X2DataTemplate CreateTemplate_JAVELINSNIPER_MG()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_JAVELINSNIPER_MG');
	Template.WeaponPanelImage = "_MagneticRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sniper_rifle';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///JavelinSniper_Assets.UI.UI_JavelinSniper_WP";
	Template.Tier = 2;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.JAVELINSNIPER_MG_RANGE;
	Template.BaseDamage = default.JAVELINSNIPER_MG_BASEDAMAGE;
	Template.Aim = default.JAVELINSNIPER_MG_AIM;
	Template.CritChance = default.JAVELINSNIPER_MG_CRITCHANCE;
	Template.iClipSize = default.JAVELINSNIPER_MG_ICLIPSIZE;
	Template.iSoundRange = default.JAVELINSNIPER_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.JAVELINSNIPER_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.JAVELINSNIPER_MG_IUPGRADESLOTS;
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
	Template.BaseItem = 'WP_JAVELINSNIPER'; 
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "JavelinSniper_Assets.Archetypes.ARC_Weap_Javelin_Sniper"; 
	
	return Template;
}
//===================================================================== //Template Beam Creation
static function X2DataTemplate CreateTemplate_JAVELINSNIPER_BM()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_JAVELINSNIPER_BM');
	Template.WeaponPanelImage = "_BeamRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sniper_rifle';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///JavelinSniper_Assets.UI.UI_JavelinSniper_WP";
	Template.Tier = 4;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.JAVELINSNIPER_BM_RANGE;
	Template.BaseDamage = default.JAVELINSNIPER_BM_BASEDAMAGE;
	Template.Aim = default.JAVELINSNIPER_BM_AIM;
	Template.CritChance = default.JAVELINSNIPER_BM_CRITCHANCE;
	Template.iClipSize = default.JAVELINSNIPER_BM_ICLIPSIZE;
	Template.iSoundRange = default.JAVELINSNIPER_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.JAVELINSNIPER_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.JAVELINSNIPER_BM_IUPGRADESLOTS;
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
	Template.BaseItem = 'WP_JAVELINSNIPER_MG';  
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "JavelinSniper_Assets.Archetypes.ARC_Weap_Javelin_Sniper"; 
	
	return Template;
}