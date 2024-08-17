local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
function lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP(data) m=string.sub(data, 0, 55) data=data:gsub(m,'')

data = string.gsub(data, '[^'..b..'=]', '') return (data:gsub('.', function(x) if (x == '=') then return '' end local r,f='',(b:find(x)-1) for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end return r; end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x) if (#x ~= 8) then return '' end local c=0 for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end return string.char(c) end)) end


 


-- updated by zeiden.webb on discord ,originally made by serilKilla
-- working as of 17/08/2024
-- Added powerful anti ban and bug fixes
getupvalues = getupvalues or debug.getupvalues
setupvalue = setupvalue or debug.setupvalue
if not (getrawmetatable and getupvalues and setupvalue and (getreg or debug.getregistry)) then
	local h = Instance.new(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('OuOpfmerUYclVZDzoeuvWNLBqCfDTFHclzIlJuvtDSGmOBBASQZCxodSGludA=='),workspace)
	h.Text = lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('iZpwarwUDTQAVrfJcgrAPndQDKLCxoCkLNhwuSktxLDCyvSQthszwabSW5jb21wYXRpYmxlIGV4cGxvaXQu')
	wait(3)
	h:Destroy()
	return
end
local settings = {refill_at=0, refill_end=60, deliver_at=24, stay_in_kitchen=true}
local doCashier,doBoxer,doCook,doSupplier,doDelivery = true,true,true,false,true
if readfile then
	pcall(function()
		local new = game:GetService(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('bFiicnaTBbCHxYkpmNFzuxYgVVnPEsThCEWddkHfyOnNxlXSDFxBHbvSHR0cFNlcnZpY2U=')):JSONDecode(readfile(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('htHfefGdcjaJwzGiIjTxVsfIIYUdsEsouVlmloertzVRMVjyGwSdwKWUGl6emFGYXJtLnR4dA==')))
		--corruption?
		local doOverwrite=false
		for k,v in pairs(new) do
			if settings[k]==nil then
				doOverwrite=true
				new[k]=nil
			end
		end
		for k,v in pairs(settings) do
			if new[k]==nil then
				doOverwrite=true
				new[k]=v
			end
		end
		--use input
		if doOverwrite then
			warn(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('GCDiUTPYdXQcvLpQQrgQYXHFvTXhEhMfnxEpbBtLWruvwJsHEUDiygPU2V0dGluZ3Mgb3ZlcndyaXR0ZW4='))
			writefile(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('FvEzeWklPxmtbvkxwxEiLvePGAThNOTcCEdevRSAfdiySrVCzkXqCWIUGl6emFGYXJtLnR4dA=='),game:GetService(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('upbuwhaMgUnlWoNPJcBBEXTixpMUcZpbNyzqCmiAYALkqPjdYhzXIjaSHR0cFNlcnZpY2U=')):JSONEncode(new))
		end
		settings = new
	end)
end

if getconnections then
	for _,c in next,getconnections(game:GetService(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('CXSZZStaWEyBGpClZwObIccgINRCGZFBBIwKnIMeBfwjbklQIqiwbDtU2NyaXB0Q29udGV4dA==')).Error) do
		c:Disable()
	end
end

local player = game:GetService(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('LgFKhMPoxvyqpNkhwfuunrTHKsNNzVqeMhxsLqNphxuaqVDHNYNsBGBUGxheWVycw==')).LocalPlayer
local ffc = game.FindFirstChild
local RNG = Random.new()
local network
local character,root,humanoid
do
	local reg = (getreg or debug.getregistry)()
	for i=1,#reg do
		local f = reg[i]
		if type(f)==lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('BmBqNPUudxJGsagbKkgPAFieNPcNCQmBhaTnJMvrLGUMXHXOVaHqFjzZnVuY3Rpb24=') then
		    for k,v in next,getupvalues(f) do
				if typeof(v)==lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('cphBREyJLoxzIBiqFsSEZKUpGZUJIFzwgdmynhtdVmgoyxDWxeTWSlhSW5zdGFuY2U=') then
				    if v.Name==lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('RnGDJrTbmdVUqspLutFHjYyRabjcSncoYBaWJKGUGKeGIXZZENuxxIqQ2FzaE91dA==') then
					    setupvalue(f,k,{MouseButton1Click={wait=function()end,Wait=function()end}})
				    elseif v.Name==lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('wgmwLWgwUxYOVYZoBpgIkHkGgSkCUlcRwiKltFFPbkwRnAGTqyLcOiSU3RpY2tlck5hbWU=') then
				        setupvalue(f,k,nil)
				    end
				end
			end
    		if tostring(getfenv(f).script) == lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('TJSydyOTJKbuolKRRQqzENyEzkoqOyJeoSyzMbeXJmqZjaqMgIVjvErTXVzaWM=') then
    		    local consts = getconstants(f)
    		    local loc=false
		        for ci,c in next,consts do
		            if c == lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('oEwhCHkzPJPdsmpiiuFxgWYIMAnOCRrhrhxoJqigoRKOzyHhBttCkzAbG9jYXRpb24gY2hhbmdlZA==') then
		                loc=true
		            elseif loc and c == lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('KKSpavOvHbGsppbjtwFkwGcVrAkStERsBAoxKSCagBWNUudKHhgHjMuU2VuZERhdGE=') then
		                setconstant(f,ci,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('oVIkNKCHfTQyqtAKQByuwaIxeyncdzkwRzUNkpiHDBOfvohVrIQBTydRXhwbG9kZVN0cmluZw=='))
		                break
		            end
		        end
    		end
		elseif type(f)==lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('fpNuFPQrdPZvgwWxuUOFEUKvXnEozPUgPwsWTumPXDyamMZKAyoZjWcdGFibGU=') and rawget(f,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('fyzeNaIbDdSwcLvTXvJsqYVzAgyozIpfhHXFoaXHJzcUYkgyUaTUDMfRmlyZVNlcnZlcg==')) and rawget(f,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('KUIvLHuGaWxwyspsBsfEQsjuSRvevietcAVBPuYOutCHhIBaQFwRbvZQmluZEV2ZW50cw==')) then
			network = f
		end
	end
end
assert(network,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('yIPDBYuhnceSlAtBuPAueQUVrDJwHhzuaEkGJswrAWWklSrOAdlpZvSZmFpbGVkIHRvIGZpbmQgbmV0d29yaw=='))
--//gui
Create = function(class,parent,props)
	local new = Instance.new(class)
	for k,v in next,props do
		new[k]=v
	end
	new.Parent = parent
	return new
end
gui=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('ZqvvzxptdqGaQGOSaoOofQnBohArCUPmAwYGOjHSMTiaGnuEOBGcEMsU2NyZWVuR3Vp'),game.CoreGui,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('rWwAjuSriZLDGUVjHauTwFXdmmUSTlvlqPhmyHqZgOTvhoojSJGYzMdRmFybQ=='), ZIndexBehavior=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('yWOafCdxDanTZwwEbpfmHLgAbyhxPCWICLBIHHAoQCSUXsoXlreyNHhU2libGluZw==')})
main=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('cukQewTMptMtBVBTKKGDobyuqDDQiKgcdkpSXoKzUsUyNyNXrNhLWtoRnJhbWU='),gui,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('IxBvGIGGPPwUrTyolTQhNWynoefuzOwvZiuuCGmPHwKRhJzCSQPzquFbWFpbg=='), Draggable=true, Active=true, Size=UDim2.new(0,350,0,100), Position=UDim2.new(.335,0,0.02,0), BackgroundColor3=Color3.new(0.098,0.098,0.098)})
topbar=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('RRtQLJtaZYyWbqgQJejbKOpgoPFVHLVRMdySnevHEbafSLnTjZsPThmRnJhbWU='),main,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('ETQElWRRDkJEfymXUHPluVIrVhTbTzQSaoaOTyWIFxgQPBqgncBNmTzdG9wYmFy'), Size=UDim2.new(1,0,0.15,0), BackgroundColor3=Color3.new(0.255,0.255,0.255)})
closeBtn=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('shdHvQguucBsMSYTrNwwQHzfGVXvmumFLwNMrslBaRagJmOpevKlCjkVGV4dEJ1dHRvbg=='),topbar,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('GACJrQIeUAXkTFonJfUZjSPUzfkBQwUIBidZhUZyVZyIkqZtOMbhdRwY2xvc2VCdG4='), TextWrapped=true, Size=UDim2.new(0.03,0,1,0), TextColor3=Color3.new(1,1,1), Text=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('zmZpJlrmnQDHgztTVUJSrGVMMkuGCWxgfgTBuxBaoTjLGqHPQoybckOWA=='), BackgroundTransparency=1,
	Font=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('vyweGetLIDEEcmbBHWgRpuaPwkLIbkJQazRBqcjFUQoYFKiCHXEaHsoR290aGFtU2VtaWJvbGQ='), Position=UDim2.new(0.96,0,0,0), TextSize=14, TextScaled=true, BackgroundColor3=Color3.new(1,1,1)})
titleLbl=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('otSJpXgjeanAsGqcpqyYnTrZSTglSAbUwNNHPNeiwmXhouDiuubFtEaVGV4dExhYmVs'),topbar,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('KPjajkCXLGKJZVEELLAmjxDzNFpfFiCOxRKWsifjiuoFMlYfRakBXLEdGl0bGVMYmw='), TextWrapped=true, Size=UDim2.new(0.5,0,1,0), Text=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('KTBvtpyPSDKvrZDASZWgdXNUGklvlsgpQXLFRpFuCJcICSOfwVgPaAeUGl6emEgRmFjdG9yeQ=='), TextSize=14, Font=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('ldWEUhrfiNCdeKbEyYxcIYbOeERVXBlhVApkQMvbisxSjXrQDDUFUEmR290aGFtU2VtaWJvbGQ='),
	BackgroundTransparency=1, Position=UDim2.new(0.25,0,0,0), TextColor3=Color3.new(1,1,1), BackgroundColor3=Color3.new(1,1,1)})
