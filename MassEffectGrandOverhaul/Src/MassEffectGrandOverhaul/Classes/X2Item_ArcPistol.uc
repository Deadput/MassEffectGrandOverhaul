class X2Item_ArcPistol extends X2Item config(ArcPistol);

//Base damage
var config WeaponDamageValue ARCPISTOL_BASEDAMAGE;
var config WeaponDamageValue ARCPISTOL_MG_BASEDAMAGE;
var config WeaponDamageValue ARCPISTOL_BM_BASEDAMAGE;

//Fields for each gun
var config int ARCPISTOL_AIM;
var config int ARCPISTOL_CRITCHANCE;
var config int ARCPISTOL_ICLIPSIZE;
var config int ARCPISTOL_ISOUNDRANGE;
var config int ARCPISTOL_IENVIRONMENTDAMAGE;
var config int ARCPISTOL_ISUPPLIES;
var config int ARCPISTOL_TRADINGPOSTVALUE;
var config int ARCPISTOL_IPOINTS;
var config int ARCPISTOL_IUPGRADESLOTS;

var config int ARCPISTOL_MG_AIM;
var config int ARCPISTOL_MG_CRITCHANCE;
var config int ARCPISTOL_MG_ICLIPSIZE;
var config int ARCPISTOL_MG_ISOUNDRANGE;
var config int ARCPISTOL_MG_IENVIRONMENTDAMAGE;
var config int ARCPISTOL_MG_ISUPPLIES;
var config int ARCPISTOL_MG_TRADINGPOSTVALUE;
var config int ARCPISTOL_MG_IPOINTS;
var config int ARCPISTOL_MG_IUPGRADESLOTS;

var config int ARCPISTOL_BM_AIM;
var config int ARCPISTOL_BM_CRITCHANCE;
var config int ARCPISTOL_BM_ICLIPSIZE;
var config int ARCPISTOL_BM_ISOUNDRANGE;
var config int ARCPISTOL_BM_IENVIRONMENTDAMAGE;
var config int ARCPISTOL_BM_ISUPPLIES;
var config int ARCPISTOL_BM_TRADINGPOSTVALUE;
var config int ARCPISTOL_BM_IPOINTS;
var config int ARCPISTOL_BM_IUPGRADESLOTS;

//initialize templates
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> ArcPistolWeaps;

	//Create Weapon Templates
	ArcPistolWeaps.AddItem(CreateTemplate_ArcPistol());
	ArcPistolWeaps.AddItem(CreateTemplate_ArcPistol_MG());
	ArcPistolWeaps.AddItem(CreateTemplate_ArcPistol_BM());
	

	return ArcPistolWeaps;
}
/// AR Default
static function X2DataTemplate CreateTemplate_ArcPistol()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_ArcPistol');

	Template.WeaponPanelImage = "_Pistol";                      

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'pistol';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///ArcPistol_Assets.UI.UI_ArcPistol_WP";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 0;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_CONVENTIONAL_RANGE;
	Template.BaseDamage = default.ARCPISTOL_BASEDAMAGE;
	Template.Aim = default.ARCPISTOL_AIM;
	Template.CritChance = default.ARCPISTOL_CRITCHANCE;
	Template.iClipSize = default.ARCPISTOL_ICLIPSIZE;
	Template.iSoundRange = default.ARCPISTOL_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.ARCPISTOL_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.ARCPISTOL_IUPGRADESLOTS;
	
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

	Template.GameArchetype = "ArcPistol_Assets.Archetypes.ARC_Weap_Arc_Pistol";

	Template.bInfiniteItem = true;

	Template.iPhysicsImpulse = 5;
	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	//Template.UpgradeItem = 'WP_ARCPISTOL_MG';


	Template.bHideClipSizeStat = true;

	Template.DamageTypeTemplateName = 'Projectile_Conventional';

	defaultproperties
	{
	bShouldCreateDifficultyVariants = true
	}
	
	return Template;
}
/////////////////////////////////////////////////////////////////////////////AR MG/////////////////////////////////////////////////////////////////////////////
static function X2DataTemplate CreateTemplate_ArcPistol_MG()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_ArcPistol_MG');
	Template.WeaponPanelImage = "_Pistol";                       

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'pistol';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///ArcPistol_Assets.UI.UI_ArcPistol_WP";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 2;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_MAGNETIC_RANGE;
	Template.BaseDamage = default.ARCPISTOL_MG_BASEDAMAGE;
	Template.Aim = default.ARCPISTOL_MG_AIM;
	Template.CritChance = default.ARCPISTOL_MG_CRITCHANCE;
	Template.iClipSize = default.ARCPISTOL_MG_ICLIPSIZE;
	Template.iSoundRange = default.ARCPISTOL_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.ARCPISTOL_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.ARCPISTOL_MG_IUPGRADESLOTS;
	
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
	Template.GameArchetype = "ArcPistol_Assets.Archetypes.ARC_Weap_Arc_Pistol";

	Template.iPhysicsImpulse = 5;
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;

	//Template.UpgradeItem = 'WP_ARCPISTOL_BM';
	Template.CreatorTemplateName = 'Pistol_MG_Schematic';
	Template.BaseItem = 'WP_ARCPISTOL';

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
static function X2DataTemplate CreateTemplate_ArcPistol_BM()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_ArcPistol_BM');

	Template.WeaponPanelImage = "_Pistol";     

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'pistol';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///ArcPistol_Assets.UI.UI_ArcPistol_WP";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 4;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_BEAM_RANGE;
	Template.BaseDamage = default.ARCPISTOL_BM_BASEDAMAGE;
	Template.Aim = default.ARCPISTOL_BM_AIM;
	Template.CritChance = default.ARCPISTOL_BM_CRITCHANCE;
	Template.iClipSize = default.ARCPISTOL_BM_ICLIPSIZE;
	Template.iSoundRange = default.ARCPISTOL_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.ARCPISTOL_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.ARCPISTOL_BM_IUPGRADESLOTS;
	
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
	Template.BaseItem = 'WP_ArcPistol_MG';


	Template.GameArchetype = "ArcPistol_Assets.Archetypes.ARC_Weap_Arc_Pistol";
	
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
