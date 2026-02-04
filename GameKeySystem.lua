-- ts file was generated at discord.gg/25ms

local v8 = game:GetService('Players')
local v9 = game:GetService('TweenService')
local v10 = game:GetService('UserInputService')
local v11 = game:GetService('RunService')
local v12 = {
    KEY_LINK = 'https://gamekey.icu/',
    VALID_KEY = 'YOUR-VALID-KEY-HERE',
    ACCENT_COLOR = Color3.fromRGB(0, 217, 255),
    ACCENT_COLOR_SECONDARY = Color3.fromRGB(157, 78, 221),
    BACKGROUND_PRIMARY = Color3.fromRGB(26, 26, 46),
    BACKGROUND_SECONDARY = Color3.fromRGB(22, 33, 62),
    TEXT_PRIMARY = Color3.fromRGB(255, 255, 255),
    TEXT_SECONDARY = Color3.fromRGB(180, 180, 200),
    SUCCESS_COLOR = Color3.fromRGB(0, 255, 136),
    ERROR_COLOR = Color3.fromRGB(255, 71, 87),
}
local v13 = v8.LocalPlayer
local v14 = v13:WaitForChild('PlayerGui')
local v15 = Instance.new('ScreenGui')

v15.Name = 'KeySystemGUI'
v15.ResetOnSpawn = false
v15.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
v15.Parent = v14

local function v21(v249, v250, v251, v252)
    local v253 = 0
    local v254

    while true do
        if (v253 == (0)) then
            v254 = Instance.new('UIGradient')
            v254.Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, v250),
                ColorSequenceKeypoint.new(1, v251),
            })
            v253 = 1
        end
        if (v253 == (1)) then
            v254.Rotation = v252 or (45)
            v254.Parent = v249
            v253 = 2
        end
        if (v253 == (2)) then
            return v254
        end
    end
end
local function v22(v255, v256)
    local v257 = 0
    local v258

    while true do
        local v315 = 0

        while true do
            if ((0) == v315) then
                if (v257 == (0)) then
                    v258 = Instance.new('UICorner')
                    v258.CornerRadius = UDim.new(0, v256 or (10))
                    v257 = 1
                end
                if (v257 == (1)) then
                    v258.Parent = v255

                    return v258
                end

                break
            end
        end
    end
end
local function v23(v259, v260, v261, v262)
    local v263 = 0
    local v264

    while true do
        if (v263 == 0) then
            local v326 = 0

            while true do
                if (v326 == (1)) then
                    v263 = 1

                    break
                end
                if (v326 == 0) then
                    v264 = Instance.new('UIStroke')
                    v264.Color = v260 or v12.ACCENT_COLOR
                    v326 = 1
                end
            end
        end
        if ((1) == v263) then
            v264.Thickness = v261 or (1)
            v264.Transparency = v262 or (0.5)
            v263 = 2
        end
        if (v263 == 2) then
            v264.Parent = v259

            return v264
        end
    end
end
local function v24(v265)
    local v266 = 0
    local v267

    while true do
        if ((3) == v266) then
            local v330 = 0

            while true do
                if (v330 == (0)) then
                    v267.Position = UDim2.new(0, -15, 0, -15)
                    v267.ZIndex = v265.ZIndex - (1)
                    v330 = 1
                end
                if (v330 == 1) then
                    v267.Parent = v265
                    v266 = 4

                    break
                end
            end
        end
        if (v266 == (4)) then
            return v267
        end
        if (v266 == 2) then
            local v331 = 0

            while true do
                if (v331 == (0)) then
                    v267.ScaleType = Enum.ScaleType.Slice
                    v267.SliceCenter = Rect.new(23, 23, 277, 277)
                    v331 = 1
                end
                if ((1) == v331) then
                    v267.Size = UDim2.new(1, 30, 1, 30)
                    v266 = 3

                    break
                end
            end
        end
        if (v266 == 0) then
            v267 = Instance.new('ImageLabel')
            v267.Name = 'Shadow'
            v267.BackgroundTransparency = 1
            v266 = 1
        end
        if (v266 == (1)) then
            v267.Image = 'rbxassetid://5554236805'
            v267.ImageColor3 = Color3.fromRGB(0, 0, 0)
            v267.ImageTransparency = 0.6
            v266 = 2
        end
    end
