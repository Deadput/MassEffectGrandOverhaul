class X2Item_M96Mattock extends X2Item config(M96Mattock);

// Weapon Stat Variables
var config WeaponDamageValue M96MATTOCK_BASEDAMAGE;
var config array<int> M96MATTOCK_RANGE;
var config int M96MATTOCK_AIM;
var config int M96MATTOCK_CRITCHANCE;
var config int M96MATTOCK_ICLIPSIZE;
var config int M96MATTOCK_ISOUNDRANGE;
var config int M96MATTOCK_IENVIRONMENTDAMAGE;
var config int M96MATTOCK_ISUPPLIES;
var config int M96MATTOCK_TRADINGPOSTVALUE;
var config int M96MATTOCK_IPOINTS;
var config int M96MATTOCK_IUPGRADESLOTS;

var config WeaponDamageValue M96MATTOCK_MG_BASEDAMAGE;
var config array<int> M96MATTOCK_MG_RANGE;
var config int M96MATTOCK_MG_AIM;
var config int M96MATTOCK_MG_CRITCHANCE;
var config int M96MATTOCK_MG_ICLIPSIZE;
var config int M96MATTOCK_MG_ISOUNDRANGE;
var config int M96MATTOCK_MG_IENVIRONMENTDAMAGE;
var config int M96MATTOCK_MG_ISUPPLIES;
var config int M96MATTOCK_MG_TRADINGPOSTVALUE;
var config int M96MATTOCK_MG_IPOINTS;
var config int M96MATTOCK_MG_IUPGRADESLOTS;

var config WeaponDamageValue M96MATTOCK_BM_BASEDAMAGE;
var config array<int> M96MATTOCK_BM_RANGE;
var config int M96MATTOCK_BM_AIM;
var config int M96MATTOCK_BM_CRITCHANCE;
var config int M96MATTOCK_BM_ICLIPSIZE;
var config int M96MATTOCK_BM_ISOUNDRANGE;
var config int M96MATTOCK_BM_IENVIRONMENTDAMAGE;
var config int M96MATTOCK_BM_ISUPPLIES;
var config int M96MATTOCK_BM_TRADINGPOSTVALUE;
var config int M96MATTOCK_BM_IPOINTS;
var config int M96MATTOCK_BM_IUPGRADESLOTS;
// Template Start
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> M96MattockWeaps;

	M96MattockWeaps.AddItem(CreateTemplate_M96Mattock());
	M96MattockWeaps.AddItem(CreateTemplate_M96Mattock_MG());
	M96MattockWeaps.AddItem(CreateTemplate_M96Mattock_BM());

	return M96MattockWeaps;

}

// M-96 Mattock Conventional Template
static function X2DataTemplate CreateTemplate_M96Mattock()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_M96Mattock');
	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	// Weapon Classifications
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'rifle';
	Template.WeaponTech = 'conventional';
	Template.strImage = "img:///WP_M96Mattock_CV.UILibrary.Inv_M96Mattock";
	Template.Tier = 0;
	// Weapon Stats
	Template.BaseDamage = default.M96MATTOCK_BASEDAMAGE;
	Template.RangeAccuracy = default.M96MATTOCK_RANGE;
	Template.Aim = default.M96MATTOCK_AIM;
	Template.CritChance = default.M96MATTOCK_CRITCHANCE;
	Template.iClipSize = default.M96MATTOCK_ICLIPSIZE;
	Template.iSoundRange = default.M96MATTOCK_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.M96MATTOCK_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.M96MATTOCK_IUPGRADESLOTS;
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


// M-96 Mattock Magnetic Template
static function X2DataTemplate CreateTemplate_M96Mattock_MG()
{
	local X2WeaponTemplate Template;
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_M96Mattock_MG');
	Template.WeaponPanelImage = "_MagneticRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	// Weapon Classifications
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'rifle';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///WP_M96Mattock_CV.UILibrary.Inv_M96Mattock";
	Template.Tier = 2;
	// Weapon Stats
	Template.BaseDamage = default.M96MATTOCK_MG_BASEDAMAGE;
	Template.RangeAccuracy = default.M96MATTOCK_MG_RANGE;
	Template.Aim = default.M96MATTOCK_MG_AIM;
	Template.CritChance = default.M96MATTOCK_MG_CRITCHANCE;
	Template.iClipSize = default.M96MATTOCK_MG_ICLIPSIZE;
	Template.iSoundRange = default.M96MATTOCK_MG_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.M96MATTOCK_MG_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.M96MATTOCK_MG_IUPGRADESLOTS;
	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	//Weapon Abilities
	Template.Abilities.AddItem('StandardShot');	
	Template.Abilities.AddItem('Overwatch');	
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	// Weapon Buildability
	Template.iPhysicsImpulse = 5;
	Template.CanBeBuilt = false;	
	Template.bInfiniteItem = true;
	// Knockback
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;
	// Upgrade Data
	Template.CreatorTemplateName = 'AssaultRifle_MG_Schematic';
	Template.BaseItem = 'WP_M96Mattock'; 
	// Weapon Asset
	Template.GameArchetype = "WP_M96Mattock_CV.WP_M96Mattock_CV";

	return Template;
}

//Template Beam Creation
static function X2DataTemplate CreateTemplate_M96Mattock_BM()
{
	local X2WeaponTemplate Template;
	//Weapon Template
	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'WP_M96Mattock_BM');
	Template.WeaponPanelImage = "_BeamRifle";
	Template.EquipSound = "Conventional_Weapon_Equip";
	//Weapon Classificayion pointers
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'rifle';
	Template.WeaponTech = 'beam';
	Template.strImage = "img:///WP_M96Mattock_CV.UILibrary.Inv_M96Mattock";
	Template.Tier = 4;
	//Weapon Stat pointers
	Template.BaseDamage = default.M96MATTOCK_BM_BASEDAMAGE;
	Template.RangeAccuracy = default.M96MATTOCK_BM_RANGE;
	Template.Aim = default.M96MATTOCK_BM_AIM;
	Template.CritChance = default.M96MATTOCK_BM_CRITCHANCE;
	Template.iClipSize = default.M96MATTOCK_BM_ICLIPSIZE;
	Template.iSoundRange = default.M96MATTOCK_BM_ISOUNDRANGE;
	Template.iEnvironmentDamage = default.M96MATTOCK_BM_IENVIRONMENTDAMAGE;
	Template.NumUpgradeSlots = default.M96MATTOCK_BM_IUPGRADESLOTS;
	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	//Weapon Ability pointers
	Template.Abilities.AddItem('StandardShot');	
	Template.Abilities.AddItem('Overwatch');	
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	//Can Be Built?
	Template.iPhysicsImpulse = 5;
	Template.CanBeBuilt = false;	
	Template.bInfiniteItem = true;
	//Physics
	Template.fKnockbackDamageAmount = 5.0f;
	Template.fKnockbackDamageRadius = 0.0f;
	//Upgrade Template
	Template.CreatorTemplateName = 'AssaultRifle_BM_Schematic';
	Template.BaseItem = 'WP_M96Mattock_MG';  
	//Weapon Assets
	Template.GameArchetype = "WP_M96Mattock_CV.WP_M96Mattock_CV";
	
	return Template;
}