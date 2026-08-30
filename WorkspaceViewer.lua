local player = game.Players.LocalPlayer
local playerGui = player.PlayerGui

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = playerGui

screenGui.Name = "WorkspaceViewerUI"

local viewButton = Instance.new("TextButton")
viewButton.Parent = screenGui

viewButton.Name = "View Workspace"
viewButton.Size = UDim2.new(0.088, 0, 0.097, 0)
viewButton.Text = "View Workspace"
viewButton.Position = UDim2.new(0.054, 0, 0.495, 0)

local clickSound = Instance.new("Sound")
clickSound.Parent = workspace

clickSound.SoundId = "rbxassetid://12221967"
clickSound.Name = "ClickSound"

local canClick = true

viewButton.MouseButton1Down:Connect(function()
	if canClick then
		for i, v in ipairs(workspace:GetDescendants()) do
			print(v:GetFullName(), "|", v.ClassName)
		end
		
		viewButton.Text = "Check Console"
		
		canClick = false
		
		clickSound:Play()
		
		task.wait(3)
		
		canClick = true
		
		viewButton.Text = "View Workspace"
	end
end)
