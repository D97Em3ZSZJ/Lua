-- clean console 


local output = {
  logs = {
    error = {},
    warn = {},
    info = {},
    detection = {},
    success = {},
  }
}

local icons = {
  error = {
    icon = 'http://www.roblox.com/asset/?id=163905183',
    color = Color3.fromRGB(255, 0, 0),
  },
  warn = {
    icon = 'http://www.roblox.com/asset/?id=7103323848',
    color = Color3.fromRGB(255, 186, 11),
  },
  success = {
    icon = 'http://www.roblox.com/asset/?id=4485364377',
    color = Color3.fromRGB(98, 255, 0),
  },
  info = {
    icon = 'http://www.roblox.com/asset/?id=6867518941',
    color = Color3.fromRGB(14, 106, 255),
  },
  detection = {
    icon = 'http://www.roblox.com/asset/?id=6523858394',
    color = Color3.fromRGB(232, 55, 255)
  }
}

local screen = Instance.new("ScreenGui")
local head = Instance.new("Frame")
local headCorner = Instance.new("UICorner")
local sep = Instance.new("Frame")
local title = Instance.new("TextLabel")
local background = Instance.new("Frame")
local backgroundCorner = Instance.new("UICorner")
local settings = Instance.new("Frame")
local settingsRound = Instance.new("UICorner")
local settingsContent = Instance.new("Frame")
local settingsLayout = Instance.new("UIListLayout")
local console = Instance.new("Frame")
local consoleRound = Instance.new("UICorner")
local consoleContent = Instance.new("ScrollingFrame")
local consoleLayout = Instance.new("UIListLayout")
local search = Instance.new("TextBox")
local searchCorner = Instance.new("UICorner")
local searchImage = Instance.new("ImageButton")
local commands = Instance.new("TextBox")
local commandCorner = Instance.new("UICorner")

screen.Name = "screen"
screen.Parent = game:GetService("CoreGui")
screen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

head.Name = "head"
head.Parent = screen
head.Active = true 
head.Draggable = true
head.BackgroundColor3 = Color3.fromRGB(23, 91, 173)
head.BorderSizePixel = 0
head.Position = UDim2.new(0.133276537, 0, 0.314638168, 0)
head.Size = UDim2.new(0, 638, 0, 35)

headCorner.CornerRadius = UDim.new(0, 4)
headCorner.Name = "headCorner"
headCorner.Parent = head

sep.Name = "sep"
sep.Parent = head
sep.BackgroundColor3 = Color3.fromRGB(23, 91, 173)
sep.BorderSizePixel = 0
sep.Position = UDim2.new(0, 0, 0.939999998, 0)
sep.Size = UDim2.new(0, 638, 0, 10)

title.Name = "title"
title.Parent = head
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.Position = UDim2.new(0.0204980075, 0, 0.22857143, 0)
title.Size = UDim2.new(0, 203, 0, 22)
title.Font = Enum.Font.SourceSansSemibold
title.Text = "debug"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 16.000
title.TextXAlignment = Enum.TextXAlignment.Left

background.Name = "background"
background.Parent = head
background.BackgroundColor3 = Color3.fromRGB(233, 244, 255)
background.BorderColor3 = Color3.fromRGB(233, 244, 255)
background.BorderSizePixel = 0
background.Position = UDim2.new(0, 0, 1.1782732, 0)
background.Size = UDim2.new(0, 637, 0, 371)

backgroundCorner.CornerRadius = UDim.new(0, 4)
backgroundCorner.Name = "backgroundCorner"
backgroundCorner.Parent = background

settings.Name = "settings"
settings.Parent = background
settings.BackgroundColor3 = Color3.fromRGB(23, 91, 173)
settings.BorderSizePixel = 0
settings.Position = UDim2.new(0.718317389, 0, 0.0281690415, 0)
settings.Size = UDim2.new(0, 163, 0, 7)

settingsRound.CornerRadius = UDim.new(0, 3)
settingsRound.Name = "settingsRound"
settingsRound.Parent = settings

settingsContent.Name = "settingsContent"
settingsContent.Parent = settings
settingsContent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
settingsContent.BackgroundTransparency = 1.000
settingsContent.Position = UDim2.new(0, 0, 1.26034546, 0)
settingsContent.Size = UDim2.new(0, 163, 0, 146)

settingsLayout.Name = "settingsLayout"
settingsLayout.Parent = settingsContent
settingsLayout.SortOrder = Enum.SortOrder.LayoutOrder

