-- the type annotations are used by https://github.com/justarandomgeek/vscode-factoriomod-debug + https://github.com/LuaLS/lua-language-server

---@type data.TutorialDefinition
local tut =
{
    type = "tutorial",
    name = "demo-tut",
    scenario = "demo-tut"
}

---@type data.TipsAndTricksItem
local tip =
{
    type = "tips-and-tricks-item",
    name = "demo-tip",
    tutorial = "demo-tut",
    starting_status = "suggested",
    order = "a-[a" -- just trying to be the first tip...
}

data:extend{tut, tip}