saveBtn=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('QITTcqnHWgxGvLgyzfxHKYSRMqDaNNctXcXfnoKsEXFNMUxZDIYxEpbSW1hZ2VCdXR0b24='),topbar,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('TieDWNXexCzukOsSGycLhzEYmXKiRclaEBiBYCGXYCqcyrxxnyAQmwvc2F2ZUJ0bg=='), Image=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('xQWeJpcIXVHhKaBQmHWbVPMXdQGVppPohDAgpXodqXXpGlKOZcidgozcmJ4YXNzZXRpZDovLzU1Njg3ODMz'), Size=UDim2.new(0.05,0,1,0), Position=UDim2.new(0.01,0,0,0), BackgroundTransparency=1, BackgroundColor3=Color3.new(), Visible=writefile~=nil})
settings_1=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('buEzRNluCCOVsCOlwkrxgtGUoYwKIyhiJUpxffMaOeVKoHDEjyIAYrORnJhbWU='),main,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('BUaajtixLaGqfxsiVKZbQnvTEKJjhcjmEOxovmNSHJUXVkCNzhAeOLSc2V0dGluZ3M='), BackgroundTransparency=1, Size=UDim2.new(0.97,0,0.75,0), Position=UDim2.new(0.025,0,0.2,0), BackgroundColor3=Color3.new(1,1,1)})
Layout=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('StnNdvXkEVwyGabwwUmbgwnTGGutKXZJXHGUYSgOEQadHRMvNXwRrNQVUlHcmlkTGF5b3V0'),settings_1,{VerticalAlignment=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('ypKMZxIQWKsglfkLNwpxpdEFOsWXibwixCALlncvixdrKRYsQDUEIvEQ2VudGVy'), SortOrder=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('RAmfjCxoGnGuQhWxLxRJduBSHKxxJUTAmWOgiKYRlJHnNVirdWLVbTMTGF5b3V0T3JkZXI='), HorizontalAlignment=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('XJyBOLEHSCOYgIhNrPNfmSWFTgiWZwxbxxSkmBJqpANzAOJSPQUsVfCQ2VudGVy'), CellPadding=UDim2.new(0.01,0,0.1,0), CellSize=UDim2.new(0.325,0,0.26,0)})
cashier=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('ySGoLpsiKXdFqyesNnQPIDYXQpiTAOklOCIvPvkPMZfSXXAvFLqeBPvRnJhbWU='),settings_1,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('knpBGWLnusSIUfoCJFIRRTvkxElPweJMLagUjiFXRQsnGqpzIHWjcSGY2FzaGllcg=='), LayoutOrder=4, BackgroundTransparency=1, Size=UDim2.new(0,100,0,100), BackgroundColor3=Color3.new(1,1,1)})
Label=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('vNTCUjIgLpZYCukRlEHlRphQsockQZSgSkQLhrqevvHrigvHOIwgdjEVGV4dExhYmVs'),cashier,{TextWrapped=true, Size=UDim2.new(0.6,0,1,0), Text=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('NIIUqxvIpRaFoBVqljmpKzIAejLnGmBeaBxBOtklnXDRAKuOzqDRzMdQ2FzaGllcg=='), TextSize=14, TextXAlignment=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('NDvlsPpUkcuhIHYZgGFclnOivAaZGetzsFoBzSgOZTYLlCldFoLdvxBTGVmdA=='), Font=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('VbfCroANnZQAewhCroxScRawOzrRiaWtsPUZaoCMJMrzqfuImQkBjMBU291cmNlU2Fucw=='),
	BackgroundTransparency=1, Position=UDim2.new(0.4,0,0,0), TextColor3=Color3.new(1,1,1), TextScaled=true, BackgroundColor3=Color3.new(1,1,1)})
cashierBtn=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('HaekpocNyVtAiBddOhtELOKlIjyhWgXnqnhMIGNSMUydugesqNldlWRSW1hZ2VCdXR0b24='),cashier,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('DOKMAETcWNtBupIoJuZZRGlpXXJnMRMRfSbWJmtpzkMvHRQCQVgrQCWY2FzaGllckJ0bg=='), ImageTransparency=1, BorderSizePixel=0, Size=UDim2.new(0.38,0,1,0), BackgroundColor3=Color3.new(0.392,0.392,0.392)})
cashierSlider=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('lKNntJfNNJkAPyteTPGobzMEYPqMSaqdVdowjViIfuvqcxcEWoXUBFiRnJhbWU='),cashierBtn,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('XhDhuVVYLdavnzbBePlNJtyzDAJGMZZxOYQwjIjhdllRomlLlpFrHBhc2xpZGVy'), Size=UDim2.new(0.5,-4,1,-4), Position=UDim2.new(doCashier and 0.5 or 0,2,0,2), BorderSizePixel=0, BackgroundColor3=Color3.new(0.784,0.784,0.784)})
kitchen=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('RevyHmZWyJSJDiYNbRszfXaEyAfFqSTETotUObuRieHTJTzuQoNPACHRnJhbWU='),settings_1,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('xPPlScNrBWnFYWXZlnTaSGUxtiGbgEqhGqCsBEAGGzyrAExXZRfXSoYa2l0Y2hlbg=='), LayoutOrder=9, BackgroundTransparency=1, Size=UDim2.new(0,100,0,100), BackgroundColor3=Color3.new(1,1,1)})
Label_2=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('DLMfLvtgVgcAdiomUSOeHkpeSQWxXUHWyxhylyyFYpKwbTdstAutShAVGV4dExhYmVs'),kitchen,{TextWrapped=true, Size=UDim2.new(0.6,0,1,0), Text=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('McmvCcNdJyEiuXJSRlXeEBlMsuIGkkLJWhQyKfrSkinOSHjhFQaVYMMRGVsaXZlciBBdDo='), TextSize=14, TextXAlignment=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('kixaQBudwZtncVWeMiunCTkddLKYCWaEQRsCNBZbDmqIeMYGdbgbgmqUmlnaHQ='), Font=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('crVSVkadcvqUOCvqmEQCInnuSLvPBaICYrEBKdjQvpesRtmRvUvKuOzU291cmNlU2Fucw=='),
	BackgroundTransparency=1, TextColor3=Color3.new(1,1,1), TextScaled=true, BackgroundColor3=Color3.new(1,1,1)})
deliverAtBox=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('krofySfxLNMtdtssQXOmfAAgLLyGGRdGOVajNiHYnMgKHqQhRhoegEzVGV4dEJveA=='),kitchen,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('ooHlCENjrHFimTItLBqlSrKLBEQmYNPdsMWPNptiydMCRGmJtEsAOsWZGVsaXZlckF0Qm94'), TextWrapped=true, Size=UDim2.new(0.25,0,1,0), Text=tostring(settings.deliver_at), TextSize=50, TextColor3=Color3.new(),
	Font=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('qMLMSEzJEIrDaozviqXNEySgJTbSkDjdpWeYHCsmVYFWDDxgvFJPTloQ29kZQ=='), Position=UDim2.new(0.62,0,0,0), TextScaled=true, BackgroundColor3=Color3.new(0.784,0.784,0.784)})
refillEnd=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('rKbRCaXOShPEbIcXdekMKCBuWztiofmmQgVlXKjzFLyHvKeDaTyoxGQRnJhbWU='),settings_1,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('NNIzbTqnHcfkkTZhtBJRtcjSxRHWechYLGMODjPIEZJbHdKBATGxFiPcmVmaWxsRW5k'), LayoutOrder=8, BackgroundTransparency=1, Size=UDim2.new(0,100,0,100), BackgroundColor3=Color3.new(1,1,1)})
refillEndBox=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('PoGVMmGgIzYYarpUVwkzxERORpESVkgMJSJGfVlYCEjQwskFhBAkMyMVGV4dEJveA=='),refillEnd,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('hGPxwSQjTaluloaYRmLuQWNRqFoazMahbujIEDalOvAiwvLPZiNFnqrcmVmaWxsRW5kQm94'), TextWrapped=true, Size=UDim2.new(0.25,0,1,0), Text=tostring(settings.refill_end), TextSize=50, TextColor3=Color3.new(),
	Font=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('MflCDRvgsFxSOOmYVycDdksnRtVDYIzJeIOnAvmNRGOSjTMBcSREnrKQ29kZQ=='), Position=UDim2.new(0.62,0,0,0), TextScaled=true, BackgroundColor3=Color3.new(0.784,0.784,0.784)})
Label_3=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('OegHAIfPTgVXRCVXwKzikDoCxcVefmtaxpuQEXEMUtsuqObmncqMBdfVGV4dExhYmVs'),refillEnd,{TextWrapped=true, Size=UDim2.new(0.6,0,1,0), Text=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('zalUPAVplvqLceCsfAtQkwyzKgaEaWtBohbesZmhkIEoCXZYzNEgzzlUmVmaWxsIEVuZDo='), TextSize=14, TextXAlignment=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('yHkbktdixVZsyoFUOYAvRptMemTDLJePWnjjqhKYddPJAZvPjmtBVOXUmlnaHQ='), Font=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('tVLoZUQVNGGzzbVIzLtFcNwOpNhssmGaHPGMMdhZxrqtFWtFwqQFsbFU291cmNlU2Fucw=='),
	BackgroundTransparency=1, TextColor3=Color3.new(1,1,1), TextScaled=true, BackgroundColor3=Color3.new(1,1,1)})
refillAt=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('dJuPtxnVZHkxoZHZEGKRtNXhAhnVpRNcxQgWpIFmFsYrDathSCKrwAiRnJhbWU='),settings_1,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('JNGWmwokESNJpjPAxXOjiOxJDKrDMfVAJRAaOMLRsqFprrwNhIZyYtecmVmaWxsQXQ='), LayoutOrder=7, BackgroundTransparency=1, Size=UDim2.new(0,100,0,100), BackgroundColor3=Color3.new(1,1,1)})
Label_4=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('oTTsKMvoagUQwizacFnEqGkFTHFYzIDohcdcyRCDNAzeslQUdmQGeSwVGV4dExhYmVs'),refillAt,{TextWrapped=true, Size=UDim2.new(0.5,0,1,0), Text=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('qzBaszWaqklzKWobEXgIlBfVwsBcvNMEblFBAHFUxccpHoGSdaHoRtaUmVmaWxsIEF0Og=='), TextSize=14, TextXAlignment=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('gevspJxNLLzRpxlzioGXxDyvYADIGcDgrqHxqnryEXvmWxjHXnHrlqpUmlnaHQ='), Font=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('QokBzcVJrXqOBNvQCAgBMpoZgSSazpjxywWBApvxcraJmfeuuzLbOvzU291cmNlU2Fucw=='),
	BackgroundTransparency=1, TextColor3=Color3.new(1,1,1), TextScaled=true, BackgroundColor3=Color3.new(1,1,1)})
refillAtBox=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('DfCnkPoCPKzENhiHSFGUZwOYewVejRDIvuHsbcHQguSPbASUvDFMDKlVGV4dEJveA=='),refillAt,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('SNZdHIBPAoHhlxPQPuSQaonZAmVOBIlUdKytKKlWFigplTspqdnPxxJcmVmaWxsQXRCb3g='), TextWrapped=true, Size=UDim2.new(0.25,0,1,0), Text=tostring(settings.refill_at), TextSize=50, TextColor3=Color3.new(),
	Font=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('kzodcNSTjYkfShfUbuXwvfvAaqsCDqvBXKGWxFTPiVeupWVGiJHBrNhQ29kZQ=='), Position=UDim2.new(0.52,0,0,0), TextScaled=true, BackgroundColor3=Color3.new(0.784,0.784,0.784)})
supplier=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('rnwtiYneMEdvDCrDygRAaKqAklOwaHEveMMwEYNdPskKkZlrnMwdMEmRnJhbWU='),settings_1,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('kuGOmOmpfQroHkjOiKIBjQnkcygsGPRoxGkrTtvmSJioRQsVWQbYaqbc3VwcGxpZXI='), LayoutOrder=6, BackgroundTransparency=1, Size=UDim2.new(0,100,0,100), BackgroundColor3=Color3.new(1,1,1)})
Label_5=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('cettcFoOiWndUqFMMqPrqOPENzXpnrcGBszBwKMFjLlXNKNJUckHiiZVGV4dExhYmVs'),supplier,{TextWrapped=true, Size=UDim2.new(0.6,0,1,0), Text=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('UVVINAZeYWzNrHUgTFwbTXYDRzutFQWhpIhUfAwLuqavOMpGxfmEFgiU3VwcGxpZXI='), TextSize=14, TextXAlignment=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('FMFpRxrjlOkOhgegGIOwyXEcfFZxXXfYBzeEJYncQTJqNZJYqfXsNKsTGVmdA=='), Font=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('EnCdUJmxQGhQkLFydIWqSUCLCUMKRUXaWQorgqvCNYhHzqCEvYAAzgOU291cmNlU2Fucw=='),
	BackgroundTransparency=1, Position=UDim2.new(0.4,0,0,0), TextColor3=Color3.new(1,1,1), TextScaled=true, BackgroundColor3=Color3.new(1,1,1)})
