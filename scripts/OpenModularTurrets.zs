print("*** Tweaking OpenModularTurrets ***");

//graphite electrode

// Sensors
recipes.remove(<openmodularturrets:intermediate_tiered>);
recipes.remove(<openmodularturrets:intermediate_tiered:1>);
recipes.remove(<openmodularturrets:intermediate_tiered:3>);
recipes.remove(<openmodularturrets:intermediate_tiered:4>);

recipes.addShaped(<openmodularturrets:intermediate_tiered>, [
	[null, <minecraft:redstone>, null], 
	[<minecraft:redstone>, <ore:ingotCopper>, <minecraft:redstone>], 
	[null, <minecraft:redstone>, null]]);
recipes.addShaped(<openmodularturrets:intermediate_tiered:1>, [
	[null, <ore:ingotSilver>, null], 
	[<ore:ingotSilver>, <openmodularturrets:intermediate_tiered>, <ore:ingotSilver>], 
	[null, <openmodularturrets:intermediate_regular>, null]]);
recipes.addShaped(<openmodularturrets:intermediate_tiered:3>, [
	[<minecraft:quartz>, <ore:ingotCobalt>, <minecraft:quartz>], 
	[<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:2>, <openmodularturrets:intermediate_regular>], 
	[<minecraft:quartz>, <ore:ingotCobalt>, <minecraft:quartz>]]);
recipes.addShaped(<openmodularturrets:intermediate_tiered:4>, [
	[<ore:ingotAbyssalnite>, <minecraft:glowstone_dust>, <ore:ingotAbyssalnite>], 
	[<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:3>, <openmodularturrets:intermediate_regular>], 
	[<ore:ingotAbyssalnite>, <minecraft:glowstone_dust>, <ore:ingotAbyssalnite>]]);