console.Name = "console"
console.Parent = background
console.BackgroundColor3 = Color3.fromRGB(23, 91, 173)
console.BorderSizePixel = 0
console.Position = UDim2.new(0.0114207966, 0, 0.0281690415, 0)
console.Size = UDim2.new(0, 438, 0, 324)

consoleRound.CornerRadius = UDim.new(0, 5)
consoleRound.Name = "consoleRound"
consoleRound.Parent = console

consoleContent.Name = "consoleContent"
consoleContent.Parent = console
consoleContent.Active = true
consoleContent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
consoleContent.BackgroundTransparency = 1.000
consoleContent.Position = UDim2.new(0.01369863, 0, 0.0198300276, 0)
consoleContent.Size = UDim2.new(0, 426, 0, 320)
consoleContent.CanvasSize = UDim2.new(0, 0, 900, 0)
consoleContent.ScrollBarThickness = 0
consoleContent.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left

consoleLayout.Name = "consoleLayout"
consoleLayout.Parent = consoleContent
consoleLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
consoleLayout.SortOrder = Enum.SortOrder.LayoutOrder
consoleLayout.Padding = UDim.new(0, 5)

search.Name = "search"
search.Parent = head
search.BackgroundColor3 = Color3.fromRGB(233, 244, 255)
search.Position = UDim2.new(0.717191517, 0, 0.228571445, 0)
search.Size = UDim2.new(0, 163, 0, 22)
search.Font = Enum.Font.SourceSansSemibold
search.PlaceholderText = "Search..."
search.Text = ""
search.TextColor3 = Color3.fromRGB(23, 91, 173)
search.TextSize = 14.000

searchCorner.CornerRadius = UDim.new(0, 5)
searchCorner.Name = "searchCorner"
searchCorner.Parent = search

searchImage.Name = "searchImage"
searchImage.Parent = search
searchImage.BackgroundTransparency = 1.000
searchImage.Position = UDim2.new(0.0184048787, 0, 0.0909090936, 0)
searchImage.Size = UDim2.new(0, 18, 0, 18)
searchImage.ZIndex = 2
searchImage.Image = "rbxassetid://3926305904"
searchImage.ImageColor3 = Color3.fromRGB(23, 91, 173)
searchImage.ImageRectOffset = Vector2.new(964, 324)
searchImage.ImageRectSize = Vector2.new(36, 36)

commands.Name = "commands"
commands.Parent = background
commands.BackgroundColor3 = Color3.fromRGB(23, 91, 173)
commands.Position = UDim2.new(0.0114208097, 0, 0.921293914, 0)
commands.Size = UDim2.new(0, 438, 0, 22)
commands.Font = Enum.Font.SourceSansSemibold
commands.PlaceholderColor3 = Color3.fromRGB(223, 223, 223)
commands.PlaceholderText = "!command"
commands.Text = ""
commands.TextColor3 = Color3.fromRGB(233, 244, 255)
commands.TextSize = 14.000

commandCorner.CornerRadius = UDim.new(0, 5)
commandCorner.Name = "commandCorner"
commandCorner.Parent = commands

-- // Toggles 
local toggles = {}
for c, k in next, output.logs do 
  toggles[c] = true 
  local enabled = true 
  local toggleFrame = Instance.new("Frame")
  local toggle = Instance.new("ImageButton")
  local buttonCorner = Instance.new("UICorner")
  local toggleTitle = Instance.new("TextLabel")

  toggleFrame.Name = "toggleFrame"
  toggleFrame.Parent = settingsContent
  toggleFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  toggleFrame.BackgroundTransparency = 1.000
  toggleFrame.Size = UDim2.new(0, 163, 0, 23)

  toggle.Name = "toggle"
  toggle.Parent = toggleFrame
  toggle.BackgroundColor3 = Color3.fromRGB(23, 91, 173)
  toggle.BorderSizePixel = 0
  toggle.Position = UDim2.new(0, 0, 0.217391297, 0)
  toggle.Size = UDim2.new(0, 12, 0, 12)
  toggle.AutoButtonColor = false

  buttonCorner.CornerRadius = UDim.new(0, 4)
  buttonCorner.Name = "buttonCorner"
  buttonCorner.Parent = toggle
  
  toggleTitle.Name = "toggleTitle"
  toggleTitle.Parent = toggleFrame
  toggleTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  toggleTitle.BackgroundTransparency = 1.000
  toggleTitle.Position = UDim2.new(0.130927518, 0, 0.445962667, 0)
  toggleTitle.Size = UDim2.new(0, 108, 0, 0)
  toggleTitle.Font = Enum.Font.SourceSansSemibold
  toggleTitle.Text = 'Show ' .. c 
  toggleTitle.TextColor3 = Color3.fromRGB(23, 91, 173)
  toggleTitle.TextSize = 15.000
  toggleTitle.TextXAlignment = Enum.TextXAlignment.Left

  toggle.MouseButton1Click:Connect(function()
    enabled = not enabled
    toggles[c] = enabled

    toggle.BackgroundColor3 = enabled and Color3.fromRGB(23, 91, 173) or Color3.fromRGB(169, 208, 218)

    for i,v in next, output.logs[c] do 
      v.Visible = enabled 
    end 
  end)
