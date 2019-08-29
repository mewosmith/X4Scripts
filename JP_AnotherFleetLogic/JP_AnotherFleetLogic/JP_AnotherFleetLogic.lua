-- Powered by Right Click API
local ffi = require("ffi")
local C = ffi.C

local function initialize()
    DebugError("JP_AnotherFleetLogic")

    capi.RegisterAssignAction(AnotherFleetLogic)
end

function AnotherFleetLogic( menu )
	if menu.numassignableships > 0 then
		if (not C.IsComponentClass(menu.componentSlot.component, "station")) then
			menu.insertInteractionContent("selected_assignments", { type = actiontype, text = "AnotherFleetLogic", script = function () menu.buttonAssignCommander() end })
		end 
	end
end

initialize()