val Syrmorite = <thebetweenlands:items_misc:11>;
val BlankRune = <bloodmagic:blood_rune>;
val BloodInfusionCore = <evilcraft:blood_infusion_core>;
val DarkBrick = <evilcraft:dark_brick>;
val BloodInfuser = <evilcraft:blood_infuser>;
val PromiseTenacity1 = <evilcraft:promise>;
val PromiseTenacity2 = <evilcraft:promise:1>;
val PromiseTenacity3 = <evilcraft:promise:2>;
val BowlPromises0 = <ore:materialBowlOfPromises0>;
val BowlPromises1 = <ore:materialBowlOfPromises1>;
val BowlPromises2 = <ore:materialBowlOfPromises2>;
val IronPromiseAcceptor = <evilcraft:promise_acceptor>;
val GoldPromiseAcceptor = <evilcraft:promise_acceptor:1>;
val DiamondPromiseAcceptor = <evilcraft:promise_acceptor:2>;
val CorruptedEssence = <soulshardstow:materials:1>;
val ReinforcedSlate = <bloodmagic:slate:1>;
val ImbuedSlate = <bloodmagic:slate:2>;
val EtherealSlate = <bloodmagic:slate:4>;
val LavaReagent = <bloodmagic:component:1>;
val BindingReagent = <bloodmagic:component:8>;
val TranspositionReagent = <bloodmagic:component:18>;

recipes.remove(BloodInfuser);
recipes.addShaped(BloodInfuser, [[Syrmorite,BlankRune,Syrmorite],[BlankRune,BloodInfusionCore,BlankRune],[DarkBrick,BlankRune,DarkBrick]]);

recipes.remove(PromiseTenacity1);
recipes.addShapeless(PromiseTenacity1, [BowlPromises0, IronPromiseAcceptor, LavaReagent, ReinforcedSlate, CorruptedEssence]);

recipes.remove(PromiseTenacity2);
recipes.addShapeless(PromiseTenacity2, [BowlPromises1, GoldPromiseAcceptor, BindingReagent, ImbuedSlate, CorruptedEssence]);

recipes.remove(PromiseTenacity3);
recipes.addShapeless(PromiseTenacity3, [BowlPromises2, DiamondPromiseAcceptor, TranspositionReagent, EtherealSlate, CorruptedEssence]);