end 

-- // Search 

search:GetPropertyChangedSignal('Text'):Connect(function()
  local text = search.Text

  for c,k in next, output.logs do 
    for i,v in next, k do 
      if text == '' and toggles[c] then v.Visible = true continue end
      if text == '' and not toggles[c] then v.Visible = false continue end
      
      if v.logText.Text:lower():find(text:lower()) then 
        v.Visible = true 
      else 
        v.Visible = false 
      end
    end 
  end 
end)

--// Commands 

commands:GetPropertyChangedSignal('Text'):Connect(function()
  if output.onCommand then 
    output.onCommand(commands.Text)
  end
end)

local function createLog(text, type)
  local logFrame = Instance.new("Frame")
  local logCorner = Instance.new("UICorner")
  local logText = Instance.new("TextLabel")
  local icon = Instance.new("ImageLabel")
  
  logFrame.Name = "logFrame"
  logFrame.Parent = consoleContent
  logFrame.BackgroundColor3 = Color3.fromRGB(233, 244, 255)
  logFrame.Position = UDim2.new(-0.0211267602, 0, 0.0678467005, 0)
  logFrame.Size = UDim2.new(0, 419, 0, 23)

  logCorner.CornerRadius = UDim.new(0, 4)
  logCorner.Name = "logCorner"
  logCorner.Parent = logFrame

  logText.Name = "logText"
  logText.Parent = logFrame
  logText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  logText.BackgroundTransparency = 1.000
  logText.Position = UDim2.new(0.0663625523, 0, 0, 0)
  logText.Size = UDim2.new(0, 162, 0, 22)
  logText.Font = Enum.Font.SourceSansSemibold
  logText.Text = text or 'Retard forgot to put a message XD'
  logText.TextColor3 = Color3.fromRGB(23, 91, 173)
  logText.TextSize = 15.000
  logText.TextXAlignment = Enum.TextXAlignment.Left

  icon.Name = "icon"
  icon.Parent = logFrame
  icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  icon.BackgroundTransparency = 1.000
  icon.Position = UDim2.new(0.0143198082, 0, 0.130434781, 0)
  icon.Size = UDim2.new(0, 15, 0, 15)
  icon.Image = icons[type].icon
  icon.ImageColor3 = icons[type].color

  return logFrame
end 

output.log = function(text) 
  local frame = createLog(text, 'info')
  table.insert(output.logs.info, frame)
end 

output.warn = function(text) 
  local frame = createLog(text, 'warn') 
  table.insert(output.logs.warn, frame)
end

output.error = function(text) 
  local frame = createLog(text, 'error') 
  table.insert(output.logs.error, frame)
end

output.success = function(text)
  local frame = createLog(text, 'success') 
  table.insert(output.logs.success, frame)
end

output.detection = function(text) 
  local frame = createLog(text, 'detection') 
  table.insert(output.logs.detection, frame)
end
  
return output
-- Use case 
-- output.log('This is a test')
-- output.warn('Amongus monkeys')
-- output.error('Vroom car sounds')
-- output.success('You did it!')
-- output.detection('You are a jew')
-- output.log('This is a test')
-- output.warn('Amongus monkeys')
-- output.error('Vroom car sounds')
-- output.success('You did it!')
-- output.detection('You are a jew')
-- output.log('This is a test')
-- output.warn('Amongus monkeys')
-- output.error('Vroom car sounds')
-- output.success('You did it!')
-- output.detection('You are a jew')

-- output.onCommand = function(command) 
--   print(command)
-- end 