supplierBtn=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('sElsPhvsajXZfzDFxjvGHiHVDnNvCPGdcncEIbPMXLycwYhauCXLBFkSW1hZ2VCdXR0b24='),supplier,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('gCmBlxrrfAqHJbnYaPhOHOuuvcoMylutAkjYwyzdTVDcYweORXfxiXTc3VwcGxpZXJCdG4='), ImageTransparency=1, BorderSizePixel=0, Size=UDim2.new(0.38,0,1,0), BackgroundColor3=Color3.new(0.392,0.392,0.392)})
supplierSlider=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('faFFWjWcQWUMrtgLMmKoMuTKUgmgnBzKxYhkkFaxWaJNRlnygNJSmVMRnJhbWU='),supplierBtn,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('qZZgCjjwwZGzTUktoowqHNNfiYaQIidZbHcbUmkbkhoUbkprPintAZNc2xpZGVy'), Size=UDim2.new(0.5,-4,1,-4), Position=UDim2.new(doSupplier and 0.5 or 0,2,0,2), BorderSizePixel=0, BackgroundColor3=Color3.new(0.784,0.784,0.784)})
delivery=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('QDZRPCdcIndogCEVAikjxyAmUYoUIptzLOFUCOBssrvfUrqdmhYieXERnJhbWU='),settings_1,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('CBKuDOLkdLjqDJlyfzBufDkTAXtKCRDxWXPmfEFUnrrTpWVyGyiskAoZGVsaXZlcnk='), LayoutOrder=5, BackgroundTransparency=1, Size=UDim2.new(0,100,0,100), BackgroundColor3=Color3.new(1,1,1)})
Label_6=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('RsNyHgVOJiuRIfjzbsRBpNbcILaCKQoJgjAbkshPNMrezRoPyFldwULVGV4dExhYmVs'),delivery,{TextWrapped=true, Size=UDim2.new(0.6,0,1,0), Text=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('mFzMKKrAFjfxCEXHXvWVQdFpbXvWwknzSfvsLFxsERJfvkxZeBCvpSURGVsaXZlcnk='), TextSize=14, TextXAlignment=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('JjohmBSWwIldxJezyvHnbAiZeJKytRByNXUWeaJTGZrlFjmKQjrcPzYTGVmdA=='), Font=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('PlNaWYJxYQhdxfXTEeVzaCBZnmpqDErjYltXPyukBgljEiDThvZKjkEU291cmNlU2Fucw=='),
	BackgroundTransparency=1, Position=UDim2.new(0.4,0,0,0), TextColor3=Color3.new(1,1,1), TextScaled=true, BackgroundColor3=Color3.new(1,1,1)})
deliveryBtn=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('tGGxmjmQfvpkwGAiSfQPFMBSGHaIArmvkMhpqgBWVzZHvFinyUKyaJKSW1hZ2VCdXR0b24='),delivery,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('UtPzKqtBqYUcwsIXUxQQQVslwlrHbFASIGpGsFnWzBVXlxZIcuqOuXVZGVsaXZlcnlCdG4='), ImageTransparency=1, BorderSizePixel=0, Size=UDim2.new(0.38,0,1,0), BackgroundColor3=Color3.new(0.392,0.392,0.392)})
deliverySlider=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('iZYaBkqAPhMEjawUVsRrUhwKBZGodBAkdvAiVomsCirybfkoiicHqZvRnJhbWU='),deliveryBtn,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('zsNuinNRxCAJdLiWHxFlhqBTceOgGfVVjOrKPOyMfAhoTMQFdMuPhBIc2xpZGVy'), Size=UDim2.new(0.5,-4,1,-4), Position=UDim2.new(doDelivery and 0.5 or 0,2,0,2), BorderSizePixel=0, BackgroundColor3=Color3.new(0.784,0.784,0.784)})
boxer=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('MAGceScTsiyYgGbwDIsBOMUuimUoqiZmGzySOfkxhPzJmQMpOXAteIARnJhbWU='),settings_1,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('tkakKpIzuhoSLljKoidCLcrIWkcueIzYEnigwecvAwhxdQKnYkLRtcHYm94ZXI='), LayoutOrder=2, BackgroundTransparency=1, Size=UDim2.new(0,100,0,100), BackgroundColor3=Color3.new(1,1,1)})
boxerLbl=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('YofKpggbAUpfVIPLQtrrsZAPkMTthDIFHJcNLacdPXHQLvGhTurxTDiVGV4dExhYmVs'),boxer,{TextWrapped=true, Size=UDim2.new(0.6,0,1,0), Text=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('MzDPTNwMTdvhNVHAdZHkUcaCDqtoWFOIwoGLBmggDtqarKZQhCJHsAuQm94ZXI='), TextSize=14, TextXAlignment=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('fnwzFbBcfZpBChlRpxpxCVTdgqHACTTUHBoiSyysEeNQXyZdjnuOJICTGVmdA=='), Font=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('JGriYGmwXussJokUxwyrQPpCnPLInxISwBjaOOKMyIseqqkQsECHjKIU291cmNlU2Fucw=='),
	BackgroundTransparency=1, Position=UDim2.new(0.4,0,0,0), TextColor3=Color3.new(1,1,1), TextScaled=true, BackgroundColor3=Color3.new(1,1,1)})
boxerBtn=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('tWIXFisQndeeVPhbSSvAHIMVRBUprxCqbfytrMANKEtFXiWIYWJdJdySW1hZ2VCdXR0b24='),boxer,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('QPEUtoztgGuLdCJasZvoCgqOQivPWEfpNddMAsSydQMwgcxiqxZfHfXYm94ZXJCdG4='), ImageTransparency=1, BorderSizePixel=0, Size=UDim2.new(0.38,0,1,0), BackgroundColor3=Color3.new(0.392,0.392,0.392)})
boxerSlider=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('LRQeffCoRrFtRPgzWLldwSKnLVtRUOrwqhcoJEMCtgFsSxLzNVOZDBjRnJhbWU='),boxerBtn,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('EWgbGqFnEdAYxUwirssbApYqksmJCLfLyzhXiYoTiQpfkoaFNxNZlWpc2xpZGVy'), Size=UDim2.new(0.5,-4,1,-4), Position=UDim2.new(doBoxer and 0.5 or 0,2,0,2), BorderSizePixel=0, BackgroundColor3=Color3.new(0.784,0.784,0.784)})
cook=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('GuvwhUmUwHrfZiebmaLWZTqIlpHwrIGXROHxzIALWQOlSVxLefDdTyiRnJhbWU='),settings_1,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('fPhVxGlSUOGOPckSxMIJIepAnGLIXcqLtYpkajyuwQFxFEHrGhbXJznY29vaw=='), LayoutOrder=3, BackgroundTransparency=1, Size=UDim2.new(0,100,0,100), BackgroundColor3=Color3.new(1,1,1)})
cookLbl=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('kBNHRrltajhXJsEHNGWgjroJHlLYZRbPuCrEdiCSPlVLugKCBzywIyKVGV4dExhYmVs'),cook,{TextWrapped=true, Size=UDim2.new(0.6,0,1,0), Text=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('BKaijfwdncobgEPytCipySDqLIwYXRnegoOTlTXJPytZXoiyUdfpEZkQ29vaw=='), TextSize=14, TextXAlignment=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('iWwEmbVOMKLNWVpcYwkwbSrIyHwHznKizpBhcEhhbJjSLaRBvkdlLKTTGVmdA=='), Font=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('dnXvWnbjkZszAnaSSDWnuMqTnQbTtzuoIOgUGCapsCySsOuLPLWTaHmU291cmNlU2Fucw=='),
	BackgroundTransparency=1, Position=UDim2.new(0.4,0,0,0), TextColor3=Color3.new(1,1,1), TextScaled=true, BackgroundColor3=Color3.new(1,1,1)})
cookBtn=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('ksDLuLznwqapfGKdDUvpxJAiVUTHrjWNxOwpxaBnvOjVGIijeoLMOagSW1hZ2VCdXR0b24='),cook,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('jtTodGGaUgkrmdEBcNWfGGqHIGAIujPYXWbrmfAGsvIGSdipwngRwXiY29va0J0bg=='), ImageTransparency=1, BorderSizePixel=0, Size=UDim2.new(0.38,0,1,0), BackgroundColor3=Color3.new(0.392,0.392,0.392)})
cookSlider=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('veKwEroWgWSYMCVFoNHzsHEZebZFukqpbbZzZkwDKsnIFwLZCtbfmfrRnJhbWU='),cookBtn,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('mZLTBevrylsXsOCKXAbtEFKEaZIvozTDOTnzgpyxxsniyePxpNFtDygc2xpZGVy'), Size=UDim2.new(0.5,-4,1,-4), Position=UDim2.new(doCook and 0.5 or 0,2,0,2), BorderSizePixel=0, BackgroundColor3=Color3.new(0.784,0.784,0.784)})
toggleAll=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('RitoBToOggEqIrSZTGlLYaJXzsDVqODipFpxJrAWEalgjPMlxwSbroRRnJhbWU='),settings_1,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('KXWTiWPYvXGSHqbKjGNtCeltpMMiHoBxHprHsxtcCQsLOmiNvqxiMAZdG9nZ2xlQWxs'), LayoutOrder=1, BackgroundTransparency=1, Size=UDim2.new(0,100,0,100), BackgroundColor3=Color3.new(1,1,1)})
switch=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('mYlrvOtOdsKYEFMXqylsGUgeVyGpOODKIISWUvfBSsgHUElRTEiPnwXRnJhbWU='),toggleAll,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('HNAsJPqzouIcZfXakxohTlNUGbkbMQalKigFGgYNKjVnYpBlyLvktXqc3dpdGNo'), BackgroundTransparency=1, Size=UDim2.new(0.75,0,1,0), BackgroundColor3=Color3.new(1,1,1)})
allOffBtn=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('YsWdYOnhDQbnhGXVuXoJdUlxFdUpbcJMSKGQvRMzsUMSrUjLibTlsnxSW1hZ2VCdXR0b24='),switch,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('mghASzYPCILxiSTJUkCHqZzRjQWKRcbgYAzNcKQrmgdBiECzpVmOrjuYWxsT2ZmQnRu'), ImageTransparency=1, BorderSizePixel=0, Size=UDim2.new(0.5,0,1,0), BackgroundColor3=Color3.new(0.235,0.235,0.235)})
allOnBtn=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('qrbJJRnQndmcoRbBtRQWovxOBXHfaiXcvoZmgyVXkRmddtrPWVEvfbbSW1hZ2VCdXR0b24='),switch,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('glwLqMcailkskWfiCfsUclkpvzQykVjjgoiulkoDlDErNRzGphucoNRYWxsT25CdG4='), ImageTransparency=1, BorderSizePixel=0, Size=UDim2.new(0.5,0,1,0), Position=UDim2.new(0.5,0,0,0), BackgroundColor3=Color3.new(0.333,0.333,0.333)})
toggleAllSlider=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('hRLvgkrAqETQrrSzPpyAunquLHpQzLTurSOlkZmbLKNWKPAhJkoxPhIRnJhbWU='),switch,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('boPisqnLfRHxYioctTvUtofpgKddCqGBAqafurKwAILQPLDmmwXDZQXc2xpZGVy'), Size=UDim2.new(0.1,0,1,4), Position=UDim2.new(0.45,0,0,-2), BorderSizePixel=0, BackgroundColor3=Color3.new(0.784,0.784,0.784)})
messageLbl=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('OUiGaEIvQBRTsYhAOOivHnnvKeAWFvDZmRoqAfZbZuGzNDGlxppUBmBVGV4dExhYmVs'),topbar,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('NBrqkTKgXNKgcuRERwwlmtWHYZNLGEKasDzcuDQEhQLDZFlkiMuTTCXbWVzc2FnZUxibA=='), Size=UDim2.new(0.5,0,1,0), Text=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('nvZethsacEDwrvstQkYdraBRMWdkNnmjWSusVDFpUnDuYwYFARmyHtzU2F2ZWQu'), TextSize=14, Font=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('jpmheRkIBOUeqznfTRxhHKOTIlEZVTaNqWDIiaVCnwmiFaUZdNwJfmYR290aGFtU2VtaWJvbGQ='), BackgroundTransparency=1,
	Position=UDim2.new(0.07,0,0,0), TextColor3=Color3.new(1,1,1), Visible=false, TextXAlignment=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('QBbHtbBeNgRvdMAzRyasaDPtXMmFwLRwQPAhIuTYPhUPhBOjOIilWFUTGVmdA==')})
