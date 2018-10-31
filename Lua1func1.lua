

function union(r1,r2)
	return function(x,y)
		return r1(x,y) or r2(x,y)
	end
end

tabl = union({12,34},{34,56})

--print(tabl)
<<<<<<< Updated upstream
---[[--buil
for v,k in pairs(tabl) do
	print(v,k)
	print("local")
=======
---[[//local save
for v,k in pairs(tabl) do
	print(v,k)
	print("huaruan")
>>>>>>> Stashed changes
end

--]]

--[[
local M={}

local function new (r,i)
	return {r=r,i=i}
end

--M.new = new

M.i = new(45,125)

print(M.i.i)

	
for _,k in pairs(M.i) do
	print(M.i[k])
end
--]]
---[[//local save
function value(t)
	local i = 0
	print("lqlocal i ="..i)
	return function() i =i +1;return t[i] end
end


t = {1.05,20,30,12.98}
for iter in value(t) do
	print(iter)
end
--]]
--[[
tan = {"str",12.90,43,ast}
function allwarld()
	local line = "str hilq 520"
	local pos =1
	return function()
		while line do
			local w,e = string.match(line,"(%w+)()",pos)
			if w then
				pos = e
				return w
				else
				line = nil
				pos = 1
			end
		end
		return nil
	end
end
for word in allwarld() do
	print(word)
end
--]]
---[[
lines = {
["str1"] = 10,
["str2"] = 15,
["str3"] = 10.9,
--str3 = 89
}
lines2 = {15,85,95,98,["str3"] = 10.9,789}
a = {}
print("test1.....")
for k,n in pairs(lines) do 
	print(k,":",n)
	a[#a + 1] = n
end
print("test2.....")
for k,n in pairs(lines2) do 
	print(k,":",n)
end
print(#a)
for v,k in pairs(a) do
	print(v,k)
end
--]]
--[[
local Set = {}
local mt = {}

function Set.new(l)
	local set = {}
	setmetatable(set,mt)
	
	--print("set new ")
	for _,v in ipairs(l) do
		--print(set[v]) -->nil
		set[v] = true
		--print(v)
	end
	--print(Set.tostring(set))
	return set
end

function Set.union(a,b)
	local res = Set.new{}
	for k in pairs(a) do
		res[k] = true
	end
	for k in pairs(b) do
		res[k] = true
	end
	return res
end

function Set.tostring(set)
	local l ={}
	for e in pairs(set) do
		l[#l + 1] = tostring(e)
	end
	
	return "{"..table.concat(l,",").."}"
end

--return Set

mt.__add = Set.union

s1 = Set.new({1,2,5,9})
s2 = Set.new{3,6,9}
--print(getmetatable(s1))
--print(getmetatable(s2))
s3 = s1 + s2
--print(s3)  -->nil
--s11 = {10,20,50,9.0,["str"] = 45,"strlq"}
--print(table.concat(s11,","))             -->10,20,50,9,strlq


print(Set.tostring(s3))
--]]

--[[

local mt = {}
--定义mt.__add元方法（其实就是元表中一个特殊的索引值）为将两个表的元素合并后返回一个新表
mt.__add = function(t1,t2)
    local temp = {}
    for _,v in pairs(t1) do
        table.insert(temp,v)
    end
    for _,v in pairs(t2) do
        table.insert(temp,v)
    end
    return temp
end
local t1 = {1,2,3}
local t2 = {2}
--设置t1的元表为mt
setmetatable(t1,mt)

local t3 = t1 + t2
--输出t3
local st = "{"
for _,v in pairs(t3) do
    st = st..v..", "
end
st = st.."}"
print(st)

--]]
--local res = set.new{}