// Chambers
recipes.remove(<openmodularturrets:intermediate_tiered:5>);
recipes.remove(<openmodularturrets:intermediate_tiered:6>);
recipes.remove(<openmodularturrets:intermediate_tiered:7>);
recipes.remove(<openmodularturrets:intermediate_tiered:8>);
recipes.remove(<openmodularturrets:intermediate_tiered:9>);
recipes.addShaped(<openmodularturrets:intermediate_tiered:5>, [
	[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], 
	[null, <ore:ingotIron>, <minecraft:redstone>], 
	[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);
recipes.addShaped(<openmodularturrets:intermediate_tiered:6>, [
	[<ore:ingotNickel>, <ore:ingotNickel>, <ore:ingotNickel>], 
	[null, <openmodularturrets:intermediate_tiered:5>, <minecraft:redstone>], 
	[<ore:ingotNickel>, <ore:ingotNickel>, <ore:ingotNickel>]]);
recipes.addShaped(<openmodularturrets:intermediate_tiered:7>, [
	[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>], 
	[null, <openmodularturrets:intermediate_tiered:6>, <openmodularturrets:intermediate_regular>], 
	[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]]);
recipes.addShaped(<openmodularturrets:intermediate_tiered:8>, [
	[<minecraft:quartz>, <ore:ingotCobalt>, <minecraft:quartz>], 
	[null, <openmodularturrets:intermediate_tiered:7>, <openmodularturrets:intermediate_regular>], 
	[<minecraft:quartz>, <ore:ingotCobalt>, <minecraft:quartz>]]);
recipes.addShaped(<openmodularturrets:intermediate_tiered:9>, [
	[<ore:ingotAbyssalnite>, <minecraft:quartz>, <ore:ingotAbyssalnite>], 
	[null, <openmodularturrets:intermediate_tiered:8>, <openmodularturrets:intermediate_regular>], 
	[<ore:ingotAbyssalnite>, <minecraft:quartz>, <ore:ingotAbyssalnite>]]);


// Barrels
recipes.remove(<openmodularturrets:intermediate_tiered:10>);
recipes.remove(<openmodularturrets:intermediate_tiered:11>);
recipes.remove(<openmodularturrets:intermediate_tiered:12>);
recipes.remove(<openmodularturrets:intermediate_tiered:13>);
recipes.remove(<openmodularturrets:intermediate_tiered:14>);
recipes.addShaped(<openmodularturrets:intermediate_tiered:10>, [
	[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], 
	[null, <ore:ingotIron>, null], 
	[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);
recipes.addShaped(<openmodularturrets:intermediate_tiered:11>, [
	[<ore:ingotNickel>, <ore:ingotNickel>, <ore:ingotNickel>], 
	[null, <openmodularturrets:intermediate_tiered:10>, null], 
	[<ore:ingotNickel>, <ore:ingotNickel>, <ore:ingotNickel>]]);
recipes.addShaped(<openmodularturrets:intermediate_tiered:12>, [
	[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>], 
	[null, <openmodularturrets:intermediate_tiered:11>, null], 
	[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]]);
recipes.addShaped(<openmodularturrets:intermediate_tiered:13>, [
	[<minecraft:quartz>, <ore:ingotCobalt>, <minecraft:quartz>], 
	[null, <openmodularturrets:intermediate_tiered:12>, null], 
	[<minecraft:quartz>, <ore:ingotCobalt>, <minecraft:quartz>]]);
recipes.addShaped(<openmodularturrets:intermediate_tiered:14>, [
	[<ore:ingotAbyssalnite>, <ore:ingotAbyssalnite>, <ore:ingotAbyssalnite>], 
	[<minecraft:glowstone_dust>, <openmodularturrets:intermediate_tiered:13>, <minecraft:glowstone_dust>], 
	[<ore:ingotAbyssalnite>, <ore:ingotAbyssalnite>, <ore:ingotAbyssalnite>]]);


// Turrets
recipes.remove(<openmodularturrets:turret_base>);
recipes.remove(<openmodularturrets:turret_base:1>);
recipes.remove(<openmodularturrets:turret_base:2>);
recipes.remove(<openmodularturrets:turret_base:3>);
recipes.remove(<openmodularturrets:turret_base:4>);
recipes.addShaped(<openmodularturrets:turret_base>, [
	[<ore:ingotIron>, <ore:ingotCopper>, <ore:ingotIron>], 
	[<ore:ingotCopper>, <openmodularturrets:intermediate_tiered>, <ore:ingotCopper>], 
	[<ore:ingotIron>, <ore:ingotCopper>, <ore:ingotIron>]]);
recipes.addShaped(<openmodularturrets:turret_base:1>, [
	[<ore:ingotNickel>, <openmodularturrets:turret_base>, <ore:ingotNickel>], 
	[<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:1>, <openmodularturrets:intermediate_regular>], 
	[<ore:ingotNickel>, <openmodularturrets:intermediate_regular>, <ore:ingotNickel>]]);
recipes.addShaped(<openmodularturrets:turret_base:2>, [
	[<ore:ingotSteel>, <openmodularturrets:turret_base:1>, <ore:ingotSteel>], 
	[<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:2>, <openmodularturrets:intermediate_regular>], 
	[<ore:ingotSteel>, <openmodularturrets:intermediate_regular>, <ore:ingotSteel>]]);
recipes.addShaped(<openmodularturrets:turret_base:3>, [
	[<ore:ingotCobalt>, <openmodularturrets:turret_base:2>, <ore:ingotCobalt>], 
	[<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:3>, <openmodularturrets:intermediate_regular>], 
	[<ore:ingotCobalt>, <openmodularturrets:intermediate_regular>, <ore:ingotCobalt>]]);
recipes.addShaped(<openmodularturrets:turret_base:4>, [
	[<ore:ingotAbyssalnite>, <openmodularturrets:turret_base:3>, <ore:ingotAbyssalnite>], 
	[<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:4>, <openmodularturrets:intermediate_regular>], 
	[<ore:ingotAbyssalnite>, <openmodularturrets:intermediate_regular>, <ore:ingotAbyssalnite>]]);


// Storage expanders
recipes.remove(<openmodularturrets:expander>);
recipes.remove(<openmodularturrets:expander:1>);
recipes.remove(<openmodularturrets:expander:2>);
recipes.remove(<openmodularturrets:expander:3>);
recipes.remove(<openmodularturrets:expander:4>);
recipes.addShaped(<openmodularturrets:expander>, [
	[<ore:ingotCopper>, <ore:ingotIron>, <ore:ingotCopper>], 
	[<openmodularturrets:intermediate_regular>, <ore:chest>, <openmodularturrets:intermediate_regular>], 
	[<ore:ingotCopper>, <openmodularturrets:intermediate_regular>, <ore:ingotCopper>]]);
recipes.addShaped(<openmodularturrets:expander:1>, [
	[<ore:ingotSilver>, <openmodularturrets:expander>, <ore:ingotSilver>], 
	[<openmodularturrets:intermediate_regular>, <ore:chest>, <openmodularturrets:intermediate_regular>], 
	[<ore:ingotSilver>, <openmodularturrets:intermediate_regular>, <ore:ingotSilver>]]);
recipes.addShaped(<openmodularturrets:expander:2>, [
	[<ore:ingotGold>, <openmodularturrets:expander:1>, <ore:ingotGold>], 
	[<openmodularturrets:intermediate_regular>, <ore:chest>, <openmodularturrets:intermediate_regular>], 
	[<ore:ingotGold>, <openmodularturrets:intermediate_regular>, <ore:ingotGold>]]);
recipes.addShaped(<openmodularturrets:expander:3>, [
	[<ore:ingotCobalt>, <openmodularturrets:expander:2>, <ore:ingotCobalt>], 
	[<openmodularturrets:intermediate_regular>, <ore:chest>, <openmodularturrets:intermediate_regular>], 
	[<ore:ingotCobalt>, <openmodularturrets:intermediate_regular>, <ore:ingotCobalt>]]);
recipes.addShaped(<openmodularturrets:expander:4>, [
	[<ore:ingotAbyssalnite>, <openmodularturrets:expander:3>, <ore:ingotAbyssalnite>], 
	[<openmodularturrets:intermediate_regular>, <ore:chest>, <openmodularturrets:intermediate_regular>], 
	[<ore:ingotAbyssalnite>, <openmodularturrets:intermediate_regular>, <ore:ingotAbyssalnite>]]);


// Power expanders
recipes.remove(<openmodularturrets:expander:5>);
recipes.remove(<openmodularturrets:expander:6>);
recipes.remove(<openmodularturrets:expander:8>);
recipes.remove(<openmodularturrets:expander:9>);
recipes.addShaped(<openmodularturrets:expander:5>, [
	[<ore:ingotCopper>, <ore:ingotIron>, <ore:ingotCopper>], 
	[<openmodularturrets:intermediate_regular>, <minecraft:redstone>, <openmodularturrets:intermediate_regular>], 
	[<ore:ingotCopper>, <openmodularturrets:intermediate_regular>, <ore:ingotCopper>]]);
recipes.addShaped(<openmodularturrets:expander:6>, [
	[<ore:ingotSilver>, <openmodularturrets:expander:5>, <ore:ingotSilver>], 
	[<openmodularturrets:intermediate_regular>, <minecraft:redstone_block:*>, <openmodularturrets:intermediate_regular>], 
	[<ore:ingotSilver>, <openmodularturrets:intermediate_regular>, <ore:ingotSilver>]]);
recipes.addShaped(<openmodularturrets:expander:8>, [
	[<ore:ingotCobalt>, <openmodularturrets:expander:7>, <ore:ingotCobalt>], 
	[<openmodularturrets:intermediate_regular>, <minecraft:redstone_block:*>, <openmodularturrets:intermediate_regular>], 
	[<ore:ingotCobalt>, <openmodularturrets:intermediate_regular>, <ore:ingotCobalt>]]);
recipes.addShaped(<openmodularturrets:expander:9>, [
	[<ore:ingotAbyssalnite>, <openmodularturrets:expander:8>, <ore:ingotAbyssalnite>], 
	[<openmodularturrets:intermediate_regular>, <minecraft:redstone_block:*>, <openmodularturrets:intermediate_regular>], 
	[<ore:ingotAbyssalnite>, <openmodularturrets:intermediate_regular>, <ore:ingotAbyssalnite>]]);


// Disposable Item Turret
recipes.remove(<openmodularturrets:disposable_item_turret>);
recipes.addShaped(<openmodularturrets:disposable_item_turret>, [
	[null, <openmodularturrets:intermediate_tiered:10>, null], 
	[<ore:ingotIron>, <openmodularturrets:intermediate_tiered:5>, <ore:ingotIron>], 
	[<ore:ingotIron>, <minecraft:redstone>, <ore:ingotIron>]]);

// Potato Cannon
recipes.remove(<openmodularturrets:potato_cannon_turret>);
recipes.addShaped(<openmodularturrets:potato_cannon_turret>, [
	[<ore:ingotIron>, <openmodularturrets:intermediate_tiered:10>, <ore:ingotIron>], 
	[<ore:ingotIron>, <openmodularturrets:intermediate_tiered:10>, <ore:ingotIron>], 
	[<minecraft:redstone>, <openmodularturrets:intermediate_tiered:5>, <minecraft:redstone>]]);

// Gun Turret
recipes.remove(<openmodularturrets:machine_gun_turret>);
recipes.addShaped(<openmodularturrets:machine_gun_turret>, [
	[null, <openmodularturrets:intermediate_tiered:11>, null], 
	[<ore:ingotNickel>, <openmodularturrets:intermediate_tiered:11>, <ore:ingotNickel>], 
	[<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:6>, <openmodularturrets:intermediate_regular>]]);

// Incendiary Turret
recipes.remove(<openmodularturrets:incendiary_turret>);
recipes.addShaped(<openmodularturrets:incendiary_turret>, [
	[<openmodularturrets:intermediate_tiered:11>, null, <openmodularturrets:intermediate_tiered:11>], 
	[<openmodularturrets:intermediate_tiered:6>, <ore:ingotNickel>, <openmodularturrets:intermediate_tiered:6>], 
	[<openmodularturrets:intermediate_regular>, <ore:ingotNickel>, <openmodularturrets:intermediate_regular>]]);

// Grenade Launcher
recipes.remove(<openmodularturrets:grenade_turret>);
recipes.addShaped(<openmodularturrets:grenade_turret>, [
	[null, <openmodularturrets:intermediate_tiered:12>, null], 
	[<ore:ingotSteel>, <openmodularturrets:intermediate_tiered:7>, <ore:ingotSteel>], 
	[<ore:ingotSteel>, <openmodularturrets:intermediate_regular>, <ore:ingotSteel>]]);

// Relativistic Turret
recipes.remove(<openmodularturrets:relativistic_turret>);
recipes.addShaped(<openmodularturrets:relativistic_turret>, [
	[<ore:ingotSteel>, <minecraft:ender_pearl>, <ore:ingotSteel>], 
	[<minecraft:ender_pearl>, <openmodularturrets:intermediate_tiered:2>, <minecraft:ender_pearl>], 
	[<ore:ingotSteel>, <openmodularturrets:intermediate_regular>, <ore:ingotSteel>]]);

// Rocket Launcher Turret
recipes.remove(<openmodularturrets:rocket_turret>);
recipes.addShaped(<openmodularturrets:rocket_turret>, [
	[<minecraft:quartz>, <openmodularturrets:intermediate_tiered:13>, <minecraft:quartz>], 
	[<openmodularturrets:intermediate_tiered:13>, <openmodularturrets:intermediate_tiered:8>, <openmodularturrets:intermediate_tiered:13>], 
	[<ore:ingotCobalt>, <openmodularturrets:intermediate_regular>, <ore:ingotCobalt>]]);

// Teleporter Turret
recipes.remove(<openmodularturrets:teleporter_turret>);
recipes.addShaped(<openmodularturrets:teleporter_turret>, [
	[<minecraft:ender_eye>, <minecraft:quartz>, <minecraft:ender_eye>], 
	[<ore:ingotCobalt>, <openmodularturrets:intermediate_tiered:3>, <ore:ingotCobalt>], 
	[<minecraft:ender_eye>, <openmodularturrets:intermediate_regular>, <minecraft:ender_eye>]]);

// Laser Turret
recipes.remove(<openmodularturrets:laser_turret>);
recipes.addShaped(<openmodularturrets:laser_turret>, [
	[null, <openmodularturrets:intermediate_tiered:14>, null], 
	[<ore:ingotAbyssalnite>, <openmodularturrets:intermediate_tiered:9>, <ore:ingotAbyssalnite>], 
	[<openmodularturrets:intermediate_regular>, <ore:ingotAbyssalnite>, <openmodularturrets:intermediate_regular>]]);

// Rail Gun Turret
recipes.remove(<openmodularturrets:rail_gun_turret>);
recipes.addShaped(<openmodularturrets:rail_gun_turret>, [
	[<ore:ingotAbyssalnite>, <openmodularturrets:intermediate_tiered:14>, <ore:ingotAbyssalnite>], 
	[<ore:ingotAbyssalnite>, <openmodularturrets:intermediate_tiered:14>, <ore:ingotAbyssalnite>], 
	[<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:9>, <openmodularturrets:intermediate_regular>]]);

// Turret Crank
recipes.addShaped(<openmodularturrets:lever_block>, [
	[<minecraft:cobblestone:*>, <minecraft:cobblestone:*>, <minecraft:cobblestone:*>], 
	[<minecraft:cobblestone:*>, null, null], 
	[<minecraft:cobblestone:*>, null, null]]);
