import crafttweaker.item.IItemStack;

val SkyRootTools = [
    <aether_legacy:skyroot_pickaxe>,
    <aether_legacy:skyroot_axe>,
    <aether_legacy:skyroot_shovel>,
    <aether_legacy:skyroot_sword>
] as IItemStack[];

for i, item in SkyRootTools {
    recipes.remove(item);
    item.addTooltip(format.red("Disabled. These things are a dupe bug waiting to happen."));
}