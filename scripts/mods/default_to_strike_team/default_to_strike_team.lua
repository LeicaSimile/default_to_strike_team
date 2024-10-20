-- Author: LeicaSimile

local mod = get_mod("default_to_strike_team")
local ChatManagerConstants = require("scripts/foundation/managers/chat/chat_manager_constants")

mod:hook_safe("ConstantElementChat", "_on_connect_to_channel", function(self, channel_handle)
    local channel = Managers.chat:sessions()[channel_handle]
    if not channel then
		return
	end
    if channel.tag == ChatManagerConstants.ChannelTag.PARTY then
        self._selected_channel_handle = channel_handle
    elseif channel.tag == ChatManagerConstants.ChannelTag.HUB then
        for _, other_channel in pairs(Managers.chat:sessions()) do
            if other_channel.tag == ChatManagerConstants.ChannelTag.PARTY then
                self._selected_channel_handle = other_channel.channel_handle
                break
            end
        end
    end
end)
