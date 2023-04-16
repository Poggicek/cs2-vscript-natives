# CS2 VScript Natives

This extension adds definitions for the VScript natives used in CS2 to the [Lua extension](https://marketplace.visualstudio.com/items?itemName=sumneko.lua).

![Screenshot](https://i.imgur.com/gqlXcvr.png)
![Screenshot](https://i.imgur.com/HkNdD7H.png)

## Casting from HScript

Because the extension doesn't know the type of a HScript instance (It can represent multiple types, CBaseEntity, CBasePlayerPawn, CBasePlayerController, etc..), it will always represent `handle/any`. This means that you will have to cast it to the correct type yourself.

```lua
---@type CBasePlayerController
local pawn = EntIndexToHScript(entIndex);
pawn:GetPawn();
```

Alternatively, you can make a wrapper function that will cast it to the correct type for you.

```lua
---@return CBasePlayerPawn
function EntIndexToPawn(entIndex)
    return EntIndexToHScript(entIndex)
end

---@return CBasePlayerController
function EntIndexToController(entIndex)
    return EntIndexToHScript(entIndex)
end

---@return CBaseEntity
function EntIndexToEntity(entIndex)
    return EntIndexToHScript(entIndex)
end
```