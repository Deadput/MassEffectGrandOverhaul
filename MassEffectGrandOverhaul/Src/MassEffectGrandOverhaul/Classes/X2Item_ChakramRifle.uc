class X2Item_ChakramRifle extends X2Item config(ChakramRifle);



//===================================================================== //Weapon Stat Variables
var config WeaponDamageValue CHAKRAMRIFLE_BASEDAMAGE;
var config array<int> CHAKRAMRIFLE_RANGE;
var config int CHAKRAMRIFLE_AIM;
var config int CHAKRAMRIFLE_CRITCHANCE;
var config int CHAKRAMRIFLE_ICLIPSIZE;
var config int CHAKRAMRIFLE_ISOUNDRANGE;
var config int CHAKRAMRIFLE_IENVIRONMENTDAMAGE;
var config int CHAKRAMRIFLE_ISUPPLIES;
var config int CHAKRAMRIFLE_TRADINGPOSTVALUE;
var config int CHAKRAMRIFLE_IPOINTS;
var config int CHAKRAMRIFLE_IUPGRADESLOTS;

var config WeaponDamageValue CHAKRAMRIFLE_MG_BASEDAMAGE;
var config array<int> CHAKRAMRIFLE_MG_RANGE;
var config int CHAKRAMRIFLE_MG_AIM;
var config int CHAKRAMRIFLE_MG_CRITCHANCE;
var config int CHAKRAMRIFLE_MG_ICLIPSIZE;
var config int CHAKRAMRIFLE_MG_ISOUNDRANGE;
var config int CHAKRAMRIFLE_MG_IENVIRONMENTDAMAGE;
var config int CHAKRAMRIFLE_MG_ISUPPLIES;
var config int CHAKRAMRIFLE_MG_TRADINGPOSTVALUE;
var config int CHAKRAMRIFLE_MG_IPOINTS;
var config int CHAKRAMRIFLE_MG_IUPGRADESLOTS;

var config WeaponDamageValue CHAKRAMRIFLE_BM_BASEDAMAGE;
var config array<int> CHAKRAMRIFLE_BM_RANGE;
var config int CHAKRAMRIFLE_BM_AIM;
var config int CHAKRAMRIFLE_BM_CRITCHANCE;
var config int CHAKRAMRIFLE_BM_ICLIPSIZE;
var config int CHAKRAMRIFLE_BM_ISOUNDRANGE;
var config int CHAKRAMRIFLE_BM_IENVIRONMENTDAMAGE;
var config int CHAKRAMRIFLE_BM_ISUPPLIES;
var config int CHAKRAMRIFLE_BM_TRADINGPOSTVALUE;
var config int CHAKRAMRIFLE_BM_IPOINTS;
var config int CHAKRAMRIFLE_BM_IUPGRADESLOTS;

//===================================================================== //Template Starts
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> ChakramRifleWeaps;

	ChakramRifleWeaps.AddItem(CreateTemplate_ChakramRifle());
	ChakramRifleWeaps.AddItem(CreateTemplate_ChakramRifle_MG());
	ChakramRifleWeaps.AddItem(CreateTemplate_ChakramRifle_BM());

	return ChakramRifleWeaps;
}

//===================================================================== //Template Conventional Creation
static function X2DataTemplate CreateTemplate_ChakramRifle()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_ChakramRifle');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'vektor_rifle';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///ChakramRifle_Assets.UI.UI_ChakramRifle_WP";
	Template.Tier = 0;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.CHAKRAMRIFLE_RANGE;
	Template.BaseDamage = default.CHAKRAMRIFLE_BASEDAMAGE;
	Template.Aim = default.CHAKRAMRIFLE_AIM;
	Template.CritChance = default.CHAKRAMRIFLE_CRITCHANCE;
	Template.iClipSize = default.CHAKRAMRIFLE_ICLIPSIZE;
	Template.iSoundRange = default.CHAKRAMRIFLE_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.CHAKRAMRIFLE_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.CHAKRAMRIFLE_IUPGRADESLOTS;
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
	Template.GameArchetype = "ChakramRifle_Assets.ARC_Weap_Chakram_Rifle"; 
	
	return Template;
}
//===================================================================== //Template Magnetic Creation
static function X2DataTemplate CreateTemplate_ChakramRifle_MG()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_ChakramRifle_MG');
	Template.WeaponPanelImage = "_MagneticRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'vektor_rifle';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///ChakramRifle_Assets.UI.UI_ChakramRifle_WP";
	Template.Tier = 2;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.CHAKRAMRIFLE_MG_RANGE;
	Template.BaseDamage = default.CHAKRAMRIFLE_MG_BASEDAMAGE;
	Template.Aim = default.CHAKRAMRIFLE_MG_AIM;
	Template.CritChance = default.CHAKRAMRIFLE_MG_CRITCHANCE;
	Template.iClipSize = default.CHAKRAMRIFLE_MG_ICLIPSIZE;
	Template.iSoundRange = default.CHAKRAMRIFLE_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.CHAKRAMRIFLE_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.CHAKRAMRIFLE_MG_IUPGRADESLOTS;
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
	Template.CreatorTemplateName = 'VektorRifle_MG_Schematic';
	Template.BaseItem = 'WP_ChakramRifle'; 
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "ChakramRifle_Assets.ARC_Weap_Chakram_Rifle"; 
	
	return Template;
}
//===================================================================== //Template Beam Creation
static function X2DataTemplate CreateTemplate_ChakramRifle_BM()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_ChakramRifle_BM');
	Template.WeaponPanelImage = "_BeamRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'vektor_rifle';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///ChakramRifle_Assets.UI.UI_ChakramRifle_WP";
	Template.Tier = 4;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.CHAKRAMRIFLE_BM_RANGE;
	Template.BaseDamage = default.CHAKRAMRIFLE_BM_BASEDAMAGE;
	Template.Aim = default.CHAKRAMRIFLE_BM_AIM;
	Template.CritChance = default.CHAKRAMRIFLE_BM_CRITCHANCE;
	Template.iClipSize = default.CHAKRAMRIFLE_BM_ICLIPSIZE;
	Template.iSoundRange = default.CHAKRAMRIFLE_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.CHAKRAMRIFLE_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.CHAKRAMRIFLE_BM_IUPGRADESLOTS;
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
	Template.CreatorTemplateName = 'VektorRifle_BM_Schematic';
	Template.BaseItem = 'WP_ChakramRifle_MG';  
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "ChakramRifle_Assets.ARC_Weap_Chakram_Rifle"; 
	
	return Template;
}

	defaultproperties
	{
	bShouldCreateDifficultyVariants = true
	}