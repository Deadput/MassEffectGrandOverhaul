class X2Item_TempestSMG extends X2Item config(TempestSMG);

//Base damage
var config WeaponDamageValue TEMPESTSMG_BASEDAMAGE;
var config WeaponDamageValue TEMPESTSMG_MG_BASEDAMAGE;
var config WeaponDamageValue TEMPESTSMG_BM_BASEDAMAGE;

//Fields for each gun
var config int TEMPESTSMG_AIM;
var config int TEMPESTSMG_CRITCHANCE;
var config int TEMPESTSMG_ICLIPSIZE;
var config int TEMPESTSMG_ISOUNDRANGE;
var config int TEMPESTSMG_IENVIRONMENTDAMAGE;
var config int TEMPESTSMG_ISUPPLIES;
var config int TEMPESTSMG_TRADINGPOSTVALUE;
var config int TEMPESTSMG_IPOINTS;
var config int TEMPESTSMG_IUPGRADESLOTS;

var config int TEMPESTSMG_MG_AIM;
var config int TEMPESTSMG_MG_CRITCHANCE;
var config int TEMPESTSMG_MG_ICLIPSIZE;
var config int TEMPESTSMG_MG_ISOUNDRANGE;
var config int TEMPESTSMG_MG_IENVIRONMENTDAMAGE;
var config int TEMPESTSMG_MG_ISUPPLIES;
var config int TEMPESTSMG_MG_TRADINGPOSTVALUE;
var config int TEMPESTSMG_MG_IPOINTS;
var config int TEMPESTSMG_MG_IUPGRADESLOTS;

var config int TEMPESTSMG_BM_AIM;
var config int TEMPESTSMG_BM_CRITCHANCE;
var config int TEMPESTSMG_BM_ICLIPSIZE;
var config int TEMPESTSMG_BM_ISOUNDRANGE;
var config int TEMPESTSMG_BM_IENVIRONMENTDAMAGE;
var config int TEMPESTSMG_BM_ISUPPLIES;
var config int TEMPESTSMG_BM_TRADINGPOSTVALUE;
var config int TEMPESTSMG_BM_IPOINTS;
var config int TEMPESTSMG_BM_IUPGRADESLOTS;

//initialize templates
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> TempestSMGWeaps;

	//Create Weapon Templates
	TempestSMGWeaps.AddItem(CreateTemplate_TempestSMG());
	TempestSMGWeaps.AddItem(CreateTemplate_TempestSMG_MG());
	TempestSMGWeaps.AddItem(CreateTemplate_TempestSMG_BM());
	

	return TempestSMGWeaps;
}
/// AR Default
static function X2DataTemplate CreateTemplate_TempestSMG()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_TempestSMG');

	Template.WeaponPanelImage = "_Pistol";                      

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sidearm';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///TempestSMG_Assets.UI.UI_TempestSMG_WP";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 0;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_CONVENTIONAL_RANGE;
	Template.BaseDamage = default.TEMPESTSMG_BASEDAMAGE;
	Template.Aim = default.TEMPESTSMG_AIM;
	Template.CritChance = default.TEMPESTSMG_CRITCHANCE;
	Template.iClipSize = default.TEMPESTSMG_ICLIPSIZE;
	Template.iSoundRange = default.TEMPESTSMG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.TEMPESTSMG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.TEMPESTSMG_IUPGRADESLOTS;
	
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

	Template.GameArchetype = "TempestSMG_Assets.Archetypes.ARC_Weap_Tempest_SMG";

	Template.bInfiniteItem = true;

	Template.iPhysicsImpulse = 5;
	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	//Template.UpgradeItem = 'WP_TEMPESTSMG_MG';


	Template.bHideClipSizeStat = true;

	Template.DamageTypeTemplateName = 'Projectile_Conventional';

	defaultproperties
	{
	bShouldCreateDifficultyVariants = true
	}
	
	return Template;
}
/////////////////////////////////////////////////////////////////////////////AR MG/////////////////////////////////////////////////////////////////////////////
static function X2DataTemplate CreateTemplate_TempestSMG_MG()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_TempestSMG_MG');
	Template.WeaponPanelImage = "_Pistol";                       

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sidearm';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///TempestSMG_Assets.UI.UI_TempestSMG_WP";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 2;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_MAGNETIC_RANGE;
	Template.BaseDamage = default.TEMPESTSMG_MG_BASEDAMAGE;
	Template.Aim = default.TEMPESTSMG_MG_AIM;
	Template.CritChance = default.TEMPESTSMG_MG_CRITCHANCE;
	Template.iClipSize = default.TEMPESTSMG_MG_ICLIPSIZE;
	Template.iSoundRange = default.TEMPESTSMG_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.TEMPESTSMG_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.TEMPESTSMG_MG_IUPGRADESLOTS;
	
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
	Template.GameArchetype = "TempestSMG_Assets.Archetypes.ARC_Weap_Tempest_SMG";

	Template.iPhysicsImpulse = 5;
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;

	//Template.UpgradeItem = 'WP_TEMPESTSMG_BM';
	Template.CreatorTemplateName = 'Pistol_MG_Schematic';
	Template.BaseItem = 'WP_TEMPESTSMG';

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
static function X2DataTemplate CreateTemplate_TempestSMG_BM()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_TempestSMG_BM');

	Template.WeaponPanelImage = "_Pistol";     

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sidearm';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///TempestSMG_Assets.UI.UI_TempestSMG_WP";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 4;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_BEAM_RANGE;
	Template.BaseDamage = default.TEMPESTSMG_BM_BASEDAMAGE;
	Template.Aim = default.TEMPESTSMG_BM_AIM;
	Template.CritChance = default.TEMPESTSMG_BM_CRITCHANCE;
	Template.iClipSize = default.TEMPESTSMG_BM_ICLIPSIZE;
	Template.iSoundRange = default.TEMPESTSMG_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.TEMPESTSMG_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.TEMPESTSMG_BM_IUPGRADESLOTS;
	
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
	Template.BaseItem = 'WP_TempestSMG_MG';


	Template.GameArchetype = "TempestSMG_Assets.Archetypes.ARC_Weap_Tempest_SMG";
	
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
