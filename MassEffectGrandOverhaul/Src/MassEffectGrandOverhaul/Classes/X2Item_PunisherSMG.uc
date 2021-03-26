class X2Item_PunisherSMG extends X2Item config(PunisherSMG);

//Base damage
var config WeaponDamageValue PUNISHERSMG_BASEDAMAGE;
var config WeaponDamageValue PUNISHERSMG_MG_BASEDAMAGE;
var config WeaponDamageValue PUNISHERSMG_BM_BASEDAMAGE;

//Fields for each gun
var config int PUNISHERSMG_AIM;
var config int PUNISHERSMG_CRITCHANCE;
var config int PUNISHERSMG_ICLIPSIZE;
var config int PUNISHERSMG_ISOUNDRANGE;
var config int PUNISHERSMG_IENVIRONMENTDAMAGE;
var config int PUNISHERSMG_ISUPPLIES;
var config int PUNISHERSMG_TRADINGPOSTVALUE;
var config int PUNISHERSMG_IPOINTS;
var config int PUNISHERSMG_IUPGRADESLOTS;

var config int PUNISHERSMG_MG_AIM;
var config int PUNISHERSMG_MG_CRITCHANCE;
var config int PUNISHERSMG_MG_ICLIPSIZE;
var config int PUNISHERSMG_MG_ISOUNDRANGE;
var config int PUNISHERSMG_MG_IENVIRONMENTDAMAGE;
var config int PUNISHERSMG_MG_ISUPPLIES;
var config int PUNISHERSMG_MG_TRADINGPOSTVALUE;
var config int PUNISHERSMG_MG_IPOINTS;
var config int PUNISHERSMG_MG_IUPGRADESLOTS;

var config int PUNISHERSMG_BM_AIM;
var config int PUNISHERSMG_BM_CRITCHANCE;
var config int PUNISHERSMG_BM_ICLIPSIZE;
var config int PUNISHERSMG_BM_ISOUNDRANGE;
var config int PUNISHERSMG_BM_IENVIRONMENTDAMAGE;
var config int PUNISHERSMG_BM_ISUPPLIES;
var config int PUNISHERSMG_BM_TRADINGPOSTVALUE;
var config int PUNISHERSMG_BM_IPOINTS;
var config int PUNISHERSMG_BM_IUPGRADESLOTS;

//initialize templates
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> PunisherSMGWeaps;

	//Create Weapon Templates
	PunisherSMGWeaps.AddItem(CreateTemplate_PunisherSMG());
	PunisherSMGWeaps.AddItem(CreateTemplate_PunisherSMG_MG());
	PunisherSMGWeaps.AddItem(CreateTemplate_PunisherSMG_BM());
	

	return PunisherSMGWeaps;
}
/// AR Default
static function X2DataTemplate CreateTemplate_PunisherSMG()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_PunisherSMG');

	Template.WeaponPanelImage = "_Pistol";                      

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sidearm';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///PunisherSMG_Assets.UI.UI_PunisherSMG_WP";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 0;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_CONVENTIONAL_RANGE;
	Template.BaseDamage = default.PUNISHERSMG_BASEDAMAGE;
	Template.Aim = default.PUNISHERSMG_AIM;
	Template.CritChance = default.PUNISHERSMG_CRITCHANCE;
	Template.iClipSize = default.PUNISHERSMG_ICLIPSIZE;
	Template.iSoundRange = default.PUNISHERSMG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.PUNISHERSMG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.PUNISHERSMG_IUPGRADESLOTS;
	
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

	Template.GameArchetype = "PunisherSMG_Assets.Archetypes.ARC_Weap_Punisher_SMG";

	Template.bInfiniteItem = true;

	Template.iPhysicsImpulse = 5;
	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	//Template.UpgradeItem = 'WP_PUNISHERSMG_MG';


	Template.bHideClipSizeStat = true;

	Template.DamageTypeTemplateName = 'Projectile_Conventional';

	defaultproperties
	{
	bShouldCreateDifficultyVariants = true
	}
	
	return Template;
}
/////////////////////////////////////////////////////////////////////////////AR MG/////////////////////////////////////////////////////////////////////////////
static function X2DataTemplate CreateTemplate_PunisherSMG_MG()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_PunisherSMG_MG');
	Template.WeaponPanelImage = "_Pistol";                       

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sidearm';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///PunisherSMG_Assets.UI.UI_PunisherSMG_WP";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 2;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_MAGNETIC_RANGE;
	Template.BaseDamage = default.PUNISHERSMG_MG_BASEDAMAGE;
	Template.Aim = default.PUNISHERSMG_MG_AIM;
	Template.CritChance = default.PUNISHERSMG_MG_CRITCHANCE;
	Template.iClipSize = default.PUNISHERSMG_MG_ICLIPSIZE;
	Template.iSoundRange = default.PUNISHERSMG_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.PUNISHERSMG_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.PUNISHERSMG_MG_IUPGRADESLOTS;
	
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
	Template.GameArchetype = "PunisherSMG_Assets.Archetypes.ARC_Weap_Punisher_SMG";

	Template.iPhysicsImpulse = 5;
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;

	//Template.UpgradeItem = 'WP_PUNISHERSMG_BM';
	Template.CreatorTemplateName = 'Pistol_MG_Schematic';
	Template.BaseItem = 'WP_PUNISHERSMG';

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
static function X2DataTemplate CreateTemplate_PunisherSMG_BM()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_PunisherSMG_BM');

	Template.WeaponPanelImage = "_Pistol";     

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sidearm';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///PunisherSMG_Assets.UI.UI_PunisherSMG_WP";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 4;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_BEAM_RANGE;
	Template.BaseDamage = default.PUNISHERSMG_BM_BASEDAMAGE;
	Template.Aim = default.PUNISHERSMG_BM_AIM;
	Template.CritChance = default.PUNISHERSMG_BM_CRITCHANCE;
	Template.iClipSize = default.PUNISHERSMG_BM_ICLIPSIZE;
	Template.iSoundRange = default.PUNISHERSMG_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.PUNISHERSMG_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.PUNISHERSMG_BM_IUPGRADESLOTS;
	
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
	Template.BaseItem = 'WP_PunisherSMG_MG';


	Template.GameArchetype = "PunisherSMG_Assets.Archetypes.ARC_Weap_Punisher_SMG";
	
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
