local function foo(t)
  local tcopy = {}
  for k,v in pairs(t) do
    tcopy[k] = v
  end
  for k, v in pairs(tcopy) do
    if type(v) == "table" then
      foo(v)
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)
print(t.b.d.e)