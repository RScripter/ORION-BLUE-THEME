-- hi
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Create and configure ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CenteredImageGui"
screenGui.Parent = playerGui

-- Add BlurEffect to Lighting
local lighting = game:GetService("Lighting")
local blurEffect = Instance.new("BlurEffect")
blurEffect.Size = 24 -- Adjust the blur intensity (higher values mean more blur)
blurEffect.Parent = lighting

-- Create and configure ImageButton
local imageButton = Instance.new("ImageButton")
imageButton.Size = UDim2.new(0, 100, 0, 100) -- Size of the button
imageButton.AnchorPoint = Vector2.new(0.5, 0.5) -- Anchor to center
imageButton.Position = UDim2.new(0.5, 0, 0.5, 0) -- Centered on the screen
imageButton.Image = "rbxassetid://18646253053" -- Your image ID
imageButton.Parent = screenGui

-- Create the TextLabel
local textLabel = Instance.new("TextLabel")
textLabel.Parent = screenGui
textLabel.Text = "ROBLOX"
textLabel.Size = UDim2.new(1, 0, 0, 100)  -- Adjust size to make text bigger
textLabel.Position = UDim2.new(0, 0, 0, 0)  -- Adjust position as needed

-- Set the TextLabel's properties
textLabel.TextTransparency = 0  -- Text is visible
textLabel.BackgroundTransparency = 1  -- Label background is invisible
textLabel.TextStrokeTransparency = 1  -- No stroke around the text
textLabel.TextColor3 = Color3.fromRGB(0, 0, 0)  -- Set text color to black
textLabel.Font = Enum.Font.SourceSans
textLabel.TextSize = 48  -- Make text larger

-- Function to handle button click
local function onButtonClick()
    textLabel:Destroy()  -- Destroy the ROBLOX text
    imageButton:Destroy()
    blurEffect:Destroy()
end

-- Connect the button click event to the function
imageButton.MouseButton1Click:Connect(onButtonClick)

-- Create a local script and place it in StarterPlayerScripts or StarterCharacterScripts

local UserInputService = game:GetService("UserInputService")

-- Function to handle key press
local function onKeyPress(input, gameProcessedEvent)
    -- Check if the key pressed is "T"
    if input.KeyCode == Enum.KeyCode.T then
    if gethui():FindFirstChild("Orion") then
        gethui().Orion.Enabled = not gethui().Orion.Enabled
    end
end
    end
end

-- Connect the function to the InputBegan event
UserInputService.InputBegan:Connect(onKeyPress)

-- Load the library
local SANS = loadstring(game:HttpGet("https://raw.githubusercontent.com/RScripter/ORION-BLUE-THEME/main/source.lua"))()

local SANS = SANS:MakeWindow({Name = "SANS HUB", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})


-- transparent looks
if gethui():FindFirstChild("Orion") then
for i,v in pairs(gethui().Orion:GetDescendants()) do
                    if v.ClassName == "Frame" and v.BackgroundTransparency < 0.3 then
v.BackgroundTransparency = 0.2
                    end
                end
if AutoSetInfo then
AutoSetInfo:Set(true)
end
end

local Tab = SANS:MakeTab({
	Name = "Home",
	Icon = "home",
	PremiumOnly = false
})

local coolthingy = Tab:AddSection({
	Name = "_________________________________________________________________________"
})

local StatusSection = Tab:AddSection({
    Name = "Status"
})

local player = game.Players.LocalPlayer
local username = player.Name
local displayName = player.DisplayName
local userId = player.UserId
local accountAge = player.AccountAge

-- Get the current game's name and ID
local gameName
local success, result = pcall(function()
    return game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
end)
if success then
    gameName = result
else
    gameName = "Unknown"
end

local gameId = game.PlaceId

-- Get the number of players currently in the server
local playersInServer = #game.Players:GetPlayers()

StatusSection:AddLabel("Username: " .. username)
StatusSection:AddLabel("Display Name: " .. displayName)
StatusSection:AddLabel("User ID: " .. userId)
StatusSection:AddLabel("Account Age: " .. accountAge .. " days")
StatusSection:AddLabel("Currently Playing: " .. gameName)
StatusSection:AddLabel("Game ID: " .. gameId)
StatusSection:AddLabel("Players in Server: " .. playersInServer)

