local a=game:GetService("Players").LocalPlayer;if not a then return end
local b=a:GetMouse();if not b then return end
local c=game:GetService("Workspace");local d=c.CurrentCamera
while not d do task.wait();d=c.CurrentCamera end
local e=d.ViewportSize;local f=e.X/2;local g=e.Y/2
local h=Vector2.new(f,g);local i=1.5

local j=Vector2.new(430.5676185601874-446.87905745051256,238.22314814777943-252.5772155145053)
local k=Vector2.new(458.62329345154666-446.87905745051256,238.22314814777943-252.5772155145053)
local l=Vector2.new(446.87905745051256-446.87905745051256,265.62636766607426-252.5772155145053)
local m=Vector2.new(443.6167696724475-446.87905745051256,222.56416556589667-252.5772155145053)

local n=Drawing.new("Square");n.Filled=true;n.Color=Color3.fromRGB(123,74,46);n.Visible=true;n.ZIndex=0
local o=Drawing.new("Circle");o.Filled=true;o.Color=Color3.fromRGB(255,140,0);o.Visible=true;o.ZIndex=1
local p=Drawing.new("Triangle");p.Filled=true;p.Color=Color3.fromRGB(0,0,0);p.Visible=true;p.ZIndex=2
local q=Drawing.new("Triangle");q.Filled=true;q.Color=Color3.fromRGB(0,0,0);q.Visible=true;q.ZIndex=2
local r=Drawing.new("Triangle");r.Filled=true;r.Color=Color3.fromRGB(0,0,0);r.Visible=true;r.ZIndex=2

local s=h

local function t()
    local u=40*i
    o.Radius=u
    o.Position=Vector2.new(s.X,s.Y)

    local v=Vector2.new(s.X+m.X*i,s.Y+m.Y*i)
    local w=20*i
    local x=w*1.2
    n.Size=Vector2.new(w,x)
    n.Position=Vector2.new(v.X-w/2,v.Y-x)

    local y=Vector2.new(s.X+j.X*i,s.Y+j.Y*i)
    local z=18*i
    local aa=z/2
    p.PointA=Vector2.new(y.X-aa,y.Y+aa)
    p.PointB=Vector2.new(y.X+aa,y.Y+aa)
    p.PointC=Vector2.new(y.X,y.Y-aa)

    local ab=Vector2.new(s.X+k.X*i,s.Y+k.Y*i)
    local ac=z/2
    q.PointA=Vector2.new(ab.X-ac,ab.Y+ac)
    q.PointB=Vector2.new(ab.X+ac,ab.Y+ac)
    q.PointC=Vector2.new(ab.X,ab.Y-ac)

    local ad=Vector2.new(s.X+l.X*i,s.Y+l.Y*i)
    local ae=18*i
    local af=ae/2
    r.PointA=Vector2.new(ad.X-ae,ad.Y-af/2)
    r.PointB=Vector2.new(ad.X+ae,ad.Y-af/2)
    r.PointC=Vector2.new(ad.X,ad.Y+af)
end

t()

local u=false
local v=Vector2.new(0,0)
local w=false

spawn(function()
    while true do
        local x=Vector2.new(b.X,b.Y)
        local y=ismouse1pressed and ismouse1pressed() or false

        if y and not w then
            local z=x.X-s.X
            local aa=x.Y-s.Y
            local ab=40*i
            local ac=(z*z)+(aa*aa)
            local ad=ab*ab
            if ac<=ad then
                u=true
                v=Vector2.new(s.X-x.X,s.Y-x.Y)
            end
        elseif (not y) and w then
            u=false
        end

        if u then
            local ae=x.X+v.X
            local af=x.Y+v.Y
            s=Vector2.new(ae-250,af)
            t()
        end

        w=y
        wait(0.01)
    end
end)
