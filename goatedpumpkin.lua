local a = game:GetService("Players").LocalPlayer
if not a then return end
local b = a:GetMouse()
if not b then return end

local c = game:GetService("Workspace")
local d = c.CurrentCamera
while not d do
    task.wait()
    d = c.CurrentCamera
end

local e = d.ViewportSize.X
local f = d.ViewportSize.Y

local g = Vector2.new(e / 2, f / 2)
local h = 1.5

local i = Vector2.new(430.5676185601874 - 446.87905745051256, 238.22314814777943 - 252.5772155145053)
local j = Vector2.new(458.62329345154666 - 446.87905745051256, 238.22314814777943 - 252.5772155145053)
local k = Vector2.new(446.87905745051256 - 446.87905745051256, 265.62636766607426 - 252.5772155145053)
local l = Vector2.new(443.6167696724475 - 446.87905745051256, 222.56416556589667 - 252.5772155145053)

local m = Drawing.new("Square")
m.Filled = true
m.Color = Color3.fromRGB(123, 74, 46)
m.Visible = true
m.ZIndex = 0

local n = Drawing.new("Circle")
n.Filled = true
n.Color = Color3.fromRGB(255, 140, 0)
n.Visible = true
n.ZIndex = 1

local o = Drawing.new("Triangle")
o.Filled = true
o.Color = Color3.fromRGB(0, 0, 0)
o.Visible = true
o.ZIndex = 2

local p = Drawing.new("Triangle")
p.Filled = true
p.Color = Color3.fromRGB(0, 0, 0)
p.Visible = true
p.ZIndex = 2

local q = Drawing.new("Triangle")
q.Filled = true
q.Color = Color3.fromRGB(0, 0, 0)
q.Visible = true
q.ZIndex = 2

local r = g

local function s()
    local t = 40 * h
    n.Radius = t
    n.Position = Vector2.new(r.X, r.Y)

    local u = Vector2.new(r.X + l.X * h, r.Y + l.Y * h)
    local v = 20 * h
    local w = v * 1.2
    m.Size = Vector2.new(v, w)
    m.Position = Vector2.new(u.X - v / 2, u.Y - w)

    local x = Vector2.new(r.X + i.X * h, r.Y + i.Y * h)
    local y = 18 * h
    local z = y / 2
    o.PointA = Vector2.new(x.X - z, x.Y + z)
    o.PointB = Vector2.new(x.X + z, x.Y + z)
    o.PointC = Vector2.new(x.X, x.Y - z)

    local aa = Vector2.new(r.X + j.X * h, r.Y + j.Y * h)
    local ab = y / 2
    p.PointA = Vector2.new(aa.X - ab, aa.Y + ab)
    p.PointB = Vector2.new(aa.X + ab, aa.Y + ab)
    p.PointC = Vector2.new(aa.X, aa.Y - ab)

    local ac = Vector2.new(r.X + k.X * h, r.Y + k.Y * h)
    local ad = 18 * h
    local ae = ad / 2
    q.PointA = Vector2.new(ac.X - ad, ac.Y - ae / 2)
    q.PointB = Vector2.new(ac.X + ad, ac.Y - ae / 2)
    q.PointC = Vector2.new(ac.X, ac.Y + ae)
end

s()

local t = false
local u = Vector2.new(0, 0)
local v = false

spawn(function()
    while true do
        local w = Vector2.new(b.X, b.Y)
        local x = ismouse1pressed and ismouse1pressed() or false

        if x and not v then
            local y = w.X - r.X
            local z = w.Y - r.Y
            local aa = 40 * h
            local ab = (y * y) + (z * z)
            local ac = aa * aa
            if ab <= ac then
                t = true
                u = Vector2.new(r.X - w.X, r.Y - w.Y)
            end
        elseif not x and v then
            t = false
        end

        if t then
            local ad = w.X + u.X
            local ae = w.Y + u.Y
            r = Vector2.new(ad - 250, ae)
            s()
        end

        v = x
        wait(0.01)
    end
end)


print("george droid pumpkinator 9billion initiated")
