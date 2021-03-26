class X2Item_VindicatorRifle extends X2Item config(VindicatorRifle);



//===================================================================== //Weapon Stat Variables
var config WeaponDamageValue VINDICATORRIFLE_BASEDAMAGE;
var config array<int> VINDICATORRIFLE_RANGE;
var config int VINDICATORRIFLE_AIM;
var config int VINDICATORRIFLE_CRITCHANCE;
var config int VINDICATORRIFLE_ICLIPSIZE;
var config int VINDICATORRIFLE_ISOUNDRANGE;
var config int VINDICATORRIFLE_IENVIRONMENTDAMAGE;
var config int VINDICATORRIFLE_ISUPPLIES;
var config int VINDICATORRIFLE_TRADINGPOSTVALUE;
var config int VINDICATORRIFLE_IPOINTS;
var config int VINDICATORRIFLE_IUPGRADESLOTS;


//===================================================================== //Template Starts
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> VindicatorRifleWeaps;

	VindicatorRifleWeaps.AddItem(CreateTemplate_VindicatorRifle());

	return VindicatorRifleWeaps;
}

//===================================================================== //Template Conventional Creation
static function X2DataTemplate CreateTemplate_VindicatorRifle()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_VindicatorRifle');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'rifle';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///VindicatorRifle_Assets.UI.UI_VindicatorRifle_WP";
	Template.Tier = 0;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.VINDICATORRIFLE_RANGE;
	Template.BaseDamage = default.VINDICATORRIFLE_BASEDAMAGE;
	Template.Aim = default.VINDICATORRIFLE_AIM;
	Template.CritChance = default.VINDICATORRIFLE_CRITCHANCE;
	Template.iClipSize = default.VINDICATORRIFLE_ICLIPSIZE;
	Template.iSoundRange = default.VINDICATORRIFLE_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.VINDICATORRIFLE_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.VINDICATORRIFLE_IUPGRADESLOTS;
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
	Template.StartingItem = false;
	Template.CanBeBuilt = false;	
	Template.bInfiniteItem = true;
	//===================================================================== //Physics
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "VindicatorRifle_Assets.ARC_Weap_Vindicator_Rifle"; 
	
	return Template;
}

	defaultproperties
	{
	bShouldCreateDifficultyVariants = true
	}