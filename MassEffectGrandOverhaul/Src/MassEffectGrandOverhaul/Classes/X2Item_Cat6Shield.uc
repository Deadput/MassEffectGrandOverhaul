class X2Item_Cat6Shield extends X2Item config(Cat6Shield);

var config WeaponDamageValue SHIELD_CV_BASEDAMAGE;
var config WeaponDamageValue SHIELD_MG_BASEDAMAGE;
var config WeaponDamageValue SHIELD_BM_BASEDAMAGE;

var config array<name> SHIELD_CV_ABILITIES;
var config array<name> SHIELD_MG_ABILITIES;
var config array<name> SHIELD_BM_ABILITIES;

var config int SHIELD_CV_AIM;
var config int SHIELD_CV_CRITCHANCE;
var config int SHIELD_CV_ISOUNDRANGE;
var config int SHIELD_CV_IENVIRONMENTDAMAGE;
var config int SHIELD_CV_NUM_UPGRADE_SLOTS;

var config int SHIELD_MG_AIM;
var config int SHIELD_MG_CRITCHANCE;
var config int SHIELD_MG_ISOUNDRANGE;
var config int SHIELD_MG_IENVIRONMENTDAMAGE;
var config int SHIELD_MG_NUM_UPGRADE_SLOTS;

var config int SHIELD_BM_AIM;
var config int SHIELD_BM_CRITCHANCE;
var config int SHIELD_BM_ISOUNDRANGE;
var config int SHIELD_BM_IENVIRONMENTDAMAGE;
var config int SHIELD_BM_NUM_UPGRADE_SLOTS;

static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> Weapons;

	Weapons.AddItem(Cat6Shield_CV());
	Weapons.AddItem(Cat6Shield_MG());
	Weapons.AddItem(Cat6Shield_BM());

	return Weapons;
}

static function X2WeaponTemplate Cat6Shield_CV()
{
	local X2WeaponTemplate Template;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'Cat6Shield_CV');
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'shield';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///Cat6Xcom_Shield_Assets.Textures.TEX_Omni_Shield_UI";
	Template.EquipSound = "StrategyUI_Heavy_Weapon_Equip";

	Template.BaseDamage = default.SHIELD_CV_BASEDAMAGE;
	Template.Aim = default.SHIELD_CV_AIM;
	Template.CritChance = default.SHIELD_CV_CRITCHANCE;
	Template.iSoundRange = default.SHIELD_CV_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.SHIELD_CV_IENVIRONMENTDAMAGE;

	Template.NumUpgradeSlots = default.SHIELD_CV_NUM_UPGRADE_SLOTS;
	Template.iClipSize = 0;
	Template.iRange = 0;
	Template.iRadius = 1;
	Template.GameArchetype = "Cat6Xcom_Shield_Assets.ARC_Omni_Shield";
	Template.Tier = -1;
	
	Template.PointsToComplete = 20;
	Template.TradingPostValue = 0;
	
	Template.InventorySlot = eInvSlot_SecondaryWeapon;
	Template.StowedLocation = eSlot_HeavyWeapon;
	Template.bMergeAmmo = true;
	Template.DamageTypeTemplateName = 'Melee';

	AddAbilities(Template, default.SHIELD_CV_ABILITIES);



	//Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, eStat_Mobility, class'X2Ability_ShieldAbilitySet'.default.SHIELD_MOBILITY_PENALTY);

	Template.CanBeBuilt = false;
	Template.StartingItem = true;
	Template.bInfiniteItem = true;

	return Template;
}

