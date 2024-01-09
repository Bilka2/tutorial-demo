# Demo mod for how to add tutorials

A mod that demos how to create a tutorial in a Factorio mod. The gist is that you need to create a [scenario](https://wiki.factorio.com/Scenario_system). This scenario is the tutorial itself, with all scripting and so on. Place that scenario into the `tutorials` folder of the mod. Then create a [TutorialDefinition](https://lua-api.factorio.com/latest/prototypes/TutorialDefinition.html) and [TipsAndTricksItem](https://lua-api.factorio.com/latest/prototypes/TipsAndTricksItem.html) for it in the prototype stage, so for example in `data.lua`. That's it!