local coolthingy2 = Tab:AddSection({
	Name = "_________________________________________________________________________"
})

local coolthingy4 = Tab:AddSection({
	Name = "Credits"
})

Tab:AddLabel("by playerexploits on youtube link: m.youtube.com/@playerexploits")

local coolthingy3 = Tab:AddSection({
	Name = "_________________________________________________________________________"
})

local coolthingy5 = Tab:AddSection({
	Name = "Update Logs"
})

Tab:AddLabel("Made This Script Hub")
Tab:AddLabel("Added Home")
Tab:AddLabel("Added Other")
Tab:AddLabel("Added Universal")
Tab:AddLabel("Added Games")
Tab:AddLabel("Added Filtering Enabled")
Tab:AddLabel("Added Toggle UI")
Tab:AddLabel("Added Transparency")
Tab:AddLabel("Added Executor")

local coolthingy5 = Tab:AddSection({
	Name = "_________________________________________________________________________"
})


local Tab2 = SANS:MakeTab({
	Name = "Other",
	Icon = "others",
	PremiumOnly = false
})

local coolthingy = Tab2:AddSection({
	Name = "_________________________________________________________________________"
})

-- Script Hubs section in tab2
local ScriptHubs = Tab2:AddSection({
    Name = "Script Hubs"
})

Tab2:AddButton({
	Name = "Rochips Panel V6.0",
	Callback = function()
      		loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Rochips-Panel-V6-15097"))()
  	end    
})

Tab2:AddButton({
	Name = "Tiger Hub V3",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/balintTheDevX/Tiger-X-V3/main/Tiger%20X%20its%20Back"))()
  	end    
})

Tab2:AddButton({
	Name = "Sky Hub",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/SkyHub.txt"))() 
  	end    
})

Tab2:AddButton({
	Name = "Ghost Hub",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
  	end    
})

Tab2:AddButton({
	Name = "VexHub",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/V31nc/On-Discord/Created/VexHub"))()
  	end    
})

local coolthingy2 = Tab2:AddSection({
	Name = "_________________________________________________________________________"
})

local universal = SANS:MakeTab({
	Name = "universal",
	Icon = "infinity",
	PremiumOnly = false
})

local coolthingy2 = universal:AddSection({
	Name = "_________________________________________________________________________"
})

local Section21 = universal:AddSection({
	Name = "Scripts"
})

universal:AddButton({
	Name = "UTH",
	Callback = function()
      		getgenv().ActivateTheUltimateTrolly = true
loadstring(game:HttpGet("https://raw.githubusercontent.com/Orealated/Oreal/main/orealated%20Easy.gg%20UTH%20Loader", true))();
  	end    
})

universal:AddButton({
	Name = "Neon Fly Gui",
	Callback = function()
      		loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Fly-Gui-V3-Dark-Theme-11884"))()
  	end    
})

universal:AddButton({
	Name = "Infinite Store",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Infinite-Store/Infinite-Store/main/main.lua"))()
  	end    
})

universal:AddButton({
	Name = "Troll Panel",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/H20CalibreYT/SystemBroken/main/script"))()
  	end    
})

local coolthingy2 = universal:AddSection({
	Name = "_________________________________________________________________________"
})

local Tab3 = SANS:MakeTab({
   Name = "Games",
   Icon = "games",
   PremiumOnly = false
})

local Section = Tab3:AddSection({
	Name = "_________________________________________________________________________"
})

-- Carnage section in tab2
local Carnage = Tab3:AddSection({
    Name = "Carnage Scripts"
})

Tab3:AddButton({
	Name = "Evade",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/lerkermer/lua-projects/master/SwagModeV002'))()
  	end    
})

Tab3:AddButton({
	Name = "Blade ball",
	Callback = function()
      		loadstring(game:HttpGet('https://reddyhub.xyz/loader.html'))()
  	end    
})

Tab3:AddButton({
	Name = "Brookhaven",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
  	end    
})

Tab3:AddButton({
	Name = "Bedwars",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
  	end    
})

Tab3:AddButton({
	Name = "Bloxburg",
	Callback = function()
      		loadstring(game:HttpGet("https://bloxburger.eu/scripts/free/script.lua"))()
  	end    
})

