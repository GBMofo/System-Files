print("========================================")
print("TEST SCRIPT LOADED!")
print("========================================")

-- Test if executor is working
print("Executor functions:")
print("gethui:", gethui and "EXISTS" or "MISSING")
print("writefile:", writefile and "EXISTS" or "MISSING")
print("readfile:", readfile and "EXISTS" or "MISSING")

-- Test UI creation
print("Creating test ScreenGui...")
local parent
if gethui then
    parent = gethui()
    print("Using gethui():", parent and parent:GetFullName() or "RETURNED NIL")
else
    parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
    print("Using PlayerGui:", parent:GetFullName())
end

local testGui = Instance.new("ScreenGui", parent)
testGui.Name = "TEST_UI_" .. math.random(1000, 9999)
print("ScreenGui created:", testGui.Name)
print("ScreenGui parent:", testGui.Parent and testGui.Parent:GetFullName() or "NIL")

-- Create visible test button
local testButton = Instance.new("TextButton", testGui)
testButton.Size = UDim2.new(0.2, 0, 0.1, 0)
testButton.Position = UDim2.new(0.4, 0, 0.45, 0)
testButton.Text = "TEST BUTTON - UI IS WORKING!"
testButton.TextScaled = true
testButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
testButton.Visible = true

print("Test button created and should be visible!")
print("========================================")
print("If you see a green button, UI loading works!")
print("If not, your executor has issues!")
print("========================================")
