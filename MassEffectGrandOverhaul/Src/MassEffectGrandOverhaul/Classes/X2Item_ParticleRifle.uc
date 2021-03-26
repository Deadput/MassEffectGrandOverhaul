class X2Item_ParticleRifle extends X2Item config(ParticleRifle);



//===================================================================== //Weapon Stat Variables
var config WeaponDamageValue PARTICLERIFLE_BASEDAMAGE;
var config array<int> PARTICLERIFLE_RANGE;
var config int PARTICLERIFLE_AIM;
var config int PARTICLERIFLE_CRITCHANCE;
var config int PARTICLERIFLE_ICLIPSIZE;
var config int PARTICLERIFLE_ISOUNDRANGE;
var config int PARTICLERIFLE_IENVIRONMENTDAMAGE;
var config int PARTICLERIFLE_ISUPPLIES;
var config int PARTICLERIFLE_TRADINGPOSTVALUE;
var config int PARTICLERIFLE_IPOINTS;
var config int PARTICLERIFLE_IUPGRADESLOTS;

var config WeaponDamageValue PARTICLERIFLE_MG_BASEDAMAGE;
var config array<int> PARTICLERIFLE_MG_RANGE;
var config int PARTICLERIFLE_MG_AIM;
var config int PARTICLERIFLE_MG_CRITCHANCE;
var config int PARTICLERIFLE_MG_ICLIPSIZE;
var config int PARTICLERIFLE_MG_ISOUNDRANGE;
var config int PARTICLERIFLE_MG_IENVIRONMENTDAMAGE;
var config int PARTICLERIFLE_MG_ISUPPLIES;
var config int PARTICLERIFLE_MG_TRADINGPOSTVALUE;
var config int PARTICLERIFLE_MG_IPOINTS;
var config int PARTICLERIFLE_MG_IUPGRADESLOTS;

var config WeaponDamageValue PARTICLERIFLE_BM_BASEDAMAGE;
var config array<int> PARTICLERIFLE_BM_RANGE;
var config int PARTICLERIFLE_BM_AIM;
var config int PARTICLERIFLE_BM_CRITCHANCE;
var config int PARTICLERIFLE_BM_ICLIPSIZE;
var config int PARTICLERIFLE_BM_ISOUNDRANGE;
var config int PARTICLERIFLE_BM_IENVIRONMENTDAMAGE;
var config int PARTICLERIFLE_BM_ISUPPLIES;
var config int PARTICLERIFLE_BM_TRADINGPOSTVALUE;
var config int PARTICLERIFLE_BM_IPOINTS;
var config int PARTICLERIFLE_BM_IUPGRADESLOTS;

//===================================================================== //Template Starts
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> ParticleRifleWeaps;

	ParticleRifleWeaps.AddItem(CreateTemplate_ParticleRifle());
	ParticleRifleWeaps.AddItem(CreateTemplate_ParticleRifle_MG());
	ParticleRifleWeaps.AddItem(CreateTemplate_ParticleRifle_BM());

	return ParticleRifleWeaps;
}

//===================================================================== //Template Conventional Creation
static function X2DataTemplate CreateTemplate_ParticleRifle()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_ParticleRifle');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'cannon';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///ParticleRifle_Assets.UI.UI_ParticleRifle_WP";
	Template.Tier = 0;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.PARTICLERIFLE_RANGE;
	Template.BaseDamage = default.PARTICLERIFLE_BASEDAMAGE;
	Template.Aim = default.PARTICLERIFLE_AIM;
	Template.CritChance = default.PARTICLERIFLE_CRITCHANCE;
	Template.iClipSize = default.PARTICLERIFLE_ICLIPSIZE;
	Template.iSoundRange = default.PARTICLERIFLE_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.PARTICLERIFLE_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.PARTICLERIFLE_IUPGRADESLOTS;
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
	Template.GameArchetype = "ParticleRifle_Assets.ARC_Weap_Particle_Rifle"; 
	
	return Template;
}
//===================================================================== //Template Magnetic Creation
static function X2DataTemplate CreateTemplate_ParticleRifle_MG()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_ParticleRifle_MG');
	Template.WeaponPanelImage = "_MagneticRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'cannon';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///ParticleRifle_Assets.UI.UI_ParticleRifle_WP";
	Template.Tier = 2;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.PARTICLERIFLE_MG_RANGE;
	Template.BaseDamage = default.PARTICLERIFLE_MG_BASEDAMAGE;
	Template.Aim = default.PARTICLERIFLE_MG_AIM;
	Template.CritChance = default.PARTICLERIFLE_MG_CRITCHANCE;
	Template.iClipSize = default.PARTICLERIFLE_MG_ICLIPSIZE;
	Template.iSoundRange = default.PARTICLERIFLE_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.PARTICLERIFLE_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.PARTICLERIFLE_MG_IUPGRADESLOTS;
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
	Template.BaseItem = 'WP_ParticleRifle'; 
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "ParticleRifle_Assets.ARC_Weap_Particle_Rifle"; 
	
	return Template;
}
//===================================================================== //Template Beam Creation
static function X2DataTemplate CreateTemplate_ParticleRifle_BM()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_ParticleRifle_BM');
	Template.WeaponPanelImage = "_BeamRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'cannon';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///ParticleRifle_Assets.UI.UI_ParticleRifle_WP";
	Template.Tier = 4;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.PARTICLERIFLE_BM_RANGE;
	Template.BaseDamage = default.PARTICLERIFLE_BM_BASEDAMAGE;
	Template.Aim = default.PARTICLERIFLE_BM_AIM;
	Template.CritChance = default.PARTICLERIFLE_BM_CRITCHANCE;
	Template.iClipSize = default.PARTICLERIFLE_BM_ICLIPSIZE;
	Template.iSoundRange = default.PARTICLERIFLE_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.PARTICLERIFLE_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.PARTICLERIFLE_BM_IUPGRADESLOTS;
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
	Template.BaseItem = 'WP_ParticleRifle_MG';  
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "ParticleRifle_Assets.ARC_Weap_Particle_Rifle"; 
	
	return Template;
}

	defaultproperties
	{
	bShouldCreateDifficultyVariants = true
	}