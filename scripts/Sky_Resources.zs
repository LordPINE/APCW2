import crafttweaker.item.IItemStack;
import mods.skyresources.condenser;
import mods.skyresources.combustion;
import mods.jei.JEI;

val to_remove = [
    <skyresources:condenser>,
    <skyresources:condenser:1>,
    <skyresources:condenser:6>,
    <skyresources:condenser:8>,
    <skyresources:condenser:9>,
    <skyresources:condenser:10>,
    <skyresources:condenser:11>,
    <skyresources:condenser:15>,

    <skyresources:cactuscuttingknife>,
    <skyresources:stonecuttingknife>,
    <skyresources:ironcuttingknife>,
    <skyresources:diamondcuttingknife>,
    <skyresources:stonegrinder>,
    <skyresources:irongrinder>,
    <skyresources:diamondgrinder>,

    <skyresources:combustionheater>,
    <skyresources:combustionheater:1>,
    <skyresources:combustionheater:6>,
    <skyresources:combustionheater:8>,
    <skyresources:combustionheater:9>,
    <skyresources:combustionheater:10>,
    <skyresources:combustionheater:11>,
    <skyresources:combustionheater:15>,

    <skyresources:heatprovider>,
    <skyresources:heatprovider:1>,
    <skyresources:heatprovider:6>,
    <skyresources:heatprovider:8>,
    <skyresources:heatprovider:9>,
    <skyresources:heatprovider:10>,
    <skyresources:heatprovider:11>,
    <skyresources:heatprovider:15>,

    <skyresources:casing>,
    <skyresources:casing:1>,
    <skyresources:casing:6>,
    <skyresources:casing:8>,
    <skyresources:casing:9>,
    <skyresources:casing:10>,
    <skyresources:casing:11>,
    <skyresources:casing:15>
] as IItemStack[];

for item in to_remove {
    JEI.removeAndHide(item);
}