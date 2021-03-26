class X2Item_N7Eagle extends X2Item config(N7Eagle);

//Base damage
var config WeaponDamageValue N7Eagle_BASEDAMAGE;
var config WeaponDamageValue N7Eagle_MG_BASEDAMAGE;
var config WeaponDamageValue N7Eagle_BM_BASEDAMAGE;

//Fields for each gun
var config int N7Eagle_AIM;
var config int N7Eagle_CRITCHANCE;
var config int N7Eagle_ICLIPSIZE;
var config int N7Eagle_ISOUNDRANGE;
var config int N7Eagle_IENVIRONMENTDAMAGE;
var config int N7Eagle_ISUPPLIES;
var config int N7Eagle_TRADINGPOSTVALUE;
var config int N7Eagle_IPOINTS;
var config int N7Eagle_IUPGRADESLOTS;

var config int N7Eagle_MG_AIM;
var config int N7Eagle_MG_CRITCHANCE;
var config int N7Eagle_MG_ICLIPSIZE;
var config int N7Eagle_MG_ISOUNDRANGE;
var config int N7Eagle_MG_IENVIRONMENTDAMAGE;
var config int N7Eagle_MG_ISUPPLIES;
var config int N7Eagle_MG_TRADINGPOSTVALUE;
var config int N7Eagle_MG_IPOINTS;
var config int N7Eagle_MG_IUPGRADESLOTS;

var config int N7Eagle_BM_AIM;
var config int N7Eagle_BM_CRITCHANCE;
var config int N7Eagle_BM_ICLIPSIZE;
var config int N7Eagle_BM_ISOUNDRANGE;
var config int N7Eagle_BM_IENVIRONMENTDAMAGE;
var config int N7Eagle_BM_ISUPPLIES;
var config int N7Eagle_BM_TRADINGPOSTVALUE;
var config int N7Eagle_BM_IPOINTS;
var config int N7Eagle_BM_IUPGRADESLOTS;

