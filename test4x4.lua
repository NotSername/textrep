local GithubRepo = "https://github.com/NotSername/textrep" -- github repo which has the gif

local sSavename = "pog.gif" -- file name

-----------------------------------------------------------
local tbl = {}
local args = {...}
if not fs.exists("bbpack") then
shell.run("pastebin","get","cUYTGbpb","bbpack")
term.clear()
end

if not fs.exists("GIF") then
shell.run("pastebin","get","5uk9uRjC","GIF")
term.clear()
end

function APICheck(t, api)
  for list,_ in pairs(t) do
    if list == api then
      return true
    end
  end
  return false
end

       if not (APICheck(_G,"GIF")) then
        os.loadAPI("GIF")
        end
         if not (APICheck(_G,"bbpack")) then
        os.loadAPI("bbpack")
        end

for a,v in pairs(peripheral.getNames()) do
  if (peripheral.getType(v) == "monitor" ) then
        tbl[#tbl + 1] = string.gsub(v, "monitor_", "")
  end
end

table.sort(tbl)

for i = 1,#tbl do tbl[i] = peripheral.wrap("monitor_"..tbl[i]) end

function display()
Stored = GifSize[1].."x"..GifSize[2]..sSavename

if not fs.exists("GIFs/"..Stored) then
bbpack.fileSys(GithubRepo, "pain/")
local image = GIF.loadGIF("pain/"..sSavename)
local image = GIF.resizeGIF(image, GifSize[1],GifSize[2])
GIF.saveGIF(image,"GIFs/"..Stored)
end
end
tbl[1].setTextScale(0.5)
local cx1,cy1 = tbl[1].getSize()
GifSize = {cx1*2,cy1*2}
print(GifSize[1],GifSize[2])
display()

local image = GIF.loadGIF("GIFs/"..Stored)
term.setBackgroundColour(image.backgroundCol)
for i = 1,#tbl do
mon = tbl[i]
mon.setTextScale(0.5)
x,y = mon.getSize()
  x = x*4
  y = y*4
end

while true do
    term.setBackgroundColour(image.backgroundCol)
    term.clear()
    parallel.waitForAny(
        function()
          GIF.animateGIF(image, math.floor((x - x) / 2) + 1, math.floor((-y*3 - y) / 2) + 1,tbl[1])
        end,
        function()
           GIF.animateGIF(image, math.floor((x - x) / 2) + 1, math.floor((-y*2 - y) / 2) + 1,tbl[2])
        end,
        function()
           GIF.animateGIF(image, math.floor((x - x) / 2) + 1, math.floor((-y - y) / 2) + 1,tbl[3])
        end,
        function()
           GIF.animateGIF(image, math.floor((x - x) / 2) + 1, math.floor((y - y) / 2) + 1,tbl[4])
          end, ------------------------------------------------------------------------------------------------------
          function()
          GIF.animateGIF(image, math.floor((-x - x) / 2) + 1, math.floor((-y*3 - y) / 2) + 1,tbl[1])
        end,
        function()
           GIF.animateGIF(image, math.floor((-x - x) / 2) + 1, math.floor((-y*2 - y) / 2) + 1,tbl[2])
        end,
        function()
           GIF.animateGIF(image, math.floor((-x - x) / 2) + 1, math.floor((-y - y) / 2) + 1,tbl[3])
        end,
        function()
           GIF.animateGIF(image, math.floor((-x - x) / 2) + 1, math.floor((y - y) / 2) + 1,tbl[4])
          end, ------------------------------------------------------------------------------------------------------
          function()
          GIF.animateGIF(image, math.floor((-x*2 - x) / 2) + 1, math.floor((-y*3 - y) / 2) + 1,tbl[1])
        end,
        function()
           GIF.animateGIF(image, math.floor((-x*2 - x) / 2) + 1, math.floor((-y*2 - y) / 2) + 1,tbl[2])
        end,
        function()
           GIF.animateGIF(image, math.floor((-x*2 - x) / 2) + 1, math.floor((-y - y) / 2) + 1,tbl[3])
        end,
        function()
           GIF.animateGIF(image, math.floor((-x*2 - x) / 2) + 1, math.floor((y - y) / 2) + 1,tbl[4])
          end, ------------------------------------------------------------------------------------------------------
          function()
          GIF.animateGIF(image, math.floor((-x*3 - x) / 2) + 1, math.floor((-y*3 - y) / 2) + 1,tbl[1])
        end,
        function()
           GIF.animateGIF(image, math.floor((-x*3 - x) / 2) + 1, math.floor((-y*2 - y) / 2) + 1,tbl[2])
        end,
        function()
           GIF.animateGIF(image, math.floor((-x*3 - x) / 2) + 1, math.floor((-y - y) / 2) + 1,tbl[3])
        end,
        function()
           GIF.animateGIF(image, math.floor((-x*3 - x) / 2) + 1, math.floor((y - y) / 2) + 1,tbl[4])
          end, ------------------------------------------------------------------------------------------------------)
end
