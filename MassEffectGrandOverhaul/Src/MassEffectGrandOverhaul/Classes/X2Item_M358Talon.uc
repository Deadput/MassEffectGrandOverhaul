class X2Item_M358Talon extends X2Item config(M358Talon);

//Base damage
var config WeaponDamageValue M358TALON_BASEDAMAGE;
var config WeaponDamageValue M358TALON_MG_BASEDAMAGE;
var config WeaponDamageValue M358TALON_BM_BASEDAMAGE;

//Fields for each gun
var config int M358TALON_AIM;
var config int M358TALON_CRITCHANCE;
var config int M358TALON_ICLIPSIZE;
var config int M358TALON_ISOUNDRANGE;
var config int M358TALON_IENVIRONMENTDAMAGE;
var config int M358TALON_ISUPPLIES;
var config int M358TALON_TRADINGPOSTVALUE;
var config int M358TALON_IPOINTS;
var config int M358TALON_IUPGRADESLOTS;

var config int M358TALON_MG_AIM;
var config int M358TALON_MG_CRITCHANCE;
var config int M358TALON_MG_ICLIPSIZE;
var config int M358TALON_MG_ISOUNDRANGE;
var config int M358TALON_MG_IENVIRONMENTDAMAGE;
var config int M358TALON_MG_ISUPPLIES;
var config int M358TALON_MG_TRADINGPOSTVALUE;
var config int M358TALON_MG_IPOINTS;
var config int M358TALON_MG_IUPGRADESLOTS;

var config int M358TALON_BM_AIM;
var config int M358TALON_BM_CRITCHANCE;
var config int M358TALON_BM_ICLIPSIZE;
var config int M358TALON_BM_ISOUNDRANGE;
var config int M358TALON_BM_IENVIRONMENTDAMAGE;
var config int M358TALON_BM_ISUPPLIES;
var config int M358TALON_BM_TRADINGPOSTVALUE;
var config int M358TALON_BM_IPOINTS;
var config int M358TALON_BM_IUPGRADESLOTS;