//initialize templates
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> RepublicEraWeapons;

	//Create Weapon Templates
	RepublicEraWeapons.AddItem(CreateTemplate_N7Eagle());
	RepublicEraWeapons.AddItem(CreateTemplate_N7Eagle_MG());
	RepublicEraWeapons.AddItem(CreateTemplate_N7Eagle_BM());
	

	return RepublicEraWeapons;
}
/// AR Default
static function X2DataTemplate CreateTemplate_N7Eagle()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_N7Eagle');

	Template.WeaponPanelImage = "_Pistol";                      

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'pistol';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///N7Eagle_Assets.UILibrary.Inv_M3Predator";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 0;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_CONVENTIONAL_RANGE;
	Template.BaseDamage = default.N7Eagle_BASEDAMAGE;
	Template.Aim = default.N7Eagle_AIM;
	Template.CritChance = default.N7Eagle_CRITCHANCE;
	Template.iClipSize = default.N7Eagle_ICLIPSIZE;
	Template.iSoundRange = default.N7Eagle_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.N7Eagle_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.N7Eagle_IUPGRADESLOTS;
	
	Template.InfiniteAmmo = true;
	Template.OverwatchActionPoint = class'X2CharacterTemplateManager'.default.PistolOverwatchReserveActionPoint;

	Template.InventorySlot = eInvSlot_SecondaryWeapon;
	Template.Abilities.AddItem('PistolStandardShot');
	Template.Abilities.AddItem('PistolOverwatch');
	Template.Abilities.AddItem('PistolOverwatchShot');
	Template.Abilities.AddItem('PistolReturnFire');
	Template.Abilities.AddItem('HotLoadAmmo');
	Template.Abilities.AddItem('Reload');

	Template.SetAnimationNameForAbility('FanFire', 'FF_FireMultiShotConvA');	

	Template.GameArchetype = "N7Eagle_Assets.Archetype.WP_M3Predator_CV";


	Template.iPhysicsImpulse = 5;
	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	//Template.UpgradeItem = 'WP_N7Eagle_MG';


	Template.bHideClipSizeStat = true;

	Template.DamageTypeTemplateName = 'Projectile_Conventional';

	defaultproperties
	{
	bShouldCreateDifficultyVariants = true
	}
	
	return Template;
}
/////////////////////////////////////////////////////////////////////////////AR MG/////////////////////////////////////////////////////////////////////////////
static function X2DataTemplate CreateTemplate_N7Eagle_MG()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_N7Eagle_MG');
	Template.WeaponPanelImage = "_Pistol";                       

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'pistol';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///N7Eagle_Assets.UILIbrary.Inv_M3Predator";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 2;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_MAGNETIC_RANGE;
	Template.BaseDamage = default.N7Eagle_MG_BASEDAMAGE;
	Template.Aim = default.N7Eagle_MG_AIM;
	Template.CritChance = default.N7Eagle_MG_CRITCHANCE;
	Template.iClipSize = default.N7Eagle_MG_ICLIPSIZE;
	Template.iSoundRange = default.N7Eagle_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.N7Eagle_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.N7Eagle_MG_IUPGRADESLOTS;
	
	Template.OverwatchActionPoint = class'X2CharacterTemplateManager'.default.PistolOverwatchReserveActionPoint;
	Template.InfiniteAmmo = true;
	
	Template.InventorySlot = eInvSlot_SecondaryWeapon;
	Template.Abilities.AddItem('PistolStandardShot');
	Template.Abilities.AddItem('PistolOverwatch');
	Template.Abilities.AddItem('PistolOverwatchShot');
	Template.Abilities.AddItem('PistolReturnFire');
	Template.Abilities.AddItem('HotLoadAmmo');
	Template.Abilities.AddItem('Reload');

	Template.SetAnimationNameForAbility('FanFire', 'FF_FireMultiShotConvA');	
	//template
	Template.GameArchetype = "N7Eagle_Assets.Archetype.WP_M3Predator_CV";

	Template.iPhysicsImpulse = 5;
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;

	//Template.UpgradeItem = 'WP_N7Eagle_BM';
	Template.CreatorTemplateName = 'N7Eagle_MG_Schematic';
	Template.BaseItem = 'WP_N7Eagle';

	//Template.StartingItem = true;
	//Template.CanBeBuilt = false;
	Template.CanBeBuilt = false;

	Template.bHideClipSizeStat = true;

	Template.DamageTypeTemplateName = 'Projectile_MagXCom';

	defaultproperties
	{
	bShouldCreateDifficultyVariants = true
	}
	
	return Template;
}
/////////////////////////////////////////////////////////////////////////////AR Beam/////////////////////////////////////////////////////////////////////////////
static function X2DataTemplate CreateTemplate_N7Eagle_BM()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_N7Eagle_BM');

	Template.WeaponPanelImage = "_Pistol";     

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'pistol';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///N7Eagle_Assets.UILIbrary.Inv_M3Predator";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 4;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_BEAM_RANGE;
	Template.BaseDamage = default.N7Eagle_BM_BASEDAMAGE;
	Template.Aim = default.N7Eagle_BM_AIM;
	Template.CritChance = default.N7Eagle_BM_CRITCHANCE;
	Template.iClipSize = default.N7Eagle_BM_ICLIPSIZE;
	Template.iSoundRange = default.N7Eagle_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.N7Eagle_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.N7Eagle_BM_IUPGRADESLOTS;
	
	Template.InfiniteAmmo = true;
	Template.OverwatchActionPoint = class'X2CharacterTemplateManager'.default.PistolOverwatchReserveActionPoint;

	Template.InventorySlot = eInvSlot_SecondaryWeapon;
	Template.Abilities.AddItem('PistolStandardShot');
	Template.Abilities.AddItem('PistolOverwatch');
	Template.Abilities.AddItem('PistolOverwatchShot');
	Template.Abilities.AddItem('PistolReturnFire');
	Template.Abilities.AddItem('HotLoadAmmo');
	Template.Abilities.AddItem('Reload');

	Template.SetAnimationNameForAbility('FanFire', 'FF_FireMultiShotConvA');	
	
	//template
	Template.CreatorTemplateName = 'N7Eagle_BM_Schematic';
	Template.BaseItem = 'WP_N7Eagle_MG';


	Template.GameArchetype = "N7Eagle_Assets.Archetype.WP_M3Predator_CV";
	
	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = false;
	
	Template.bHideClipSizeStat = true;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	defaultproperties
	{
	bShouldCreateDifficultyVariants = true
	}
	
	return Template;
}