static function X2DataTemplate Cat6Shield_MG()
{
	local X2WeaponTemplate Template;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'Cat6Shield_MG');
	Template.WeaponPanelImage = "_Sword";                       // used by the UI. Probably determines iconview of the weapon.

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'shield';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///Cat6Xcom_Shield_Assets.Textures.TEX_Omni_Shield_UI";
	Template.EquipSound = "StrategyUI_Heavy_Weapon_Equip";
	Template.InventorySlot = eInvSlot_SecondaryWeapon;
	Template.StowedLocation = eSlot_HeavyWeapon;
	// This all the resources; sounds, animations, models, physics, the works.
	Template.GameArchetype = "Cat6Xcom_Shield_Assets.ARC_Omni_Shield";
	Template.Tier = -2;

	Template.iRadius = 1;
	Template.NumUpgradeSlots = default.SHIELD_MG_NUM_UPGRADE_SLOTS;
	Template.InfiniteAmmo = true;
	Template.iPhysicsImpulse = 5;

	Template.iRange = 0;
	Template.BaseDamage = default.SHIELD_MG_BASEDAMAGE;
	Template.Aim = default.SHIELD_MG_AIM;
	Template.CritChance = default.SHIELD_MG_CRITCHANCE;
	Template.iSoundRange = default.SHIELD_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.SHIELD_MG_IENVIRONMENTDAMAGE;
	Template.BaseDamage.DamageType='Melee';

	AddAbilities(Template, default.SHIELD_MG_ABILITIES);


	Template.CreatorTemplateName = 'MediumPlatedArmor_Schematic'; // The schematic which creates this item
	Template.BaseItem = 'Cat6Shield_CV'; // Which item this will be upgraded from
	
	//Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, eStat_Mobility, class'X2Ability_ShieldAbilitySet'.default.SHIELD_MOBILITY_PENALTY);

	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;

	Template.DamageTypeTemplateName = 'Melee';
	
	return Template;
}

static function X2DataTemplate Cat6Shield_BM()
{
	local X2WeaponTemplate Template;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'Cat6Shield_BM');
	Template.WeaponPanelImage = "_Sword";                       // used by the UI. Probably determines iconview of the weapon.

	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'shield';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///Cat6Xcom_Shield_Assets.Textures.TEX_Omni_Shield_UI";
	Template.EquipSound = "StrategyUI_Heavy_Weapon_Equip";
	Template.InventorySlot = eInvSlot_SecondaryWeapon;
	Template.StowedLocation = eSlot_HeavyWeapon;
	// This all the resources; sounds, animations, models, physics, the works.
	Template.GameArchetype = "Cat6Xcom_Shield_Assets.ARC_Omni_Shield";
	Template.Tier = -3;

	Template.iRadius = 1;
	Template.NumUpgradeSlots = default.SHIELD_BM_NUM_UPGRADE_SLOTS;;
	Template.InfiniteAmmo = true;
	Template.iPhysicsImpulse = 5;

	Template.iRange = 0;
	Template.BaseDamage = default.SHIELD_BM_BASEDAMAGE;
	Template.Aim = default.SHIELD_BM_AIM;
	Template.CritChance = default.SHIELD_BM_CRITCHANCE;
	Template.iSoundRange = default.SHIELD_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.SHIELD_BM_IENVIRONMENTDAMAGE;
	Template.BaseDamage.DamageType='Melee';

	AddAbilities(Template, default.SHIELD_BM_ABILITIES);

	
	Template.CreatorTemplateName = 'MediumPoweredArmor_Schematic'; // The schematic which creates this item
	Template.BaseItem = 'Cat6Shield_MG'; // Which item this will be upgraded from

	//Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, eStat_Mobility, class'X2Ability_ShieldAbilitySet'.default.SHIELD_MOBILITY_PENALTY);
	
	Template.CanBeBuilt = false;
	Template.bInfiniteItem = true;
	
	Template.DamageTypeTemplateName = 'Melee';
	
	return Template;
}

static function AddAbilities(out X2WeaponTemplate Template, array<name> Abilities)
{
	local name Ability;
	foreach Abilities(Ability)
	{
		if (Template.Abilities.Find(Ability) == INDEX_NONE)
		{
			Template.Abilities.AddItem(Ability);
		}
	}
}
