local HttpService = game:GetService("HttpService")

local types = require(script:WaitForChild("types"))

local webhooker = {}
webhooker.__index = webhooker

function webhooker.new(webhook_url: string)
	local self = setmetatable({}, webhooker)
	self.webhook_url = webhook_url
	return self
end

function webhooker:sendMessage(payload: types.webhook_payload)
	if not self.webhook_url then
		warn("[WEBHOOKER] - Webhook URL not provided!")
		return
	end
	
	local success, response = pcall(function()
		return HttpService:RequestAsync({
			Url = self.webhook_url,
			Method = "POST",
			Headers = {
				["Content-Type"] = "application/json"
			},
			Body = HttpService:JSONEncode(payload)
		})
	end)
	
	if success then
		return true, response
	else
		return false, response
	end
end

return webhooker
