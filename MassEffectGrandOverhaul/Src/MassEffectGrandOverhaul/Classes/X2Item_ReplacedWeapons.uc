// This is an Unreal Script
class X2Item_ReplacedWeapons extends X2Item config(ReplacedWeapons);


//===================================================================== //Weapon Stat Variables

// Weapon Stat Variables Rifle of Assaulty
var config WeaponDamageValue M8AVENGER_BASEDAMAGE;
var config array<int> M8AVENGER_RANGE;
var config int M8AVENGER_AIM;
var config int M8AVENGER_CRITCHANCE;
var config int M8AVENGER_ICLIPSIZE;
var config int M8AVENGER_ISOUNDRANGE;
var config int M8AVENGER_IENVIRONMENTDAMAGE;
var config int M8AVENGER_ISUPPLIES;
var config int M8AVENGER_TRADINGPOSTVALUE;
var config int M8AVENGER_IPOINTS;
var config int M8AVENGER_IUPGRADESLOTS;

// Weapon Stat Variables Shotty too Hotty
var config WeaponDamageValue M23KATANA_BASEDAMAGE;
var config array<int> M23KATANA_RANGE;
var config int M23KATANA_AIM;
var config int M23KATANA_CRITCHANCE;
var config int M23KATANA_ICLIPSIZE;
var config int M23KATANA_ISOUNDRANGE;
var config int M23KATANA_IENVIRONMENTDAMAGE;
var config int M23KATANA_ISUPPLIES;
var config int M23KATANA_TRADINGPOSTVALUE;
var config int M23KATANA_IPOINTS;
var config int M23KATANA_IUPGRADESLOTS;


// Weapon Stat Variables Sniper Waffle
var config WeaponDamageValue M97VIPER_BASEDAMAGE;
var config array<int> M97VIPER_RANGE;
var config int M97VIPER_AIM;
var config int M97VIPER_CRITCHANCE;
var config int M97VIPER_ICLIPSIZE;
var config int M97VIPER_ISOUNDRANGE;
var config int M97VIPER_IENVIRONMENTDAMAGE;
var config int M97VIPER_ISUPPLIES;
var config int M97VIPER_TRADINGPOSTVALUE;
var config int M97VIPER_IPOINTS;
var config int M97VIPER_IUPGRADESLOTS;


// Weapon Stat Variables Pew Pew Pistol
var config WeaponDamageValue M3PREDATOR_BASEDAMAGE;
var config int M3PREDATOR_AIM;
var config int M3PREDATOR_CRITCHANCE;
var config int M3PREDATOR_ICLIPSIZE;
var config int M3PREDATOR_ISOUNDRANGE;
var config int M3PREDATOR_IENVIRONMENTDAMAGE;
var config int M3PREDATOR_ISUPPLIES;
var config int M3PREDATOR_TRADINGPOSTVALUE;
var config int M3PREDATOR_IPOINTS;
var config int M3PREDATOR_IUPGRADESLOTS;

// Weapon Stat Variables This Cannon is Canon MEA Haterz
var config WeaponDamageValue M22CYCLONE_BASEDAMAGE;
var config array<int> M22CYCLONE_RANGE;
var config int M22CYCLONE_AIM;
var config int M22CYCLONE_CRITCHANCE;
var config int M22CYCLONE_ICLIPSIZE;
var config int M22CYCLONE_ISOUNDRANGE;
var config int M22CYCLONE_IENVIRONMENTDAMAGE;
var config int M22CYCLONE_ISUPPLIES;
var config int M22CYCLONE_TRADINGPOSTVALUE;
var config int M22CYCLONE_IPOINTS;
var config int M22CYCLONE_IUPGRADESLOTS;

// Weapon Stat Variables Vektor not so AutoMattock
var config WeaponDamageValue M96MATTOCKR_BASEDAMAGE;
var config array<int> M96MATTOCKR_RANGE;
var config int M96MATTOCKR_AIM;
var config int M96MATTOCKR_CRITCHANCE;
var config int M96MATTOCKR_ICLIPSIZE;
var config int M96MATTOCKR_ISOUNDRANGE;
var config int M96MATTOCKR_IENVIRONMENTDAMAGE;
var config int M96MATTOCKR_ISUPPLIES;
var config int M96MATTOCKR_TRADINGPOSTVALUE;
var config int M96MATTOCKR_IPOINTS;
var config int M96MATTOCKR_IUPGRADESLOTS;