end
local function v25(v268, v269, v270, v271, v272)
    local v273 = 0
    local v274
    local v275
    local v276

    while true do
        if (v273 == (0)) then
            v274 = 0
            v275 = nil
            v273 = 1
        end
        if (v273 == (1)) then
            v276 = nil

            while true do
                if (v274 == (0)) then
                    v275 = TweenInfo.new(v270 or 0.3, v271 or Enum.EasingStyle.Quart, v272 or Enum.EasingDirection.Out)
                    v276 = v9:Create(v268, v275, v269)
                    v274 = 1
                end
                if (v274 == (1)) then
                    v276:Play()

                    return v276
                end
            end

            break
        end
    end
end
local function v26(v277, v278, v279)
    v277.MouseEnter:Connect(function()
        v25(v277, {BackgroundColor3 = v279}, 0.2)
    end)
    v277.MouseLeave:Connect(function()
        v25(v277, {BackgroundColor3 = v278}, 0.20000000000004547)
    end)
end
local function v27(v280)
    local v281 = 0
    local v282

    while true do
        if ((0) == v281) then
            v282 = 0

            while true do
                if (v282 == 0) then
                    v280.MouseButton1Down:Connect(function()
                        v25(v280, {
                            Size = UDim2.new(v280.Size.X.Scale * 0.95, v280.Size.X.Offset * 0.95, v280.Size.Y.Scale * (0.95), v280.Size.Y.Offset * (0.95)),
                        }, 0.1)
                    end)
                    v280.MouseButton1Up:Connect(function()
                        v25(v280, {
                            Size = v280.Size,
                        }, 0.1)
                    end)

                    break
                end
            end

            break
        end
    end
end

local v28 = Instance.new('Frame')

v28.Name = 'BackgroundOverlay'
v28.Size = UDim2.new(1, 0, 1, 0)
v28.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
v28.BackgroundTransparency = 1
v28.BorderSizePixel = 0
v28.Parent = v15

local v35 = Instance.new('Frame')

v35.Name = 'MainFrame'
v35.Size = UDim2.new(0, 420, 0, 320)
v35.Position = UDim2.new(0.5, -210, 0.5, -160)
v35.BackgroundColor3 = v12.BACKGROUND_PRIMARY
v35.BackgroundTransparency = 1
v35.BorderSizePixel = 0
v35.Parent = v15

v22(v35, 12)
v23(v35, v12.ACCENT_COLOR, 1.5, 0.7)
v24(v35)
v21(v35, v12.BACKGROUND_PRIMARY, v12.BACKGROUND_SECONDARY, 135)

local v44 = Instance.new('Frame')

v44.Name = 'InnerGlow'
v44.Size = UDim2.new(1, -4, 1, -4)
v44.Position = UDim2.new(0, 2, 0, 2)
v44.BackgroundColor3 = v12.BACKGROUND_PRIMARY
v44.BackgroundTransparency = 0.95
v44.BorderSizePixel = 0
v44.Parent = v35

v22(v44, 10)

local v52 = Instance.new('Frame')

v52.Name = 'Header'
v52.Size = UDim2.new(1, 0, 0, 70)
v52.Position = UDim2.new(0, 0, 0, 0)
v52.BackgroundTransparency = 1
v52.Parent = v35

local v58 = Instance.new('TextLabel')

v58.Name = 'Title'
v58.Size = UDim2.new(1, -60, 0, 35)
v58.Position = UDim2.new(0, 0, 0, 15)
v58.BackgroundTransparency = 1
v58.Text = '\u{1f511} Key System'
v58.TextColor3 = v12.TEXT_PRIMARY
v58.TextSize = 26
v58.Font = Enum.Font.GothamBold
v58.Parent = v52

local v70 = v58:Clone()

