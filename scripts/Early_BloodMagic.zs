import mods.bloodmagic.BloodAltar;

val RudimentarySnare = <bloodmagic:soul_snare>;
val IronIngot = <ore:ingotIron>;
val GoldenString = <evilcraft:golden_string>;
val CrushedDarkGem = <evilcraft:dark_gem_crushed>;
val DarkPearl = <midnight:dark_pearl>;
val T1Orb = <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"});
val DarkPowerGemBlock = <evilcraft:dark_power_gem_block>;
val T2Orb = <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"});
val BloodWaxedCoalBlock = <evilcraft:blood_waxed_coal_block>;
val T3Orb = <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"});
val CorruptedIngot = <ore:ingotCorrupted>;
val BloodInfusionCore = <evilcraft:blood_infusion_core>;
val ArcaneStone = <thaumcraft:stone_arcane>;
val BloodAltarBlock = <bloodmagic:altar>;
val DemonWill = <bloodmagic:monster_soul>;

recipes.remove(RudimentarySnare);
recipes.addShaped(RudimentarySnare * 4, [[GoldenString,IronIngot,GoldenString],[IronIngot,CrushedDarkGem,IronIngot],[GoldenString,IronIngot,GoldenString]]);

BloodAltar.removeRecipe(<minecraft:diamond>);
BloodAltar.addRecipe(T1Orb, DarkPearl, 0, 2000, 2, 1);

BloodAltar.removeRecipe(<minecraft:redstone_block>);
BloodAltar.addRecipe(T2Orb, DarkPowerGemBlock, 1, 5000, 5, 5);

BloodAltar.removeRecipe(<minecraft:gold_block>);
BloodAltar.addRecipe(T3Orb, BloodWaxedCoalBlock, 2, 25000, 20, 20);

recipes.remove(BloodAltarBlock);
recipes.addShaped(BloodAltarBlock, [[ArcaneStone,null,ArcaneStone],[ArcaneStone,BloodInfusionCore,ArcaneStone],[CorruptedIngot,DemonWill,CorruptedIngot]]);