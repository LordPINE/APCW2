import mods.embers.Alchemy;
import mods.botania.ElvenTrade;
import mods.bloodmagic.BloodAltar;

val EnrichedChaos = <silentgems:craftingmaterial:1>;
val ChaosEssence = <silentgems:craftingmaterial>;
val EndimiumDust = <arcanearchives:item_component_radiantdust>;
val GemDef = <silentgems:gem>.definition;
val SuperGemDef = <silentgems:gemsuper>.definition;
val EnderEssence = <silentgems:craftingmaterial:4>;

recipes.removeByRecipeName("silentgems:chaos_essence_enriched");
Alchemy.add(EnrichedChaos * 4, [EndimiumDust,ChaosEssence,ChaosEssence,ChaosEssence,ChaosEssence], {"dawnstone":16 to 32, "silver":16 to 32});
ElvenTrade.addRecipe([EnrichedChaos],[ChaosEssence]);
BloodAltar.addRecipe(EnrichedChaos, ChaosEssence, 4, 10000, 50, 50);

for i in 0 .. 48 {
    recipes.remove(SuperGemDef.makeStack(i));
    recipes.addShaped(SuperGemDef.makeStack(i), [[EnrichedChaos,GemDef.makeStack(i),EnrichedChaos],[EnrichedChaos,EnderEssence,EnrichedChaos],[EnrichedChaos,GemDef.makeStack(i),EnrichedChaos]]);
}