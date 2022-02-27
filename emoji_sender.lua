

--// Services & Packages
local map = loadstring(game:HttpGet('https://raw.githubusercontent.com/D97Em3ZSZJ/Lua_Classes/main/map.lua'))()
local players = game:GetService("Players")
local replicated = game:GetService("ReplicatedStorage")

--// Variables
local fire_message = replicated.DefaultChatSystemChatEvents.SayMessageRequest
local emojis = map.new({
  laugh = '😂',
  cry = '😭',
  angry = '😡',
  heart = '❤️',
  thumbsup = '👍',
  thumbsdown = '👎',
  ok = '👌',
  confused = '😕',
  rofl = '🤣',
  smile = '😄',
  sad = '😢',
  wink = '😉',
  xd = '😂',
  angel = '😇',
  depressed = '😔',
  cool = '😎',
  weary = '😩',
  pumpkin = '🎃',
  ghost = '👻',
  skull = '💀',
  skull2 = '☠️',
  robot = '🤖',
  video = '📹',
  camera = '📷',
  game = '🎮',
  computer = '💻',
  alien = '👽',
})


--// Setup 
local metahook 
metahook = hookmetamethod(fire_message, '__namecall', function(self, ...)
  local method, args = getnamecallmethod(), {...}

  if method == 'FireServer' then 
    local message = args[1]
    --// Check if the start begins with : and the end with : 
    if message:sub(1,1) == ':' or message:sub(-1,-1) == ':' then
      --// Check if the emoji exists 
      local name = message:sub(2,-2)
      if emojis.has(name) then 
        args[1] = emojis.get(name)
      end 
    end
  end 

  return metahook(self, unpack(args))
end)