// Weapon Stat Variables Superb Mechanical Gunny
var config WeaponDamageValue M25HORNETBull_BASEDAMAGE;
var config array<int> M25HORNETBull_RANGE;
var config int M25HORNETBull_AIM;
var config int M25HORNETBull_CRITCHANCE;
var config int M25HORNETBull_ICLIPSIZE;
var config int M25HORNETBull_ISOUNDRANGE;
var config int M25HORNETBull_IENVIRONMENTDAMAGE;
var config int M25HORNETBull_ISUPPLIES;
var config int M25HORNETBull_TRADINGPOSTVALUE;
var config int M25HORNETBull_IPOINTS;
var config int M25HORNETBull_IUPGRADESLOTS;

// Weapon Stat Variables Subpar Mechanical Gunny
var config WeaponDamageValue SHURIKENSMGT_BASEDAMAGE;
var config int SHURIKENSMGT_AIM;
var config int SHURIKENSMGT_CRITCHANCE;
var config int SHURIKENSMGT_ICLIPSIZE;
var config int SHURIKENSMGT_ISOUNDRANGE;
var config int SHURIKENSMGT_IENVIRONMENTDAMAGE;
var config int SHURIKENSMGT_ISUPPLIES;
var config int SHURIKENSMGT_TRADINGPOSTVALUE;
var config int SHURIKENSMGT_IPOINTS;
var config int SHURIKENSMGT_IUPGRADESLOTS;

// Weapon Stat Variables Kishocker Harpoon Gun
var config WeaponDamageValue KISHOCKSNIPER_BASEDAMAGE;
var config array<int> KISHOCKSNIPER_RANGE;
var config int KISHOCKSNIPER_AIM;
var config int KISHOCKSNIPER_CRITCHANCE;
var config int KISHOCKSNIPER_ICLIPSIZE;
var config int KISHOCKSNIPER_ISOUNDRANGE;
var config int KISHOCKSNIPER_IENVIRONMENTDAMAGE;
var config int KISHOCKSNIPER_ISUPPLIES;
var config int KISHOCKSNIPER_TRADINGPOSTVALUE;
var config int KISHOCKSNIPER_IPOINTS;
var config int KISHOCKSNIPER_IUPGRADESLOTS;

// Weapon Stat Variables M11 Suppressive
var config WeaponDamageValue M11PISTOL_BASEDAMAGE;
var config int M11PISTOL_AIM;
var config int M11PISTOL_CRITCHANCE;
var config int M11PISTOL_ICLIPSIZE;
var config int M11PISTOL_ISOUNDRANGE;
var config int M11PISTOL_IENVIRONMENTDAMAGE;
var config int M11PISTOL_ISUPPLIES;
var config int M11PISTOL_TRADINGPOSTVALUE;
var config int M11PISTOL_IPOINTS;
var config int M11PISTOL_IUPGRADESLOTS;



static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> Weapons;
	
	Weapons.AddItem(CreateTemplate_M8Avenger());
    Weapons.AddItem(CreateTemplate_M3Predator());
    Weapons.AddItem(CreateTemplate_M97Viper());
	Weapons.AddItem(CreateTemplate_M23Katana());
	Weapons.AddItem(CreateTemplate_M22Cyclone());

	Weapons.AddItem(CreateTemplate_M25HornetBull());
	Weapons.AddItem(CreateTemplate_M96MattockReap());
	Weapons.AddItem(CreateTemplate_ShurikenSMGTemp());

	Weapons.AddItem(CreateTemplate_KishockSniper());
	Weapons.AddItem(CreateTemplate_M11Pistol());


	return Weapons;
}

// M8 Avenger Conventional Template
static function X2DataTemplate CreateTemplate_M8Avenger()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_M8Avenger');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	// Weapon Classifications
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'rifle';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///M8Avenger.UI.UI_M8Avenger";
	Template.Tier = 0;
	// Weapon Stats
	Template.BaseDamage = default.M8AVENGER_BASEDAMAGE;
	Template.RangeAccuracy = default.M8AVENGER_RANGE;
	Template.Aim = default.M8AVENGER_AIM;
	Template.CritChance = default.M8AVENGER_CRITCHANCE;
	Template.iClipSize = default.M8AVENGER_ICLIPSIZE;
	Template.iSoundRange = default.M8AVENGER_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.M8AVENGER_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.M8AVENGER_IUPGRADESLOTS;
	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	//Weapon Abilities
	Template.Abilities.AddItem('StandardShot');	
	Template.Abilities.AddItem('Overwatch');	
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// Weapon Buildability
	Template.iPhysicsImpulse = 5;
	Template.StartingItem = true;
	Template.CanBeBuilt = false;	
	Template.bInfiniteItem = true;
	// Knockback
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;
	// Weapon Asset
	Template.GameArchetype = "M8Avenger.WP_M8Avenger_CV";

	return Template;
}



