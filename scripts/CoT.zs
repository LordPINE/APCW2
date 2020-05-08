#loader contenttweaker
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.Color;

val CreationCatalyst = VanillaFactory.createItem("creation_catalyst");
val DestructionCatalyst = VanillaFactory.createItem("destruction_catalyst");

CreationCatalyst.rarity = "EPIC";
DestructionCatalyst.rarity = "EPIC";

CreationCatalyst.register();
DestructionCatalyst.register();

val AlchemicalBase = VanillaFactory.createFluid("alchemical_base", 16777215);

AlchemicalBase.stillLocation = "contenttweaker:fluids/alchemical_base";
AlchemicalBase.flowingLocation = "contenttweaker:fluids/alchemical_base";

AlchemicalBase.register();

val AlchemicalBase2 = VanillaFactory.createFluid("alchemical_base_empowered", 16777215);

AlchemicalBase2.stillLocation = "contenttweaker:fluids/alchemical_base_empowered";
AlchemicalBase2.flowingLocation = "contenttweaker:fluids/alchemical_base_empowered";

AlchemicalBase2.register();

val CondensedVoid = VanillaFactory.createFluid("condensed_void", 16777215);

CondensedVoid.stillLocation = "contenttweaker:fluids/condensed_void";
CondensedVoid.flowingLocation = "contenttweaker:fluids/condensed_void_flow";

CondensedVoid.register();

val Quicksilver = VanillaFactory.createFluid("quicksilver", Color.fromHex("DDDDDD"));

Quicksilver.density = 10000;
Quicksilver.viscosity = 1200;

Quicksilver.register();

val ResonantQuartz = VanillaFactory.createItem("resonant_quartz");

ResonantQuartz.rarity = "RARE";

ResonantQuartz.register();

var AlchemicalStone1 = VanillaFactory.createBlock("alchemical_stone_1", <blockmaterial:rock>);
AlchemicalStone1.setBlockHardness(3.0);
AlchemicalStone1.setBlockResistance(30.0);
AlchemicalStone1.setToolLevel(0);
AlchemicalStone1.setBlockSoundType(<soundtype:stone>);
AlchemicalStone1.register();

var AlchemicalStone2 = VanillaFactory.createBlock("alchemical_stone_2", <blockmaterial:rock>);
AlchemicalStone2.setBlockHardness(3.0);
AlchemicalStone2.setBlockResistance(30.0);
AlchemicalStone2.setToolLevel(0);
AlchemicalStone2.setBlockSoundType(<soundtype:stone>);
AlchemicalStone2.register();

var AlchemicalStone3 = VanillaFactory.createBlock("alchemical_stone_3", <blockmaterial:rock>);
AlchemicalStone3.setBlockHardness(3.0);
AlchemicalStone3.setBlockResistance(30.0);
AlchemicalStone3.setToolLevel(0);
AlchemicalStone3.setBlockSoundType(<soundtype:stone>);
AlchemicalStone3.register();

var AlchemicalStone4 = VanillaFactory.createBlock("alchemical_stone_4", <blockmaterial:rock>);
AlchemicalStone4.setBlockHardness(3.0);
AlchemicalStone4.setBlockResistance(30.0);
AlchemicalStone4.setToolLevel(0);
AlchemicalStone4.setBlockSoundType(<soundtype:stone>);
AlchemicalStone4.register();

var RedShard = VanillaFactory.createItem("red_shard");
RedShard.register();

var RedGem = VanillaFactory.createItem("red_gem");
RedGem.register();

val Aethers = ["luminous", "tenebrous", "terronous", "igneous", "aqueous", "aeronous"] as string[];
val Tiers = ["crude", "refined", "enhanced", "turbocharged"] as string[];
val Rarities = ["COMMON", "UNCOMMON", "RARE", "EPIC"] as string[];

for aether in Aethers {
    for i, tier in Tiers {
        var item = VanillaFactory.createItem(aether ~ "_" ~ tier);
        item.rarity = Rarities[i];
        item.register();
    }
    var plant_matter = VanillaFactory.createItem(aether ~ "_plant_matter");
    plant_matter.register();
    var font_core = VanillaFactory.createBlock(aether ~ "_font_core", <blockmaterial:rock>);
    font_core.setWitherProof(true);
    font_core.setBlockHardness(-1.0);
    font_core.setBlockResistance(100000000.0);
    font_core.register();
}