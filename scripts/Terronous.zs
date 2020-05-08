import mods.naturesaura.TreeRitual;
import mods.naturesaura.Altar;
import mods.botania.ManaInfusion;

val AncientSapling = <naturesaura:ancient_sapling>;
val JungleSapling = <minecraft:sapling:3>;
val OakSapling = <minecraft:sapling>;
val Manapowder = <botania:manaresource:23>;
val PetalApothecary = <botania:altar>;
val CobbleSlab = <ore:slabCobblestone>;
val GoldLeaf = <naturesaura:gold_leaf>;
val CobbleWall = <minecraft:cobblestone_wall>;
val CobbleStone = <minecraft:cobblestone>;
val FloralFertilizer = <botania:fertilizer>;
val EnrichedBonemeal = <skyresources:baseitemcomponent:4>;
val Bonemeal = <minecraft:dye:15>;
val PlantBall = <plants2:plantball>;
val TerronousCrude = <contenttweaker:terronous_crude>;
val TerronousRefined = <contenttweaker:terronous_refined>;
val CopperPlate = <ore:plateCopper>;
val LivingWood = <botania:livingwood>;
val ManaSpreader = <botania:spreader>;
val LivingRock = <botania:livingrock>;
val NatureAltar = <naturesaura:nature_altar>;
val SyrmoriteIngot = <ore:ingotSyrmorite>;
val JoyToken = <naturesaura:token_joy>;

TreeRitual.removeRecipe(AncientSapling);
TreeRitual.addRecipe("ancient_sapling", JungleSapling, AncientSapling, 600, [Manapowder, TerronousRefined, <ore:gemLifeCrystal>, <naturesaura:gold_powder>, Manapowder, TerronousRefined, <thebetweenlands:sapling_spirit_tree>, <naturesaura:gold_powder>]);

recipes.remove(PetalApothecary);
recipes.addShaped(PetalApothecary, [[CobbleSlab, TerronousCrude, CobbleSlab],[GoldLeaf, CobbleWall, GoldLeaf],[CobbleStone, CobbleStone, CobbleStone]]);

recipes.remove(FloralFertilizer);
recipes.addShapeless(FloralFertilizer * 4, [PlantBall, PlantBall, PlantBall, PlantBall, EnrichedBonemeal]);
recipes.addShapeless(FloralFertilizer * 2, [PlantBall, PlantBall, PlantBall, PlantBall, Bonemeal]);

recipes.remove(EnrichedBonemeal);
Altar.addRecipe("enriched_bonemeal", Bonemeal, EnrichedBonemeal, null, 10000, 20);

TreeRitual.addRecipe("refined_terronous", OakSapling, TerronousRefined * 8, 300, [TerronousCrude, TerronousCrude, TerronousCrude, TerronousCrude, TerronousCrude, TerronousCrude, TerronousCrude, TerronousCrude]);

ManaInfusion.addInfusion(TerronousRefined, TerronousCrude, 3000);

recipes.remove(ManaSpreader);
recipes.addShaped(ManaSpreader, [[LivingWood, LivingWood, LivingWood],[LivingWood,TerronousCrude,CopperPlate],[LivingWood,LivingWood,LivingWood]]);

TreeRitual.removeRecipe(NatureAltar);
TreeRitual.addRecipe("nature_altar", OakSapling, NatureAltar, 500, [LivingRock,SyrmoriteIngot,LivingRock,TerronousRefined,LivingRock,JoyToken,LivingRock,GoldLeaf]);