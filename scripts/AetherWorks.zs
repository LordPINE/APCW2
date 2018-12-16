import mods.embers.Mixer;
import mods.embers.Melter;
import mods.astralsorcery.Altar;

val StarLight = <liquid:astralsorcery.liquidstarlight>;
val Aetherium = <liquid:aetherworks.aetherium_gas>;
val ImpureAetherium = <liquid:aetherworks.impure_aetherium_gas>;
val AetheriumShard = <aetherworks:item_resource>;
val AetheriumPrism = <aetherworks:prism>;
val AetheriumLens = <aetherworks:item_resource:2>;
val ResonatingGem = <astralsorcery:itemcraftingcomponent:4>;
val ArchaicCircuit = <embers:archaic_circuit>;
val FluidTransfer = <embers:fluid_transfer>;
val DawnStone = <ore:ingotDawnstone>;

Mixer.remove(Aetherium * 16);
Mixer.add(Aetherium * 16,[StarLight*8, ImpureAetherium*8]);

Melter.remove(AetheriumShard);

recipes.remove(AetheriumPrism);
Altar.addConstellationAltarRecipe("aetherium_prism_altar", AetheriumPrism, 3000, 600, [ResonatingGem,ArchaicCircuit,ResonatingGem,ArchaicCircuit,FluidTransfer,ArchaicCircuit,ResonatingGem,ArchaicCircuit,ResonatingGem,
                                    AetheriumLens,AetheriumLens,AetheriumLens,AetheriumLens,DawnStone,DawnStone,DawnStone,DawnStone,DawnStone,DawnStone,DawnStone,DawnStone]);