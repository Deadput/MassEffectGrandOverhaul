class X2Item_DiscipleShotgun extends X2Item config(DiscipleShotgun);



//===================================================================== //Weapon Stat Variables
var config WeaponDamageValue DISCIPLESHOTGUN_BASEDAMAGE;
var config array<int> DISCIPLESHOTGUN_RANGE;
var config int DISCIPLESHOTGUN_AIM;
var config int DISCIPLESHOTGUN_CRITCHANCE;
var config int DISCIPLESHOTGUN_ICLIPSIZE;
var config int DISCIPLESHOTGUN_ISOUNDRANGE;
var config int DISCIPLESHOTGUN_IENVIRONMENTDAMAGE;
var config int DISCIPLESHOTGUN_ISUPPLIES;
var config int DISCIPLESHOTGUN_TRADINGPOSTVALUE;
var config int DISCIPLESHOTGUN_IPOINTS;
var config int DISCIPLESHOTGUN_IUPGRADESLOTS;

var config WeaponDamageValue DISCIPLESHOTGUN_MG_BASEDAMAGE;
var config array<int> DISCIPLESHOTGUN_MG_RANGE;
var config int DISCIPLESHOTGUN_MG_AIM;
var config int DISCIPLESHOTGUN_MG_CRITCHANCE;
var config int DISCIPLESHOTGUN_MG_ICLIPSIZE;
var config int DISCIPLESHOTGUN_MG_ISOUNDRANGE;
var config int DISCIPLESHOTGUN_MG_IENVIRONMENTDAMAGE;
var config int DISCIPLESHOTGUN_MG_ISUPPLIES;
var config int DISCIPLESHOTGUN_MG_TRADINGPOSTVALUE;
var config int DISCIPLESHOTGUN_MG_IPOINTS;
var config int DISCIPLESHOTGUN_MG_IUPGRADESLOTS;

var config WeaponDamageValue DISCIPLESHOTGUN_BM_BASEDAMAGE;
var config array<int> DISCIPLESHOTGUN_BM_RANGE;
var config int DISCIPLESHOTGUN_BM_AIM;
var config int DISCIPLESHOTGUN_BM_CRITCHANCE;
var config int DISCIPLESHOTGUN_BM_ICLIPSIZE;
var config int DISCIPLESHOTGUN_BM_ISOUNDRANGE;
var config int DISCIPLESHOTGUN_BM_IENVIRONMENTDAMAGE;
var config int DISCIPLESHOTGUN_BM_ISUPPLIES;
var config int DISCIPLESHOTGUN_BM_TRADINGPOSTVALUE;
var config int DISCIPLESHOTGUN_BM_IPOINTS;
var config int DISCIPLESHOTGUN_BM_IUPGRADESLOTS;

//===================================================================== //Template Starts
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> DiscipleShotgunWeaps;

	DiscipleShotgunWeaps.AddItem(CreateTemplate_DiscipleShotgun());
	DiscipleShotgunWeaps.AddItem(CreateTemplate_DiscipleShotgun_MG());
	DiscipleShotgunWeaps.AddItem(CreateTemplate_DiscipleShotgun_BM());

	return DiscipleShotgunWeaps;
}

//===================================================================== //Template Conventional Creation
static function X2DataTemplate CreateTemplate_DISCIPLESHOTGUN()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_DISCIPLESHOTGUN');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'shotgun';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///DiscipleShotgun_Assets.UI.UI_DiscipleShotgun_WP";
	Template.Tier = 0;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.DISCIPLESHOTGUN_RANGE;
	Template.BaseDamage = default.DISCIPLESHOTGUN_BASEDAMAGE;
	Template.Aim = default.DISCIPLESHOTGUN_AIM;
	Template.CritChance = default.DISCIPLESHOTGUN_CRITCHANCE;
	Template.iClipSize = default.DISCIPLESHOTGUN_ICLIPSIZE;
	Template.iSoundRange = default.DISCIPLESHOTGUN_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.DISCIPLESHOTGUN_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.DISCIPLESHOTGUN_IUPGRADESLOTS;
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
	Template.GameArchetype = "DiscipleShotgun_Assets.Archetypes.ARC_Weap_Disciple_Shotgun"; 
	
	return Template;
}
//===================================================================== //Template Magnetic Creation
static function X2DataTemplate CreateTemplate_DISCIPLESHOTGUN_MG()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_DISCIPLESHOTGUN_MG');
	Template.WeaponPanelImage = "_MagneticRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'shotgun';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///DiscipleShotgun_Assets.UI.UI_DiscipleShotgun_WP";
	Template.Tier = 2;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.DISCIPLESHOTGUN_MG_RANGE;
	Template.BaseDamage = default.DISCIPLESHOTGUN_MG_BASEDAMAGE;
	Template.Aim = default.DISCIPLESHOTGUN_MG_AIM;
	Template.CritChance = default.DISCIPLESHOTGUN_MG_CRITCHANCE;
	Template.iClipSize = default.DISCIPLESHOTGUN_MG_ICLIPSIZE;
	Template.iSoundRange = default.DISCIPLESHOTGUN_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.DISCIPLESHOTGUN_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.DISCIPLESHOTGUN_MG_IUPGRADESLOTS;
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
	Template.BaseItem = 'WP_DISCIPLESHOTGUN'; 
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "DiscipleShotgun_Assets.Archetypes.ARC_Weap_Disciple_Shotgun"; 
	
	return Template;
}
//===================================================================== //Template Beam Creation
static function X2DataTemplate CreateTemplate_DISCIPLESHOTGUN_BM()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_DISCIPLESHOTGUN_BM');
	Template.WeaponPanelImage = "_BeamRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'shotgun';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///DiscipleShotgun_Assets.UI.UI_DiscipleShotgun_WP";
	Template.Tier = 4;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.DISCIPLESHOTGUN_BM_RANGE;
	Template.BaseDamage = default.DISCIPLESHOTGUN_BM_BASEDAMAGE;
	Template.Aim = default.DISCIPLESHOTGUN_BM_AIM;
	Template.CritChance = default.DISCIPLESHOTGUN_BM_CRITCHANCE;
	Template.iClipSize = default.DISCIPLESHOTGUN_BM_ICLIPSIZE;
	Template.iSoundRange = default.DISCIPLESHOTGUN_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.DISCIPLESHOTGUN_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.DISCIPLESHOTGUN_BM_IUPGRADESLOTS;
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
	Template.BaseItem = 'WP_DISCIPLESHOTGUN_MG';  
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "DiscipleShotgun_Assets.Archetypes.ARC_Weap_Disciple_Shotgun"; 
	
	return Template;
}