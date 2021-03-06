import crafttweaker.item.IIngredient;
import mods.extendedcrafting.CombinationCrafting;

val ChaosGems = [
    <silentgems:chaosgem>,
    <silentgems:chaosgem:1>,
    <silentgems:chaosgem:2>,
    <silentgems:chaosgem:3>,
    <silentgems:chaosgem:4>,
    <silentgems:chaosgem:5>,
    <silentgems:chaosgem:6>,
    <silentgems:chaosgem:7>,
    <silentgems:chaosgem:8>,
    <silentgems:chaosgem:9>,
    <silentgems:chaosgem:10>,
    <silentgems:chaosgem:11>,
    <silentgems:chaosgem:12>,
    <silentgems:chaosgem:13>,
    <silentgems:chaosgem:14>,
    <silentgems:chaosgem:15>,
    <silentgems:chaosgem:16>,
    <silentgems:chaosgem:17>,
    <silentgems:chaosgem:18>,
    <silentgems:chaosgem:19>,
    <silentgems:chaosgem:20>,
    <silentgems:chaosgem:21>,
    <silentgems:chaosgem:22>,
    <silentgems:chaosgem:23>,
    <silentgems:chaosgem:24>,
    <silentgems:chaosgem:25>,
    <silentgems:chaosgem:26>,
    <silentgems:chaosgem:27>,
    <silentgems:chaosgem:28>,
    <silentgems:chaosgem:29>,
    <silentgems:chaosgem:30>,
    <silentgems:chaosgem:31>,
    <silentgems:chaosgem:32>,
    <silentgems:chaosgem:33>,
    <silentgems:chaosgem:34>,
    <silentgems:chaosgem:35>,
    <silentgems:chaosgem:36>,
    <silentgems:chaosgem:37>,
    <silentgems:chaosgem:38>,
    <silentgems:chaosgem:39>,
    <silentgems:chaosgem:40>,
    <silentgems:chaosgem:41>,
    <silentgems:chaosgem:42>,
    <silentgems:chaosgem:43>,
    <silentgems:chaosgem:44>,
    <silentgems:chaosgem:45>,
    <silentgems:chaosgem:46>,
    <silentgems:chaosgem:47>
] as IIngredient[];
val CreativeChaosGem = <silentgems:chaosgem:48>;
val PerfectChaosOrb = <silentgems:chaosorb:3>;

CombinationCrafting.addRecipe(CreativeChaosGem, 1000000, PerfectChaosOrb, ChaosGems);