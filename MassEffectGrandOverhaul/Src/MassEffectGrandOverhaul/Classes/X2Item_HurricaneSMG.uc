class X2Item_HurricaneSMG extends X2Item config(HurricaneSMG);

//Base damage
var config WeaponDamageValue HURRICANESMG_BASEDAMAGE;
var config WeaponDamageValue HURRICANESMG_MG_BASEDAMAGE;
var config WeaponDamageValue HURRICANESMG_BM_BASEDAMAGE;

//Fields for each gun
var config int HURRICANESMG_AIM;
var config int HURRICANESMG_CRITCHANCE;
var config int HURRICANESMG_ICLIPSIZE;
var config int HURRICANESMG_ISOUNDRANGE;
var config int HURRICANESMG_IENVIRONMENTDAMAGE;
var config int HURRICANESMG_ISUPPLIES;
var config int HURRICANESMG_TRADINGPOSTVALUE;
var config int HURRICANESMG_IPOINTS;
var config int HURRICANESMG_IUPGRADESLOTS;

var config int HURRICANESMG_MG_AIM;
var config int HURRICANESMG_MG_CRITCHANCE;
var config int HURRICANESMG_MG_ICLIPSIZE;
var config int HURRICANESMG_MG_ISOUNDRANGE;
var config int HURRICANESMG_MG_IENVIRONMENTDAMAGE;
var config int HURRICANESMG_MG_ISUPPLIES;
var config int HURRICANESMG_MG_TRADINGPOSTVALUE;
var config int HURRICANESMG_MG_IPOINTS;
var config int HURRICANESMG_MG_IUPGRADESLOTS;

var config int HURRICANESMG_BM_AIM;
var config int HURRICANESMG_BM_CRITCHANCE;
var config int HURRICANESMG_BM_ICLIPSIZE;
var config int HURRICANESMG_BM_ISOUNDRANGE;
var config int HURRICANESMG_BM_IENVIRONMENTDAMAGE;
var config int HURRICANESMG_BM_ISUPPLIES;
var config int HURRICANESMG_BM_TRADINGPOSTVALUE;
var config int HURRICANESMG_BM_IPOINTS;
var config int HURRICANESMG_BM_IUPGRADESLOTS;

