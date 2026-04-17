loadstring(game:HttpGet("https://pastebin.com/raw/23ykrgFY"))()
task.wait(3)
local CoreGui = game:GetService("CoreGui")

for _, v in ipairs(CoreGui:GetDescendants()) do
	if v:IsA("TextButton") and v.Text == "AUTHENTICATE" then
		local frame = v.Parent
		if not frame then continue end
		
		for _, obj in ipairs(frame:GetDescendants()) do
			if obj:IsA("TextBox") then
				obj.Text = "rengokutufficl"
			end
		end
		
		local function press(btn)
			for _, conn in ipairs(getconnections(btn.MouseButton1Click)) do
				conn:Fire()
			end
			for _, conn in ipairs(getconnections(btn.Activated)) do
				conn:Fire()
			end
			btn:Activate()
		end
		
		press(v)
		task.wait(0.3)
		press(v)
		
		break
	end
end