/// AR Default
static function X2DataTemplate CreateTemplate_M3Predator()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_M3Predator');

	Template.WeaponPanelImage = "_Pistol";                      

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'pistol';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///WP_M3Predator_Assets.UILibrary.Inv_M3Predator";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 0;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_CONVENTIONAL_RANGE;
	Template.BaseDamage = default.M3PREDATOR_BASEDAMAGE;
	Template.Aim = default.M3PREDATOR_AIM;
	Template.CritChance = default.M3PREDATOR_CRITCHANCE;
	Template.iClipSize = default.M3PREDATOR_ICLIPSIZE;
	Template.iSoundRange = default.M3PREDATOR_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.M3PREDATOR_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.M3PREDATOR_IUPGRADESLOTS;
	
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

	Template.GameArchetype = "WP_M3Predator_Assets.Archetype.WP_M3Predator_CV";

	Template.bInfiniteItem = true;

	Template.iPhysicsImpulse = 5;
	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	//Template.UpgradeItem = 'WP_M3PREDATOR_MG';


	Template.bHideClipSizeStat = true;

	Template.DamageTypeTemplateName = 'Projectile_Conventional';

	defaultproperties
	{
	bShouldCreateDifficultyVariants = true
	}
	
	return Template;
}


// M-97 Viper Conventional Template
static function X2DataTemplate CreateTemplate_M97Viper()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_M97Viper');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	// Weapon Classifications
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sniper_rifle';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///WP_M97Viper_CV.UILibrary.UI_M97Viper";
	Template.Tier = 0;
	// Weapon Stats
	Template.BaseDamage = default.M97VIPER_BASEDAMAGE;
	Template.RangeAccuracy = default.M97VIPER_RANGE;
	Template.Aim = default.M97VIPER_AIM;
	Template.CritChance = default.M97VIPER_CRITCHANCE;
	Template.iClipSize = default.M97VIPER_ICLIPSIZE;
	Template.iSoundRange = default.M97VIPER_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.M97VIPER_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.M97VIPER_IUPGRADESLOTS;
	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	//Weapon Abilities
	Template.iTypicalActionCost = 2;
	Template.bIsLargeWeapon = true;
	Template.Abilities.AddItem('SniperStandardFire');
	Template.Abilities.AddItem('SniperRifleOverwatch');	
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// Weapon Buildability
	Template.iPhysicsImpulse = 5;
	Template.StartingItem = true;
	Template.CanBeBuilt = false;	
	Template.bInfiniteItem = true;
	// Knockback
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;
	// Weapon Asset
	Template.GameArchetype = "WP_M97Viper_CV.WP_M97Viper_CV";

	return Template;
}


// M-23 Katana Conventional Template
static function X2DataTemplate CreateTemplate_M23Katana()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_M23Katana');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	// Weapon Classifications
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'shotgun';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///WP_M23Katana_CV.UILibrary.Inv_M23Katana";
	Template.Tier = 0;
	// Weapon Stats
	Template.BaseDamage = default.M23KATANA_BASEDAMAGE;
	Template.RangeAccuracy = default.M23KATANA_RANGE;
	Template.Aim = default.M23KATANA_AIM;
	Template.CritChance = default.M23KATANA_CRITCHANCE;
	Template.iClipSize = default.M23KATANA_ICLIPSIZE;
	Template.iSoundRange = default.M23KATANA_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.M23KATANA_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.M23KATANA_IUPGRADESLOTS;
	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	//Weapon Abilities
	Template.Abilities.AddItem('StandardShot');	
	Template.Abilities.AddItem('Overwatch');	
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// Weapon Buildability
	Template.iPhysicsImpulse = 5;
	Template.StartingItem = true;
	Template.CanBeBuilt = false;	
	Template.bInfiniteItem = true;
	// Knockback
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;
	// Weapon Asset
	Template.GameArchetype = "WP_M23Katana_CV.WP_M23Katana_CV";

	return Template;
}