//initialize templates
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> CreateM358Talon;

	//Create Weapon Templates
	CreateM358Talon.AddItem(CreateTemplate_M358Talon());
	CreateM358Talon.AddItem(CreateTemplate_M358Talon_MG());
	CreateM358Talon.AddItem(CreateTemplate_M358Talon_BM());
	

	return CreateM358Talon;
}
/// AR Default
static function X2DataTemplate CreateTemplate_M358Talon()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_M358Talon');

	Template.WeaponPanelImage = "_Pistol";                      

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'pistol';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///M358Talon_Assets.Inv_M358TalonBlue";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 0;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_CONVENTIONAL_RANGE;
	Template.BaseDamage = default.M358TALON_BASEDAMAGE;
	Template.Aim = default.M358TALON_AIM;
	Template.CritChance = default.M358TALON_CRITCHANCE;
	Template.iClipSize = default.M358TALON_ICLIPSIZE;
	Template.iSoundRange = default.M358TALON_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.M358TALON_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.M358TALON_IUPGRADESLOTS;
	
	Template.InfiniteAmmo = true;
	Template.OverwatchActionPoint = class'X2CharacterTemplateManager'.default.PistolOverwatchReserveActionPoint;

	Template.InventorySlot = eInvSlot_SecondaryWeapon;
	Template.Abilities.AddItem('PistolStandardShot');
	Template.Abilities.AddItem('PistolOverwatch');
	Template.Abilities.AddItem('PistolOverwatchShot');
	Template.Abilities.AddItem('PistolReturnFire');
	Template.Abilities.AddItem('HotLoadAmmo');
	Template.Abilities.AddItem('Reload');

	Template.SetAnimationNameForAbility('FanFire', 'FF_FireMultiShotConvA');	

	Template.GameArchetype = "M358Talon_Assets.ARC_M358TalonBlue";

	Template.bInfiniteItem = true;

	Template.iPhysicsImpulse = 5;
	Template.StartingItem = true;
	Template.CanBeBuilt = false;

	Template.bHideClipSizeStat = true;

	Template.DamageTypeTemplateName = 'Projectile_Conventional';

	defaultproperties
	{
	bShouldCreateDifficultyVariants = true
	}
	
	return Template;
}
/////////////////////////////////////////////////////////////////////////////AR MG/////////////////////////////////////////////////////////////////////////////
static function X2DataTemplate CreateTemplate_M358Talon_MG()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_M358Talon_MG');
	Template.WeaponPanelImage = "_Pistol";                       

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'pistol';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///M358Talon_Assets.Inv_M358TalonBlue";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 2;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_MAGNETIC_RANGE;
	Template.BaseDamage = default.M358TALON_MG_BASEDAMAGE;
	Template.Aim = default.M358TALON_MG_AIM;
	Template.CritChance = default.M358TALON_MG_CRITCHANCE;
	Template.iClipSize = default.M358TALON_MG_ICLIPSIZE;
	Template.iSoundRange = default.M358TALON_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.M358TALON_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.M358TALON_MG_IUPGRADESLOTS;
	
	Template.OverwatchActionPoint = class'X2CharacterTemplateManager'.default.PistolOverwatchReserveActionPoint;
	Template.InfiniteAmmo = true;
	
	Template.InventorySlot = eInvSlot_SecondaryWeapon;
	Template.Abilities.AddItem('PistolStandardShot');
	Template.Abilities.AddItem('PistolOverwatch');
	Template.Abilities.AddItem('PistolOverwatchShot');
	Template.Abilities.AddItem('PistolReturnFire');
	Template.Abilities.AddItem('HotLoadAmmo');
	Template.Abilities.AddItem('Reload');

	Template.SetAnimationNameForAbility('FanFire', 'FF_FireMultiShotConvA');	
	//template
	Template.GameArchetype = "M358Talon_Assets.ARC_M358TalonBlue";

	Template.iPhysicsImpulse = 5;
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;

	//Template.UpgradeItem = 'WP_M358Talon_BM';
	Template.CreatorTemplateName = 'Pistol_MG_Schematic';
	Template.BaseItem = 'WP_M358Talon';

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
static function X2DataTemplate CreateTemplate_M358Talon_BM()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_M358Talon_BM');

	Template.WeaponPanelImage = "_Pistol";     

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'pistol';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///M358Talon_Assets.Inv_M358TalonBlue";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 4;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_BEAM_RANGE;
	Template.BaseDamage = default.M358TALON_BM_BASEDAMAGE;
	Template.Aim = default.M358TALON_BM_AIM;
	Template.CritChance = default.M358TALON_BM_CRITCHANCE;
	Template.iClipSize = default.M358TALON_BM_ICLIPSIZE;
	Template.iSoundRange = default.M358TALON_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.M358TALON_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.M358TALON_BM_IUPGRADESLOTS;
	
	Template.InfiniteAmmo = true;
	Template.OverwatchActionPoint = class'X2CharacterTemplateManager'.default.PistolOverwatchReserveActionPoint;

	Template.InventorySlot = eInvSlot_SecondaryWeapon;
	Template.Abilities.AddItem('PistolStandardShot');
	Template.Abilities.AddItem('PistolOverwatch');
	Template.Abilities.AddItem('PistolOverwatchShot');
	Template.Abilities.AddItem('PistolReturnFire');
	Template.Abilities.AddItem('HotLoadAmmo');
	Template.Abilities.AddItem('Reload');

	Template.SetAnimationNameForAbility('FanFire', 'FF_FireMultiShotConvA');	
	
	//template
	Template.CreatorTemplateName = 'Pistol_BM_Schematic';
	Template.BaseItem = 'WP_M358Talon_MG';


	Template.GameArchetype = "M358Talon_Assets.ARC_M358TalonBlue";
	
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
