class X2Item_GethSMG extends X2Item config(GethSMG);

//Base damage
var config WeaponDamageValue GETHSMG_BASEDAMAGE;
var config WeaponDamageValue GETHSMG_MG_BASEDAMAGE;
var config WeaponDamageValue GETHSMG_BM_BASEDAMAGE;

//Fields for each gun
var config int GETHSMG_AIM;
var config int GETHSMG_CRITCHANCE;
var config int GETHSMG_ICLIPSIZE;
var config int GETHSMG_ISOUNDRANGE;
var config int GETHSMG_IENVIRONMENTDAMAGE;
var config int GETHSMG_ISUPPLIES;
var config int GETHSMG_TRADINGPOSTVALUE;
var config int GETHSMG_IPOINTS;
var config int GETHSMG_IUPGRADESLOTS;

var config int GETHSMG_MG_AIM;
var config int GETHSMG_MG_CRITCHANCE;
var config int GETHSMG_MG_ICLIPSIZE;
var config int GETHSMG_MG_ISOUNDRANGE;
var config int GETHSMG_MG_IENVIRONMENTDAMAGE;
var config int GETHSMG_MG_ISUPPLIES;
var config int GETHSMG_MG_TRADINGPOSTVALUE;
var config int GETHSMG_MG_IPOINTS;
var config int GETHSMG_MG_IUPGRADESLOTS;

var config int GETHSMG_BM_AIM;
var config int GETHSMG_BM_CRITCHANCE;
var config int GETHSMG_BM_ICLIPSIZE;
var config int GETHSMG_BM_ISOUNDRANGE;
var config int GETHSMG_BM_IENVIRONMENTDAMAGE;
var config int GETHSMG_BM_ISUPPLIES;
var config int GETHSMG_BM_TRADINGPOSTVALUE;
var config int GETHSMG_BM_IPOINTS;
var config int GETHSMG_BM_IUPGRADESLOTS;

//initialize templates
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> GethSMGWeaps;

	//Create Weapon Templates
	GethSMGWeaps.AddItem(CreateTemplate_GethSMG());
	GethSMGWeaps.AddItem(CreateTemplate_GethSMG_MG());
	GethSMGWeaps.AddItem(CreateTemplate_GethSMG_BM());
	

	return GethSMGWeaps;
}
/// AR Default
static function X2DataTemplate CreateTemplate_GethSMG()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_GethSMG');

	Template.WeaponPanelImage = "_Pistol";                      

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sidearm';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///GethSMG_Assets.UI.UI_GethSMG_WP";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 0;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_CONVENTIONAL_RANGE;
	Template.BaseDamage = default.GETHSMG_BASEDAMAGE;
	Template.Aim = default.GETHSMG_AIM;
	Template.CritChance = default.GETHSMG_CRITCHANCE;
	Template.iClipSize = default.GETHSMG_ICLIPSIZE;
	Template.iSoundRange = default.GETHSMG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.GETHSMG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.GETHSMG_IUPGRADESLOTS;
	
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

	Template.GameArchetype = "GethSMG_Assets.Archetypes.ARC_Weap_Geth_SMG";

	Template.bInfiniteItem = true;

	Template.iPhysicsImpulse = 5;
	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	//Template.UpgradeItem = 'WP_GETHSMG_MG';


	Template.bHideClipSizeStat = true;

	Template.DamageTypeTemplateName = 'Projectile_Conventional';

	defaultproperties
	{
	bShouldCreateDifficultyVariants = true
	}
	
	return Template;
}
/////////////////////////////////////////////////////////////////////////////AR MG/////////////////////////////////////////////////////////////////////////////
static function X2DataTemplate CreateTemplate_GethSMG_MG()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_GethSMG_MG');
	Template.WeaponPanelImage = "_Pistol";                       

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sidearm';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///GethSMG_Assets.UI.UI_GethSMG_WP";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 2;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_MAGNETIC_RANGE;
	Template.BaseDamage = default.GETHSMG_MG_BASEDAMAGE;
	Template.Aim = default.GETHSMG_MG_AIM;
	Template.CritChance = default.GETHSMG_MG_CRITCHANCE;
	Template.iClipSize = default.GETHSMG_MG_ICLIPSIZE;
	Template.iSoundRange = default.GETHSMG_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.GETHSMG_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.GETHSMG_MG_IUPGRADESLOTS;
	
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
	Template.GameArchetype = "GethSMG_Assets.Archetypes.ARC_Weap_Geth_SMG";

	Template.iPhysicsImpulse = 5;
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;

	//Template.UpgradeItem = 'WP_GETHSMG_BM';
	Template.CreatorTemplateName = 'Pistol_MG_Schematic';
	Template.BaseItem = 'WP_GETHSMG';

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
static function X2DataTemplate CreateTemplate_GethSMG_BM()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_GethSMG_BM');

	Template.WeaponPanelImage = "_Pistol";     

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sidearm';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///GethSMG_Assets.UI.UI_GethSMG_WP";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 4;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_BEAM_RANGE;
	Template.BaseDamage = default.GETHSMG_BM_BASEDAMAGE;
	Template.Aim = default.GETHSMG_BM_AIM;
	Template.CritChance = default.GETHSMG_BM_CRITCHANCE;
	Template.iClipSize = default.GETHSMG_BM_ICLIPSIZE;
	Template.iSoundRange = default.GETHSMG_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.GETHSMG_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.GETHSMG_BM_IUPGRADESLOTS;
	
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
	Template.BaseItem = 'WP_GethSMG_MG';


	Template.GameArchetype = "GethSMG_Assets.Archetypes.ARC_Weap_Geth_SMG";
	
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
