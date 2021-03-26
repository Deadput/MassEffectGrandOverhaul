class X2Item_GethSpitfire extends X2Item config(GethSpitfire);



//===================================================================== //Weapon Stat Variables
var config WeaponDamageValue GETHSPITFIRE_BASEDAMAGE;
var config array<int> GETHSPITFIRE_RANGE;
var config int GETHSPITFIRE_AIM;
var config int GETHSPITFIRE_CRITCHANCE;
var config int GETHSPITFIRE_ICLIPSIZE;
var config int GETHSPITFIRE_ISOUNDRANGE;
var config int GETHSPITFIRE_IENVIRONMENTDAMAGE;
var config int GETHSPITFIRE_ISUPPLIES;
var config int GETHSPITFIRE_TRADINGPOSTVALUE;
var config int GETHSPITFIRE_IPOINTS;
var config int GETHSPITFIRE_IUPGRADESLOTS;

var config WeaponDamageValue GETHSPITFIRE_MG_BASEDAMAGE;
var config array<int> GETHSPITFIRE_MG_RANGE;
var config int GETHSPITFIRE_MG_AIM;
var config int GETHSPITFIRE_MG_CRITCHANCE;
var config int GETHSPITFIRE_MG_ICLIPSIZE;
var config int GETHSPITFIRE_MG_ISOUNDRANGE;
var config int GETHSPITFIRE_MG_IENVIRONMENTDAMAGE;
var config int GETHSPITFIRE_MG_ISUPPLIES;
var config int GETHSPITFIRE_MG_TRADINGPOSTVALUE;
var config int GETHSPITFIRE_MG_IPOINTS;
var config int GETHSPITFIRE_MG_IUPGRADESLOTS;

var config WeaponDamageValue GETHSPITFIRE_BM_BASEDAMAGE;
var config array<int> GETHSPITFIRE_BM_RANGE;
var config int GETHSPITFIRE_BM_AIM;
var config int GETHSPITFIRE_BM_CRITCHANCE;
var config int GETHSPITFIRE_BM_ICLIPSIZE;
var config int GETHSPITFIRE_BM_ISOUNDRANGE;
var config int GETHSPITFIRE_BM_IENVIRONMENTDAMAGE;
var config int GETHSPITFIRE_BM_ISUPPLIES;
var config int GETHSPITFIRE_BM_TRADINGPOSTVALUE;
var config int GETHSPITFIRE_BM_IPOINTS;
var config int GETHSPITFIRE_BM_IUPGRADESLOTS;

//===================================================================== //Template Starts
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> GethSpitfireWeaps;

	GethSpitfireWeaps.AddItem(CreateTemplate_GethSpitfire());
	GethSpitfireWeaps.AddItem(CreateTemplate_GethSpitfire_MG());
	GethSpitfireWeaps.AddItem(CreateTemplate_GethSpitfire_BM());

	return GethSpitfireWeaps;
}

//===================================================================== //Template Conventional Creation
static function X2DataTemplate CreateTemplate_GethSpitfire()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_GethSpitfire');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'cannon';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///GethSpitfire_Assets.UI.UI_GethSpitfire_WP";
	Template.Tier = 0;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.GETHSPITFIRE_RANGE;
	Template.BaseDamage = default.GETHSPITFIRE_BASEDAMAGE;
	Template.Aim = default.GETHSPITFIRE_AIM;
	Template.CritChance = default.GETHSPITFIRE_CRITCHANCE;
	Template.iClipSize = default.GETHSPITFIRE_ICLIPSIZE;
	Template.iSoundRange = default.GETHSPITFIRE_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.GETHSPITFIRE_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.GETHSPITFIRE_IUPGRADESLOTS;
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
	Template.GameArchetype = "GethSpitfire_Assets.Archetypes.ARC_Weap_Geth_Spitfire"; 
	
	return Template;
}
//===================================================================== //Template Magnetic Creation
static function X2DataTemplate CreateTemplate_GethSpitfire_MG()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_GethSpitfire_MG');
	Template.WeaponPanelImage = "_MagneticRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'cannon';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///GethSpitfire_Assets.UI.UI_GethSpitfire_WP";
	Template.Tier = 2;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.GETHSPITFIRE_MG_RANGE;
	Template.BaseDamage = default.GETHSPITFIRE_MG_BASEDAMAGE;
	Template.Aim = default.GETHSPITFIRE_MG_AIM;
	Template.CritChance = default.GETHSPITFIRE_MG_CRITCHANCE;
	Template.iClipSize = default.GETHSPITFIRE_MG_ICLIPSIZE;
	Template.iSoundRange = default.GETHSPITFIRE_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.GETHSPITFIRE_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.GETHSPITFIRE_MG_IUPGRADESLOTS;
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
	Template.BaseItem = 'WP_GethSpitfire'; 
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "GethSpitfire_Assets.Archetypes.ARC_Weap_Geth_Spitfire"; 
	
	return Template;
}
//===================================================================== //Template Beam Creation
static function X2DataTemplate CreateTemplate_GethSpitfire_BM()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_GethSpitfire_BM');
	Template.WeaponPanelImage = "_BeamRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'cannon';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///GethSpitfire_Assets.UI.UI_GethSpitfire_WP";
	Template.Tier = 4;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.GETHSPITFIRE_BM_RANGE;
	Template.BaseDamage = default.GETHSPITFIRE_BM_BASEDAMAGE;
	Template.Aim = default.GETHSPITFIRE_BM_AIM;
	Template.CritChance = default.GETHSPITFIRE_BM_CRITCHANCE;
	Template.iClipSize = default.GETHSPITFIRE_BM_ICLIPSIZE;
	Template.iSoundRange = default.GETHSPITFIRE_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.GETHSPITFIRE_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.GETHSPITFIRE_BM_IUPGRADESLOTS;
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
	Template.BaseItem = 'WP_GethSpitfire_MG';  
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "GethSpitfire_Assets.Archetypes.ARC_Weap_Geth_Spitfire"; 
	
	return Template;
}