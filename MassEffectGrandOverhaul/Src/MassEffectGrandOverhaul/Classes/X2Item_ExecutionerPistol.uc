class X2Item_ExecutionerPistol extends X2Item config(ExecutionerPistol);

//Base damage
var config WeaponDamageValue EXECUTIONERPISTOL_BASEDAMAGE;
var config WeaponDamageValue EXECUTIONERPISTOL_MG_BASEDAMAGE;
var config WeaponDamageValue EXECUTIONERPISTOL_BM_BASEDAMAGE;

//Fields for each gun
var config int EXECUTIONERPISTOL_AIM;
var config int EXECUTIONERPISTOL_CRITCHANCE;
var config int EXECUTIONERPISTOL_ICLIPSIZE;
var config int EXECUTIONERPISTOL_ISOUNDRANGE;
var config int EXECUTIONERPISTOL_IENVIRONMENTDAMAGE;
var config int EXECUTIONERPISTOL_ISUPPLIES;
var config int EXECUTIONERPISTOL_TRADINGPOSTVALUE;
var config int EXECUTIONERPISTOL_IPOINTS;
var config int EXECUTIONERPISTOL_IUPGRADESLOTS;

var config int EXECUTIONERPISTOL_MG_AIM;
var config int EXECUTIONERPISTOL_MG_CRITCHANCE;
var config int EXECUTIONERPISTOL_MG_ICLIPSIZE;
var config int EXECUTIONERPISTOL_MG_ISOUNDRANGE;
var config int EXECUTIONERPISTOL_MG_IENVIRONMENTDAMAGE;
var config int EXECUTIONERPISTOL_MG_ISUPPLIES;
var config int EXECUTIONERPISTOL_MG_TRADINGPOSTVALUE;
var config int EXECUTIONERPISTOL_MG_IPOINTS;
var config int EXECUTIONERPISTOL_MG_IUPGRADESLOTS;

var config int EXECUTIONERPISTOL_BM_AIM;
var config int EXECUTIONERPISTOL_BM_CRITCHANCE;
var config int EXECUTIONERPISTOL_BM_ICLIPSIZE;
var config int EXECUTIONERPISTOL_BM_ISOUNDRANGE;
var config int EXECUTIONERPISTOL_BM_IENVIRONMENTDAMAGE;
var config int EXECUTIONERPISTOL_BM_ISUPPLIES;
var config int EXECUTIONERPISTOL_BM_TRADINGPOSTVALUE;
var config int EXECUTIONERPISTOL_BM_IPOINTS;
var config int EXECUTIONERPISTOL_BM_IUPGRADESLOTS;

//initialize templates
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> ExecutionerPistolWeaps;

	//Create Weapon Templates
	ExecutionerPistolWeaps.AddItem(CreateTemplate_ExecutionerPistol());
	ExecutionerPistolWeaps.AddItem(CreateTemplate_ExecutionerPistol_MG());
	ExecutionerPistolWeaps.AddItem(CreateTemplate_ExecutionerPistol_BM());
	

	return ExecutionerPistolWeaps;
}
/// AR Default
static function X2DataTemplate CreateTemplate_ExecutionerPistol()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_ExecutionerPistol');

	Template.WeaponPanelImage = "_Pistol";                      

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'pistol';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///ExecutionerPistol_Assets.UI.UI_ExecutionerPistol_WP";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 0;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_CONVENTIONAL_RANGE;
	Template.BaseDamage = default.EXECUTIONERPISTOL_BASEDAMAGE;
	Template.Aim = default.EXECUTIONERPISTOL_AIM;
	Template.CritChance = default.EXECUTIONERPISTOL_CRITCHANCE;
	Template.iClipSize = default.EXECUTIONERPISTOL_ICLIPSIZE;
	Template.iSoundRange = default.EXECUTIONERPISTOL_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.EXECUTIONERPISTOL_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.EXECUTIONERPISTOL_IUPGRADESLOTS;
	
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

	Template.GameArchetype = "ExecutionerPistol_Assets.Archetypes.ARC_Weap_Executioner_Pistol";

	Template.bInfiniteItem = true;

	Template.iPhysicsImpulse = 5;
	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	//Template.UpgradeItem = 'WP_EXECUTIONERPISTOL_MG';


	Template.bHideClipSizeStat = true;

	Template.DamageTypeTemplateName = 'Projectile_Conventional';

	defaultproperties
	{
	bShouldCreateDifficultyVariants = true
	}
	
	return Template;
}
/////////////////////////////////////////////////////////////////////////////AR MG/////////////////////////////////////////////////////////////////////////////
static function X2DataTemplate CreateTemplate_ExecutionerPistol_MG()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_ExecutionerPistol_MG');
	Template.WeaponPanelImage = "_Pistol";                       

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'pistol';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///ExecutionerPistol_Assets.UI.UI_ExecutionerPistol_WP";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 2;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_MAGNETIC_RANGE;
	Template.BaseDamage = default.EXECUTIONERPISTOL_MG_BASEDAMAGE;
	Template.Aim = default.EXECUTIONERPISTOL_MG_AIM;
	Template.CritChance = default.EXECUTIONERPISTOL_MG_CRITCHANCE;
	Template.iClipSize = default.EXECUTIONERPISTOL_MG_ICLIPSIZE;
	Template.iSoundRange = default.EXECUTIONERPISTOL_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.EXECUTIONERPISTOL_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.EXECUTIONERPISTOL_MG_IUPGRADESLOTS;
	
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
	Template.GameArchetype = "ExecutionerPistol_Assets.Archetypes.ARC_Weap_Executioner_Pistol";

	Template.iPhysicsImpulse = 5;
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;

	//Template.UpgradeItem = 'WP_EXECUTIONERPISTOL_BM';
	Template.CreatorTemplateName = 'Pistol_MG_Schematic';
	Template.BaseItem = 'WP_EXECUTIONERPISTOL';

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
static function X2DataTemplate CreateTemplate_ExecutionerPistol_BM()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_ExecutionerPistol_BM');

	Template.WeaponPanelImage = "_Pistol";     

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'pistol';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///ExecutionerPistol_Assets.UI.UI_ExecutionerPistol_WP";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 4;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_BEAM_RANGE;
	Template.BaseDamage = default.EXECUTIONERPISTOL_BM_BASEDAMAGE;
	Template.Aim = default.EXECUTIONERPISTOL_BM_AIM;
	Template.CritChance = default.EXECUTIONERPISTOL_BM_CRITCHANCE;
	Template.iClipSize = default.EXECUTIONERPISTOL_BM_ICLIPSIZE;
	Template.iSoundRange = default.EXECUTIONERPISTOL_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.EXECUTIONERPISTOL_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.EXECUTIONERPISTOL_BM_IUPGRADESLOTS;
	
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
	Template.BaseItem = 'WP_ExecutionerPistol_MG';


	Template.GameArchetype = "ExecutionerPistol_Assets.Archetypes.ARC_Weap_Executioner_Pistol";
	
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
