--ugc dont move script made by Xxpablogamer69xX

local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
 
local PhantomForcesWindow = Library:NewWindow("UGC Dont Move")
 
local KillingCheats = PhantomForcesWindow:NewSection("Main")
 
KillingCheats:CreateToggle("Auto Pop Bubbles", function(value)
while wait() do
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.5.1"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("BubbleService"):WaitForChild("RE"):WaitForChild("Clicked"):FireServer()
end
end)

KillingCheats:CreateToggle("Auto Spin", function(value)
while wait(5) do
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.5.1"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("SpinService"):WaitForChild("RF"):WaitForChild("Spin"):InvokeServer()
end
end)

KillingCheats:CreateButton("Join Empty Server", function()
    local Http = game:GetService("HttpService")
    local TPS = game:GetService("TeleportService")
    local Api = "https://games.roblox.com/v1/games/"
    
    local _place = game.PlaceId
    local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
    function ListServers(cursor)
       local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
       return Http:JSONDecode(Raw)
    end
    
    local Server, Next; repeat
       local Servers = ListServers(Next)
       Server = Servers.data[1]
       Next = Servers.nextPageCursor
    until Server
    
    TPS:TeleportToPlaceInstance(_place,Server.id,game:GetService('Players').LocalPlayer)
end)

KillingCheats:CreateButton("Anti AFK", function()
while not game:IsLoaded() do wait() end
repeat wait() until game.Players.LocalPlayer.Character
Players = game:GetService("Players")
local GC = getconnections or get_signal_cons
if GC then
	for i,v in pairs(GC(Players.LocalPlayer.Idled)) do
		if v["Disable"] then v["Disable"](v)
		elseif v["Disconnect"] then v["Disconnect"](v)
		end
	end
else
  Players.LocalPlayer.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
  end)
end
game.StarterGui:SetCore('SendNotification', { Title = 'Foxzie unban me pls'; Text = 'Anti-AFK activated!'; })
end)

local KillingCheats = PhantomForcesWindow:NewSection("Auto Hatch Eggs")

KillingCheats:CreateToggle("Noob Egg", function(value)
while wait(2) do
local args = {
    [1] = "Noob"
}
 
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.5.1"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("EggService"):WaitForChild("RE"):WaitForChild("Purchase"):FireServer(unpack(args))
end
end)

KillingCheats:CreateToggle("Haunted Egg", function(value)
while wait(2) do
local args = {
    [1] = "Haunted"
}

game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.5.1"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("EggService"):WaitForChild("RE"):WaitForChild("Purchase"):FireServer(unpack(args)) 
end
end)

KillingCheats:CreateToggle("Crystal Egg", function(value)
while wait(2) do
local args = {
    [1] = "Crystal"
}

game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.5.1"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("EggService"):WaitForChild("RE"):WaitForChild("Purchase"):FireServer(unpack(args)) 
end
end)

local KillingCheats = PhantomForcesWindow:NewSection("Credits")

KillingCheats:CreateButton("Say thanks to God, not to me", function()
print("love God because he love you")
end)