v70.Name = 'TitleGlow'
v70.TextTransparency = 0.7
v70.TextColor3 = v12.ACCENT_COLOR
v70.Position = UDim2.new(0, 0, 0, 15)
v70.ZIndex = v58.ZIndex - (1)
v70.Parent = v52

local v78 = Instance.new('TextLabel')

v78.Name = 'Subtitle'
v78.Size = UDim2.new(1, 0, 0, 20)
v78.Position = UDim2.new(0, 0, 0, 48)
v78.BackgroundTransparency = 1
v78.Text = 'Authentication Required'
v78.TextColor3 = v12.TEXT_SECONDARY
v78.TextSize = 14
v78.Font = Enum.Font.Gotham
v78.Parent = v52

local v90 = Instance.new('TextButton')

v90.Name = 'CloseButton'
v90.Size = UDim2.new(0, 30, 0, 30)
v90.Position = UDim2.new(1, -40, 0, 10)
v90.BackgroundColor3 = Color3.fromRGB(60, 60, 80)
v90.BackgroundTransparency = 0.5
v90.Text = '\u{2715}'
v90.TextColor3 = v12.TEXT_SECONDARY
v90.TextSize = 16
v90.Font = Enum.Font.GothamBold
v90.Parent = v35

v22(v90, 8)
v90.MouseEnter:Connect(function()
    v25(v90, {
        BackgroundColor3 = v12.ERROR_COLOR,
        BackgroundTransparency = 0.3,
        TextColor3 = v12.TEXT_PRIMARY,
    }, 0.2)
end)
v90.MouseLeave:Connect(function()
    v25(v90, {
        BackgroundColor3 = Color3.fromRGB(60, 60, 80),
        BackgroundTransparency = 0.5,
        TextColor3 = v12.TEXT_SECONDARY,
    }, 0.2)
end)

local v101 = Instance.new('Frame')

v101.Name = 'MainPanel'
v101.Size = UDim2.new(1, -40, 1, -90)
v101.Position = UDim2.new(0, 20, 0, 75)
v101.BackgroundTransparency = 1
v101.Parent = v35

local v107 = Instance.new('TextButton')

v107.Name = 'GetKeyButton'
v107.Size = UDim2.new(1, 0, 0, 45)
v107.Position = UDim2.new(0, 0, 0, 0)
v107.BackgroundColor3 = v12.ACCENT_COLOR_SECONDARY
v107.Text = '\u{1f517} Get Key'
v107.TextColor3 = v12.TEXT_PRIMARY
v107.TextSize = 16
v107.Font = Enum.Font.GothamBold
v107.Parent = v101

v22(v107, 10)
v21(v107, v12.ACCENT_COLOR, v12.ACCENT_COLOR_SECONDARY, 90)
v23(v107, v12.ACCENT_COLOR, 1, 0.5)

local v118 = false

v107.MouseEnter:Connect(function()
    local v283 = 0

    while true do
        if (v283 == (1)) then
            v107.Position = UDim2.new(0, -2, 0, -1)

            break
        end
        if ((0) == v283) then
            v118 = true

            v25(v107, {
                Size = UDim2.new(1, 4, 0, 47),
            }, 0.20000000000004547)

            v283 = 1
        end
    end
end)
v107.MouseLeave:Connect(function()
    local v284 = 0

    while true do
        if (v284 == (0)) then
            v118 = false

            v25(v107, {
                Size = UDim2.new(1, 0, 0, 45),
            }, 0.2)

            v284 = 1
        end
        if ((1) == v284) then
            v107.Position = UDim2.new(0, 0, 0, 0)

            break
        end
    end
end)

local v119 = Instance.new('Frame')

v119.Name = 'Divider'
v119.Size = UDim2.new(1, 0, 0, 1)
v119.Position = UDim2.new(0, 0, 0, 60)
v119.BackgroundColor3 = v12.TEXT_SECONDARY
v119.BackgroundTransparency = 0.8000000000000114
v119.BorderSizePixel = 0
v119.Parent = v101

local v127 = Instance.new('TextLabel')

