import mods.botania.PureDaisy;
import mods.botania.ManaInfusion;
import mods.botania.RuneAltar;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val PetalApothecary = <botania:altar>;
val CobbleSlab = <ore:slabCobblestone>;
val WhitePetal = <ore:petalWhite>;
val MarblePillar = <astralsorcery:blockmarble:2>;
val TerraCrystal = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}).onlyWithTag({Aspects: [{amount: 1, key: "terra"}]});
val CobbleStone = <ore:cobblestone>;
val LivingRock = <botania:livingrock>;
val LivingWood = <botania:livingwood>;
val InfusedWood = <astralsorcery:blockinfusedwood>;
val Marble = <astralsorcery:blockmarble>;
val ShiftingStar = <astralsorcery:itemshiftingstar>;
val ManaPearl = <botania:manaresource:1>;
val RunicAltar = <botania:runealtar>;
val ManaSteel = <botania:manaresource>;
val ManaSteelMaterials = [<defiledlands:umbrium_ingot>,
                          <thaumcraft:ingot:2>,
                          <thaumcraft:ingot>,
                          <embers:ingot_dawnstone>,
                          <minecraft:iron_ingot>
] as IIngredient[];
val ManaSteelCosts = [6000,3000,1500,1500,12000] as int[];
val SolarRunes = [<solar:runes:1>,<solar:runes:2>,<solar:runes:3>,<solar:runes:4>] as IItemStack[];
val BasicRunes = [<botania:rune:1>,<botania:rune>,<botania:rune:2>,<botania:rune:3>] as IItemStack[];
val StarDust = <astralsorcery:itemcraftingcomponent:2>;
val ManaPowder = <botania:manaresource:23>;
val ManaQuartz = <botania:quartz:1>;
val TCCrystals = [  <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}),<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}),
                    <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}),<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]})] as IIngredient[];
val ManaRune = <botania:rune:8>;
val MoonRune = <solar:runes:8>;
val SunRune = <solar:runes:7>;
val SeasonRunes = [<botania:rune:7>,<botania:rune:6>,<botania:rune:5>,<botania:rune:4>] as IItemStack[];
val EnchantedGravitite = <aether_legacy:enchanted_gravitite>;
val DawnStone = <ore:ingotDawnstone>;
val ResonatingGem = <astralsorcery:itemcraftingcomponent:4>;

recipes.remove(PetalApothecary);
recipes.addShaped(PetalApothecary, [[CobbleSlab, WhitePetal, CobbleSlab],[MarblePillar, TerraCrystal, MarblePillar],[CobbleStone, CobbleStone, CobbleStone]]);

PureDaisy.removeRecipe(LivingWood);
PureDaisy.addRecipe(InfusedWood, LivingWood);

PureDaisy.removeRecipe(LivingRock);
PureDaisy.addRecipe(Marble, LivingRock);

recipes.remove(RunicAltar);
recipes.addShaped(RunicAltar,[[LivingRock,ShiftingStar,LivingRock],[LivingRock,ManaPearl,LivingRock]]);

ManaInfusion.removeRecipe(ManaSteel);
for i, item in ManaSteelMaterials {
    ManaInfusion.addInfusion(ManaSteel, item, ManaSteelCosts[i]);
}

for i, item in BasicRunes {
    RuneAltar.removeRecipe(item);
    RuneAltar.addRecipe(item * 3, [SolarRunes[i],StarDust,ManaPowder,ManaQuartz,TCCrystals[i],ManaSteel], 5200);
}

RuneAltar.removeRecipe(ManaRune);
RuneAltar.addRecipe(ManaRune, [MoonRune,StarDust,ManaSteel,ManaPearl,SunRune,StarDust,ManaSteel,ManaPearl], 8000);

RuneAltar.removeRecipe(SeasonRunes[0]);
RuneAltar.addRecipe(SeasonRunes[0], [BasicRunes[2],BasicRunes[1],DawnStone,ResonatingGem,EnchantedGravitite],8000);

RuneAltar.removeRecipe(SeasonRunes[1]);
RuneAltar.addRecipe(SeasonRunes[1], [BasicRunes[0],BasicRunes[3],DawnStone,ResonatingGem,EnchantedGravitite],8000);

RuneAltar.removeRecipe(SeasonRunes[2]);
RuneAltar.addRecipe(SeasonRunes[2], [BasicRunes[2],BasicRunes[3],DawnStone,ResonatingGem,EnchantedGravitite],8000);

RuneAltar.removeRecipe(SeasonRunes[3]);
RuneAltar.addRecipe(SeasonRunes[3], [BasicRunes[0],BasicRunes[1],DawnStone,ResonatingGem,EnchantedGravitite],8000);