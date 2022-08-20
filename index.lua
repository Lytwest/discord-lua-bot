local client = discordia.Client()
local discordia = require('discordia') 
local fs = require('json')

    client:on("ready", function()
        Client:setGame{type = 1, "Status Message"} --  type = x, --> #1 Playing #2 Listening #3 Watching --
		--client:setGameName("Status Message") -- Original Status
	print('Logged in as ', client.user.username)
end)

client:on('messageCreate', function(message)
	if message.content == '-ping' then 
		message.channel:send('🎾 Ping Pong!')
	end
end)

client:run("Bot "SECRET_BOT_TOKEN) -- https://discord.com/developers/applications/ID/bot 