v127.Name = 'OrLabel'
v127.Size = UDim2.new(0, 40, 0, 20)
v127.Position = UDim2.new(0.5, -20, 0, 50)
v127.BackgroundColor3 = v12.BACKGROUND_PRIMARY
v127.BackgroundTransparency = 0
v127.Text = 'OR'
v127.TextColor3 = v12.TEXT_SECONDARY
v127.TextSize = 12
v127.Font = Enum.Font.GothamBold
v127.Parent = v101

local v138 = Instance.new('Frame')

v138.Name = 'KeyInputFrame'
v138.Size = UDim2.new(1, 0, 0, 45)
v138.Position = UDim2.new(0, 0, 0, 85)
v138.BackgroundColor3 = Color3.fromRGB(30, 30, 50)
v138.Parent = v101

v22(v138, 10)
v23(v138, v12.TEXT_SECONDARY, 1, 0.7)

local v144 = Instance.new('TextBox')

v144.Name = 'KeyTextBox'
v144.Size = UDim2.new(1, -20, 1, 0)
v144.Position = UDim2.new(0, 10, 0, 0)
v144.BackgroundTransparency = 1
v144.Text = ''
v144.PlaceholderText = 'Enter your key here...'
v144.PlaceholderColor3 = v12.TEXT_SECONDARY
v144.TextColor3 = v12.TEXT_PRIMARY
v144.TextSize = 14
v144.Font = Enum.Font.Gotham
v144.TextXAlignment = Enum.TextXAlignment.Left
v144.ClearTextOnFocus = false
v144.Parent = v138

local v159 = v138:FindFirstChildOfClass('UIStroke')

v144.Focused:Connect(function()
    v25(v159, {
        Color = v12.ACCENT_COLOR,
        Transparency = 0.3,
    }, 0.20000000000004547)
end)
v144.FocusLost:Connect(function()
    v25(v159, {
        Color = v12.TEXT_SECONDARY,
        Transparency = 0.7000000000000455,
    }, 0.20000000000004547)
end)

local v160 = Instance.new('TextButton')

v160.Name = 'SubmitButton'
v160.Size = UDim2.new(1, 0, 0, 45)
v160.Position = UDim2.new(0, 0, 0, 145)
v160.BackgroundColor3 = v12.ACCENT_COLOR
v160.Text = '\u{2713} Submit Key'
v160.TextColor3 = v12.BACKGROUND_PRIMARY
v160.TextSize = 16
v160.Font = Enum.Font.GothamBold
v160.Parent = v101

v22(v160, 10)
v23(v160, v12.ACCENT_COLOR, 1, 0.3)
v160.MouseEnter:Connect(function()
    v25(v160, {
        BackgroundColor3 = Color3.fromRGB(50, 240, 255),
    }, 0.19999999999998863)
end)
v160.MouseLeave:Connect(function()
    v25(v160, {
        BackgroundColor3 = v12.ACCENT_COLOR,
    }, 0.2)
end)

local v170 = Instance.new('TextLabel')

v170.Name = 'StatusLabel'
v170.Size = UDim2.new(1, 0, 0, 30)
v170.Position = UDim2.new(0, 0, 0, 200)
v170.BackgroundTransparency = 1
v170.Text = ''
v170.TextColor3 = v12.TEXT_SECONDARY
v170.TextSize = 13
v170.Font = Enum.Font.Gotham
v170.Parent = v101

local v180 = Instance.new('Frame')

v180.Name = 'InstructionPanel'
v180.Size = UDim2.new(1, -40, 1, -90)
v180.Position = UDim2.new(0, 20, 0, 75)
v180.BackgroundTransparency = 1
v180.Visible = false
v180.Parent = v35

local v187 = Instance.new('TextLabel')

v187.Name = 'InstructionsTitle'
v187.Size = UDim2.new(1, 0, 0, 25)
v187.Position = UDim2.new(0, 0, 0, 0)
v187.BackgroundTransparency = 1
v187.Text = '\u{1f4cb} How to Get Your Key'
v187.TextColor3 = v12.ACCENT_COLOR
v187.TextSize = 16
v187.Font = Enum.Font.GothamBold
v187.TextXAlignment = Enum.TextXAlignment.Left
v187.Parent = v180