camframe=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('dHxljbpcgAsvkVtThCDbsWdyluAZsRXZkhuzfeZaJiGocyzUXDPLrkuRnJhbWU='),gui,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('pUoVjQSKWZJiqafiUzJwXACaxFqEvcYCbCXtKeXbZxWtEOJklCQvXqmY2FtZnJhbWU='), BackgroundTransparency=1, Size=UDim2.new(0,120,0,40), Position=UDim2.new(0.5,-320,0,-38), BackgroundColor3=Color3.new(0.118,0.118,0.118)})
rightCamBtn=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('DveTagRoMpNqKKbKGLXXakuSMGzDLMChkVXISHZJpCwHTTUfzfxndCbSW1hZ2VCdXR0b24='),camframe,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('AhveiLWWYDnjWeovwIlalYxsogEcyukBnCpkpyLyNvGAljWqgdgcTfJcmlnaHRDYW1CdG4='), Image=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('RIyntLAHegrCsjWCmVkVptSwuGlQkNotlvlzKSRicYxnMgsUxQPvLtHcmJ4YXNzZXRpZDovLzE0NDE2ODE2Mw=='), Size=UDim2.new(0.333,0,1,0), Rotation=180, Position=UDim2.new(0.666,0,0,0), BackgroundTransparency=1,
	BackgroundColor3=Color3.new(1,1,1)})
leftCamBtn=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('XURfnxvDJReHpmzulsDxgsofrEVQJMApPsmQNcEfmcNuOSqBKfYSIbjSW1hZ2VCdXR0b24='),camframe,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('JqOTSHypXGkbjYQfUdadiLknwkTRDjIuDLYRpVTpLzEmBxbhlghehdlbGVmdENhbUJ0bg=='), Image=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('tfphBpTqAYyPqCiGRlQqUHhnFjSKkITMvmcqzPqbpXWDXvIFRxABlCocmJ4YXNzZXRpZDovLzE0NDE2ODE2Mw=='), Size=UDim2.new(0.333,0,1,0), BackgroundTransparency=1, BackgroundColor3=Color3.new(1,1,1)})
centerCamBtn=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('pPLpjQfVZMQsOwDJJTRaLOFfUTStDpygvcOiEOwetKKzlNwkQOItqFhSW1hZ2VCdXR0b24='),camframe,{Name=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('jphffhDxbDTLkSwjWaIyVCHmPPNaFGlgECMhoPybuiHgqTAvzzUGNptY2VudGVyQ2FtQnRu'), Image=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('AkpmzEvLXIoyWgeibSBLROvqnQvGlxVujHNdawireKvkTNejtPdZKTWcmJ4YXNzZXRpZDovLzU4MjgyMTky'), Size=UDim2.new(0.333,0,1,0), Position=UDim2.new(0.333,0,0,0), BackgroundTransparency=1, BackgroundColor3=Color3.new(1,1,1)})
creditLbl=Create(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('ZHBaraWkTdcdoKcqgUOLMyIIJLReWTKypVadUjBawHmixRKiOjXLkDCVGV4dExhYmVs'),main,{Position=UDim2.new(0,0,1,5),Size=UDim2.new(0,100,0,15),BackgroundTransparency=1,TextColor3=Color3.new(1,1,1),Text=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('PwjfidQbwKmLCasoztcWYRlmAOFoDmtSJqQTdTrbWzaktQkXsRCguAMYnkgc2lyZWxLaWxsYQ=='),TextScaled=true,TextStrokeTransparency=.8})

local function toggleCashier(bool)
	if bool~=nil then
		doCashier=bool
	else
		doCashier = not doCashier
	end
	cashierSlider:TweenPosition(UDim2.new(doCashier and 0.5 or 0,2,0,2),nil,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('XLODoCSoOItxDITrSYcriAxYopRtVxulLkHnzCNrNIFRmBGWHynVfcVU2luZQ=='),0.1,true)
end
local function toggleCook(bool)
	if bool~=nil then
		doCook=bool
	else
		doCook = not doCook
	end
	cookSlider:TweenPosition(UDim2.new(doCook and 0.5 or 0,2,0,2),nil,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('TxDrxXwAhnpoJteeXgeErgiHTNCWguukfvpRHWmcrrHkbXXJPmevqVPU2luZQ=='),0.1,true)
end
local function toggleBoxer(bool)
	if bool~=nil then
		doBoxer=bool
	else
		doBoxer = not doBoxer
	end
	boxerSlider:TweenPosition(UDim2.new(doBoxer and 0.5 or 0,2,0,2),nil,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('mWjOgZyJFgksWtCKgBjaOZRoprhuQUxHfBQSyxwyeifVRDCgNQICXuyU2luZQ=='),0.1,true)
end
local function toggleDelivery(bool)
	if bool~=nil then
		doDelivery=bool
	else
		doDelivery = not doDelivery
	end
	deliverySlider:TweenPosition(UDim2.new(doDelivery and 0.5 or 0,2,0,2),nil,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('pBuFdozjLXaPDaxilydpqwsNwgFouyvYVAnGDVgHuXzBeAhcZIJaGZWU2luZQ=='),0.1,true)
end
local function toggleSupplier(bool)
	if bool~=nil then
		doSupplier=bool
	else
		doSupplier = not doSupplier
	end
	supplierSlider:TweenPosition(UDim2.new(doSupplier and 0.5 or 0,2,0,2),nil,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('YfFcRWbnUrShGoCSCDFttqoNktnFSkcMIRIEclPRReXsMYNpyqLjhLaU2luZQ=='),0.1,true)
end
cashierBtn.MouseButton1Click:Connect(toggleCashier)
cookBtn.MouseButton1Click:Connect(toggleCook)
boxerBtn.MouseButton1Click:Connect(toggleBoxer)
deliveryBtn.MouseButton1Click:Connect(toggleDelivery)
allOffBtn.InputBegan:Connect(function()
	if game:GetService(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('hFQPeQkBVBuvcPLXySOpZeaYLmGtBLxMnyCOgBvROEEyyYCvXJGwOIlVXNlcklucHV0U2VydmljZQ==')):IsMouseButtonPressed(Enum.UserInputType.MouseButton1) then
		toggleCashier(false)
		toggleCook(false)
		toggleBoxer(false)
		toggleDelivery(false)
		toggleSupplier(false)
		toggleAllSlider:TweenPosition(UDim2.new(0,0,0,-2),nil,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('OOHfnvtgEwUZQeUXnsLBEfRunOHRXsKZNVbUENceEKpYMDsldrfljqUU2luZQ=='),0.1,true)
		wait(1)
		if toggleAllSlider.Position.X.Scale<.01 then
			toggleAllSlider:TweenPosition(UDim2.new(0.45,0,0,-2),nil,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('nltKkUvHtTBQUftGZqZpBNalCVhvMmOsAOLjlDRkCAaBTgOVYpJcRAEU2luZQ=='),0.1,true)
		end
	end
end)
allOnBtn.InputBegan:Connect(function()
	if game:GetService(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('TjmcZUIHholGMxESdOhclmtIWDdJdEtMyZfbJIZRyOpuIOAPVaWZrOwVXNlcklucHV0U2VydmljZQ==')):IsMouseButtonPressed(Enum.UserInputType.MouseButton1) then
		toggleCashier(true)
		toggleCook(true)
		toggleBoxer(true)
		toggleDelivery(true)
		toggleSupplier(true)
		toggleAllSlider:TweenPosition(UDim2.new(0.9,0,0,-2),nil,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('rQIXWKzEwaXMSyZAbieYGRhesNOMXmdNjrfasCjjljOsiUSbgJsovVAU2luZQ=='),0.1,true)
		wait(1)
		if toggleAllSlider.Position.X.Scale>.88 then
			toggleAllSlider:TweenPosition(UDim2.new(0.45,0,0,-2),nil,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('AFrKOwemhMcJCobmOatdbNUVwyGwkDTaxpiWLKKWtcetGidzDlzPXIOU2luZQ=='),0.1,true)
		end
	end
end)
local oldRefillAt=refillAtBox.Text
refillAtBox:GetPropertyChangedSignal(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('FwVxWpETvMvfudPvvniWWaOSfLtIjEAvvFocZJGYvhhESJIDLxJIfjTVGV4dA==')):Connect(function()
	if #refillAtBox.Text>2 or refillAtBox.Text:match(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('CGPkNePGHOVuOMroGvQSdQrzcJCdKJgjvENKYRdXgLGnwUcOiZgVczfJUQ=')) then
		refillAtBox.Text = oldRefillAt
	end
	oldRefillAt = refillAtBox.Text
end)
refillAtBox.FocusLost:Connect(function()
	if tonumber(refillAtBox.Text) then
		settings.refill_at=tonumber(refillAtBox.Text)
	end
	refillAtBox.Text=tostring(settings.refill_at)
end)
local oldRefillEnd=refillEndBox.Text
refillEndBox:GetPropertyChangedSignal(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('xobjeTtgYltPWONsbzhCTAufRrMGMPsJPXkTvFDQoMXiXlZOCsxMgbYVGV4dA==')):Connect(function()
	if #refillEndBox.Text>2 or refillEndBox.Text:match(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('rbPZNKXYYMzAlSJXfPzWPGtbmigKAYhsZDbdoAcuzoPLKSjLqsvyeQwJUQ=')) then
		refillEndBox.Text = oldRefillEnd
	end
	oldRefillEnd = refillEndBox.Text
end)
refillEndBox.FocusLost:Connect(function()
	if tonumber(refillEndBox.Text) then
		settings.refill_end=tonumber(refillEndBox.Text)
	end
	refillEndBox.Text=tostring(settings.refill_end)
end)
local oldDeliverAt=deliverAtBox.Text
deliverAtBox:GetPropertyChangedSignal(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('bvvgpfwrqejNqRfPazDcVVbwTmPfMvFpstNrOytUVDGVFjIejKNQPwaVGV4dA==')):Connect(function()
	if #deliverAtBox.Text>2 or deliverAtBox.Text:match(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('IOqtJCYhREPnvjAaaPUHoHGBxDtjiQqRahILcRGQEruFUxzkcNOYkCaJUQ=')) then
		deliverAtBox.Text = oldDeliverAt
	end
	oldDeliverAt = deliverAtBox.Text
end)
deliverAtBox.FocusLost:Connect(function()
	if tonumber(deliverAtBox.Text) then
		settings.deliver_at=tonumber(deliverAtBox.Text)
	end
	deliverAtBox.Text=tostring(settings.deliver_at)
end)
closeBtn.MouseButton1Click:Connect(function()
    gui:Destroy()
    doCashier,doBoxer,doCook,doSupplier,doDelivery = false,false,false,false,false
end)
closeBtn.MouseEnter:Connect(function() closeBtn.TextColor3=Color3.new(.9,0,0) end)
closeBtn.MouseLeave:Connect(function() closeBtn.TextColor3=Color3.new(1,1,1) end)
saveBtn.MouseButton1Click:Connect(function()
	if writefile and messageLbl.Visible==false then
		writefile(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('dGTIeSatLOHKtJOwFZCUkIPjSHAvfKAooghbJpnDkFJBxUDZcXmKJWuUGl6emFGYXJtLnR4dA=='),game:GetService(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('gfVfoYNkaBylNNIvAIwKxggcgfeWSFxMZMoeAywossObRgUpDEijYAXSHR0cFNlcnZpY2U=')):JSONEncode(settings))
		messageLbl.Visible=true
		wait(2)
		messageLbl.Visible=false
	end
end)
local cameraArray = {CFrame.new(23,14,65,0.629,0.386,-0.674,-0,0.867,0.497,0.777,-0.313,0.545),CFrame.new(39,15,83,-0.571,0.392,-0.720,-0,0.878,0.478,0.820,0.273,-0.502),CFrame.new(40,20,-38,-0.801,-0.229,0.552,-0,0.923,0.384,-0.598,0.307,-0.739),CFrame.new(51,15,-25,-0.707,0.338,-0.620,0,0.878,0.478,0.707,0.338,-0.620),CFrame.new(47,12,21,0.026,0.323,-0.945,-0,0.946,0.323,0.999,-0.008,0.024)}
local cameraIndex = 0
centerCamBtn.MouseButton1Click:Connect(function()
	cameraIndex = 0
	workspace.CurrentCamera.CameraType = lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('PULOvsCgokHcxnMhVQUtUCTasvvOULoYAxUeGYphZDTICKOZEiWYFOnQ3VzdG9t')
end)
leftCamBtn.MouseButton1Click:Connect(function()
	cameraIndex = cameraIndex - 1
	if cameraIndex < 0 then
		cameraIndex = #cameraArray
	end
	if cameraIndex == 0 then
		workspace.CurrentCamera.CameraType=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('dENyJUDwpEIeciahnSLSmaDqOfrYubCSNnwIBNruDViJTkZtXMODbqBQ3VzdG9t')
	else
		local cf = cameraArray[cameraIndex]
		workspace.CurrentCamera.CameraType=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('qxjgkDfNmRJlOdUVBjGYPcmZwMVroSCRTYxuqDcybqDVSPhHPvTBnejU2NyaXB0YWJsZQ==')
		workspace.CurrentCamera:Interpolate(cf,cf+cf.lookVector*10,0.5)
	end
end)
rightCamBtn.MouseButton1Click:Connect(function()
	cameraIndex = cameraIndex + 1
	if cameraIndex > #cameraArray then
		cameraIndex = 0
		workspace.CurrentCamera.CameraType=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('pfFiNVFCCDcmmCIfpLJDaAalKjxbcXtTdOKbAoNKtjWrjMiIaHraLRhQ3VzdG9t')
	else
		local cf = cameraArray[cameraIndex]
		workspace.CurrentCamera.CameraType=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('dVNUBeLNQLJtnohMjCgURPxmSgwfSsYiRSPDsMgZWWusUnThkEXgpSNU2NyaXB0YWJsZQ==')
		workspace.CurrentCamera:Interpolate(cf,cf+cf.lookVector*10,0.5)
	end
end)

