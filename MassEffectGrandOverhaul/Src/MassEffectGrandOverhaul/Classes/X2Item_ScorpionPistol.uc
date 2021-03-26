class X2Item_ScorpionPistol extends X2Item config(ScorpionPistol);

//Base damage
var config WeaponDamageValue SCORPIONPISTOL_BASEDAMAGE;
var config WeaponDamageValue SCORPIONPISTOL_MG_BASEDAMAGE;
var config WeaponDamageValue SCORPIONPISTOL_BM_BASEDAMAGE;

//Fields for each gun
var config int SCORPIONPISTOL_AIM;
var config int SCORPIONPISTOL_CRITCHANCE;
var config int SCORPIONPISTOL_ICLIPSIZE;
var config int SCORPIONPISTOL_ISOUNDRANGE;
var config int SCORPIONPISTOL_IENVIRONMENTDAMAGE;
var config int SCORPIONPISTOL_ISUPPLIES;
var config int SCORPIONPISTOL_TRADINGPOSTVALUE;
var config int SCORPIONPISTOL_IPOINTS;
var config int SCORPIONPISTOL_IUPGRADESLOTS;

var config int SCORPIONPISTOL_MG_AIM;
var config int SCORPIONPISTOL_MG_CRITCHANCE;
var config int SCORPIONPISTOL_MG_ICLIPSIZE;
var config int SCORPIONPISTOL_MG_ISOUNDRANGE;
var config int SCORPIONPISTOL_MG_IENVIRONMENTDAMAGE;
var config int SCORPIONPISTOL_MG_ISUPPLIES;
var config int SCORPIONPISTOL_MG_TRADINGPOSTVALUE;
var config int SCORPIONPISTOL_MG_IPOINTS;
var config int SCORPIONPISTOL_MG_IUPGRADESLOTS;

var config int SCORPIONPISTOL_BM_AIM;
var config int SCORPIONPISTOL_BM_CRITCHANCE;
var config int SCORPIONPISTOL_BM_ICLIPSIZE;
var config int SCORPIONPISTOL_BM_ISOUNDRANGE;
var config int SCORPIONPISTOL_BM_IENVIRONMENTDAMAGE;
var config int SCORPIONPISTOL_BM_ISUPPLIES;
var config int SCORPIONPISTOL_BM_TRADINGPOSTVALUE;
var config int SCORPIONPISTOL_BM_IPOINTS;
var config int SCORPIONPISTOL_BM_IUPGRADESLOTS;

//initialize templates
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> ScorpionPistolWeaps;

	//Create Weapon Templates
	ScorpionPistolWeaps.AddItem(CreateTemplate_ScorpionPistol());
	ScorpionPistolWeaps.AddItem(CreateTemplate_ScorpionPistol_MG());
	ScorpionPistolWeaps.AddItem(CreateTemplate_ScorpionPistol_BM());
	

	return ScorpionPistolWeaps;
}
/// AR Default
static function X2DataTemplate CreateTemplate_ScorpionPistol()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_ScorpionPistol');

	Template.WeaponPanelImage = "_Pistol";                      

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'pistol';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///ScorpionPistol_Assets.UI.UI_ScorpionPistol_WP";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 0;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_CONVENTIONAL_RANGE;
	Template.BaseDamage = default.SCORPIONPISTOL_BASEDAMAGE;
	Template.Aim = default.SCORPIONPISTOL_AIM;
	Template.CritChance = default.SCORPIONPISTOL_CRITCHANCE;
	Template.iClipSize = default.SCORPIONPISTOL_ICLIPSIZE;
	Template.iSoundRange = default.SCORPIONPISTOL_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.SCORPIONPISTOL_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.SCORPIONPISTOL_IUPGRADESLOTS;
	
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

	Template.GameArchetype = "ScorpionPistol_Assets.Archetypes.ARC_Weap_Scorpion_Pistol";

	Template.bInfiniteItem = true;

	Template.iPhysicsImpulse = 5;
	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	//Template.UpgradeItem = 'WP_SCORPIONPISTOL_MG';


	Template.bHideClipSizeStat = true;

	Template.DamageTypeTemplateName = 'Projectile_Conventional';

	defaultproperties
	{
	bShouldCreateDifficultyVariants = true
	}
	
	return Template;
}
/////////////////////////////////////////////////////////////////////////////AR MG/////////////////////////////////////////////////////////////////////////////
static function X2DataTemplate CreateTemplate_ScorpionPistol_MG()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_ScorpionPistol_MG');
	Template.WeaponPanelImage = "_Pistol";                       

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'pistol';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///ScorpionPistol_Assets.UI.UI_ScorpionPistol_WP";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 2;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_MAGNETIC_RANGE;
	Template.BaseDamage = default.SCORPIONPISTOL_MG_BASEDAMAGE;
	Template.Aim = default.SCORPIONPISTOL_MG_AIM;
	Template.CritChance = default.SCORPIONPISTOL_MG_CRITCHANCE;
	Template.iClipSize = default.SCORPIONPISTOL_MG_ICLIPSIZE;
	Template.iSoundRange = default.SCORPIONPISTOL_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.SCORPIONPISTOL_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.SCORPIONPISTOL_MG_IUPGRADESLOTS;
	
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
	Template.GameArchetype = "ScorpionPistol_Assets.Archetypes.ARC_Weap_Scorpion_Pistol";

	Template.iPhysicsImpulse = 5;
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;

	//Template.UpgradeItem = 'WP_SCORPIONPISTOL_BM';
	Template.CreatorTemplateName = 'Pistol_MG_Schematic';
	Template.BaseItem = 'WP_SCORPIONPISTOL';

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
static function X2DataTemplate CreateTemplate_ScorpionPistol_BM()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_ScorpionPistol_BM');

	Template.WeaponPanelImage = "_Pistol";     

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'pistol';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///ScorpionPistol_Assets.UI.UI_ScorpionPistol_WP";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 4;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_BEAM_RANGE;
	Template.BaseDamage = default.SCORPIONPISTOL_BM_BASEDAMAGE;
	Template.Aim = default.SCORPIONPISTOL_BM_AIM;
	Template.CritChance = default.SCORPIONPISTOL_BM_CRITCHANCE;
	Template.iClipSize = default.SCORPIONPISTOL_BM_ICLIPSIZE;
	Template.iSoundRange = default.SCORPIONPISTOL_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.SCORPIONPISTOL_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.SCORPIONPISTOL_BM_IUPGRADESLOTS;
	
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
	Template.BaseItem = 'WP_ScorpionPistol_MG';


	Template.GameArchetype = "ScorpionPistol_Assets.Archetypes.ARC_Weap_Scorpion_Pistol";
	
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
