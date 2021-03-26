class X2Item_CarnifexPistol extends X2Item config(CarnifexPistol);

//Base damage
var config WeaponDamageValue CARNIFEXPISTOL_BASEDAMAGE;
var config WeaponDamageValue CARNIFEXPISTOL_MG_BASEDAMAGE;
var config WeaponDamageValue CARNIFEXPISTOL_BM_BASEDAMAGE;

//Fields for each gun
var config int CARNIFEXPISTOL_AIM;
var config int CARNIFEXPISTOL_CRITCHANCE;
var config int CARNIFEXPISTOL_ICLIPSIZE;
var config int CARNIFEXPISTOL_ISOUNDRANGE;
var config int CARNIFEXPISTOL_IENVIRONMENTDAMAGE;
var config int CARNIFEXPISTOL_ISUPPLIES;
var config int CARNIFEXPISTOL_TRADINGPOSTVALUE;
var config int CARNIFEXPISTOL_IPOINTS;
var config int CARNIFEXPISTOL_IUPGRADESLOTS;

var config int CARNIFEXPISTOL_MG_AIM;
var config int CARNIFEXPISTOL_MG_CRITCHANCE;
var config int CARNIFEXPISTOL_MG_ICLIPSIZE;
var config int CARNIFEXPISTOL_MG_ISOUNDRANGE;
var config int CARNIFEXPISTOL_MG_IENVIRONMENTDAMAGE;
var config int CARNIFEXPISTOL_MG_ISUPPLIES;
var config int CARNIFEXPISTOL_MG_TRADINGPOSTVALUE;
var config int CARNIFEXPISTOL_MG_IPOINTS;
var config int CARNIFEXPISTOL_MG_IUPGRADESLOTS;

var config int CARNIFEXPISTOL_BM_AIM;
var config int CARNIFEXPISTOL_BM_CRITCHANCE;
var config int CARNIFEXPISTOL_BM_ICLIPSIZE;
var config int CARNIFEXPISTOL_BM_ISOUNDRANGE;
var config int CARNIFEXPISTOL_BM_IENVIRONMENTDAMAGE;
var config int CARNIFEXPISTOL_BM_ISUPPLIES;
var config int CARNIFEXPISTOL_BM_TRADINGPOSTVALUE;
var config int CARNIFEXPISTOL_BM_IPOINTS;
var config int CARNIFEXPISTOL_BM_IUPGRADESLOTS;

//initialize templates
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> CarnifexPistolWeaps;

	//Create Weapon Templates
	CarnifexPistolWeaps.AddItem(CreateTemplate_CarnifexPistol());
	CarnifexPistolWeaps.AddItem(CreateTemplate_CarnifexPistol_MG());
	CarnifexPistolWeaps.AddItem(CreateTemplate_CarnifexPistol_BM());
	

	return CarnifexPistolWeaps;
}
/// AR Default
static function X2DataTemplate CreateTemplate_CarnifexPistol()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_CarnifexPistol');

	Template.WeaponPanelImage = "_Pistol";                      

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'pistol';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///CarnifexPistol_Assets.UI.UI_CarnifexPistol_WP";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 0;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_CONVENTIONAL_RANGE;
	Template.BaseDamage = default.CARNIFEXPISTOL_BASEDAMAGE;
	Template.Aim = default.CARNIFEXPISTOL_AIM;
	Template.CritChance = default.CARNIFEXPISTOL_CRITCHANCE;
	Template.iClipSize = default.CARNIFEXPISTOL_ICLIPSIZE;
	Template.iSoundRange = default.CARNIFEXPISTOL_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.CARNIFEXPISTOL_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.CARNIFEXPISTOL_IUPGRADESLOTS;
	
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

	Template.GameArchetype = "CarnifexPistol_Assets.Archetypes.ARC_Weap_Carnifex_Pistol";

	Template.bInfiniteItem = true;

	Template.iPhysicsImpulse = 5;
	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	//Template.UpgradeItem = 'WP_CARNIFEXPISTOL_MG';


	Template.bHideClipSizeStat = true;

	Template.DamageTypeTemplateName = 'Projectile_Conventional';

	defaultproperties
	{
	bShouldCreateDifficultyVariants = true
	}
	
	return Template;
}
/////////////////////////////////////////////////////////////////////////////AR MG/////////////////////////////////////////////////////////////////////////////
static function X2DataTemplate CreateTemplate_CarnifexPistol_MG()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_CarnifexPistol_MG');
	Template.WeaponPanelImage = "_Pistol";                       

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'pistol';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///CarnifexPistol_Assets.UI.UI_CarnifexPistol_WP";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 2;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_MAGNETIC_RANGE;
	Template.BaseDamage = default.CARNIFEXPISTOL_MG_BASEDAMAGE;
	Template.Aim = default.CARNIFEXPISTOL_MG_AIM;
	Template.CritChance = default.CARNIFEXPISTOL_MG_CRITCHANCE;
	Template.iClipSize = default.CARNIFEXPISTOL_MG_ICLIPSIZE;
	Template.iSoundRange = default.CARNIFEXPISTOL_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.CARNIFEXPISTOL_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.CARNIFEXPISTOL_MG_IUPGRADESLOTS;
	
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
	Template.GameArchetype = "CarnifexPistol_Assets.Archetypes.ARC_Weap_Carnifex_Pistol";

	Template.iPhysicsImpulse = 5;
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;

	//Template.UpgradeItem = 'WP_CARNIFEXPISTOL_BM';
	Template.CreatorTemplateName = 'Pistol_MG_Schematic';
	Template.BaseItem = 'WP_CARNIFEXPISTOL';

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
static function X2DataTemplate CreateTemplate_CarnifexPistol_BM()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_CarnifexPistol_BM');

	Template.WeaponPanelImage = "_Pistol";     

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'pistol';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///CarnifexPistol_Assets.UI.UI_CarnifexPistol_WP";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 4;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_BEAM_RANGE;
	Template.BaseDamage = default.CARNIFEXPISTOL_BM_BASEDAMAGE;
	Template.Aim = default.CARNIFEXPISTOL_BM_AIM;
	Template.CritChance = default.CARNIFEXPISTOL_BM_CRITCHANCE;
	Template.iClipSize = default.CARNIFEXPISTOL_BM_ICLIPSIZE;
	Template.iSoundRange = default.CARNIFEXPISTOL_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.CARNIFEXPISTOL_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.CARNIFEXPISTOL_BM_IUPGRADESLOTS;
	
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
	Template.BaseItem = 'WP_CarnifexPistol_MG';


	Template.GameArchetype = "CarnifexPistol_Assets.Archetypes.ARC_Weap_Carnifex_Pistol";
	
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