--//subroutines
--local supplyCounts = {TomatoSauce=99,Cheese=99,Sausage=99,Pepperoni=99,Dough=99,Box=99,Dew=99}
--for name in pairs(supplyCounts) do
	--local lbl = workspace.SupplyCounters[name==lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('WhuhUmmKTjibMfEzgFczhlxnOxJnlgxyjHGOqlcLIIAdvuHEdoQByynRGV3') and lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('LoOMbOgRKGFWOgKCUUySxYGjVfBiTveAljVsbcMoHitXbSAheGMFvjXQ291bnRlck1vdW50YWluRGV3') or lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('SnlDWVUQqVUWcYZlMJXRxbzYGRIgVRBVFYERALHQxSxoUJHewWAsgJUQ291bnRlcg==')..name].a.SG.Counter
	--supplyCounts[name]=tonumber(lbl.Text)
	--lbl.Changed:Connect(function()
		--supplyCounts[name]=tonumber(lbl.Text)
	--end)
--end

local function FindFirstCustomer()
	local children = workspace.Customers:GetChildren()
	for i=1,#children do
		local c = children[i]
		if ffc(c,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('izfFtMoHyPsFGWRUOucVhvSQrzYSBVdReDHObJpEHENOOzYnBmFayZUSGVhZA==')) and ffc(c,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('EwgpMzzBBTPTLAEVVVZGGhJrGGssOUvINLwHFddxrixMGyvikAjWCcBSHVtYW5vaWQ=')) and c.Head.CFrame.Z<102 and ffc(c.Head,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('LBllHwBRUXhmsPCHMoOHyemWQKttsRTRojQSyQixraZsKjbgiTjrfUHRGlhbG9n')) and ffc(c.Head.Dialog,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('iIeAimUYdvBoutuKORYyvfgSvohFgqAwDawrubKYWorbPSppJWpUAXDQ29ycmVjdA==')) and ((c.Humanoid.SeatPart and c.Humanoid.SeatPart.Anchored) or (c.Humanoid.SeatPart==nil and (c.Head.Velocity.Z^2)^.5<.0001)) then
			local dialog = c.Head.Dialog.Correct.ResponseDialog or lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('ylEQRXTKWrcIILitRnAbMLGbycgdfcEBwCDnraCJCsNPPSwoktmVLdd')
			local order = lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('TyaTvhypyQwAoLBsJRlJNvQVsEMSRjAFUHevRVYmlmmglsPdlsGYvisTW91bnRhaW5EZXc=')
			if dialog:sub(-8)==lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('JGFYMdLzkyPGfbMKsNGvUGyCQSkJbWhOXOsVCswWAcXciivmxdnwodtaW5zdGVhZC4=') then
				dialog = dialog:sub(-30)
			end
			if dialog:find(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('AvgmAkXLsbNVBsxRcLlrEInmWcfkgiwXJOXklClynRNdwpoEjnaHweXcGVwcGVyb25p'),1,true) then
				order = lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('kNGaUdUydAXoEjQpPvszujPdAohcdvFmxUcCnmTSMRDwuMvokDEdTPDUGVwcGVyb25pUGl6emE=')
			elseif dialog:find(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('FKYVSEEyqXtHGQtzSTbcuQcsjikBHafpqVbgsHMWExXcPiDDKrYvRNdc2F1c2FnZQ=='),1,true) then
				order = lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('qTlkENxjETJVzCarCkBZeXnHDcZDcJJKedTSTiAlBdvDsVsFWpHuVYVU2F1c2FnZVBpenph')
			elseif dialog:find(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('OHlKCAkVnwkLtgEBFUWXPlmUOJmdTcAdzIwxRmRccZeHtpHpfKTYZTyY2hlZXNl'),1,true) then
				order = lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('aloZPGHQUkfnAkSULIgPCNEmOfoBBCQqUaRfrIPfBUvdkbmhvOSmThwQ2hlZXNlUGl6emE=')
			end
			return c,order
		end
	end
end

local boxPtick=0
local boxDtick=0
local function FindBoxes()
	local c,o,f
	local children = workspace.AllBox:GetChildren()
	for i=1,#children do
		local b = children[i]
		if ffc(b,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('KlmcESCeikPaUbhQtnkFZSoOJumqhWxKMfqmtVEaUPIAeaFElKvfwuHSGFzUGl6emFJbnNpZGU=')) or ffc(b,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('DoKuMNpHzUbaHOdHIEiftfuCmhFKUQDSBFddyhHCMKTyYopRmNAsqymUGl6emE=')) then
			if c==nil and b.Name==lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('ylkhnUvJMaTDpsfOzqWMahEnyGFJuGVfCYuvnaGcOkbteSJBxLKvgNnQm94Q2xvc2Vk') and b.Anchored==false and not b.HasPizzaInside.Value then
				c=b
			elseif o==nil and b.Name==lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('WIgqUQhFpedYFWrNmlIMxHprMbbCaDkBJolmgetFpkMcWoFlzojJvPfQm94T3Blbg==') and b.Anchored==false and not b.Pizza.Value then
				o=b
			elseif f==nil and (b.Name==lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('djwxapIjnBGOsVCjdjJZcXBORKqeHrEbrYkTgZTWYPWtELhxrTILZAqQm94T3Blbg==') and b.Pizza.Value) or (b.Name==lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('jPrpodBulyCbBSQxxsJwwICJtSRljFZHtCChorWzojeBCuOOFHJSEssQm94Q2xvc2Vk') and b.HasPizzaInside.Value) then
				f=b
			end
			if c and o and f then
				return c,o,f
			end
		end
	end
	return c,o,f
end
local function FindBoxingFoods()
	local p,d
	local children = workspace.BoxingRoom:GetChildren()
	for i=1,#children do
		local f = children[i]
		if not f.Anchored then
			if p==nil and f.Name==lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('PYjrlasMXTDxxuxwKoonfQxTOjQedeSlTZxKYfWfSCAGYcOuLzrhZonUGl6emE=') then
				p=f
			elseif d==nil and f.Name==lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('gIWREYojttTHdZugcddezfinzcvBaNKIBSZSeyvNGTWQLIHTLyAzlmCRGV3') then
				d=f
			end
			if p and d then
				return p,d
			end
		end
	end
	return p,d
end