local v198 = Instance.new('Frame')

v198.Name = 'StepsContainer'
v198.Size = UDim2.new(1, 0, 0, 115)
v198.Position = UDim2.new(0, 0, 0, 30)
v198.BackgroundTransparency = 1
v198.Parent = v180

local v204 = {
    '1\u{fe0f}\u{20e3} Click the button below to copy the link',
    '2\u{fe0f}\u{20e3} Open your browser (Chrome, Edge, etc.)',
    '3\u{fe0f}\u{20e3} Paste the link in address bar & press Enter',
    '4\u{fe0f}\u{20e3} Complete the steps on the website',
    '5\u{fe0f}\u{20e3} Copy your key and paste it here',
}

for v285, v286 in ipairs(v204)do
    local v287 = 0
    local v288

    while true do
        if (v287 == 0) then
            v288 = Instance.new('TextLabel')
            v288.Name = 'Step' .. v285
            v288.Size = UDim2.new(1, 0, 0, 20)
            v287 = 1
        end
        if (v287 == (2)) then
            v288.TextColor3 = v12.TEXT_SECONDARY
            v288.TextSize = 12
            v288.Font = Enum.Font.Gotham
            v287 = 3
        end
        if (v287 == (1)) then
            local v346 = 0

            while true do
                if (v346 == (1)) then
                    v288.Text = v286
                    v287 = 2

                    break
                end
                if (v346 == (0)) then
                    v288.Position = UDim2.new(0, 0, 0, (v285 - (1)) * (22))
                    v288.BackgroundTransparency = 1
                    v346 = 1
                end
            end
        end
        if (3 == v287) then
            v288.TextXAlignment = Enum.TextXAlignment.Left
            v288.Parent = v198

            break
        end
    end
end

local v205 = Instance.new('TextButton')

v205.Name = 'CopyLinkButton'
v205.Size = UDim2.new(1, 0, 0, 45)
v205.Position = UDim2.new(0, 0, 0, 150)
v205.BackgroundColor3 = v12.ACCENT_COLOR_SECONDARY
v205.Text = '\u{1f4cb} Copy Link'
v205.TextColor3 = v12.TEXT_PRIMARY
v205.TextSize = 16
v205.Font = Enum.Font.GothamBold
v205.Parent = v180

v22(v205, 10)
v21(v205, v12.ACCENT_COLOR_SECONDARY, Color3.fromRGB(120, 60, 180), 90)
v23(v205, v12.ACCENT_COLOR_SECONDARY, 1, 0.5)
v205.MouseEnter:Connect(function()
    v25(v205, {
        Size = UDim2.new(1, 4, 0, 47),
    }, 0.2)

    v205.Position = UDim2.new(0, -2, 0, 149)
end)
v205.MouseLeave:Connect(function()
    v25(v205, {
        Size = UDim2.new(1, 0, 0, 45),
    }, 0.2)

    v205.Position = UDim2.new(0, 0, 0, 150)
end)

local v215 = Instance.new('TextLabel')

v215.Name = 'CopiedLabel'
v215.Size = UDim2.new(1, 0, 0, 20)
v215.Position = UDim2.new(0, 0, 0, 198)
v215.BackgroundTransparency = 1
v215.Text = ''
v215.TextColor3 = v12.SUCCESS_COLOR
v215.TextSize = 13
v215.Font = Enum.Font.GothamBold
v215.Parent = v180

local v226 = Instance.new('TextButton')

v226.Name = 'BackButton'
v226.Size = UDim2.new(0.48, 0, 0, 35)
v226.Position = UDim2.new(0.26, 0, 1, -40)
v226.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
v226.Text = '\u{2190} Back'
v226.TextColor3 = v12.TEXT_PRIMARY
v226.TextSize = 14
v226.Font = Enum.Font.GothamBold
v226.Parent = v180

