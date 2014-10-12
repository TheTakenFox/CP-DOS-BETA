
local function getFreeMem()
  local bytesFree = fs.getFreeSpace("/")
  local kbFree = math.ceil(bytesFree / 1024)
  local mbFree = math.ceil(kbFree / 1024)
 
  if fs.exists("/disk") then
        diskFree = fs.getFreeSpace("/disk")
        diskKB = math.ceil(diskFree / 1024)
        diskMB = math.ceil(diskKB / 1024)
        diskPresent = true
  end
 
sleep(0.5)
  print("Approx. Bytes free: "..bytesFree)
sleep(0.5)
  print("Approx. KB free: "..kbFree)
sleep(0.5)
  print("Approx. MB free: "..mbFree)
sleep(0.5)
end
 
 
 
 
local function Boot()
local updater = dofile("lib/updater.lua")

local function success()
	print("Update Found!")
end
updater.new() -- this will check for any updates for the updater
updater.update(success, "Cloudpaw", "CP-DOS-BETA") -- first argument is the function to be executed in case of an update second is the username and last is the repostery
term.clear()
textutils.slowPrint("Booting CP-DOS")
sleep(0.3)
term.clear()
sleep(0.5)
print("CP-DOS 2.0")
sleep(0.5)
getFreeMem()
sleep(0.5)
print("THIS OS IN ALPHA IT STILL USES CRAFTOS FOR IT'S BASE!")
sleep(0.5)
print("THIS WILL CHANGE!")
sleep(0.5)
print("Type advown for all the names of the creators from the apps")
sleep(0.5)
end
Boot()