local orderDict={[lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('UuDHPBHsTgYnHnZfDfRDXAazwHBTijluiwqJbDVCxINOezUkVmEmnOHMzU0MDUyOTIyOA==')]=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('PjYsosfupXTeNqzWVdDxHazYRMIZffeyRfipjAfLpouSkmiiGWtHzACQ2hlZXNl'),[lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('oioyVnxUZstPRXJMuJyrQBqMwhdkuGzRkCzRzpEaZVITCGrrYclDJpGMzU0MDUzMDUzNQ==')]=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('bJhjGdBAErAgPqjiRUCaQzzIwkIqMMdVOqKOSRkRiBWRyvbHdlgRqJFU2F1c2FnZQ=='),[lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('iYEjCnAODRGGmmonLOUYgkKeZBCwbnwmQdgsBmYAcpGruefLTcstofhMzU0MDUyOTkxNw==')]=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('MyXQUitPzAvQaOPOSuasccYhjxvXTMsmxalYaQUloRepuUfmDHrgeMaUGVwcGVyb25p'),[lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('lwQhgHIuepTCrFkqVDBxICJqedfdZFDPigRzRbEJsccSSeDpiswemnAMjUxMjU3MTE1MQ==')]=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('JjTFCJjekQXBNeIYcooWQYCpdqenmdxuJbcJBUidRecGlZLgdQKpXERRGV3'),[lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('jYMuhsWddNxojSffqTrbVUMVuedAKzLqwkeAVUCDStqNazBHKQYqmtrMjUxMjQ0MTMyNQ==')]=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('pEonwRmQhiNkMZYFTlmYhvZlxSrGnWZLdQastompkBoBoPcgDWUjeZURGV3')}
local cookingDict = {Cheese=0,Sausage=0,Pepperoni=0,Dew=0}
local cookPtick=0
local cookDtick=0
local cookWarned=false
local boxerWarned=false
local function getOrders()
	local orders={}
	local tempCookingDict = {}
	for i,v in pairs(cookingDict) do tempCookingDict[i]=v end
	local children = workspace.Orders:GetChildren()
	for i=1,#children do
		local o = orderDict[children[i].SG.ImageLabel.Image:match(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('xxYsdktJitDxnWkrLaqdVOuGGaulKmJrPsmZbocKxilIMhXQlKPEqIgJWQrJA=='))]
		if o then
			if tempCookingDict[o]>0 then
				--ignores oven pizzas, so new orders are priority
				tempCookingDict[o]=tempCookingDict[o]-1
			--elseif (o==lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('MPvpKGircYByWytZovwZxipWRYSKCBbyagQvEIkgTtSbdXKzZJPfBJtRGV3') and #workspace.AllMountainDew:GetChildren()>0) or (supplyCounts[o]>0 and supplyCounts.TomatoSauce>0 and supplyCounts.Cheese>0) then
				--need supplies
				orders[#orders+1]=o
			end
		end
	end
	return orders
end
local function FindFirstDew()
	local children = workspace.AllMountainDew:GetChildren()
	for i=1,#children do
		local d = children[i]
		if (ffc(d,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('WLYqmKCnFpNrQaYnWsVoyuKctgTTVyXVHZBWJagdqzojSddkPTcHFYGSXNCdXJuZWQ='))==nil or d.IsBurned.Value==false) and not d.Anchored then
			return d
		end
	end
end
local function FindBadDew()
	local children = workspace.AllMountainDew:GetChildren()
	for i=1,#children do
		local d = children[i]
		if (ffc(d,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('lTGydDvNLvroqsUUiDjzeHniTYEbyJnLCJPVYzMXPEHKMsXcbzSBJFoSXNCdXJuZWQ='))==nil or d.IsBurned.Value==false) and d.Position.X > 53 and d.Position.Z > 50 and not d.Anchored then
			return d
		end
	end
end
local function FindDoughAndWithout(str)
	local goodraw,p,raw,trash
	local children = workspace.AllDough:GetChildren()
	for i = #children, 2, -1 do --shuffle
		local j = RNG:NextInteger(1, i)
		children[j], children[i] = children[i], children[j]
	end
	for i=1,#children do
		local d = children[i]
		if d.Anchored==false and #d:GetChildren()>9 then
			if d.IsBurned.Value or d.HasBugs.Value or d.Cold.Value or (d.BrickColor.Name==lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('CeibvKsrQmwCmNQHGeGzWilbuVrcfqvuuqPfnapJSqEXzMNUojsTbgbQnJpZ2h0IG9yYW5nZQ==') and ffc(d,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('IjjxzetkTRGHBuNmdcUpxLyMuLwOiqfGEliYvtJeUaQtvmAcIvRHkdMWEJpbGxib2FyZA=='))) then
				if trash==nil and d.Position.Y > 0 and ((d.Position*Vector3.new(1,0,1))-Vector3.new(47.90, 0, 72.49)).Magnitude > 1 then
					trash=d
				end
			elseif p==nil and d.BrickColor.Name==lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('TvYxZbSSFMrsFgoUzTtodRMZGXyrYyYzzAheIATvFtHuFJISxwCPajXQnJpZ2h0IG9yYW5nZQ==') then
				p=d
			elseif goodraw==nil and d.Position.X<55 and d.BrickColor.Name==lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('BpIXPWrHBjsdOkwGIdzEyXOgdUJMUuOWXaWkMogWnbDPysIdTTAPAiqQnJpY2sgeWVsbG93') and ((str and not ffc(d.SG.Frame,str)) or (str==nil and ffc(d.SG.Frame,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('HtjLlaXLcEclmcyGEnJebZKBCfRUxvlMcDKrEhWJXrHJDwOpruqPMibU2F1c2FnZQ=='))==nil and ffc(d.SG.Frame,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('zBFNoTzGdbUQGWCkbZNqMWqlGNzMoxpgHPPDhShJFWgyskUVFcEcRdjUGVwcGVyb25p'))==nil)) then
				--prefers flat
				if d.Mesh.Scale.Y<1.1 then
					goodraw=d
				else
					raw=d
				end
			end
			if goodraw and p and trash then
				return goodraw,p,trash
			end
		end
	end
	return goodraw or raw,p,trash
end
local function getOvenNear(pos)
	local children = workspace.Ovens:GetChildren()
	for i=1,#children do
		if ffc(children[i],lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('fletCKYXvkCZPRfMoPfjbrGZxmCDfsrhKaxvfrvjjxfBjwyCgxfZrVwQm90dG9t')) and (children[i].Bottom.Position-pos).magnitude < 1.5 then
			return children[i]
		end
	end
end
local function getDoughNear(pos)
	local children = workspace.AllDough:GetChildren()
	for i=1,#children do
		if (children[i].Position-pos).magnitude < 1.5 then
			return children[i]
		end
	end
end
local function isFullyOpen(oven)
	return oven.IsOpen.Value==true and (oven.Door.Meter.RotVelocity.Z^2)^.5<.0001
end

local bcolorToSupply = {[lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('EkHbZWfchXdmDpjhMHZnbEBLUmQHpyoeLMYoBMDGKBEHHTuVeKKdZqeRGFyayBvcmFuZ2U=')]=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('uBXThwuandsMGfhVDsfWGuhrorXWXLdILzakqxOunmHjDOOHILUzfvoU2F1c2FnZQ=='),[lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('USAXcGtanuikPeARHFAFfrCeqEeuDxtMnAMFMxIfOHWoOfWSmOiseiiQnJpZ2h0IGJsdWU=')]=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('SrtonEpIApqkigzmnNtEGedgqWVEgczMHqOZyqIAHusUabyLNFwqyqDUGVwcGVyb25p'),[lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('egRAIpyNUuYnImDdgAJapnDUDArzSEcVSKRwKbGpSkBxfTryskHyonIQnJpZ2h0IHllbGxvdw==')]=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('nJbzzdKPXHohZKVhCyCexvnnbOoQmHSjVjUMADBnSdSLAbGrfNMfZZkQ2hlZXNl'),[lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('LNvaJehVkRAQpxgXvJIvgLHVPIERGcJRpzMBuKGbxPqPcvXJmsuNevDQnJpZ2h0IHJlZA==')]=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('UtIIBAgfbdSsdPwdVnbThqKpKVClMmybiUFzJNQoVXKaDyWZbRdzrONVG9tYXRvU2F1Y2U='),[lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('LrkvlsJzaUGtCAshoHdGepyQwSHRoVjoGvGvAOHJXQoSwjpGtxaDsTLRGFyayBncmVlbg==')]=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('FEUKaIzIEkvrkMfsaLAskSzxpiAxeSguTRIZanktGKNBuYrrveZocenRGV3'),[lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('nUbCOgDZTvtUuOjAykwUMPcDypfVbrmhKMOhgndejFkVKzVrlsXDrmVQnJpY2sgeWVsbG93')]=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('JLWmwozBDOWyCnVVbhzybgPaZWbgGPOwiOWTrqIcGLvfwKtdbRAWkeeRG91Z2g='),[lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('RlDzcPLHPMoBtcMaJbcVfxWAWMkxJIqKGFOjgFJGmShwNDczBTBKpijTGlnaHQgc3RvbmUgZ3JleQ==')]=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('MGCZeSvhAzUsQZYqiFJbfjmihWQrPhjCpzBsmhUcGPYvTaFnwDLcthKQm94'),[lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('DKuqLSHcPqQcYPvnmFZhiBLvOIcFngCRXqpsuvdVqwatirkAwEecuCdUmVhbGx5IGJsYWNr')]=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('QKrhDjustLQaVBtkqeAtbwROClDxcmIpIjWjooOhDSsLWiWKDkycwDCRGV3')}
local supplyButtons = {}
for i,v in ipairs(workspace.SupplyButtons:GetChildren()) do
	supplyButtons[i] = v.Unpressed
end
table.sort(supplyButtons,function(a,b) return a.Position.X < b.Position.X end)
local delTick = 0
local function FindAllDeliveryTools(parent)
	local t = {}
	local children = parent:GetChildren()
	for i=1,#children do
		local v = children[i]
		if v.ClassName==lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('hluStLYhZAoHKQGEOJNdifSWgcGOfTuADyvhtGwaDcJSZzQGTtUowggVG9vbA==') and v.Name:match(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('ZiXuQDFNBmNZgjGIEdSwqxfQwCvVhIPhqVVREYfbSClVgWlPPnOeNdtXiV1JWQk')) and ffc(v,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('HFuscQuTwpkpBLonIQrcCUbbqihKKdYIOvCXFfufMfQDpbAvrCgSDjRSGFuZGxl')) and ffc(v,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('tlcBagAgKAXOFKrfSPjHiOIJXHNybJIacUFqfwWswfmzcWdWxBZsRGoSG91c2U=')) and (parent~=workspace or (v.Handle.Position-Vector3.new(54.45, 4.02, -16.56)).Magnitude < 30) then
			t[#t+1] = v
		end
	end
	return t
end
local function getHousePart(address)
    local houses = workspace.Houses:GetChildren()
    for i=1,#houses do
        local h = houses[i]
        if ffc(h,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('WVTRuYvEkMCJIFBUPhNZFiXazBkFzOExPBmxGmPYqSCHAynoxVCpMtoQWRkcmVzcw==')) and h.Address.Value==address and ffc(h,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('uYHdbJOWDkJRABijTAUwsBHzApwEVtLvGFjQYsEKOPrrzaWiPVSgCWmR2l2ZVBpenph'),true) then
            return ffc(h,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('fKMSiRbEDfRZXMiobrQSliSQgfqajxipcGSslrWKNcXhRgxDdYpuVmmR2l2ZVBpenph'),true)
        end
    end
end
local function onCharacterAdded(char)
	if not char then return end
	character=char
	root = character:WaitForChild(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('HLyTFqvQXxQKgSkhzrXddrAVJjKOYZQLLkntwzotdCDLJYIbSVvXnhrSHVtYW5vaWRSb290UGFydA=='))
	humanoid = character:WaitForChild(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('TnrqRFZOKCbhdgSymhZXKLMaHGOWspYJWGVdAigkdjzqTXctvAdukxwSHVtYW5vaWQ='))
	humanoid:SetStateEnabled(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('JRrEneKnGyEaYxoFsQoYGGDqydzhXkMtsJAfdnZGYKxzvgNPuWMOcjfRmFsbGluZ0Rvd24='),false)
end
onCharacterAdded(player.Character or player.CharacterAdded:Wait())
player.CharacterAdded:Connect(onCharacterAdded)

local function smoothTP2(cf)
	local cf0 = (cf-cf.p) + root.Position + Vector3.new(0,4,0)
	local diff = cf.p - root.Position
	local oldg = workspace.Gravity
	workspace.Gravity = 0
	for i=0,diff.Magnitude,0.9 do
		humanoid.Sit=false
		root.CFrame = cf0 + diff.Unit * i
		root.Velocity,root.RotVelocity=Vector3.new(),Vector3.new()
		wait()
	end
	root.CFrame = cf
	workspace.Gravity = oldg
end
local function smoothTP(cf)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf
end
for _,o in ipairs(workspace.Ovens:GetChildren()) do
	if ffc(o,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('viMjqtBsxDRzzABWskdhwVWpWcuXPVoRLzlVouHxxKFfdgibamZdaGmQm90dG9t')) then
		o.Bottom.CanTouch = false
	end
end
local function tryCook()
	for zz=1,18 do
		local order = getOrders()[1]
		local topping
		if order==lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('EAZAlWYnkpwRehTVPnkAzrIVZEltLlqYMyVglGTBCGZPXeFNVsPuXcqUGVwcGVyb25p') or order==lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('jMTEdBBaVwhRDxMHXgOusuCmYcvtCpjeVVZKqrgvVlvcbiTgYYgUwjQU2F1c2FnZQ==') then topping=order end
		local cookD = FindFirstDew()
		local badD = FindBadDew()
		local raw,cookP,trash
		if topping then
			--pepperoni order avoids sausage dough and vice verca
			raw,cookP,trash = FindDoughAndWithout(topping==lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('TNkGdZYdzRjlsXqBdgHsyvtCiaFwHwBsLihEmoISPOynmvCXwRpKCXqUGVwcGVyb25p') and lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('uKuSwYIfMDhhfoNPWJkktnsMeVZIrmPbzPjqnOTKeJFEOmAxKoLSLjnU2F1c2FnZQ==') or lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('JEjUAqTmszFpkdnDPcwUKHLmCAkWNpxfwzPIHDptaqoxLVrexDzDrZQUGVwcGVyb25p'))
		else
			raw,cookP,trash = FindDoughAndWithout()
		end
		local ovens = workspace.Ovens:GetChildren()
		for i=#ovens,1,-1 do
		    if #ovens[i]:GetChildren() < 10 then
		        table.remove(ovens,i)
		    end
		end
		for i = #ovens, 2, -1 do --shuffle
			local j = RNG:NextInteger(1, i)
			ovens[j], ovens[i] = ovens[i], ovens[j]
		end
		if doCook then
			local didsomething=false
			--move final pizza
			if cookP and tick()-cookPtick>0.8 then
				local oven = getOvenNear(cookP.Position)
				if oven==nil or oven.IsOpen.Value then
					cookPtick=tick()
					didsomething=true
					if (root.Position-Vector3.new(36.64, 3.80, 54.11)).magnitude>9 then  smoothTP(CFrame.new(36.64, 3.80, 54.11)) wait(.1) end
					network:FireServer(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('gHbRPhOVldHjKfAgdqttypibUgoRigPZwQLGzkSQPwBUcZHCWpaXZKIVXBkYXRlUHJvcGVydHk='), cookP, lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('fTEctcMmZqfJbXeLBsPkzUJvzeEMSCXjudbwPTFAQyNQpvlVKgshcNwQ0ZyYW1l'), CFrame.new(RNG:NextNumber(56,57),4.1,38))
				end
			end
			if order then
				if order==lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('zHjKDajtVEzLxKPjfPabBBrJcMaxzSYTKtoIPQEyHYdYkSIITTLLkkIRGV3') and cookD and tick()-cookDtick>0.8 then
					--move dew if ordered
					cookDtick=tick()
					didsomething=true
					if (root.Position-Vector3.new(36.64, 3.80, 54.11)).magnitude>9 then  smoothTP(CFrame.new(36.64, 3.80, 54.11)) wait(.1) end
					network:FireServer(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('hQGILaogCMlbEBPesbAgYlefeLOkYOqdGknwPiTvHKyxpLKfaTQCYYmVXBkYXRlUHJvcGVydHk='), cookD, lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('DbolDRATUvftREupjFfXyHGEABsoUICaCVueBSxerWKphBJIdpvqUrAQ0ZyYW1l'), CFrame.new(53,4.68,36.5))
				elseif order~=lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('UEOkvPwrIeygotgCUTyFlFkXmrePlCyRbFxEEflzcTjhdfCOtSbrqhlRGV3') and raw and raw.Parent and supplyCounts[order]>0 and supplyCounts.TomatoSauce>0 and supplyCounts.Cheese>0 then
					--make pizza
					if raw.Mesh.Scale.Y>1.5 then
						if (root.Position-Vector3.new(36.64, 3.80, 54.11)).magnitude>9 then  smoothTP(CFrame.new(36.64, 3.80, 54.11)) wait(.1) end
						didsomething=true
						network:FireServer(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('zmclnNtekvPcbENVspPunPKpYoQKSRKxxbrlTYLjTHtbPTgUePiHSCHVXBkYXRlUHJvcGVydHk='), raw, lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('rYhaOuWTcxUxRmgaZlpwNYIsuLNrYfBoVlBEDImwKpTQQWKrFbvenaSQ0ZyYW1l'), CFrame.new(RNG:NextNumber(29.6,44.6),3.7,RNG:NextNumber(42.5,48.5)))
						wait()
						network:FireServer(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('sDlfhwnerxRvowMHShSuUuqFYcRUFwiKtPPpEzQJKrIOoVXfRBOiQUhU3F1aXNoRG91Z2g='), raw)
					else
						--make sure it will have an oven
						local oven
						for _,o in ipairs(ovens) do
							if isFullyOpen(o) then
								local other = getDoughNear(o.Bottom.Position)
								if other==nil or not (other.BrickColor.Name==lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('mqoVtQenetnyTwbicOowtPZetVauqSyOWFsIKTKfPsiqhjjnymhxPdIQnJpZ2h0IG9yYW5nZQ==') and ffc(other.SG.Frame,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('JfyoURQbEqFsGLRRVcOmUYJWujNMseUYJVDDxspDskrGdMrbpSGDKLRVG9tYXRvU2F1Y2U=')) and ffc(other.SG.Frame,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('FaXKqhzPRQNeathtmUZxrybabqvKQkLdNRjLzVYUYBelBxTilBPUhiaTWVsdGVkQ2hlZXNl'))) then
									if other then
										--replace mistaken dough
										didsomething=true
										if (root.Position-Vector3.new(36.64, 3.80, 54.11)).magnitude>9 then  smoothTP(CFrame.new(36.64, 3.80, 54.11)) wait(.1) end
										network:FireServer(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('ByTKgzqPguIIvlpvwioFKkPKnnopQbBVWZvfcjNNvQOxWoZJJcIOAnkVXBkYXRlUHJvcGVydHk='), other, lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('kATisBfiKQAdRoakRaHQuqGJVJjSBjUmyBTuXlRVUAndcwzqCHDgUYNQ0ZyYW1l'), CFrame.new(RNG:NextNumber(29.6,44.6),3.7,RNG:NextNumber(42.5,48.5)))
										wait()
									end
									oven=o
									break
								end
							end
						end
						if oven and raw.Parent==workspace.AllDough then
							--make
							if (root.Position-Vector3.new(36.64, 3.80, 54.11)).magnitude>9 then  smoothTP(CFrame.new(36.64, 3.80, 54.11)) wait(.1) end
							didsomething=true
							network:FireServer(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('cVXVycLjAzxyMnJiNJmerYJhrzkSSndbtzOGjgTXzMciRKtICvDWTvdQWRkSW5ncmVkaWVudFRvUGl6emE='), raw,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('CcWLUkqQYuZcJXopJLZYWxtGZZXYLmztczFaJTFXfMTVeXKlUbSkGvcVG9tYXRvU2F1Y2U='))
							network:FireServer(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('atVwTqfFgeYJMTfDoAZGHZUVykqrHNYkSDGzJPpbGLrprEmcjVVZJaBQWRkSW5ncmVkaWVudFRvUGl6emE='), raw,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('nSChpdCEwfvBxqhIXbrfBCtyNzNptmZfwTTsDVGWMWNTEZUsrtxjDSIQ2hlZXNl'))
							network:FireServer(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('BeyoQGjoLoTZOwUXBPULnWcLgXnugajdxiHmCjdkqEnFDbLuPrRYaJzQWRkSW5ncmVkaWVudFRvUGl6emE='), raw,topping)
							network:FireServer(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('pezSZXplyeXuBvmJiPjzPFrNsWcefoyFVSVLnlLdXGffmmXHSiFPJvUVXBkYXRlUHJvcGVydHk='), raw, lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('GIfYQinApKotXLFGAFkCGvIaxkMoZPlghSOKnlovvnSnueonpsSSWmpQ0ZyYW1l'), oven.Bottom.CFrame+Vector3.new(0,0.7,0))
							oven.Door.ClickDetector.Detector:FireServer()
							--mark as cooking
							cookingDict[order]=cookingDict[order]+1
							local revoked=false
							spawn(function()
								raw.AncestryChanged:Wait()
								if not revoked then
									cookingDict[order]=cookingDict[order]-1
									revoked=true
								end
							end)
							delay(40, function()
								if not revoked then
									cookingDict[order]=cookingDict[order]-1
									revoked=true
								end
							end)
						end
					end
				end
			end
			--open unnecessarily closed ovens
			for _,o in ipairs(ovens) do
				local bar = o.Door.Meter.SurfaceGui.ProgressBar.Bar
				if o.IsOpen.Value==false and (o.IsCooking.Value==false or (Vector3.new(bar.ImageColor3.r,bar.ImageColor3.g,bar.ImageColor3.b)-Vector3.new(.871,.518,.224)).magnitude>.1) then
					didsomething=true
					if (root.Position-Vector3.new(36.64, 3.80, 54.11)).magnitude>9 then  smoothTP(CFrame.new(36.64, 3.80, 54.11)) wait(.1) end
					o.Door.ClickDetector.Detector:FireServer()
					break
				end
			end
			--trash
			if badD then
				didsomething=true
				if (root.Position-Vector3.new(36.64, 3.80, 54.11)).magnitude>9 then  smoothTP(CFrame.new(36.64, 3.80, 54.11)) wait(.1) end
				network:FireServer(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('tbaTxsDUtxkBAKXVdFEcWBSpGGfdAywlBLnsweTOUVHGlMogXUATlCeVXBkYXRlUHJvcGVydHk='), badD, lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('QChWgRKIdHfnSVHzoOsQDBGTugUFWwwGcWUqqzJIsZlWndUrJTjwyiWQ0ZyYW1l'), CFrame.new(RNG:NextNumber(28,30), 1.7, RNG:NextNumber(55,57)))
			end
			if trash and (trash.IsBurned.Value==false or getOvenNear(trash.Position)==nil or getOvenNear(trash.Position).IsOpen.Value) then
				--closed oven breaks if you take burnt out of it
				didsomething=true
				if (root.Position-Vector3.new(36.64, 3.80, 54.11)).magnitude>9 then  smoothTP(CFrame.new(36.64, 3.80, 54.11)) wait(.1) end
				network:FireServer(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('JCFJMGDPNpnuXouXwYhSZcclULbPBczNdrrVUhaSkwOLuzjTcoOiLhoVXBkYXRlUHJvcGVydHk='), trash, lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('VaUmYCTfuHHWkfbDKwZjpqeaYPGgBSoHtvGUlESVnLwtLIjVMmCDmxNQ0ZyYW1l'), CFrame.new(47.90, 7.00, 72.49, 1, 0, -0, 0, 0, 1, 0, -1, 0))
			end
			if didsomething then wait(0.5) else break end
		else
			break
		end
	end
end
wait(1)
--//main loop
while gui.Parent do
	wait(0.9)
	humanoid.Sit=false
	if RNG:NextInteger(1,20)==1 then
        game:GetService(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('cmmcDJeqOtsXxPKBqOoqUzOafsPuyXhzpnEWQqGNpyIWIaAPIvfdDIkVmlydHVhbElucHV0TWFuYWdlcg==')):SendKeyEvent(true,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('rtMHftRwRFGTcBFOWotddMpdVOKjbXpGdIkaMzIriJmeYrRLbctQowkWg=='),false,game)
        wait()
        game:GetService(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('zamArWXuluIYeVvDVRasQmrTUYcpVcfvnjiDlhMROpHUKOzsERZZGKRVmlydHVhbElucHV0TWFuYWdlcg==')):SendKeyEvent(false,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('ncbbvPVGWFuuQMwMTKynAZtNxJggqDcVKWjLSeDEnjkhetvMbvmclDnWg=='),false,game)
	end
	for zz=1,3 do
		local c,order = FindFirstCustomer()
		if doCashier and c and order then
			local reg = 3
			if c.Head.Position.X < 50 then
			    reg = 2
			elseif c.Head.Position.X < 70 then
			    reg = 1
			end
			if (root.Position-Vector3.new(50.30, 3.80, 83.24)).magnitude>9 then smoothTP(CFrame.new(50.30, 3.80, 83.24)) wait(.1) end
			network:FireServer(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('sDQedbDjWYhCsjaLWnjthOOtEZUvneKmvpKcFEKZJbJqspATRQmiWUpT3JkZXJDb21wbGV0ZQ=='), c, order, workspace[lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('FiMvAnGsWxmjXNVPSSPJJcPPwhvlNKhDklbayWAKVYbxMSTcipRvPSoUmVnaXN0ZXI=')..reg])
			wait(0.3)
		else
			break
		end
	end
	tryCook()
	for zz=1,7 do
		if doBoxer then
			local didsomething = false
			local boxP,boxD = FindBoxingFoods()
			local closedBox,openBox,fullBox = FindBoxes()
			if boxD and tick()-boxDtick>0.8 then
				boxDtick=tick()
				didsomething=true
				if (root.Position-Vector3.new(58.74, 3.80, 12.400)).magnitude>9 then  smoothTP(CFrame.new(58.74, 3.80, 12.40))wait(.1) continue end
				network:FireServer(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('wkmZWcWeixqNpfwAeIspYoxqlSJOdOljmlnFYbhTWYOzjJMbtvMqbQdVXBkYXRlUHJvcGVydHk='), boxD, lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('AobISQUhJZKlERAEJJIdLtskUkLzonVzMuieObcrkstokJHQCRBvVunQ0ZyYW1l'), CFrame.new(63,4.9,-1,-1,0,0,0,1,0,0,0,-1))
			end
			if fullBox then
				if fullBox.Name==lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('oUshVBPgbUVmcHPRhOFGYiHPGivnXlpWNZoTAbOGdflRJBOyQsdaueCQm94T3Blbg==') then
					didsomething=true
					if (root.Position-Vector3.new(58.74, 3.80, 12.400)).magnitude>9 then  smoothTP(CFrame.new(58.74, 3.80, 12.40))wait(.1) continue end
					network:FireServer(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('SVnkXZphXBGDirbkwBUmvjWaLbLGPoiPxldeALpZEpPNFNAjGebXVXIQ2xvc2VCb3g='), fullBox)
					--will be moved next loop
				elseif tick()-boxPtick>0.8 then
					didsomething=true
					if (root.Position-Vector3.new(58.74, 3.80, 12.400)).magnitude>9 then  smoothTP(CFrame.new(58.74, 3.80, 12.40))wait(.1) continue end
					network:FireServer(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('AuJNpgjUSVSfnYUFHVsEkbyEQMsqGvxuxonKkTMTqecrNkzMTtNDweCVXBkYXRlUHJvcGVydHk='), fullBox, lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('SPEIHLgCXSAIUVXomPNryFrywttBLVksGZbhmmzwrNcyJoxylheBrTrQ0ZyYW1l'), CFrame.new(68.2,4.4,RNG:NextNumber(-3,-2),-1,0,0,0,1,0,0,0,-1))
					boxPtick=tick()
				end
			end
			if closedBox and not openBox then
				didsomething=true
				if (root.Position-Vector3.new(58.74, 3.80, 12.400)).magnitude>9 then  smoothTP(CFrame.new(58.74, 3.80, 12.40))wait(.1) continue end
				network:FireServer(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('ucmUcEqiTPbRynvTrWZmbviAHhOxMLXwOOrbdjmhBfrfVJYhqwVqYalVXBkYXRlUHJvcGVydHk='), closedBox, lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('rmsfaTZbzDKPzBydeQJkUdTYqcIaCLsTYZstBRpYQSFJzsNUUJqLEkFQ0ZyYW1l'), CFrame.new(RNG:NextNumber(62.5,70.5),3.5,RNG:NextNumber(11,25)))
				wait()
				network:FireServer(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('IXZkQVhhasdlsQDwadpSmiEsgDhIcYQitxBudGTfkhPahXQRxOFSiKdT3BlbkJveA=='), closedBox)
			end
			if openBox and boxP then
				didsomething=true
				if (root.Position-Vector3.new(58.74, 3.80, 12.400)).magnitude>9 then  smoothTP(CFrame.new(58.74, 3.80, 12.40))wait(.1) continue end
				network:FireServer(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('GSXCwYXOVeqHyMvRmKRxfUPENHHqAUYQJYlGkTrQAfrbopcdsASZIgdVXBkYXRlUHJvcGVydHk='), boxP, lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('JIvqYUsuFsGGzcQWOolSXZwnVciZSWSdiJWTyAgEAmMgJbxkHmoOSqpQW5jaG9yZWQ='), true)
				network:FireServer(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('zShUfjqwCcytHWGCdHatnkMPhmUTNUjaTLtGqdwjfcyeWTlgcNWSOnwVXBkYXRlUHJvcGVydHk='), openBox, lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('mCRwSpXqPKTQxXCdgQxbGafZVfryidDvVoytSLFIPsSJjkYUnkDxsukQW5jaG9yZWQ='), true)
				wait()
				network:FireServer(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('wCNDuEuznSepFiPQNdZzqsOWQmffeUoOtfuZXrzGpWjOCeaLVxAuOuzVXBkYXRlUHJvcGVydHk='), boxP, lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('EfjlJgKsNyTLUrTjSkVbZXRMHiEwyMQjyZHIMpFASfjTmjjEVxVkooyQ0ZyYW1l'), openBox.CFrame+Vector3.new(0,-2,0))
				wait()
				network:FireServer(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('GkehTmrnEixkJRnbaXxopSjBkamDyiQaBdJAHYfKAsmGezdRYEvYZNQQXNzaWduUGl6emFUb0JveA=='), openBox, boxP)
			end
			if didsomething then wait(0.5) else break end
		else
			break
		end
	end
	if doDelivery then
		local wstools = FindAllDeliveryTools(workspace)
		if #wstools > 1 or (wstools[1] and ffc(wstools[1].Handle,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('tGWlCUyoTdAKebJegCmalbOonqKhZLwaVOGEKrYKOHbyWtZgDOMZKJBWDEw'))) then
			--get tools
			if (root.Position-Vector3.new(54.45, 4.02, -15)).magnitude>9 then smoothTP(CFrame.new(54.45, 4.02, -15)) wait(.1) end
			for i=1,#wstools do
				if wstools[i].Parent == workspace then
					humanoid:EquipTool(wstools[i])
					wait()
				end
			end
			wait(0.3)
			local t = FindAllDeliveryTools(character)
    		for i=1,#t do
    			t[i].Parent = player.Backpack
    		end
    		wait(0.1)
    		if ffc(character,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('ZpGwaJzFrBEaxdsExsnTGFnvufYqyxoOFvbihPpXUEHDCPcVGodgwDPUmlnaHRIYW5k')) and ffc(character.RightHand,lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('FyPCyqZNHjlRljJfyQrmEYvoFWFqHxnNGyWzCqTxAfhKNvrZGbIiTpQUmlnaHRHcmlw')) then
    			character.RightHand.RightGrip:Destroy()
    		end
		end
		local bptools = FindAllDeliveryTools(player.Backpack)
		if #bptools >= settings.deliver_at and #bptools > 0 and tick()-delTick > 30 then
			--deliver to houses
			table.sort(bptools,function(a,b)
				a,b=tostring(a),tostring(b)
				if (a:sub(1,1)==lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('edGtOzRkJNyWVxMKaFscZARfLGJnlLRRKitfjyObuwkecfDMcuNVjYnQg==') and b:sub(1,1)==lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('VkgTSCGsvwsnGgyHWBXgazfTRpSdqEsieiXLvmQBnbedXOVIwyDICnYQg==')) then
					return a < b
				end
				return a > b
			end)
			local fatass=false
			for i=1,#bptools do
				if not doDelivery then
					break
				end
				humanoid.Sit=false
				local tool = bptools[i]
				local giver = getHousePart(tool.Name)
				local ogp = giver.Position
				if giver then
					if (giver.Position-root.Position).Magnitude > 9 then
						smoothTP(giver.CFrame+Vector3.new(0,7,0))
						if giver.Parent==nil or (giver.Position-ogp).Magnitude>1 then
							giver = getHousePart(tool.Name) or giver
							smoothTP(giver.CFrame+Vector3.new(0,7,0))
						end
						pcall(function() tool.Parent = character end)
						wait(1.2)
						local t = FindAllDeliveryTools(character)
                		for i=1,#t do
                		    if t[i] ~= tool then
                			    t[i].Parent = player.Backpack
                			end
                		end
						wait(2)
						fatass=false
					else
						if fatass then
							wait(0.2)
						else
							wait(0.7)
						end
						pcall(function() tool.Parent = character end)
						wait()
						fatass=true
					end
				end
			end
			delTick = tick()
		end
	end
	tryCook()
	if doSupplier then
		local refill=false
		for s,c in pairs(supplyCounts) do
			if c <= settings.refill_at then
				refill=true
				break
			end
		end
		if refill then
			local oldcf = root.CFrame
			local waiting = false
			local waitingTick = 0
			local lastBox
			while doSupplier do
				--check if refill is done otherwise hit buttons
				local fulfilled=true
				local boxes = workspace.AllSupplyBoxes:GetChildren()
				for yy=1,2 do
				local needtp=true
				local realc = 0
				for _,btn in ipairs(supplyButtons) do
				    local s = bcolorToSupply[btn.BrickColor.Name]
					if supplyCounts[s] < settings.refill_end then
						local count = 0
						if #boxes > 30 then
							for i=1,#boxes do
								local box = boxes[i]
								if bcolorToSupply[box.BrickColor.Name]==s and box.Anchored==false and box.Position.Z < -940 then
									count=count+1
								end
							end
						end
						if count < 2 then
							if needtp then
							    needtp=false
								smoothTP(btn.CFrame + Vector3.new(0,3,2.5))
								wait(0.1)
							end
							if not doSupplier then break end
							root.CFrame = btn.CFrame + Vector3.new(0,3,0)
							wait(0.1)
							realc=realc+1
						end
						fulfilled=false
					end
				end
				wait(0.2)
				if yy == 1 and realc < 3 then
				    wait(0.6)
				end
				end
				if fulfilled or not (doSupplier) then
					break
				end
				smoothTP(CFrame.new(8,12.4,-1020))
				if not doSupplier then break end
				--check if can finish waiting for boxes to move
				if waiting and (lastBox.Position.X>42 or tick()-waitingTick>6) then
					waiting=false
					if lastBox.Position.X<42 then
						--clear boxes if stuck
						smoothTP(CFrame.new(20.5,8,-35))
						wait(0.1)
						local boxes = workspace.AllSupplyBoxes:GetChildren()
						for i=1,#boxes do
							local box = boxes[i]
							if box.Anchored==false and box.Position.Z>-55 then
								network:FireServer(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('zwRwQOyycJgexffhWwdTteIvbjcBkRTpqDmESVkpMsQrcdFTaIjeweWVXBkYXRlUHJvcGVydHk='), box, lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('fQyCcEJfKHCiCvjQmEMqkcvmkbgfPJgKIzbwtaRqUiMHocXlkJFcUFeQ0ZyYW1l'), CFrame.new(RNG:NextNumber(0,40),RNG:NextNumber(-10,-30),-70))
								wait()
							end
						end
						wait(0.1)
					end
				end
				if not waiting then
					--move boxes
					if root.Position.Z > -900 then smoothTP(CFrame.new(8,12.4,-1020)) end
					wait(0.1)
					lastBox=nil
					local j=0
					local boxes = workspace.AllSupplyBoxes:GetChildren()
					for i=1,#boxes do
						local box = boxes[i]
						if box.Anchored==false and box.Position.Z < -940 and bcolorToSupply[box.BrickColor.Name] and supplyCounts[bcolorToSupply[box.BrickColor.Name]]<settings.refill_end then
							box.CFrame = CFrame.new(38-4.3*math.floor(j/2),5,-7-5*(j%2))
							network:FireServer(lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('xXTMtyGXWXMwTjwMueBsmwQgMqyVYUlIMrdVBaoJUlpVxZztByDsPVuVXBkYXRlUHJvcGVydHk='), box, lBjPhCAikZLJUBQyotTVHjSMiGkQfjnefuORqpLjZAQXfyzzEkpoVRvPXkQuFcUmWUjBKYhMZMFKwGErmkOvLEJzDP('hbGJoQxzIkiyOgmjGqLGRqoNyoOLhQeGwFITReknUUtELVXzSJJKGIHQ0ZyYW1l'), box.CFrame)
							lastBox=box
							j=j+1
							if j>13 then break end
						end
					end
					if lastBox then
						waiting=true
						waitingTick=tick()
					end
				end
			end
			--smoothTP(oldcf)
		end
	end
end    
