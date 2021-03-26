class X2Item_AcolytePistol extends X2Item config(AcolytePistol);

//Base damage
var config WeaponDamageValue ACOLYTEPISTOL_BASEDAMAGE;
var config WeaponDamageValue ACOLYTEPISTOL_MG_BASEDAMAGE;
var config WeaponDamageValue ACOLYTEPISTOL_BM_BASEDAMAGE;

//Fields for each gun
var config int ACOLYTEPISTOL_AIM;
var config int ACOLYTEPISTOL_CRITCHANCE;
var config int ACOLYTEPISTOL_ICLIPSIZE;
var config int ACOLYTEPISTOL_ISOUNDRANGE;
var config int ACOLYTEPISTOL_IENVIRONMENTDAMAGE;
var config int ACOLYTEPISTOL_ISUPPLIES;
var config int ACOLYTEPISTOL_TRADINGPOSTVALUE;
var config int ACOLYTEPISTOL_IPOINTS;
var config int ACOLYTEPISTOL_IUPGRADESLOTS;

var config int ACOLYTEPISTOL_MG_AIM;
var config int ACOLYTEPISTOL_MG_CRITCHANCE;
var config int ACOLYTEPISTOL_MG_ICLIPSIZE;
var config int ACOLYTEPISTOL_MG_ISOUNDRANGE;
var config int ACOLYTEPISTOL_MG_IENVIRONMENTDAMAGE;
var config int ACOLYTEPISTOL_MG_ISUPPLIES;
var config int ACOLYTEPISTOL_MG_TRADINGPOSTVALUE;
var config int ACOLYTEPISTOL_MG_IPOINTS;
var config int ACOLYTEPISTOL_MG_IUPGRADESLOTS;

var config int ACOLYTEPISTOL_BM_AIM;
var config int ACOLYTEPISTOL_BM_CRITCHANCE;
var config int ACOLYTEPISTOL_BM_ICLIPSIZE;
var config int ACOLYTEPISTOL_BM_ISOUNDRANGE;
var config int ACOLYTEPISTOL_BM_IENVIRONMENTDAMAGE;
var config int ACOLYTEPISTOL_BM_ISUPPLIES;
var config int ACOLYTEPISTOL_BM_TRADINGPOSTVALUE;
var config int ACOLYTEPISTOL_BM_IPOINTS;
var config int ACOLYTEPISTOL_BM_IUPGRADESLOTS;

//initialize templates
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> AcolytePistolWeaps;

	//Create Weapon Templates
	AcolytePistolWeaps.AddItem(CreateTemplate_AcolytePistol());
	AcolytePistolWeaps.AddItem(CreateTemplate_AcolytePistol_MG());
	AcolytePistolWeaps.AddItem(CreateTemplate_AcolytePistol_BM());
	

	return AcolytePistolWeaps;
}
/// AR Default
static function X2DataTemplate CreateTemplate_AcolytePistol()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_AcolytePistol');

	Template.WeaponPanelImage = "_Pistol";                      

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'pistol';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///AcolytePistol_Assets.UI.UI_AcolytePistol_WP";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 0;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_CONVENTIONAL_RANGE;
	Template.BaseDamage = default.ACOLYTEPISTOL_BASEDAMAGE;
	Template.Aim = default.ACOLYTEPISTOL_AIM;
	Template.CritChance = default.ACOLYTEPISTOL_CRITCHANCE;
	Template.iClipSize = default.ACOLYTEPISTOL_ICLIPSIZE;
	Template.iSoundRange = default.ACOLYTEPISTOL_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.ACOLYTEPISTOL_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.ACOLYTEPISTOL_IUPGRADESLOTS;
	
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

	Template.GameArchetype = "AcolytePistol_Assets.Archetypes.ARC_Weap_Acolyte_Pistol";

	Template.bInfiniteItem = true;

	Template.iPhysicsImpulse = 5;
	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	//Template.UpgradeItem = 'WP_ACOLYTEPISTOL_MG';


	Template.bHideClipSizeStat = true;

	Template.DamageTypeTemplateName = 'Projectile_Conventional';

	defaultproperties
	{
	bShouldCreateDifficultyVariants = true
	}
	
	return Template;
}
/////////////////////////////////////////////////////////////////////////////AR MG/////////////////////////////////////////////////////////////////////////////
static function X2DataTemplate CreateTemplate_AcolytePistol_MG()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_AcolytePistol_MG');
	Template.WeaponPanelImage = "_Pistol";                       

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'pistol';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///AcolytePistol_Assets.UI.UI_AcolytePistol_WP";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 2;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_MAGNETIC_RANGE;
	Template.BaseDamage = default.ACOLYTEPISTOL_MG_BASEDAMAGE;
	Template.Aim = default.ACOLYTEPISTOL_MG_AIM;
	Template.CritChance = default.ACOLYTEPISTOL_MG_CRITCHANCE;
	Template.iClipSize = default.ACOLYTEPISTOL_MG_ICLIPSIZE;
	Template.iSoundRange = default.ACOLYTEPISTOL_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.ACOLYTEPISTOL_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.ACOLYTEPISTOL_MG_IUPGRADESLOTS;
	
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
	Template.GameArchetype = "AcolytePistol_Assets.Archetypes.ARC_Weap_Acolyte_Pistol";

	Template.iPhysicsImpulse = 5;
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;

	//Template.UpgradeItem = 'WP_ACOLYTEPISTOL_BM';
	Template.CreatorTemplateName = 'Pistol_MG_Schematic';
	Template.BaseItem = 'WP_ACOLYTEPISTOL';

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
static function X2DataTemplate CreateTemplate_AcolytePistol_BM()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_AcolytePistol_BM');

	Template.WeaponPanelImage = "_Pistol";     

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'pistol';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///AcolytePistol_Assets.UI.UI_AcolytePistol_WP";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 4;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_BEAM_RANGE;
	Template.BaseDamage = default.ACOLYTEPISTOL_BM_BASEDAMAGE;
	Template.Aim = default.ACOLYTEPISTOL_BM_AIM;
	Template.CritChance = default.ACOLYTEPISTOL_BM_CRITCHANCE;
	Template.iClipSize = default.ACOLYTEPISTOL_BM_ICLIPSIZE;
	Template.iSoundRange = default.ACOLYTEPISTOL_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.ACOLYTEPISTOL_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.ACOLYTEPISTOL_BM_IUPGRADESLOTS;
	
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
	Template.BaseItem = 'WP_AcolytePistol_MG';


	Template.GameArchetype = "AcolytePistol_Assets.Archetypes.ARC_Weap_Acolyte_Pistol";
	
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
