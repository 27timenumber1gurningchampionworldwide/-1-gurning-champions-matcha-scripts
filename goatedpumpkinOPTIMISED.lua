local a=game:GetService("Players").LocalPlayer;if not a then return end
local b=a:GetMouse();if not b then return end
local c=game:GetService("Workspace");local d=c.CurrentCamera
while not d do task.wait();d=c.CurrentCamera end
local e=d.ViewportSize
local f=Vector2.new(e.X/2,e.Y/2)
local g=1.5

local h=Vector2.new(430.5676185601874-446.87905745051256,238.22314814777943-252.5772155145053)
local i=Vector2.new(458.62329345154666-446.87905745051256,238.22314814777943-252.5772155145053)
local j=Vector2.new(446.87905745051256-446.87905745051256,265.62636766607426-252.5772155145053)
local k=Vector2.new(443.6167696724475-446.87905745051256,222.56416556589667-252.5772155145053)

local l=Drawing.new("Square");l.Filled=true;l.Color=Color3.fromRGB(123,74,46);l.Visible=true;l.ZIndex=0
local m=Drawing.new("Circle");m.Filled=true;m.Color=Color3.fromRGB(255,140,0);m.Visible=true;m.ZIndex=1
local n=Drawing.new("Triangle");n.Filled=true;n.Color=Color3.fromRGB(0,0,0);n.Visible=true;n.ZIndex=2
local o=Drawing.new("Triangle");o.Filled=true;o.Color=Color3.fromRGB(0,0,0);o.Visible=true;o.ZIndex=2
local p=Drawing.new("Triangle");p.Filled=true;p.Color=Color3.fromRGB(0,0,0);p.Visible=true;p.ZIndex=2

local q=f
local r=f

local function s()
    local t=40*g
    m.Radius=t
    m.Position=Vector2.new(r.X,r.Y)

    local u=Vector2.new(r.X+k.X*g,r.Y+k.Y*g)
    local v=20*g
    local w=v*1.2
    l.Size=Vector2.new(v,w)
    l.Position=Vector2.new(u.X-v/2,u.Y-w)

    local x=Vector2.new(r.X+h.X*g,r.Y+h.Y*g)
    local y=18*g
    local z=y/2
    n.PointA=Vector2.new(x.X-z,x.Y+z)
    n.PointB=Vector2.new(x.X+z,x.Y+z)
    n.PointC=Vector2.new(x.X,x.Y-z)

    local aa=Vector2.new(r.X+i.X*g,r.Y+i.Y*g)
    local ab=y/2
    o.PointA=Vector2.new(aa.X-ab,aa.Y+ab)
    o.PointB=Vector2.new(aa.X+ab,aa.Y+ab)
    o.PointC=Vector2.new(aa.X,aa.Y-ab)

    local ac=Vector2.new(r.X+j.X*g,r.Y+j.Y*g)
    local ad=18*g
    local ae=ad/2
    p.PointA=Vector2.new(ac.X-ad,ac.Y-ae/2)
    p.PointB=Vector2.new(ac.X+ad,ac.Y-ae/2)
    p.PointC=Vector2.new(ac.X,ac.Y+ae)
end

s()

local t=false
local u=Vector2.new(0,0)
local v=false

spawn(function()
    while true do
        local w=Vector2.new(b.X,b.Y)
        local x=ismouse1pressed and ismouse1pressed() or false

        if x and not v then
            local y=w.X-r.X
            local z=w.Y-r.Y
            local aa=40*g
            local ab=y*y+z*z
            local ac=aa*aa
            if ab<=ac then
                t=true
                u=Vector2.new(r.X-w.X,r.Y-w.Y)
                q=Vector2.new(r.X,r.Y)
            end
        elseif (not x) and v then
            t=false
        end

        if t then
            local ad=w.X+u.X
            local ae=w.Y+u.Y
            q=Vector2.new(ad,ae)
        end

        local af=q.X-r.X
        local ag=q.Y-r.Y
        local ah=0.002
        r=Vector2.new(r.X+af*ah,r.Y+ag*ah)
        s()

        v=x
        wait(0.01)
    end
end)

print("george droid goated pumpkininator 9trillion optimised loaded")
