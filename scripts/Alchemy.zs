import crafttweaker.item.IItemStack;
import mods.embers.Mixer;
import mods.botaniatweaks.Agglomeration;
import mods.evilcraft.BloodInfuser;
import mods.skyresources.combustion;
import mods.skyresources.fusion;
import mods.skyresources.catalysts;
import mods.skyresources.condenser;
import mods.embers.Melter;
import mods.embers.Alchemy;
import mods.roots.Mortar;
import mods.astralsorcery.Grindstone;

val StarLight = <liquid:astralsorcery.liquidstarlight>;
val Blood = <liquid:evilcraftblood>;
val AlchemicalBase = <liquid:alchemical_base>;
val CondensedVoid = <liquid:condensed_void>;
val AetheriumLiquid = <liquid:aetherworks.aetherium_gas>;
val AlchemicalBase2 = <liquid:alchemical_base_empowered>;
val ResonantQuartz = <contenttweaker:resonant_quartz>;
val ManaPearl = <botania:manaresource:1>;
val Quartz = <minecraft:quartz>;
val AlchemicalSlurry = <liquid:alchemical_redstone>;
val AlchemicalDust1 = <skyresources:alchemyitemcomponent:2>;
val AlchemicalDust2 = <skyresources:alchemyitemcomponent:3>;
val AlchemicalDust3 = <skyresources:alchemyitemcomponent:4>;
val AlchemicalDust4 = <skyresources:alchemyitemcomponent:5>;
val Redstone = <ore:dustRedstone>;
val Aethers = ["luminous", "tenebrous", "terronous", "igneous", "aqueous", "aeronous"] as string[];
val IgneousRefined = <contenttweaker:igneous_refined>;
val IgneousCrude = <contenttweaker:igneous_crude>;

val DisabledAlchemicalDusts = [
    <skyresources:orealchdust:5>,
    <skyresources:orealchdust:6>,
    <skyresources:orealchdust:8>,
    <skyresources:orealchdust:10>,
    <skyresources:orealchdust:11>,
    <skyresources:orealchdust:12>,
    <skyresources:orealchdust:14>,
    <skyresources:orealchdust:17>,
    <skyresources:orealchdust:21>
] as IItemStack[];

val NormalAlchemicalIngots = [
    <embers:ingot_tin>,
    <embers:ingot_copper>,
    <embers:ingot_lead>,
    <minecraft:iron_ingot>,
    <minecraft:gold_ingot>,
    <embers:ingot_silver>
] as IItemStack[];
val NormalAlchemicalDusts = [
    <skyresources:orealchdust:3>,
    <skyresources:orealchdust:2>,
    <skyresources:orealchdust:9>,
    <skyresources:orealchdust>,
    <skyresources:orealchdust:1>,
    <skyresources:orealchdust:4>
] as IItemStack[];
val TieredDusts = [
    <skyresources:alchemyitemcomponent:2>,
    <skyresources:alchemyitemcomponent:2>,
    <skyresources:alchemyitemcomponent:2>,
    <skyresources:alchemyitemcomponent:3>,
    <skyresources:alchemyitemcomponent:4>,
    <skyresources:alchemyitemcomponent:4>

] as IItemStack[];

val PlatinumAlchemicalDust = <skyresources:orealchdust:7>;
val AetheriumBlock = <aetherworks:block_aether>;
val PlatinumIngot = <thermalfoundation:material:134>;

val DraconiumAlchemicalDust = <skyresources:orealchdust:13>;
val DragonScale = <quark:enderdragon_scale>;
val DraconiumIngot = <draconicevolution:draconium_ingot>;

Mixer.add(AlchemicalBase * 16,[Blood*8, StarLight*8, AlchemicalSlurry * 8]);
Mixer.add(AlchemicalBase2 * 16,[AlchemicalBase*8, CondensedVoid*8, AetheriumLiquid * 1]);

Agglomeration.addRecipe(ResonantQuartz, [Quartz, ManaPearl], 100000, 0xFFFFFF, 0x0000FF, <botania:quartztypedark>, <botania:quartztypemana>, <botania:quartztypeelf>);

BloodInfuser.addRecipe(Quartz, Blood*10000, 3, ResonantQuartz, 800, 0); 

combustion.removeRecipe(AlchemicalDust1);
fusion.removeRecipe(AlchemicalDust2);
fusion.removeRecipe(AlchemicalDust3);

catalysts.add(<avaritia:resource:5>, 100000000);

for i, item in DisabledAlchemicalDusts {
    fusion.removeRecipe(item);
}

for i, dust in NormalAlchemicalDusts {
    fusion.removeRecipe(dust);
    fusion.addRecipe(dust, [NormalAlchemicalIngots[i], TieredDusts[i]], 1);
}

fusion.removeRecipe(PlatinumAlchemicalDust);
fusion.addRecipe(PlatinumAlchemicalDust, [AlchemicalDust4, AetheriumBlock], 1);
fusion.addRecipe(PlatinumAlchemicalDust, [AlchemicalDust4, PlatinumIngot], 1);

fusion.removeRecipe(DraconiumAlchemicalDust);
fusion.addRecipe(DraconiumAlchemicalDust, [AlchemicalDust4, DragonScale], 1);
fusion.addRecipe(DraconiumAlchemicalDust, [AlchemicalDust4, DraconiumIngot], 1);

recipes.addShapeless("redstone_bucket", <contenttweaker:redstone_bucket>, [<minecraft:bucket>, Redstone, Redstone, Redstone, Redstone, Redstone, Redstone, Redstone, Redstone]);
furnace.addRecipe(<forge:bucketfilled>.withTag({FluidName: "quicksilver", Amount: 1000}), <contenttweaker:redstone_bucket>);

Melter.remove(<liquid:alchemical_redstone> * 144);
Melter.remove(<liquid:alchemical_redstone> * 1008);
Melter.remove(<liquid:alchemical_redstone> * 1296);
Melter.add(<liquid:quicksilver> * 125, Redstone);

for aether in Aethers {
    Alchemy.addAspect(aether, itemUtils.getItem("contenttweaker:" ~ aether ~ "_aspectus"));
}

Mortar.addRecipe(<embers:dust_ember>, [<embers:shard_ember>]);
Grindstone.addRecipe(<embers:shard_ember>, <embers:dust_ember>);
combustion.addRecipe(IgneousRefined, [IgneousCrude, <embers:dust_ember> * 4], 200);

condenser.addRecipe(<ore:ingotTin>.firstItem, 300, <ore:dustLead>.firstItem, <liquid:quicksilver>, 1);
condenser.addRecipe(<ore:ingotIron>.firstItem, 400, <ore:dustTin>.firstItem, <liquid:quicksilver>, 1);
condenser.addRecipe(<ore:ingotCopper>.firstItem, 500, <ore:dustIron>.firstItem, <liquid:quicksilver>, 1);
condenser.addRecipe(<ore:ingotSilver>.firstItem, 600, <ore:dustCopper>.firstItem, <liquid:quicksilver>, 1);

combustion.addRecipe(<ore:ingotTin>.firstItem, [<ore:dustLead>.firstItem, <minecraft:redstone> * 12], 100);
combustion.addRecipe(<ore:ingotIron>.firstItem, [<ore:dustTin>.firstItem, <minecraft:redstone> * 12], 120);