//initialize templates
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> HurricaneSMGWeaps;

	//Create Weapon Templates
	HurricaneSMGWeaps.AddItem(CreateTemplate_HurricaneSMG());
	HurricaneSMGWeaps.AddItem(CreateTemplate_HurricaneSMG_MG());
	HurricaneSMGWeaps.AddItem(CreateTemplate_HurricaneSMG_BM());
	

	return HurricaneSMGWeaps;
}
/// AR Default
static function X2DataTemplate CreateTemplate_HurricaneSMG()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_HurricaneSMG');

	Template.WeaponPanelImage = "_Pistol";                      

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sidearm';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///HurricaneSMG_Assets.UI.UI_HurricaneSMG_WP";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 0;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_CONVENTIONAL_RANGE;
	Template.BaseDamage = default.HURRICANESMG_BASEDAMAGE;
	Template.Aim = default.HURRICANESMG_AIM;
	Template.CritChance = default.HURRICANESMG_CRITCHANCE;
	Template.iClipSize = default.HURRICANESMG_ICLIPSIZE;
	Template.iSoundRange = default.HURRICANESMG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.HURRICANESMG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.HURRICANESMG_IUPGRADESLOTS;
	
	Template.InfiniteAmmo = true;
	Template.OverwatchActionPoint = class'X2CharacterTemplateManager'.default.PistolOverwatchReserveActionPoint;

	Template.InventorySlot = eInvSlot_SecondaryWeapon;
	Template.Abilities.AddItem('PistolStandardShot');
	Template.Abilities.AddItem('PistolOverwatch');
	Template.Abilities.AddItem('PistolOverwatchShot');
	Template.Abilities.AddItem('PistolReturnFire');
	Template.Abilities.AddItem('HotLoadAmmo');
	Template.Abilities.AddItem('Reload');

	Template.SetAnimationNameForAbility('FanFire', 'FF_FireMagnumA');	

	Template.GameArchetype = "HurricaneSMG_Assets.Archetypes.ARC_Weap_Hurricane_SMG";

	Template.bInfiniteItem = true;

	Template.iPhysicsImpulse = 5;
	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	//Template.UpgradeItem = 'WP_HURRICANESMG_MG';


	Template.bHideClipSizeStat = true;

	Template.DamageTypeTemplateName = 'Projectile_Conventional';

	defaultproperties
	{
	bShouldCreateDifficultyVariants = true
	}
	
	return Template;
}
/////////////////////////////////////////////////////////////////////////////AR MG/////////////////////////////////////////////////////////////////////////////
static function X2DataTemplate CreateTemplate_HurricaneSMG_MG()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_HurricaneSMG_MG');
	Template.WeaponPanelImage = "_Pistol";                       

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sidearm';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///HurricaneSMG_Assets.UI.UI_HurricaneSMG_WP";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 2;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_MAGNETIC_RANGE;
	Template.BaseDamage = default.HURRICANESMG_MG_BASEDAMAGE;
	Template.Aim = default.HURRICANESMG_MG_AIM;
	Template.CritChance = default.HURRICANESMG_MG_CRITCHANCE;
	Template.iClipSize = default.HURRICANESMG_MG_ICLIPSIZE;
	Template.iSoundRange = default.HURRICANESMG_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.HURRICANESMG_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.HURRICANESMG_MG_IUPGRADESLOTS;
	
	Template.OverwatchActionPoint = class'X2CharacterTemplateManager'.default.PistolOverwatchReserveActionPoint;
	Template.InfiniteAmmo = true;
	
	Template.InventorySlot = eInvSlot_SecondaryWeapon;
	Template.Abilities.AddItem('PistolStandardShot');
	Template.Abilities.AddItem('PistolOverwatch');
	Template.Abilities.AddItem('PistolOverwatchShot');
	Template.Abilities.AddItem('PistolReturnFire');
	Template.Abilities.AddItem('HotLoadAmmo');
	Template.Abilities.AddItem('Reload');

	Template.SetAnimationNameForAbility('FanFire', 'FF_FireMagnumA');	
	//template
	Template.GameArchetype = "HurricaneSMG_Assets.Archetypes.ARC_Weap_Hurricane_SMG";

	Template.iPhysicsImpulse = 5;
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;

	//Template.UpgradeItem = 'WP_HURRICANESMG_BM';
	Template.CreatorTemplateName = 'Pistol_MG_Schematic';
	Template.BaseItem = 'WP_HURRICANESMG';

	//Template.StartingItem = true;
	//Template.CanBeBuilt = false;
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;

	Template.bHideClipSizeStat = true;

	Template.DamageTypeTemplateName = 'Projectile_MagXCom';

	defaultproperties
	{
	bShouldCreateDifficultyVariants = true
	}
	
	return Template;
}
/////////////////////////////////////////////////////////////////////////////AR Beam/////////////////////////////////////////////////////////////////////////////
static function X2DataTemplate CreateTemplate_HurricaneSMG_BM()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_HurricaneSMG_BM');

	Template.WeaponPanelImage = "_Pistol";     

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sidearm';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///HurricaneSMG_Assets.UI.UI_HurricaneSMG_WP";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 4;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_BEAM_RANGE;
	Template.BaseDamage = default.HURRICANESMG_BM_BASEDAMAGE;
	Template.Aim = default.HURRICANESMG_BM_AIM;
	Template.CritChance = default.HURRICANESMG_BM_CRITCHANCE;
	Template.iClipSize = default.HURRICANESMG_BM_ICLIPSIZE;
	Template.iSoundRange = default.HURRICANESMG_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.HURRICANESMG_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.HURRICANESMG_BM_IUPGRADESLOTS;
	
	Template.InfiniteAmmo = true;
	Template.OverwatchActionPoint = class'X2CharacterTemplateManager'.default.PistolOverwatchReserveActionPoint;

	Template.InventorySlot = eInvSlot_SecondaryWeapon;
	Template.Abilities.AddItem('PistolStandardShot');
	Template.Abilities.AddItem('PistolOverwatch');
	Template.Abilities.AddItem('PistolOverwatchShot');
	Template.Abilities.AddItem('PistolReturnFire');
	Template.Abilities.AddItem('HotLoadAmmo');
	Template.Abilities.AddItem('Reload');

	Template.SetAnimationNameForAbility('FanFire', 'FF_FireMagnumA');	
	
	//template
	Template.CreatorTemplateName = 'Pistol_BM_Schematic';
	Template.BaseItem = 'WP_HurricaneSMG_MG';


	Template.GameArchetype = "HurricaneSMG_Assets.Archetypes.ARC_Weap_Hurricane_SMG";
	
	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	
	Template.bHideClipSizeStat = true;

	Template.DamageTypeTemplateName = 'Projectile_BeamXCom';

	defaultproperties
	{
	bShouldCreateDifficultyVariants = true
	}
	
	return Template;
}