Tab3:AddButton({
	Name = "Slap Battles",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Slap_Battles/main/Slap_Battles.lua"))()
  	end    
})

Tab3:AddButton({
	Name = "Arsenal",
	Callback = function()
       	 loadstring(game:HttpGet('https://raw.githubusercontent.com/wuhaz/arsenal/main/main.lua'))()
  	end    
})

local Sectiohn = Tab3:AddSection({
	Name = "_________________________________________________________________________"
})

local Section = Tab3:AddSection({
	Name = "Murder Mystery 2"
})

Tab3:AddButton({
	Name = "Symphony Hub",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/ThatSick/ArrayField/main/SymphonyHub.lua'))()
  	end    
})

Tab3:AddButton({
	Name = "Yahrm",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/yarhm.lua", false))()
  	end    
})

local Section = Tab3:AddSection({
	Name = "_________________________________________________________________________"
})

local Section2 = Tab3:AddSection({
	Name = "Break in 2"
})

Tab3:AddButton({
	Name = "Breaking Blitz",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/RScriptz/RobloxScripts/main/BreakIn2.lua"))()
  	end    
})

Tab3:AddButton({
	Name = "JN HH Gaming",
	Callback = function()
      		loadstring(game:HttpGet("https://freenote.biz/raw/qLlMYwbVNd",true))()
  	end    
})

local Slapbattles = Tab3:AddSection({
   Name = "Slap Battles"
})

Tab3: AddButton({
	Name = "Slap Battles Script Hub That Exists",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/robloxsuckslikereallydude/1-Line-Scripts/main/Slap%20Battles"))()
  	end    
})

local Section1 = Tab3:AddSection({
	Name = "_________________________________________________________________________"
})

local FE = SANS:MakeTab({
   Name = "Filtering Enabled",
   Icon = "filteringenabled",
   PremiumOnly = false
})

local Section = FE:AddSection({
	Name = "_________________________________________________________________________"
})

FE:AddButton({
	Name = "FE Script Hub",
	Callback = function()
      		loadstring(game:HttpGet(('https://pastebin.com/raw/wzB1Qh78'),true))()
  	end    
})

FE:AddButton({
	Name = "FE Script Hub 2",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/Dvrknvss/UniversalFEScriptHub/main/Script'))()
  	end    
})

FE:AddButton({
	Name = "Genesis Fe",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/RScripter/-ECAX-HUB-/main/Genesis%20Fe'))()
  	end    
})

FE:AddButton({
	Name = "Better Bypasser (Fe Chat Bypass)",
	Callback = function()
      		loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-BetterBypasser-15478"))()
  	end    
})

FE:AddButton({
	Name = "Gazer Fe Animation Editor",
	Callback = function()
      		loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Gazer-FE-Animation-Editor-14508"))()
  	end    
})

FE:AddButton({
	Name = "The Honored One",
	Callback = function()
      		loadstring(game:HttpGet(('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Honored.lua'),true))()
  	end    
})

local Section2 = FE:AddSection({
	Name = "_________________________________________________________________________"
})

local ScriptHubs = SANS:MakeTab({
	Name = "Scripthubs",
	Icon = "rbxassetid://18671619379",
	PremiumOnly = false
})

local Section = ScriptHubs:AddSection({
	Name = "Made By PlayerExploits"
})

ScriptHubs:AddButton({
	Name = "•ECAX V3•",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/RScripter/-ECAX-/main/ECAX_V3.lua"))()
  	end    
})

ScriptHubs:AddButton({
	Name = "•SANS HUB•",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/RScripter/ORION-BLUE-THEME/main/Scripthub/Sans%20hub"))()
  	end    
})

local executor = SANS:MakeTab({
    Name = "executor",
    Icon = "rbxassetid://18659702506",
    PremiumOnly = false
})

local scriptText = ""

executor:AddTextbox({
    Name = "executor",
    Default = "",
    TextDisappear = false,
    Callback = function(value)
        scriptText = value
    end
})

executor:AddButton({
    Name = "Execute",
    Callback = function()
        local success, err = pcall(function()
            loadstring(scriptText)()
        end)
        if not success then
            print("Error executing script: " .. err)
        end
    end
})