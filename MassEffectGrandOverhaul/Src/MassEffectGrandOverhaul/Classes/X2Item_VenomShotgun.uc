class X2Item_VenomShotgun extends X2Item config(VenomShotgun);



//===================================================================== //Weapon Stat Variables
var config WeaponDamageValue VENOMSHOTGUN_BASEDAMAGE;
var config array<int> VENOMSHOTGUN_RANGE;
var config int VENOMSHOTGUN_AIM;
var config int VENOMSHOTGUN_CRITCHANCE;
var config int VENOMSHOTGUN_ICLIPSIZE;
var config int VENOMSHOTGUN_ISOUNDRANGE;
var config int VENOMSHOTGUN_IENVIRONMENTDAMAGE;
var config int VENOMSHOTGUN_ISUPPLIES;
var config int VENOMSHOTGUN_TRADINGPOSTVALUE;
var config int VENOMSHOTGUN_IPOINTS;
var config int VENOMSHOTGUN_IUPGRADESLOTS;

var config WeaponDamageValue VENOMSHOTGUN_MG_BASEDAMAGE;
var config array<int> VENOMSHOTGUN_MG_RANGE;
var config int VENOMSHOTGUN_MG_AIM;
var config int VENOMSHOTGUN_MG_CRITCHANCE;
var config int VENOMSHOTGUN_MG_ICLIPSIZE;
var config int VENOMSHOTGUN_MG_ISOUNDRANGE;
var config int VENOMSHOTGUN_MG_IENVIRONMENTDAMAGE;
var config int VENOMSHOTGUN_MG_ISUPPLIES;
var config int VENOMSHOTGUN_MG_TRADINGPOSTVALUE;
var config int VENOMSHOTGUN_MG_IPOINTS;
var config int VENOMSHOTGUN_MG_IUPGRADESLOTS;

var config WeaponDamageValue VENOMSHOTGUN_BM_BASEDAMAGE;
var config array<int> VENOMSHOTGUN_BM_RANGE;
var config int VENOMSHOTGUN_BM_AIM;
var config int VENOMSHOTGUN_BM_CRITCHANCE;
var config int VENOMSHOTGUN_BM_ICLIPSIZE;
var config int VENOMSHOTGUN_BM_ISOUNDRANGE;
var config int VENOMSHOTGUN_BM_IENVIRONMENTDAMAGE;
var config int VENOMSHOTGUN_BM_ISUPPLIES;
var config int VENOMSHOTGUN_BM_TRADINGPOSTVALUE;
var config int VENOMSHOTGUN_BM_IPOINTS;
var config int VENOMSHOTGUN_BM_IUPGRADESLOTS;

//===================================================================== //Template Starts
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> VenomShotgunWeaps;

	VenomShotgunWeaps.AddItem(CreateTemplate_VenomShotgun());
	VenomShotgunWeaps.AddItem(CreateTemplate_VenomShotgun_MG());
	VenomShotgunWeaps.AddItem(CreateTemplate_VenomShotgun_BM());

	return VenomShotgunWeaps;
}

//===================================================================== //Template Conventional Creation
static function X2DataTemplate CreateTemplate_VENOMSHOTGUN()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_VENOMSHOTGUN');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'shotgun';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///VenomShotgun_Assets.UI.UI_VenomShotgun_WP";
	Template.Tier = 0;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.VENOMSHOTGUN_RANGE;
	Template.BaseDamage = default.VENOMSHOTGUN_BASEDAMAGE;
	Template.Aim = default.VENOMSHOTGUN_AIM;
	Template.CritChance = default.VENOMSHOTGUN_CRITCHANCE;
	Template.iClipSize = default.VENOMSHOTGUN_ICLIPSIZE;
	Template.iSoundRange = default.VENOMSHOTGUN_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.VENOMSHOTGUN_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.VENOMSHOTGUN_IUPGRADESLOTS;
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
	Template.GameArchetype = "VenomShotgun_Assets.Archetypes.ARC_Weap_Venom_Shotgun"; 
	
	return Template;
}
//===================================================================== //Template Magnetic Creation
static function X2DataTemplate CreateTemplate_VENOMSHOTGUN_MG()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_VENOMSHOTGUN_MG');
	Template.WeaponPanelImage = "_MagneticRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'shotgun';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///VenomShotgun_Assets.UI.UI_VenomShotgun_WP";
	Template.Tier = 2;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.VENOMSHOTGUN_MG_RANGE;
	Template.BaseDamage = default.VENOMSHOTGUN_MG_BASEDAMAGE;
	Template.Aim = default.VENOMSHOTGUN_MG_AIM;
	Template.CritChance = default.VENOMSHOTGUN_MG_CRITCHANCE;
	Template.iClipSize = default.VENOMSHOTGUN_MG_ICLIPSIZE;
	Template.iSoundRange = default.VENOMSHOTGUN_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.VENOMSHOTGUN_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.VENOMSHOTGUN_MG_IUPGRADESLOTS;
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
	Template.BaseItem = 'WP_VENOMSHOTGUN'; 
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "VenomShotgun_Assets.Archetypes.ARC_Weap_Venom_Shotgun"; 
	
	return Template;
}
//===================================================================== //Template Beam Creation
static function X2DataTemplate CreateTemplate_VENOMSHOTGUN_BM()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_VENOMSHOTGUN_BM');
	Template.WeaponPanelImage = "_BeamRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'shotgun';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///VenomShotgun_Assets.UI.UI_VenomShotgun_WP";
	Template.Tier = 4;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.VENOMSHOTGUN_BM_RANGE;
	Template.BaseDamage = default.VENOMSHOTGUN_BM_BASEDAMAGE;
	Template.Aim = default.VENOMSHOTGUN_BM_AIM;
	Template.CritChance = default.VENOMSHOTGUN_BM_CRITCHANCE;
	Template.iClipSize = default.VENOMSHOTGUN_BM_ICLIPSIZE;
	Template.iSoundRange = default.VENOMSHOTGUN_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.VENOMSHOTGUN_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.VENOMSHOTGUN_BM_IUPGRADESLOTS;
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
	Template.BaseItem = 'WP_VENOMSHOTGUN_MG';  
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "VenomShotgun_Assets.Archetypes.ARC_Weap_Venom_Shotgun"; 
	
	return Template;
}