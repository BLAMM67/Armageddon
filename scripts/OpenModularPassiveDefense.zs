import mods.tconstruct.Casting;

print("*** Tweaking OpenModularPassiveDefense ***");

// Replace hardened block recipies
recipes.remove(<ompd:hardened>);
recipes.remove(<ompd:hardened:1>);
recipes.remove(<ompd:hardened:2>);
recipes.remove(<ompd:hardened:3>);
recipes.remove(<ompd:hardened:4>);

// Hardered blocks use the smeltery
Casting.addBasinRecipe(<ompd:hardened>,   <liquid:concrete> * 125, <immersiveengineering:woodenDecoration:1>, true, 40);
Casting.addBasinRecipe(<ompd:hardened:1>, <liquid:iron> * 72, <ompd:hardened>, true, 40);
Casting.addBasinRecipe(<ompd:hardened:2>, <liquid:constantan> * 72, <ompd:hardened:1>, true, 20);
Casting.addBasinRecipe(<ompd:hardened:3>, <liquid:obsidian> * 72, <ompd:hardened:2>, true, 20);
Casting.addBasinRecipe(<ompd:hardened:4>, <liquid:manyullyn> * 72, <ompd:hardened:3>, true, 20);


// Replace hardened fence recipies
recipes.remove(<ompd:fence>);
recipes.remove(<ompd:fence:1>);
recipes.remove(<ompd:fence:2>);
recipes.remove(<ompd:fence:3>);
recipes.remove(<ompd:fence:4>);

recipes.addShaped(<ompd:fence> * 5, [
	[<immersiveengineering:woodenDecoration>, <immersiveengineering:material:1>, <immersiveengineering:woodenDecoration> ],
	[<immersiveengineering:material:1>, <immersiveengineering:woodenDecoration>, <immersiveengineering:material:1>],
	[<immersiveengineering:woodenDecoration>, <immersiveengineering:material:1>, <immersiveengineering:woodenDecoration> ]
]);

recipes.addShaped(<ompd:fence:1> * 5, [
	[<ompd:fence>, <immersiveengineering:material:3>,<ompd:fence>],
	[<immersiveengineering:material:3>, <ompd:fence>, <immersiveengineering:material:3>],
	[<ompd:fence>, <immersiveengineering:material:3>,<ompd:fence>]
]);

val electrumRod = <tconstruct:tool_rod>.withTag({Material: "electrum"});
recipes.addShaped(<ompd:fence:2> * 5, [
	[<ompd:fence:1>, electrumRod, <ompd:fence:1>],
	[electrumRod, <ompd:fence:1>, electrumRod],
	[<ompd:fence:1>, electrumRod, <ompd:fence:1>]
]);

val cobaltRod = <tconstruct:tool_rod>.withTag({Material: "cobalt"});
recipes.addShaped(<ompd:fence:3> * 5, [
	[<ompd:fence:2>, cobaltRod, <ompd:fence:2>],
	[cobaltRod, <ompd:fence:2>, cobaltRod],
	[<ompd:fence:2>, cobaltRod, <ompd:fence:2>]
]);

val manyullynRod = <tconstruct:tool_rod>.withTag({Material: "manyullyn"});
recipes.addShaped(<ompd:fence:4> * 5, [
	[<ompd:fence:3>, manyullynRod, <ompd:fence:3>],
	[manyullynRod, <ompd:fence:3>, manyullynRod],
	[<ompd:fence:3>, manyullynRod, <ompd:fence:3>]
]);