// M-96 Mattock Conventional Template
static function X2DataTemplate CreateTemplate_M22Cyclone()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_M22Cyclone');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	// Weapon Classifications
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'cannon';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///WP_M22Cyclone_Assets.UILibrary.Inv_M22Cyclone";
	Template.Tier = 0;
	// Weapon Stats
	Template.BaseDamage = default.M22CYCLONE_BASEDAMAGE;
	Template.RangeAccuracy = default.M22CYCLONE_RANGE;
	Template.Aim = default.M22CYCLONE_AIM;
	Template.CritChance = default.M22CYCLONE_CRITCHANCE;
	Template.iClipSize = default.M22CYCLONE_ICLIPSIZE;
	Template.iSoundRange = default.M22CYCLONE_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.M22CYCLONE_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.M22CYCLONE_IUPGRADESLOTS;
	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	//Weapon Abilities
	Template.Abilities.AddItem('StandardShot');	
	Template.Abilities.AddItem('Overwatch');	
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// Weapon Buildability
	Template.iPhysicsImpulse = 5;
	Template.StartingItem = true;
	Template.CanBeBuilt = false;	
	Template.bInfiniteItem = true;
	// Knockback
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;
	// Weapon Asset
	Template.GameArchetype = "WP_M22Cyclone_Assets.WP_M22Cyclone";

	return Template;
}


// M8 Avenger Conventional Template
static function X2DataTemplate CreateTemplate_M25HornetBull()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_M25HornetBull');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	// Weapon Classifications
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'bullpup';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///M25Hornet_Assets.Inv_M25HornetBull";
	Template.Tier = 0;
	// Weapon Stats
	Template.BaseDamage = default.M25HORNETBull_BASEDAMAGE;
	Template.RangeAccuracy = default.M25HORNETBull_RANGE;
	Template.Aim = default.M25HORNETBull_AIM;
	Template.CritChance = default.M25HORNETBull_CRITCHANCE;
	Template.iClipSize = default.M25HORNETBull_ICLIPSIZE;
	Template.iSoundRange = default.M25HORNETBull_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.M25HORNETBull_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.M25HORNETBull_IUPGRADESLOTS;
	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	//Weapon Abilities
	Template.Abilities.AddItem('StandardShot');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('PistolReturnFire');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// Weapon Buildability
	Template.iPhysicsImpulse = 5;
	Template.StartingItem = true;
	Template.CanBeBuilt = false;	
	Template.bInfiniteItem = true;
	// Knockback
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;
	// Weapon Asset
	Template.GameArchetype = "M25Hornet_Assets.ARC_M25HornetBull";

	return Template;
}


// M-96 Mattock Conventional Template
static function X2DataTemplate CreateTemplate_M96MattockReap()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_M96MattockReap');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	// Weapon Classifications
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'vektor_rifle';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///WP_M96Mattock_CV.UILibrary.Inv_M96Mattock";
	Template.Tier = 0;
	// Weapon Stats
	Template.BaseDamage = default.M96MATTOCKR_BASEDAMAGE;
	Template.RangeAccuracy = default.M96MATTOCKR_RANGE;
	Template.Aim = default.M96MATTOCKR_AIM;
	Template.CritChance = default.M96MATTOCKR_CRITCHANCE;
	Template.iClipSize = default.M96MATTOCKR_ICLIPSIZE;
	Template.iSoundRange = default.M96MATTOCKR_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.M96MATTOCKR_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.M96MATTOCKR_IUPGRADESLOTS;
	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	//Weapon Abilities
	Template.Abilities.AddItem('StandardShot');	
	Template.Abilities.AddItem('Overwatch');	
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// Weapon Buildability
	Template.iPhysicsImpulse = 5;
	Template.StartingItem = true;
	Template.CanBeBuilt = false;	
	Template.bInfiniteItem = true;
	// Knockback
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;
	// Weapon Asset
	Template.GameArchetype = "WP_M96Mattock_CV.WP_M96Mattock_CV";

	return Template;
}

