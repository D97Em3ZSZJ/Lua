
assert(syn.request, 'Error: Request function not found')
local cookie = ''
if not cookie then rconsoleprint('Error: Cookie not found') return end
cookie = '.ROBLOSECURITY='..cookie

--[[
  Empty server joiner for Roblox. 
  Inspiration: https://v3rmillion.net/showthread.php?tid=734909
  Requires: 
    syn.request (function) 
    roblox cookie (string)
]]

local pages = 200 -- Shouldn't need more than 200 for most games 
local endpoint = 'https://www.roblox.com/games/getgameinstancesjson?placeId=%d&startindex=%d' -- Format: placeId, pageNumber

local teleport = game:GetService("TeleportService")
local http = game:GetService('HttpService')

--// Recreated join function because too lazy to parse job id 
getgenv().Roblox = {GameLauncher={}}
function Roblox.GameLauncher.joinGameInstance(id, jobid)
  teleport:TeleportToPlaceInstance(id, jobid)
end   

-- @ getPage(1)
-- @ returns a table of game instances
local function getPage(index : int)
  if not index then rconsoleprint('Error: Page number not provided.') return end

  local url = endpoint:format(game.PlaceId, index)
  local res = syn.request({
    Url = url, 
    Method = 'GET',
    Headers = {
      cookie = cookie
    }
  })

  return http:JSONDecode(res.Body)
end 

--// Looping through the pages and checking if the collection size is greater than 0 and if it is, then we use the last page  
for i = 1,pages do 
  coroutine.wrap(function() -- Dont judge me for this, it just takes too long to run through all of them individually.
    local data = getPage(i)

    if #data.Collection < 10 and #data.Collection > 0 then 
      --// Loop backwards through the page and find the emptiest game that can be joined
      for i = #data.Collection, 1, -1 do 
        local server = data.Collection[i]

        if server.UserCanJoin then 
          rconsoleprint('Server found on page '..i..'!\n')
          loadstring(server.JoinScript)()
          coroutine.yield()
          break 
        end 

      end

    end

  end)()

  task.wait()
end 
