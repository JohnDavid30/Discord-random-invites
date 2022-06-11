-- constants

local discord = "https://discord.gg/vrApMX6t"

local amountOfRandomInvites = 7

-- random letter generator

local letters = {
  "A", "B", "C", "D", "E", "F", "G", "H",
   "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R",
    "S", "T", "U", "V", "W", "X", "Y", "Z",
}

function randomString()
  local finalString = ""
  local letterTable = {}
  for i=1,10,1 do
    local rng = math.random(1, #letters)
    local letter = letters[rng]
    local capitalize = math.random(1,2)   
    if capitalize == 2 then
      letter = letter:lower()
    end
    table.insert(letterTable, letter)    
  end
  
  for i, v in ipairs(letterTable) do
    finalString = finalString .. v
  end
  return discord .. finalString
end

for i=1, amountOfRandomInvites, 1 do
  print(randomString())
end
