class X2Item_ReegarShotgun extends X2Item config(ReegarShotgun);



//===================================================================== //Weapon Stat Variables
var config WeaponDamageValue REEGARSHOTGUN_BASEDAMAGE;
var config array<int> REEGARSHOTGUN_RANGE;
var config int REEGARSHOTGUN_AIM;
var config int REEGARSHOTGUN_CRITCHANCE;
var config int REEGARSHOTGUN_ICLIPSIZE;
var config int REEGARSHOTGUN_ISOUNDRANGE;
var config int REEGARSHOTGUN_IENVIRONMENTDAMAGE;
var config int REEGARSHOTGUN_ISUPPLIES;
var config int REEGARSHOTGUN_TRADINGPOSTVALUE;
var config int REEGARSHOTGUN_IPOINTS;
var config int REEGARSHOTGUN_IUPGRADESLOTS;

var config WeaponDamageValue REEGARSHOTGUN_MG_BASEDAMAGE;
var config array<int> REEGARSHOTGUN_MG_RANGE;
var config int REEGARSHOTGUN_MG_AIM;
var config int REEGARSHOTGUN_MG_CRITCHANCE;
var config int REEGARSHOTGUN_MG_ICLIPSIZE;
var config int REEGARSHOTGUN_MG_ISOUNDRANGE;
var config int REEGARSHOTGUN_MG_IENVIRONMENTDAMAGE;
var config int REEGARSHOTGUN_MG_ISUPPLIES;
var config int REEGARSHOTGUN_MG_TRADINGPOSTVALUE;
var config int REEGARSHOTGUN_MG_IPOINTS;
var config int REEGARSHOTGUN_MG_IUPGRADESLOTS;

var config WeaponDamageValue REEGARSHOTGUN_BM_BASEDAMAGE;
var config array<int> REEGARSHOTGUN_BM_RANGE;
var config int REEGARSHOTGUN_BM_AIM;
var config int REEGARSHOTGUN_BM_CRITCHANCE;
var config int REEGARSHOTGUN_BM_ICLIPSIZE;
var config int REEGARSHOTGUN_BM_ISOUNDRANGE;
var config int REEGARSHOTGUN_BM_IENVIRONMENTDAMAGE;
var config int REEGARSHOTGUN_BM_ISUPPLIES;
var config int REEGARSHOTGUN_BM_TRADINGPOSTVALUE;
var config int REEGARSHOTGUN_BM_IPOINTS;
var config int REEGARSHOTGUN_BM_IUPGRADESLOTS;

//===================================================================== //Template Starts
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> ReegarShotgunWeaps;

	ReegarShotgunWeaps.AddItem(CreateTemplate_ReegarShotgun());
	ReegarShotgunWeaps.AddItem(CreateTemplate_ReegarShotgun_MG());
	ReegarShotgunWeaps.AddItem(CreateTemplate_ReegarShotgun_BM());

	return ReegarShotgunWeaps;
}

//===================================================================== //Template Conventional Creation
static function X2DataTemplate CreateTemplate_REEGARSHOTGUN()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_REEGARSHOTGUN');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'shotgun';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///ReegarShotgun_Assets.UI.UI_ReegarShotgun_WP";
	Template.Tier = 0;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.REEGARSHOTGUN_RANGE;
	Template.BaseDamage = default.REEGARSHOTGUN_BASEDAMAGE;
	Template.Aim = default.REEGARSHOTGUN_AIM;
	Template.CritChance = default.REEGARSHOTGUN_CRITCHANCE;
	Template.iClipSize = default.REEGARSHOTGUN_ICLIPSIZE;
	Template.iSoundRange = default.REEGARSHOTGUN_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.REEGARSHOTGUN_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.REEGARSHOTGUN_IUPGRADESLOTS;
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
	Template.GameArchetype = "ReegarShotgun_Assets.Archetypes.ARC_Weap_Reegar_Shotgun"; 
	
	return Template;
}
//===================================================================== //Template Magnetic Creation
static function X2DataTemplate CreateTemplate_REEGARSHOTGUN_MG()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_REEGARSHOTGUN_MG');
	Template.WeaponPanelImage = "_MagneticRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'shotgun';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///ReegarShotgun_Assets.UI.UI_ReegarShotgun_WP";
	Template.Tier = 2;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.REEGARSHOTGUN_MG_RANGE;
	Template.BaseDamage = default.REEGARSHOTGUN_MG_BASEDAMAGE;
	Template.Aim = default.REEGARSHOTGUN_MG_AIM;
	Template.CritChance = default.REEGARSHOTGUN_MG_CRITCHANCE;
	Template.iClipSize = default.REEGARSHOTGUN_MG_ICLIPSIZE;
	Template.iSoundRange = default.REEGARSHOTGUN_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.REEGARSHOTGUN_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.REEGARSHOTGUN_MG_IUPGRADESLOTS;
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
	Template.BaseItem = 'WP_REEGARSHOTGUN'; 
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "ReegarShotgun_Assets.Archetypes.ARC_Weap_Reegar_Shotgun"; 
	
	return Template;
}
//===================================================================== //Template Beam Creation
static function X2DataTemplate CreateTemplate_REEGARSHOTGUN_BM()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_REEGARSHOTGUN_BM');
	Template.WeaponPanelImage = "_BeamRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'shotgun';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///ReegarShotgun_Assets.UI.UI_ReegarShotgun_WP";
	Template.Tier = 4;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.REEGARSHOTGUN_BM_RANGE;
	Template.BaseDamage = default.REEGARSHOTGUN_BM_BASEDAMAGE;
	Template.Aim = default.REEGARSHOTGUN_BM_AIM;
	Template.CritChance = default.REEGARSHOTGUN_BM_CRITCHANCE;
	Template.iClipSize = default.REEGARSHOTGUN_BM_ICLIPSIZE;
	Template.iSoundRange = default.REEGARSHOTGUN_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.REEGARSHOTGUN_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.REEGARSHOTGUN_BM_IUPGRADESLOTS;
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
	Template.BaseItem = 'WP_REEGARSHOTGUN_MG';  
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "ReegarShotgun_Assets.Archetypes.ARC_Weap_Reegar_Shotgun"; 
	
	return Template;
}