/// AR Default
static function X2DataTemplate CreateTemplate_ShurikenSMGTemp()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_ShurikenSMGTemp');

	Template.WeaponPanelImage = "_Pistol";                      

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sidearm';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///ShurikenSMG_Assets.UI.UI_ShurikenSMG_WP";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 0;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_CONVENTIONAL_RANGE;
	Template.BaseDamage = default.SHURIKENSMGT_BASEDAMAGE;
	Template.Aim = default.SHURIKENSMGT_AIM;
	Template.CritChance = default.SHURIKENSMGT_CRITCHANCE;
	Template.iClipSize = default.SHURIKENSMGT_ICLIPSIZE;
	Template.iSoundRange = default.SHURIKENSMGT_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.SHURIKENSMGT_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.SHURIKENSMGT_IUPGRADESLOTS;
	
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

	Template.GameArchetype = "ShurikenSMG_Assets.Archetypes.ARC_Weap_Shuriken_SMG";

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

//===================================================================== //Template Conventional Creation
static function X2DataTemplate CreateTemplate_KISHOCKSNIPER()
{
	local X2WeaponTemplate Template;
	//===================================================================== //Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_KISHOCKSNIPER');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//===================================================================== //Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'sniper_rifle';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///KishockSniper_Assets.UI.UI_KishockSniper_WP";
	Template.Tier = 0;
	//===================================================================== //Weapon Stat pointers
	Template.RangeAccuracy = default.KISHOCKSNIPER_RANGE;
	Template.BaseDamage = default.KISHOCKSNIPER_BASEDAMAGE;
	Template.Aim = default.KISHOCKSNIPER_AIM;
	Template.CritChance = default.KISHOCKSNIPER_CRITCHANCE;
	Template.iClipSize = default.KISHOCKSNIPER_ICLIPSIZE;
	Template.iSoundRange = default.KISHOCKSNIPER_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.KISHOCKSNIPER_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.KISHOCKSNIPER_IUPGRADESLOTS;
	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	//===================================================================== //Weapon Ability pointers
	Template.iTypicalActionCost = 2;
	Template.bIsLargeWeapon = true;
	Template.Abilities.AddItem('SniperStandardFire');
	Template.Abilities.AddItem('SniperRifleOverwatch');	
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	//===================================================================== //Weapon Attatchment pointers
	Template.UIArmoryCameraPointTag = 'UIPawnLocation_WeaponUpgrade_AssaultRifle';
	Template.AddDefaultAttachment('Mag', "", , "");
	Template.AddDefaultAttachment('Optic', "", , "");
	Template.AddDefaultAttachment('Reargrip', "", , "");
	Template.AddDefaultAttachment('Stock', "", , "");
	Template.AddDefaultAttachment('Trigger', "", , "");
	Template.AddDefaultAttachment('Light', "", , "");
	//===================================================================== //Can Be Built?
	Template.iPhysicsImpulse = 5;
	Template.StartingItem = true;
	Template.CanBeBuilt = false;	
	Template.bInfiniteItem = true;
	//===================================================================== //Physics
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;
	//===================================================================== //Weapon Assets
	Template.GameArchetype = "KishockSniper_Assets.Archetypes.ARC_Weap_Kishock_Sniper"; 
	
	return Template;
}

/// AR Default
static function X2DataTemplate CreateTemplate_M11Pistol()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate',Template,'WP_M11Pistol');

	Template.WeaponPanelImage = "_Pistol";                      

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'pistol';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///M11Pistol_Assets.UI.UI_M11Pistol_WP";
	Template.EquipSound = "Secondary_Weapon_Equip_Conventional";
	Template.Tier = 0;

	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.SHORT_CONVENTIONAL_RANGE;
	Template.BaseDamage = default.M11PISTOL_BASEDAMAGE;
	Template.Aim = default.M11PISTOL_AIM;
	Template.CritChance = default.M11PISTOL_CRITCHANCE;
	Template.iClipSize = default.M11PISTOL_ICLIPSIZE;
	Template.iSoundRange = default.M11PISTOL_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.M11PISTOL_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.M11PISTOL_IUPGRADESLOTS;
	
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

	Template.GameArchetype = "M11Pistol_Assets.Archetypes.ARC_Weap_M11_Pistol";

	Template.bInfiniteItem = true;

	Template.iPhysicsImpulse = 5;
	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	//Template.UpgradeItem = 'WP_M11PISTOL_MG';


	Template.bHideClipSizeStat = true;

	Template.DamageTypeTemplateName = 'Projectile_Conventional';

	defaultproperties
	{
	bShouldCreateDifficultyVariants = true
	}
	
	return Template;
}


