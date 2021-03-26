class X2Item_GraalShotgun extends X2Item config(GraalShotgun);



//===================================================================== //Weapon Stat Variables
var config WeaponDamageValue GRAALSHOTGUN_BASEDAMAGE;
var config array<int> GRAALSHOTGUN_RANGE;
var config int GRAALSHOTGUN_AIM;
var config int GRAALSHOTGUN_CRITCHANCE;
var config int GRAALSHOTGUN_ICLIPSIZE;
var config int GRAALSHOTGUN_ISOUNDRANGE;
var config int GRAALSHOTGUN_IENVIRONMENTDAMAGE;
var config int GRAALSHOTGUN_ISUPPLIES;
var config int GRAALSHOTGUN_TRADINGPOSTVALUE;
var config int GRAALSHOTGUN_IPOINTS;
var config int GRAALSHOTGUN_IUPGRADESLOTS;

var config WeaponDamageValue GRAALSHOTGUN_MG_BASEDAMAGE;
var config array<int> GRAALSHOTGUN_MG_RANGE;
var config int GRAALSHOTGUN_MG_AIM;
var config int GRAALSHOTGUN_MG_CRITCHANCE;
var config int GRAALSHOTGUN_MG_ICLIPSIZE;
var config int GRAALSHOTGUN_MG_ISOUNDRANGE;
var config int GRAALSHOTGUN_MG_IENVIRONMENTDAMAGE;
var config int GRAALSHOTGUN_MG_ISUPPLIES;
var config int GRAALSHOTGUN_MG_TRADINGPOSTVALUE;
var config int GRAALSHOTGUN_MG_IPOINTS;
var config int GRAALSHOTGUN_MG_IUPGRADESLOTS;

var config WeaponDamageValue GRAALSHOTGUN_BM_BASEDAMAGE;
var config array<int> GRAALSHOTGUN_BM_RANGE;
var config int GRAALSHOTGUN_BM_AIM;
var config int GRAALSHOTGUN_BM_CRITCHANCE;
var config int GRAALSHOTGUN_BM_ICLIPSIZE;
var config int GRAALSHOTGUN_BM_ISOUNDRANGE;
var config int GRAALSHOTGUN_BM_IENVIRONMENTDAMAGE;
var config int GRAALSHOTGUN_BM_ISUPPLIES;
var config int GRAALSHOTGUN_BM_TRADINGPOSTVALUE;
var config int GRAALSHOTGUN_BM_IPOINTS;
var config int GRAALSHOTGUN_BM_IUPGRADESLOTS;

//===================================================================== //Template Starts
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> GraalShotgunWeaps;

	GraalShotgunWeaps.AddItem(CreateTemplate_GraalShotgun());
	GraalShotgunWeaps.AddItem(CreateTemplate_GraalShotgun_MG());
	GraalShotgunWeaps.AddItem(CreateTemplate_GraalShotgun_BM());

	return GraalShotgunWeaps;
}

//===================================================================== //Template Conventional Creation
static function X2DataTemplate CreateTemplate_GRAALSHOTGUN()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_GRAALSHOTGUN');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'shotgun';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///GraalShotgun_Assets.UI.UI_GraalShotgun_WP";
	Template.Tier = 0;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.GRAALSHOTGUN_RANGE;
	Template.BaseDamage = default.GRAALSHOTGUN_BASEDAMAGE;
	Template.Aim = default.GRAALSHOTGUN_AIM;
	Template.CritChance = default.GRAALSHOTGUN_CRITCHANCE;
	Template.iClipSize = default.GRAALSHOTGUN_ICLIPSIZE;
	Template.iSoundRange = default.GRAALSHOTGUN_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.GRAALSHOTGUN_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.GRAALSHOTGUN_IUPGRADESLOTS;
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
	Template.GameArchetype = "GraalShotgun_Assets.Archetypes.ARC_Weap_Graal_Shotgun"; 
	
	return Template;
}
//===================================================================== //Template Magnetic Creation
static function X2DataTemplate CreateTemplate_GRAALSHOTGUN_MG()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_GRAALSHOTGUN_MG');
	Template.WeaponPanelImage = "_MagneticRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'shotgun';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///GraalShotgun_Assets.UI.UI_GraalShotgun_WP";
	Template.Tier = 2;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.GRAALSHOTGUN_MG_RANGE;
	Template.BaseDamage = default.GRAALSHOTGUN_MG_BASEDAMAGE;
	Template.Aim = default.GRAALSHOTGUN_MG_AIM;
	Template.CritChance = default.GRAALSHOTGUN_MG_CRITCHANCE;
	Template.iClipSize = default.GRAALSHOTGUN_MG_ICLIPSIZE;
	Template.iSoundRange = default.GRAALSHOTGUN_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.GRAALSHOTGUN_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.GRAALSHOTGUN_MG_IUPGRADESLOTS;
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
	Template.BaseItem = 'WP_GRAALSHOTGUN'; 
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "GraalShotgun_Assets.Archetypes.ARC_Weap_Graal_Shotgun"; 
	
	return Template;
}
//===================================================================== //Template Beam Creation
static function X2DataTemplate CreateTemplate_GRAALSHOTGUN_BM()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_GRAALSHOTGUN_BM');
	Template.WeaponPanelImage = "_BeamRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'shotgun';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///GraalShotgun_Assets.UI.UI_GraalShotgun_WP";
	Template.Tier = 4;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.GRAALSHOTGUN_BM_RANGE;
	Template.BaseDamage = default.GRAALSHOTGUN_BM_BASEDAMAGE;
	Template.Aim = default.GRAALSHOTGUN_BM_AIM;
	Template.CritChance = default.GRAALSHOTGUN_BM_CRITCHANCE;
	Template.iClipSize = default.GRAALSHOTGUN_BM_ICLIPSIZE;
	Template.iSoundRange = default.GRAALSHOTGUN_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.GRAALSHOTGUN_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.GRAALSHOTGUN_BM_IUPGRADESLOTS;
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
	Template.BaseItem = 'WP_GRAALSHOTGUN_MG';  
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "GraalShotgun_Assets.Archetypes.ARC_Weap_Graal_Shotgun"; 
	
	return Template;
}