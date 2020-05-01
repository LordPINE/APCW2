import crafttweaker.item.IItemStack;
import mods.skyresources.condenser;

val to_remove = [<skyresources:alchemy:10>         ,
                 <skyresources:alchemy:7>          ,
                 <skyresources:combustionheater:14>,
                 <skyresources:combustionheater:7> ,
                 <skyresources:combustionheater:6> ,
                 <skyresources:combustionheater:3> ,
                 <skyresources:combustionheater:2> ,
                 <skyresources:combustionheater:1> ,
                 <skyresources:combustionheater>   ,
                 <skyresources:casing:3>           ,
                 <skyresources:casing:1>           ,
                 <skyresources:diamondgrinder>     ,
                 <skyresources:irongrinder>        ,
                 <skyresources:stonegrinder>       ,
                 <skyresources:condenser:10>       ,
                 <skyresources:condenser:7>        ,
                 <skyresources:condenser:6>        ,
                 <skyresources:condenser:3>        ,
                 <skyresources:condenser:1>        ,
                 <skyresources:condenser:2>        ,
                 <skyresources:condenser>          ,
                 <skyresources:alchemy>            ,
                 <skyresources:alchemy:1>          ,
                 <skyresources:alchemy:2>          ,
                 <skyresources:alchemy:3>          ,
                 <skyresources:alchemy:6>          ,
                 <skyresources:combustionheater:10>,
                 <skyresources:heatprovider:14>    ,
                 <skyresources:heatprovider:10>    ,
                 <skyresources:heatprovider:6>     ,
                 <skyresources:heatprovider:7>     ,
                 <skyresources:heatprovider:3>     ,
                 <skyresources:heatprovider:2>     ,
                 <skyresources:heatprovider:1>     ,
                 <skyresources:heatprovider>       ,
                 <skyresources:alchemy:14>         ,
                 <skyresources:casing:7>           ,
                 <skyresources:condenser:14>       ,
                 <skyresources:casing:14>          ,
                 <skyresources:casing:10>          ,
                 <skyresources:casing:6>           ,
                 <skyresources:casing:2>           ,
                 <skyresources:casing>             
] as IItemStack[];

for item in to_remove {
    recipes.remove(item);
}

condenser.addRecipe(<ore:ingotTin>.firstItem, 300, <ore:dustLead>.firstItem, <liquid:quicksilver>, 1);
condenser.addRecipe(<ore:ingotIron>.firstItem, 400, <ore:dustTin>.firstItem, <liquid:quicksilver>, 1);
condenser.addRecipe(<ore:ingotCopper>.firstItem, 500, <ore:dustIron>.firstItem, <liquid:quicksilver>, 1);
condenser.addRecipe(<ore:ingotSilver>.firstItem, 600, <ore:dustCopper>.firstItem, <liquid:quicksilver>, 1);