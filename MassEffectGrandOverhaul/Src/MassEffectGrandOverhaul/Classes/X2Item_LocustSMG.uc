class X2Item_LocustSMG extends X2Item config(LocustSMG);

//Base damage
var config WeaponDamageValue LOCUSTSMG_BASEDAMAGE;
var config WeaponDamageValue LOCUSTSMG_MG_BASEDAMAGE;
var config WeaponDamageValue LOCUSTSMG_BM_BASEDAMAGE;

//Fields for each gun
var config int LOCUSTSMG_AIM;
var config int LOCUSTSMG_CRITCHANCE;
var config int LOCUSTSMG_ICLIPSIZE;
var config int LOCUSTSMG_ISOUNDRANGE;
var config int LOCUSTSMG_IENVIRONMENTDAMAGE;
var config int LOCUSTSMG_ISUPPLIES;
var config int LOCUSTSMG_TRADINGPOSTVALUE;
var config int LOCUSTSMG_IPOINTS;
var config int LOCUSTSMG_IUPGRADESLOTS;

var config int LOCUSTSMG_MG_AIM;
var config int LOCUSTSMG_MG_CRITCHANCE;
var config int LOCUSTSMG_MG_ICLIPSIZE;
var config int LOCUSTSMG_MG_ISOUNDRANGE;
var config int LOCUSTSMG_MG_IENVIRONMENTDAMAGE;
var config int LOCUSTSMG_MG_ISUPPLIES;
var config int LOCUSTSMG_MG_TRADINGPOSTVALUE;
var config int LOCUSTSMG_MG_IPOINTS;
var config int LOCUSTSMG_MG_IUPGRADESLOTS;

var config int LOCUSTSMG_BM_AIM;
var config int LOCUSTSMG_BM_CRITCHANCE;
var config int LOCUSTSMG_BM_ICLIPSIZE;
var config int LOCUSTSMG_BM_ISOUNDRANGE;
var config int LOCUSTSMG_BM_IENVIRONMENTDAMAGE;
var config int LOCUSTSMG_BM_ISUPPLIES;
var config int LOCUSTSMG_BM_TRADINGPOSTVALUE;
var config int LOCUSTSMG_BM_IPOINTS;
var config int LOCUSTSMG_BM_IUPGRADESLOTS;

//initialize templates
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> LocustSMGWeaps;

	//Create Weapon Templates
	LocustSMGWeaps.AddItem(CreateTemplate_LocustSMG());
	LocustSMGWeaps.AddItem(CreateTemplate_LocustSMG_MG());
	LocustSMGWeaps.AddItem(CreateTemplate_LocustSMG_BM());
	

	return LocustSMGWeaps;
}
/// AR Default
static function X2DataTemplate CreateTemplate_LocustSMG()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_LocustSMG');

	Template.WeaponPanelImage = "_Pistol";                      

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sidearm';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///LocustSMG_Assets.UI.UI_LocustSMG_WP";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 0;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_CONVENTIONAL_RANGE;
	Template.BaseDamage = default.LOCUSTSMG_BASEDAMAGE;
	Template.Aim = default.LOCUSTSMG_AIM;
	Template.CritChance = default.LOCUSTSMG_CRITCHANCE;
	Template.iClipSize = default.LOCUSTSMG_ICLIPSIZE;
	Template.iSoundRange = default.LOCUSTSMG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.LOCUSTSMG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.LOCUSTSMG_IUPGRADESLOTS;
	
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

	Template.GameArchetype = "LocustSMG_Assets.Archetypes.ARC_Weap_Locust_SMG";

	Template.bInfiniteItem = true;

	Template.iPhysicsImpulse = 5;
	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	//Template.UpgradeItem = 'WP_LOCUSTSMG_MG';


	Template.bHideClipSizeStat = true;

	Template.DamageTypeTemplateName = 'Projectile_Conventional';

	defaultproperties
	{
	bShouldCreateDifficultyVariants = true
	}
	
	return Template;
}
/////////////////////////////////////////////////////////////////////////////AR MG/////////////////////////////////////////////////////////////////////////////
static function X2DataTemplate CreateTemplate_LocustSMG_MG()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_LocustSMG_MG');
	Template.WeaponPanelImage = "_Pistol";                       

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sidearm';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///LocustSMG_Assets.UI.UI_LocustSMG_WP";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 2;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_MAGNETIC_RANGE;
	Template.BaseDamage = default.LOCUSTSMG_MG_BASEDAMAGE;
	Template.Aim = default.LOCUSTSMG_MG_AIM;
	Template.CritChance = default.LOCUSTSMG_MG_CRITCHANCE;
	Template.iClipSize = default.LOCUSTSMG_MG_ICLIPSIZE;
	Template.iSoundRange = default.LOCUSTSMG_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.LOCUSTSMG_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.LOCUSTSMG_MG_IUPGRADESLOTS;
	
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
	Template.GameArchetype = "LocustSMG_Assets.Archetypes.ARC_Weap_Locust_SMG";

	Template.iPhysicsImpulse = 5;
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;

	//Template.UpgradeItem = 'WP_LOCUSTSMG_BM';
	Template.CreatorTemplateName = 'Pistol_MG_Schematic';
	Template.BaseItem = 'WP_LOCUSTSMG';

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
static function X2DataTemplate CreateTemplate_LocustSMG_BM()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_LocustSMG_BM');

	Template.WeaponPanelImage = "_Pistol";     

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sidearm';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///LocustSMG_Assets.UI.UI_LocustSMG_WP";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 4;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_BEAM_RANGE;
	Template.BaseDamage = default.LOCUSTSMG_BM_BASEDAMAGE;
	Template.Aim = default.LOCUSTSMG_BM_AIM;
	Template.CritChance = default.LOCUSTSMG_BM_CRITCHANCE;
	Template.iClipSize = default.LOCUSTSMG_BM_ICLIPSIZE;
	Template.iSoundRange = default.LOCUSTSMG_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.LOCUSTSMG_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.LOCUSTSMG_BM_IUPGRADESLOTS;
	
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
	Template.BaseItem = 'WP_LocustSMG_MG';


	Template.GameArchetype = "LocustSMG_Assets.Archetypes.ARC_Weap_Locust_SMG";
	
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
