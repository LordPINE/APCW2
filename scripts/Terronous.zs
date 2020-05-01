import mods.naturesaura.TreeRitual;

val AncientSapling = <naturesaura:ancient_sapling>;
val JungleSapling = <minecraft:sapling:3>;
val Manapowder = <botania:manaresource:23>;
val PetalApothecary = <botania:altar>;
val CobbleSlab = <ore:slabCobblestone>;
val GoldLeaf = <naturesaura:gold_leaf>;
val CobbleWall = <minecraft:cobblestone_wall>;
val CobbleStone = <minecraft:cobblestone>;

TreeRitual.removeRecipe(AncientSapling);
TreeRitual.addRecipe("ancient_sapling", JungleSapling, AncientSapling, 600, [Manapowder, <contenttweaker:terronous_refined>, <ore:gemLifeCrystal>, <naturesaura:gold_powder>, Manapowder, <contenttweaker:terronous_refined>, <thebetweenlands:sapling_spirit_tree>, <naturesaura:gold_powder>]);

recipes.remove(PetalApothecary);
recipes.addShaped(PetalApothecary, [[CobbleSlab, <contenttweaker:terronous_crude>, CobbleSlab],[GoldLeaf, CobbleWall, GoldLeaf],[CobbleStone, CobbleStone, CobbleStone]]);