v22(v226, 8)
v23(v226, v12.TEXT_SECONDARY, 1, 0.7)
v226.MouseEnter:Connect(function()
    v25(v226, {
        BackgroundColor3 = Color3.fromRGB(70, 70, 90),
    }, 0.2)
end)
v226.MouseLeave:Connect(function()
    v25(v226, {
        BackgroundColor3 = Color3.fromRGB(50, 50, 70),
    }, 0.2)
end)

local function v236()
    v35.BackgroundTransparency = 1
    v35.Position = UDim2.new(0.5, -210, 0.6000000000000227, -160)

    v25(v28, {BackgroundTransparency = 0.5}, 0.4)
    wait(0.1)

    local v293 = v25(v35, {
        BackgroundTransparency = 0,
        Position = UDim2.new(0.5, -210, 0.5, -160),
    }, 0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
end
local function v237()
    local v294 = 0

    while true do
        if (v294 == (0)) then
            v25(v28, {BackgroundTransparency = 1}, 0.3)
            v25(v35, {
                BackgroundTransparency = 1,
                Position = UDim2.new(0.5, -210, 0.6, -160),
            }, 0.2999999999999545, Enum.EasingStyle.Quart, Enum.EasingDirection.In)

            v294 = 1
        end
        if (v294 == (1)) then
            wait(0.35)
            v15:Destroy()

            break
        end
    end
end
local function v238()
    v101.Visible = false
    v180.Visible = true
    v215.Text = ''

    for v316, v317 in ipairs(v198:GetChildren())do
        if v317:IsA('TextLabel') then
            v317.TextTransparency = 1

            delay(v316 * (4.9999999999954525E-2), function()
                v25(v317, {TextTransparency = 0}, 0.3)
            end)
        end
    end
end
local function v239()
    local v298 = 0

    while true do
        if (v298 == (0)) then
            v180.Visible = false
            v101.Visible = true
            v298 = 1
        end
        if (v298 == (1)) then
            v170.Text = ''

            break
        end
    end
end
local function v240(v299, v300)
    v170.Text = v299
    v170.TextColor3 = (v300 and v12.SUCCESS_COLOR) or v12.ERROR_COLOR
    v170.TextTransparency = 1

    v25(v170, {TextTransparency = 0}, 0.2)

    if not v300 then
        local v319 = 0
        local v320

        while true do
            if (v319 == (0)) then
                v320 = v170.Position

                for v376 = 1, 3 do
                    local v377 = 0
                    local v378

                    while true do
                        if (v377 == 0) then
                            v378 = 0

                            while true do
                                if (v378 == (1)) then
                                    v170.Position = UDim2.new(v320.X.Scale, v320.X.Offset - (5), v320.Y.Scale, v320.Y.Offset)

                                    wait(5E-2)

                                    break
                                end
                                if (v378 == 0) then
                                    v170.Position = UDim2.new(v320.X.Scale, v320.X.Offset + 5, v320.Y.Scale, v320.Y.Offset)

                                    wait(5E-2)

                                    v378 = 1
                                end
                            end

                            break
                        end
                    end
                end

                v319 = 1
            end
            if (v319 == (1)) then
                v170.Position = v320

                break
            end
        end
    end
end

v90.MouseButton1Click:Connect(function()
    v237()
end)
v107.MouseButton1Click:Connect(function()
    v238()
end)
v226.MouseButton1Click:Connect(function()
    v239()
end)
v205.MouseButton1Click:Connect(function()
    local v304 = 0
    local v305

    while true do
        if (v304 == (0)) then
            v305 = 0

            while true do
                if (v305 == (1)) then
                    v215.Text = '\u{2713} Link copied to clipboard!'

                    v25(v215, {TextTransparency = 0}, 0.2)

                    v305 = 2
                end
                if (v305 == (0)) then
                    if setclipboard then
                        setclipboard(v12.KEY_LINK)
                    elseif Clipboard then
                        Clipboard.set(v12.KEY_LINK)
                    end

                    v205.Text = '\u{2713} Copied!'
                    v305 = 1
                end
                if (v305 == (2)) then
                    delay(2, function()
                        local v382 = 0

                        while true do
                            if (v382 == (0)) then
                                v205.Text = '\u{1f4cb} Copy Link'

                                v25(v215, {TextTransparency = 1}, 0.3)

                                break
                            end
                        end
                    end)

                    break
                end
            end

            break
        end
    end
end)
v160.MouseButton1Click:Connect(function()
    local v306 = 0
    local v307

    while true do
        if (1 == v306) then
            v160.Text = '\u{23f3} Checking...'
            v160.Active = false
            v306 = 2
        end
        if (v306 == 2) then
            wait(1)

            if (v307 == v12.VALID_KEY) then
                local v360 = 0

                while true do
                    if (v360 == (1)) then
                        v160.BackgroundColor3 = v12.SUCCESS_COLOR

                        wait(1.5)

                        v360 = 2
                    end
                    if (v360 == (0)) then
                        v240('\u{2713} Key verified! Loading...', true)

                        v160.Text = '\u{2713} Success!'
                        v360 = 1
                    end
                    if (v360 == (2)) then
                        v237()

                        break
                    end
                end
            else
                local v361 = 0
                local v362

                while true do
                    if (v361 == (2)) then
                        v25(v362, {
                            Color = v12.ERROR_COLOR,
                            Transparency = 0.3,
                        }, 0.20000000000004547)
                        wait(1)

                        v361 = 3
                    end
                    if (v361 == (3)) then
                        v25(v362, {
                            Color = v12.TEXT_SECONDARY,
                            Transparency = 0.7,
                        }, 0.20000000000004547)

                        break
                    end
                    if (v361 == (0)) then
                        v240('\u{2715} Invalid key! Please try again.', false)

                        v160.Text = '\u{2713} Submit Key'
                        v361 = 1
                    end
                    if (v361 == (1)) then
                        v160.Active = true
                        v362 = v138:FindFirstChildOfClass('UIStroke')
                        v361 = 2
                    end
                end
            end

            break
        end
        if (v306 == (0)) then
            local v356 = 0

            while true do
                if (v356 == (1)) then
                    v306 = 1

                    break
                end
                if (v356 == (0)) then
                    v307 = v144.Text

                    if (v307 == '') then
                        local v388 = 0

                        while true do
                            if (v388 == (0)) then
                                v240('\u{26a0}\u{fe0f} Please enter a key!', false)

                                return
                            end
                        end
                    end

                    v356 = 1
                end
            end
        end
    end
end)

local v241 = false
local v242
local v243
local v244

local function v245(v308)
    local v309 = 0
    local v310

    while true do
        if (0 == v309) then
            v310 = v308.Position - v243
            v35.Position = UDim2.new(v244.X.Scale, v244.X.Offset + v310.X, v244.Y.Scale, v244.Y.Offset + v310.Y)

            break
        end
    end
end

v52.InputBegan:Connect(function(v311)
    if ((v311.UserInputType == Enum.UserInputType.MouseButton1) or (v311.UserInputType == Enum.UserInputType.Touch)) then
        v241 = true
        v243 = v311.Position
        v244 = v35.Position

        v311.Changed:Connect(function()
            if (v311.UserInputState == Enum.UserInputState.End) then
                v241 = false
            end
        end)
    end
end)
v52.InputChanged:Connect(function(v312)
    if ((v312.UserInputType == Enum.UserInputType.MouseMovement) or (v312.UserInputType == Enum.UserInputType.Touch)) then
        v242 = v312
    end
end)
v10.InputChanged:Connect(function(v313)
    if ((v313 == v242) and v241) then
        v245(v313)
    end
end)
spawn(function()
    while v15.Parent do
        local v318 = 0

        while true do
            if (v318 == 0) then
                v25(v70, {TextTransparency = 0.5}, 1)
                wait(1)

                v318 = 1
            end
            if (v318 == (1)) then
                v25(v70, {TextTransparency = 0.7999999999999545}, 1)
                wait(1)

                break
            end
        end
    end
end)
v236()

return v15
