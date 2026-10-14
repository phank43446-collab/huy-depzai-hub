local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local oldGui = playerGui:FindFirstChild("HuyDepzaiHub")
if oldGui then
    oldGui:Destroy()
end

local enabled = false

local gui = Instance.new("ScreenGui")
gui.Name = "HuyDepzaiHub"
gui.ResetOnSpawn = false
gui.Parent = playerGui

local frame = Instance.new("Frame")
frame.Name = "Main"
frame.Size = UDim2.new(0, 270, 0, 175)
frame.Position = UDim2.new(0.5, -135, 0.5, -87)
frame.BackgroundColor3 = Color3.fromRGB(22, 20, 34)
frame.BorderSizePixel = 0
frame.Parent = gui

local frameCorner = Instance.new("UICorner")
frameCorner.CornerRadius = UDim.new(0, 14)
frameCorner.Parent = frame

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(155, 95, 255)
stroke.Thickness = 2
stroke.Parent = frame

local title = Instance.new("TextLabel")
title.Name = "Title"
title.Size = UDim2.new(1, -20, 0, 42)
title.Position = UDim2.new(0, 10, 0, 8)
title.BackgroundTransparency = 1
title.Text = "HUY DEPZAI HUB"
title.TextColor3 = Color3.fromRGB(210, 180, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 19
title.Parent = frame

local subtitle = Instance.new("TextLabel")
subtitle.Size = UDim2.new(1, -20, 0, 22)
subtitle.Position = UDim2.new(0, 10, 0, 48)
subtitle.BackgroundTransparency = 1
subtitle.Text = "Mobile GUI • v1.0"
subtitle.TextColor3 = Color3.fromRGB(175, 170, 190)
subtitle.Font = Enum.Font.Gotham
subtitle.TextSize = 12
subtitle.Parent = frame

local toggle = Instance.new("TextButton")
toggle.Name = "AutoSealToggle"
toggle.Size = UDim2.new(1, -32, 0, 42)
toggle.Position = UDim2.new(0, 16, 0, 82)
toggle.BackgroundColor3 = Color3.fromRGB(105, 65, 165)
toggle.BorderSizePixel = 0
toggle.Text = "AUTO SEAL: OFF"
toggle.TextColor3 = Color3.new(1, 1, 1)
toggle.Font = Enum.Font.GothamBold
toggle.TextSize = 15
toggle.AutoButtonColor = true
toggle.Parent = frame

local toggleCorner = Instance.new("UICorner")
toggleCorner.CornerRadius = UDim.new(0, 9)
toggleCorner.Parent = toggle

local status = Instance.new("TextLabel")
status.Name = "Status"
status.Size = UDim2.new(1, -20, 0, 25)
status.Position = UDim2.new(0, 10, 0, 132)
status.BackgroundTransparency = 1
status.Text = "Status: san sang"
status.TextColor3 = Color3.fromRGB(190, 190, 205)
status.Font = Enum.Font.Gotham
status.TextSize = 11
status.Parent = frame

toggle.Activated:Connect(function()
    enabled = not enabled

    if enabled then
        toggle.Text = "AUTO SEAL: ON"
        toggle.BackgroundColor3 = Color3.fromRGB(35, 155, 105)
        status.Text = "Status: da bat (demo)"
    else
        toggle.Text = "AUTO SEAL: OFF"
        toggle.BackgroundColor3 = Color3.fromRGB(105, 65, 165)
        status.Text = "Status: da tat"
    end
end)


