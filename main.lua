-- Compatibility: ---------------------|
if KRNL_LOADED then getgenv().sethiddenproperty = nil end
---------------------------------------|
repeat wait() until game:IsLoaded() and game:GetService("CoreGui") and game:GetService("Players").LocalPlayer and game:GetService("Players").LocalPlayer.PlayerGui
-- Constraints: -----------------------|
local ver = "1.1.2c"
local nextupd = "20/07/2020"
local cordCode = "point withdrawn, we stopped."
local changeLog = {
	"Need help? Join our discord! "..cordCode;
}
---------------------------------------|
Parents = {[1] = game:GetService("CoreGui").RobloxGui, [2] = game:GetService("CoreGui"), [3] = game:GetService("Players").LocalPlayer.PlayerGui}
getParent = Parents[1]
if not game:GetService("CoreGui"):FindFirstChild("RobloxGui") then
	getParent = Parents[2]
end

for _, v in pairs(Parents[1]:GetDescendants()) do
	if v.Name == "holder" then 
		v.Parent:Destroy() 
	end
end
for _, v in pairs(Parents[2]:GetDescendants()) do
	if v.Name == "holder" then 
		v.Parent:Destroy() 
	end
end

if game:GetService("UserInputService").VREnabled then 
	getParent = Parents[2] 
end

Unnamed = Instance.new("ScreenGui", getParent); Unnamed.Name = "Unnamed"; Unnamed.ZIndexBehavior = Enum.ZIndexBehavior.Sibling; Unnamed.ResetOnSpawn = false

local a = getrawmetatable(game)
local b = a.__index
setreadonly(a,false)
a.__index = newcclosure(function(self,...)
	local c = {...}
	if not checkcaller() and self == getParent and c[1] == Unnamed.Name then
		return nil
	end
	return b(self,...)
end)
setreadonly(a,true)

_G.Unnamed = Unnamed
_G.dontTween = false

function Stand(Text1,Text2,Text3,Text4,Text5,Text6,Btn)
	RunDude = false
	LoadingFrame = Instance.new("Frame", getParent); RandomReason = Instance.new("TextLabel", getParent)
	RunQuestion = Instance.new("TextLabel", getParent); Executors = Instance.new("TextLabel", getParent)
	Paid = Instance.new("TextLabel", getParent); Free = Instance.new("TextLabel", getParent)
	Help = Instance.new("TextLabel", getParent); HmmButton = Instance.new("TextButton", getParent)

	LoadingFrame.Name = "LoadingFrame"
	LoadingFrame.Parent = Unnamed
	LoadingFrame.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
	LoadingFrame.BackgroundTransparency = 0.100
	LoadingFrame.Position = UDim2.new(-9.31322575e-10, 0, -0.101388887, 0)
	LoadingFrame.Size = UDim2.new(1, 0, 1.20000005, 0)

	RandomReason.Name = "Random/Reason"
	RandomReason.Parent = LoadingFrame
	RandomReason.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RandomReason.BackgroundTransparency = 1.000
	RandomReason.Position = UDim2.new(0.489562511, 0, 0.335111082, 0)
	RandomReason.Size = UDim2.new(0.0199999996, 0, 0.0500000007, 0)
	RandomReason.Font = Enum.Font.GothamBold
	RandomReason.Text = Text1
	RandomReason.TextColor3 = Color3.fromRGB(255, 255, 255)
	RandomReason.TextSize = 50.000

	RunQuestion.Name = "RunQuestion"
	RunQuestion.Parent = LoadingFrame
	RunQuestion.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RunQuestion.BackgroundTransparency = 1.000
	RunQuestion.Position = UDim2.new(0.489562511, 0, 0.383953691, 0)
	RunQuestion.Size = UDim2.new(0.0199999996, 0, 0.0500000007, 0)
	RunQuestion.Font = Enum.Font.GothamBold
	RunQuestion.Text = Text2
	RunQuestion.TextColor3 = Color3.fromRGB(255, 255, 255)
	RunQuestion.TextSize = 25.000

	Executors.Name = "Executors"
	Executors.Parent = LoadingFrame
	Executors.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Executors.BackgroundTransparency = 1.000
	Executors.Position = UDim2.new(0.492968768, 0, 0.474129587, 0)
	Executors.Size = UDim2.new(0.0130000003, 0, 0.0500000007, 0)
	Executors.Font = Enum.Font.GothamBold
	Executors.Text = Text3
	Executors.TextColor3 = Color3.fromRGB(255, 255, 255)
	Executors.TextSize = 20.000

	Paid.Name = "Paid"
	Paid.Parent = LoadingFrame
	Paid.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Paid.BackgroundTransparency = 1.000
	Paid.Position = UDim2.new(0.492968738, 0, 0.496083349, 0)
	Paid.Size = UDim2.new(0.0130000003, 0, 0.0500000007, 0)
	Paid.Font = Enum.Font.GothamBold
	Paid.Text = Text4
	Paid.TextColor3 = Color3.fromRGB(255, 255, 255)
	Paid.TextSize = 17.000

	Help.Name = "Help"
	Help.Parent = LoadingFrame
	Help.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Help.BackgroundTransparency = 1.000
	Help.Position = UDim2.new(0.492968738, 0, 0.66259259, 0)
	Help.Size = UDim2.new(0.0130000003, 0, 0.0500000007, 0)
	Help.Font = Enum.Font.GothamBold
	Help.Text = "Need help? "..cordCode
	Help.TextColor3 = Color3.fromRGB(255, 255, 255)
	Help.TextSize = 20.000

	HmmButton.Name = "HmmButton"
	HmmButton.Parent = LoadingFrame
	HmmButton.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
	HmmButton.BackgroundTransparency = 0.700
	HmmButton.BorderColor3 = Color3.fromRGB(53, 51, 51)
	HmmButton.BorderSizePixel = 0
	HmmButton.Position = UDim2.new(0.424718767, 0, 0.582555592, 0)
	HmmButton.Size = UDim2.new(0.150000006, 0, 0.0500000007, 0)
	HmmButton.Font = Enum.Font.GothamBold
	HmmButton.Text = Text6
	HmmButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	HmmButton.TextSize = 30.000
	HmmButton.Visible = Btn
	HmmButton.MouseButton1Down:Connect(function()
		LoadingFrame:Destroy()
		RunDude = true
	end)

	Free.Name = "Free"
	Free.Parent = LoadingFrame
	Free.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Free.BackgroundTransparency = 1.000
	Free.Position = UDim2.new(0.492968738, 0, 0.514601827, 0)
	Free.Size = UDim2.new(0.0130000003, 0, 0.0500000007, 0)
	Free.Font = Enum.Font.GothamBold
	Free.Text = Text5
	Free.TextColor3 = Color3.fromRGB(255, 255, 255)
	Free.TextSize = 17.000
end

LoadingPhrase = {"Making sure version is on "..ver..".","Deleting all noobs.","Destroying anti-cheats.","Loading Strylix-FE.","Thanking pigeon#1818.","Thanking hz#4777.","Robbing game owner out of his robux.","Removing all free-sploiters.","Asking you to join the discord.","Loading themes.","Loading plugins.","Hacking the mainframe.","Getting ready."}

local cmdp = game:GetService("Players")
local cmdlp = cmdp.LocalPlayer

if not writefile then
	Stand("Your exploit does not support writefile!","Strylix-FE cannot run.","Executors we support;","Paid: Synapse X, Sentinel, ProtoSmasher, SirHurt (buggy)","Free: KRNL (buggy)","Run Anyway",true)
	repeat wait() until RunDude == true
end

loadstring(game:HttpGet("https://github.com/Echo689/some-roblox-thing/blob/master/versions.lua",true))()
if Current.Version ~= ver then
	Stand("Strylix FE is not up to par!","Strylix FE cannot run.","","Your version: "..ver,"Current version: "..Current.Version,"Run Anyway",true)
	repeat wait() until RunDude == true
end

if isfile then
	if not isfile("Strylix-FE.lua") then
	    Stand("Looks like your new here.","To view commands use .commands","You can use different stuff like .hotkeys and .plugins for add-ons.","","Join the discord if you need help/support.","Ok Cool!",true)    
	    repeat wait() until RunDude == true
	end
end

-- Variables: ------------------------|
cmdws = workspace
local player = cmdlp
local cmdl = game:GetService("Lighting")
local cmdrs = game:GetService("ReplicatedStorage")
local cmdrs2 = game:GetService("RunService")
local cmdts = game:GetService("TweenService")
local cmdvu = game:GetService("VirtualUser")
local cmduis = game:GetService("UserInputService")
local Mouses = cmdlp:GetMouse()
local dp = cmdlp
cmdm = Mouses
-- we dont have this many owners just alts
local Devs = {
	["heeheehehehehehe"] = "Owner",
	["wskyn"] = "Admin",
	["placeholder"] = "Co-Owner",
	["placeholder"] = "Owner",
	["placeholder"] = "Owner",
	["placeholder"] = "Dev",
	["placeholder"] = "Owner",
	["placeholder"] = "Dev" 
}

DevCords = {
	"placeholder";
    "placeholder";
	"";
}

local Donors = {
	["heeheehehehehehe"] = {Tier = "Custom1", Tag = "Administrator"},
	["wskyn"] = {Tier = "Custom1", Tag = "Administrator"},

}

---------------------------------------|
-- Writefile: -------------------------|

if isfolder and makefolder and isfile and writefile then
	if not isfolder("Strylix-FE Plugins") then makefolder("Strylix-FE Plugins") end
	if not isfile("Strylix-FE Plugins/template.lua") then writefile("Strylix-FE Plugins/template.lua","print('test')") end
end

function writefileExploit()
	if writefile then
		return true
	end
end
 
local cooldown = false
function writefileCooldown(name,data)
	spawn(function()
		if not cooldown then
			cooldown = true
			writefile(name, data)
		else
			repeat wait() until cooldown == false
			writefileCooldown(name,data)
		end
		cooldown = false
	end)
end

defaultsettings = {
	text2 = false;
	hotkeyopen = 'q';
	hotkeyopx = 'u';
	hotkeyfocus = ';';
	hotkeyfly = '';
	hotkeyxray = '';
	hotkeyesp = '';
	hotkeyaimbot = '';
	prefix = '.';
	prompt = 'Strylix-FE >';
	enterCMD = {};
	gotoPos = 0;
	gotoPosSide = 0;
	gotoPosHead = 0;
	WPs = {};
	Plugins = {};
	discordTag = '';
	permfcspeed = 1;
	permflyspeed = 1;
	permwalkspeed = 50;
	permjumppower = 150;
	permhipheight = 20;
	permgravity = 50;
	Adm = {};
	hkBinds = {};
	dStyle = "rounded";
	conFly = true;
	suggestions = true;
	CMDStat = {};
	oldNum = 0;
	hotkeyctp = "LeftControl";
	permspamspeed = 1;
	mentions = true;
	sDetect = true;
	SavedPos = {X = 800, Y = 300};
	hotkeynoclip = "";
	ChatBind = false;
	CMDTab = {"commands","credits","plugin","changestyle","hotkeys","entercmds","support","",""};
	TabsOff = true;
	KeepCMDXOn = false;
	ifKickedAuto = false;
	whyIs = 0;
}
 
defaults = game:GetService("HttpService"):JSONEncode(defaultsettings)

function saves()
	if writefileExploit() then
		if pcall(function() readfile("Strylix-FE.lua") end) then
			if readfile("Strylix-FE.lua") ~= nil then
				local json = game:GetService("HttpService"):JSONDecode(readfile("Strylix-FE.lua"))
				if json.text2 ~= nil then text2 = json.text2 else text2 = {} end
				if json.hotkeyopen ~= nil then hotkeyopen = json.hotkeyopen else hotkeyopen = 'q' end
				if json.hotkeyopx ~= nil then hotkeyopx = json.hotkeyopx else hotkeyopx = 'u' end
				if json.hotkeyfocus ~= nil then hotkeyfocus = json.hotkeyfocus else hotkeyfocus = ';' end
				if json.hotkeyfly ~= nil then hotkeyfly = json.hotkeyfly else hotkeyfly = '' end
				if json.hotkeyxray ~= nil then hotkeyxray = json.hotkeyxray else hotkeyxray = '' end
				if json.prefix ~= nil then prefix = json.prefix else prefix = '.' end
				if json.prompt ~= nil then prompt = json.prompt else prompt = 'test 2 >' end
				if json.enterCMD ~= nil then enterCMD = json.enterCMD else enterCMD = {} end
				if json.gotoPos ~= nil then gotoPos = json.gotoPos else gotoPos = 0 end
				if json.gotoPosSide ~= nil then gotoPosSide = json.gotoPosSide else gotoPosSide = 0 end
				if json.gotoPosHead ~= nil then gotoPosHead = json.gotoPosHead else gotoPosHead = 0 end
				if json.WPs ~= nil then WPs = json.WPs else WPs = {} end
				if json.Plugins ~= nil then Plugins = json.Plugins else Plugins = {} end
				if json.discordTag ~= nil then discordTag = json.discordTag else discordTag = '' end
				if json.hotkeyaimbot ~= nil then hotkeyaimbot = json.hotkeyaimbot else hotkeyaimbot = '' end
				if json.hotkeyesp ~= nil then hotkeyesp = json.hotkeyesp else hotkeyesp = '' end
				if json.permfcspeed ~= nil then permfcspeed = json.permfcspeed else permfcspeed = 1 end
				if json.permflyspeed ~= nil then permflyspeed = json.permflyspeed else permflyspeed = 1 end
				if json.permwalkspeed ~= nil then permwalkspeed = json.permwalkspeed else permwalkspeed = 50 end
				if json.permjumppower ~= nil then permjumppower = json.permjumppower else permjumppower = 150 end
				if json.permhipheight ~= nil then permhipheight = json.permhipheight else permhipheight = 20 end
				if json.permgravity ~= nil then permgravity = json.permgravity else permgravity = 50 end
				if json.Adm ~= nil then Adm = json.Adm else Adm = {} end
				if json.hkBinds ~= nil then hkBinds = json.hkBinds else hkBinds = {} end
				if json.dStyle ~= nil then dStyle = json.dStyle else dStyle = "rounded" end
				if json.conFly ~= nil then conFly = json.conFly else conFly = true end
				if json.suggestions ~= nil then suggestions = json.suggestions else suggestions = true end
				if json.CMDStat ~= nil then CMDStat = json.CMDStat else CMDStat = {} end
				if json.oldNum ~= nil then oldNum = json.oldNum else oldNum = 0 end
				if json.hotkeyctp ~= nil then hotkeyctp = json.hotkeyctp else hotkeyctp = "LeftControl" end
				if json.permspamspeed ~= nil then permspamspeed = json.permspamspeed else permspamspeed = 1 end
				if json.mentions ~= nil then mentions = json.mentions else mentions = true end
				if json.sDetect ~= nil then sDetect = json.sDetect else sDetect = true end
				if json.SavedPos ~= nil then SavedPos = json.SavedPos else SavedPos = {X = 800, Y = 300} end
				if json.hotkeynoclip ~= nil then hotkeynoclip = json.hotkeynoclip else hotkeynoclip = "" end
				if json.ChatBind ~= nil then ChatBind = json.ChatBind else ChatBind = false end
				if json.CMDTab ~= nil then CMDTab = json.CMDTab else CMDTab = {"commands","credits","plugin","changestyle","hotkeys","entercmds","support","",""} end
				if json.TabsOff ~= nil then TabsOff = json.TabsOff else TabsOff = true end
				if json.KeepCMDXOn ~= nil then KeepCMDXOn = json.KeepCMDXOn else KeepCMDXOn = false end
				if json.ifKickedAuto ~= nil then ifKickedAuto = json.ifKickedAuto else ifKickedAuto = false end
				if json.whyIs ~= nil then whyIs = json.whyIs else whyIs = 0 end
			else
				writefileCooldown("Strylix-FE.lua", defaults)
				wait()
				saves()
			end
		else
			writefileCooldown("Strylix-FE.lua", defaults)
			wait()
			if pcall(function() readfile("Strylix-FE.lua") end) then
				saves()
			else
				text2 = false
				hotkeyopen = 'q'
				hotkeyopx = 'u'
				hotkeyfocus = ';'
				hotkeyfly = ''
				hotkeyxray = ''
				hotkeyesp = ''
				hotkeyaimbot = ''
				prefix = '.'
				prompt = 'test >'
				enterCMD = {}
				gotoPos = 0
				gotoPosSide = 0
				gotoPosHead = 0
				WPs = {}
				Plugins = {}
				discordTag = ''
				permfcspeed = 1
				permflyspeed = 1
				permwalkspeed = 50
				permjumppower = 150
				permhipheight = 20
				permgravity = 50
				Adm = {}
				hkBinds = {}
				dStyle = "rounded"
				conFly = true
				suggestions = true
				CMDStat = {}
				oldNum = 0
				hotkeyctp = "LeftControl"
				permspamspeed = 1
				mentions = true
				sDetect = true
				SavedPos = {X = 800, Y = 300}
				hotkeynoclip = ""
				ChatBind = false
				CMDTab = {"commands","credits","plugin","changestyle","hotkeys","entercmds","support","",""}
				TabsOff = true
				KeepCMDXOn = false
				ifKickedAuto = false
				whyIs = 0
			end
		end
	else
		text2 = false
		hotkeyopen = 'q'
		hotkeyopx = 'u'
		hotkeyfocus = ';'
		hotkeyfly = ''
		hotkeyxray = ''
		hotkeyesp = ''
		hotkeyaimbot = ''
		prefix = '.'
		prompt = 'Test prmt >'
		enterCMD = {}
		gotoPos = 0
		gotoPosSide = 0
		gotoPosHead = 0
		WPs = {}
		Plugins = {}
		discordTag = ''
		permfcspeed = 1
		permflyspeed = 1
		permwalkspeed = 50
		permjumppower = 150
		permhipheight = 20
		permgravity = 50
		Adm = {}
		hkBinds = {}
		dStyle = "rounded"
		conFly = true
		suggestions = false
		CMDStat = {}
		oldNum = 0
		hotkeyctp = "LeftControl"
		permspamspeed = 1
		mentions = true
		sDetect = true
		SavedPos = {X = 800, Y = 300}
		hotkeynoclip = ""
		ChatBind = false
		CMDTab = {"commands","credits","plugin","changestyle","hotkeys","entercmds","support","",""}
		TabsOff = true
		KeepCMDXOn = false
		ifKickedAuto = false
		whyIs = 0
	end
end
 
saves()
	   
function updatesaves()
	if writefileExploit() then
		local update = {
		text2 = text2;
		hotkeyopen = hotkeyopen;
		hotkeyopx = hotkeyopx;
		hotkeyfocus = hotkeyfocus;
		hotkeyfly = hotkeyfly;
		hotkeyxray = hotkeyxray;
		hotkeyesp = hotkeyesp;
		hotkeyaimbot = hotkeyaimbot;
		prefix = prefix;
		prompt = prompt;
		enterCMD = enterCMD;
		gotoPos = gotoPos;
		gotoPosSide = gotoPosSide;
		gotoPosHead = gotoPosHead;
		WPs = WPs;
		Plugins = Plugins;
		discordTag = discordTag;
		permfcspeed = permfcspeed;
		permflyspeed = permflyspeed;
		permwalkspeed = permwalkspeed;
		permjumppower = permjumppower;
		permhipheight = permhipheight;
		permgravity = permgravity;
		Adm = Adm;
		hkBinds = hkBinds;
		dStyle = dStyle;
		conFly = conFly;
		suggestions = suggestions;
		CMDStat = CMDStat;
		oldNum = oldNum;
		hotkeyctp = hotkeyctp;
		permspamspeed = permspamspeed;
		mentions = mentions;
		sDetect = sDetect;
		SavedPos = SavedPos;
		hotkeynoclip = hotkeynoclip;
		ChatBind = ChatBind;
		CMDTab = CMDTab;
		TabsOff = TabsOff;
		KeepCMDXOn = KeepCMDXOn;
		ifKickedAuto = ifKickedAuto;
		whyIs = whyIs;
		}
		writefileCooldown("Strylix-FE.lua", game:GetService("HttpService"):JSONEncode(update))
	end
end

checkArg = {
	[172667278.9] = "\85\115\105\110\103\32\98\111\116\115\32\116\111\32\39\97\116\116\101\109\112\116\39\32\116\111\32\114\97\105\100\32\67\77\68\45\88\32\115\101\114\118\101\114\46", 
	[117849776.6] = "\83\116\105\108\108\32\110\101\101\100\32\116\104\97\116\32\114\101\97\115\111\110\32\111\110\32\119\104\121\46", 
	[838753790.5] = "\100\117\110\110\111\32\119\104\121\32\121\111\117\114\32\98\108\39\101\100\32\98\117\116\32\103\111\110\110\97\32\107\101\101\112\32\117\32\115\105\110\99\101\32\117\114\32\112\114\111\102\105\108\101\32\103\97\121\46", 
	[983858851.7] = "\39\72\97\114\100\39\32\97\117\100\105\111\32\109\97\107\101\114\44\32\73\32\111\78\108\89\32\85\115\69\32\67\109\68\45\88\32\70\111\82\32\84\104\69\32\78\111\67\108\73\112\46", 
	[4238827073.2] = "\116\104\105\115\32\100\117\100\101\32\100\111\110\116\32\101\118\101\110\32\101\120\112\108\111\105\116\32\108\109\97\111\46",
	[3993039278.4] = "",
}
local requirements = dp.UserId

function isDoneLoading(arg)
	if checkArg[requirements * 290 / 100] then
		whyIs = requirements
		updatesaves()
		return false
	elseif checkArg[whyIs * 290 / 100] then
		return false
	else
		whyIs = 0
		updatesaves()
		return true
	end
end

function commandsLoaded()
	return isDoneLoading()
end

if game:GetService("UserInputService").VREnabled then
	SavedPos = {X = 147, Y = 324}
end

_G.hotkeyopx = hotkeyopx

AdmIG = {}

for _,x in pairs(Adm) do
	for _,v in pairs(cmdp:GetPlayers()) do --Shit to change
		if x == v.Name then
			table.insert(AdmIG,x)
		end
	end
end

Inputting = false
ChatBar = nil
Current = nil

if commandsLoaded() == false then
	Stand("\89\111\117\32\97\114\101\32\110\111\116\32\119\101\108\99\111\109\101\32\97\116\32\67\77\68\45\88\46","\67\77\68\45\88\32\119\105\108\108\32\110\111\116\32\114\117\110\46","","\82\101\97\115\111\110\58\32"..checkArg[whyIs * 290 / 100],"","",false)
	repeat wait() until RunDude == true
end

function Check()
	wait(.1)
	Inputting = false
	Disconnection:Disconnect()
end

function InputBegan()
	if game:GetService("UserInputService"):GetFocusedTextBox() then
		ChatBar = game:GetService("UserInputService"):GetFocusedTextBox()
		Inputting = true
		Current = ChatBar.FocusLost
		Disconnection = Current:Connect(Check)
	end
end
InputConnect = game:GetService("UserInputService").InputBegan:Connect(InputBegan)

AntiCheat = {
	ScriptDetectOff = false;
	TurboNameSpam = false;
	HideParentInExploit = false;
	HideParentInPG = false;
	AutoAntiKick = false;
	RemoveScripts = false;
	IntroAudioOff = false;
	DontJumbleNames = false;
	OneTimeScramble = false;
	PrintingOff = false;
	NoGui = false;
	Custom1 = false;
}

-- Known Anti Strylix-FE and unpatches:
if game.PlaceId == 1499872953 then
	AntiCheat.ScriptDetectOff = true
	AntiCheat.PrintingOff = true
end
if game.PlaceId == 5188367351 then
	AntiCheat.ScriptDetectOff = true
	AntiCheat.PrintingOff = true
end
if game.PlaceId == 4052062489 then
	AntiCheat.ScriptDetectOff = true
	AntiCheat.PrintingOff = true
	AntiCheat.AutoAntiKick = true -- nice client sided anticheat, maybe get a better dev??
end
if game.PlaceId == 1962086868 then
	AntiCheat.ScriptDetectOff = true
	AntiCheat.PrintingOff = true
end
if game.PlaceId == 2808131030 then
	AntiCheat.ScriptDetectOff = true
	AntiCheat.PrintingOff = true
end
if game.PlaceId == 2127551566 then
	AntiCheat.ScriptDetectOff = true
	AntiCheat.PrintingOff = true
end
if game.PlaceId == 4238077359 then
	AntiCheat.ScriptDetectOff = true
	AntiCheat.PrintingOff = true
end
if game.PlaceId == 2377868063 then
	AntiCheat.ScriptDetectOff = true
	AntiCheat.PrintingOff = true
end
if game.PlaceId == 3664995855 then
	AntiCheat.ScriptDetectOff = true
	AntiCheat.PrintingOff = true
end
if game.PlaceId == 4160228187 then
	AntiCheat.ScriptDetectOff = true
	AntiCheat.PrintingOff = true
end
if game.PlaceId == 4802536077 then
	AntiCheat.ScriptDetectOff = true
	AntiCheat.PrintingOff = true
end
if game.PlaceId == 176053469 then
	AntiCheat.ScriptDetectOff = true
	AntiCheat.PrintingOff = true
	AntiCheat.Custom1 = true
end
if game.PlaceId == 17541193 then
	AntiCheat.ScriptDetectOff = true
end

if AntiCheat.Custom1 then
	local old
	old = hookfunction(Instance.new("RemoteEvent").FireServer, newcclosure(function(self,...)
		if self.Name == "TimeEvent" then
			return
		end
		return old(self, ...)
	end))
end

if AntiCheat.HideParentInPG then
	getParent = game:GetService("Players").LocalPlayer.PlayerGui
end

if AntiCheat.HideParentInExploit then
	if syn.protect_gui then
		getParent = syn.protect_gui
		syn.protect_gui(Unnamed)
	elseif get_hidden_gui then
		getParet = get_hidden_gui
		Unnamed.Parent = get_hidden_gui()
	else
		Stand("Your exploit does not support syn.protect_gui/get_hidden_gui  cannot run.","Explanation;","This game has an anti-cheat and our way of stopping it is through syn.protect_gui/get_hidden_gui.","","Run Anyway",true)
		repeat wait() until RunDude == true
	end
end

if AntiCheat.AutoAntiKick then
	local meta = debug.getmetatable(game)
	local newindex = meta.__newindex
	local namecall = meta.__namecall
	setreadonly(meta,false)
	meta.__namecall = newcclosure(function(self,...)
		local args = {...}
		local t = getnamecallmethod()
		if t == "Kick" then
			return nil
		end
		return namecall(self,...)
	end)
end

if AntiCheat.RemoveScripts then
	for _,v in pairs(cmdp:GetDescendants()) do
		if v:IsA("LocalScript") and v.Name ~= "Animate" and v.Parent ~= "Chat" then
			v:Destroy()
		end
	end
	Stand("Strylix-FE has to delete local scripts!","Your game may not work.","Explanation;","This game has an anticheat and our way of solving it is removing scripts.","","Run Anyway",true)
	repeat wait() until RunDude == true
end

if AntiCheat.OneTimeScramble then
	Unnamed.Name = math.random(1,100000)
end

if AntiCheat.IntroAudioOff == false then
	local Sound2 = Instance.new("Sound", game:GetService("PolicyService"))
	Sound2.SoundId = "http://www.roblox.com/asset/?id="..3951847031
	Sound2:Play()
end
---------------------------------------|
-- GUI Variables: ---------------------|
 
-- Holder --
holder = Instance.new("Frame", getParent)
-- Output --
output = Instance.new("Frame", getParent)
output1 = Instance.new("TextLabel", getParent)
output2 = Instance.new("TextLabel", getParent)
output3 = Instance.new("TextLabel", getParent)
output4 = Instance.new("TextLabel", getParent)
output5 = Instance.new("TextLabel", getParent)
output6 = Instance.new("TextLabel", getParent)
output7 = Instance.new("TextLabel", getParent)
output8 = Instance.new("TextLabel", getParent)
output9 = Instance.new("TextLabel", getParent)
-- CMDBar --
entry = Instance.new("Frame", getParent)
user = Instance.new("TextLabel", getParent)
cmd = Instance.new("TextBox", getParent)
cmdsu = Instance.new("TextLabel", getParent)
-- Random --
name = Instance.new("Frame", getParent)
local ehcmdshit = Instance.new("ScrollingFrame", getParent)
local cmdslool = Instance.new("TextLabel", getParent)
local shitlabeljpeg = Instance.new("TextLabel", getParent)
local ScreenGuipoo = Instance.new("ScreenGui", getParent)
local TextButtonpoo = Instance.new("TextButton", getParent)
-- Command GUIs --
local ScrollingFrame = Instance.new("ScrollingFrame", getParent)
local logsframe = Instance.new("Frame", getParent)
local logstitle = Instance.new("TextButton", getParent)
local cmdiframe = Instance.new("Frame", getParent)
local cmdititle = Instance.new("TextButton", getParent)
local xcmdi = Instance.new("TextButton", getParent)
local CMDlist = Instance.new("Frame", getParent)
local cmdstitle = Instance.new("TextButton", getParent)
local profile = Instance.new("TextLabel", getParent)
local avatarframe = Instance.new("Frame", getParent)
local avatartitle = Instance.new("TextButton", getParent)
local avatarimage = Instance.new("ImageLabel", getParent)
local profileview = Instance.new("TextLabel", getParent)
local accountage = Instance.new("TextLabel", getParent)
local userid = Instance.new("TextLabel", getParent)
local fecheck = Instance.new("TextLabel", getParent)
local operatingsystem = Instance.new("TextLabel", getParent)
local vrheadset = Instance.new("TextLabel", getParent)
local creditsavatar = Instance.new("TextLabel", getParent)
local hs = Instance.new("TextButton", getParent)
local at = Instance.new("TextButton", getParent)
local ab = Instance.new("TextButton", getParent)
local hss = Instance.new("TextButton", getParent)
local gameframe = Instance.new("Frame", getParent)
local gametitle = Instance.new("TextButton", getParent)
local gameimage = Instance.new("ImageLabel", getParent)
local gameview = Instance.new("TextLabel", getParent)
local gameid = Instance.new("TextLabel", getParent)
local uptime = Instance.new("TextLabel", getParent)
local creditsgame = Instance.new("TextLabel", getParent)
local textl = Instance.new("TextLabel", getParent)
local xgameinfo = Instance.new("TextButton", getParent)
local configframe = Instance.new("Frame", getParent)
local configtitle = Instance.new("TextButton", getParent)
local af2 = Instance.new("ScrollingFrame", getParent)
local osconfigtext = Instance.new("TextButton", getParent)
local osconfigtext2 = Instance.new("TextButton", getParent)
local oscheck2 = Instance.new("TextLabel", getParent)
local oscheck = Instance.new("TextLabel", getParent)
local xlogs = Instance.new("TextButton", getParent)
local xconfig = Instance.new("TextButton", getParent)
local xavatar = Instance.new("TextButton", getParent)
local xcmds = Instance.new("TextButton", getParent)
local tabs = Instance.new("Frame", getParent)
local tabsbar = Instance.new("TextButton", getParent)
local cmdsbar = Instance.new("TextButton", getParent)
local logsbar = Instance.new("TextButton", getParent)
local avatarbar = Instance.new("TextButton", getParent)
local gamebar = Instance.new("TextButton", getParent)
local incomingbar = Instance.new("TextButton", getParent)
local incomingbar2 = Instance.new("TextButton", getParent)
local Scrollingad = Instance.new("ScrollingFrame", getParent)
local adframe = Instance.new("Frame", getParent)
local adtitle = Instance.new("TextButton", getParent)
local xad = Instance.new("TextButton", getParent)
local adbar = Instance.new("TextButton", getParent)
---------------------------------------|
-- GUI Objects: -----------------------|
output.Name = "output"
output.Parent = holder
output.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
output.BorderSizePixel = 0
output.Position = UDim2.new(0, -8, 0, 19)
output.Size = UDim2.new(0, 525, 0, 253)
output.Style = Enum.FrameStyle.RobloxRound
output.Visible = false

local Gui = {}
if not AntiCheat.HideParentInExploit and getParent ~= game then
	for _,v in pairs(getParent:GetDescendants()) do
		table.insert(Gui,v.Name)
		table.insert(Gui,math.random(-2e9,2e9))
	end
end

if getParent ~= game then
	game:GetService("RunService").RenderStepped:Connect(function()
		if AntiCheat.DontJumbleNames == false then
			if AntiCheat.HideParentInExploit == false then
				if AntiCheat.TurboNameSpam == false then
					Unnamed.Name = Gui[math.random(#Gui)]
				else
					for _,v in pairs(Unnamed:GetDescendants()) do
						v.Name = Gui[math.random(#Gui)]
					end
				end
			else
				if AntiCheat.TurboNameSpam == false then
					Unnamed.Name = math.random(1000000)
				else
					for _,v in pairs(Unnamed:GetDescendants()) do
						v.Name = math.random(1000000)
					end
				end
			end
		end
	end)
end

function Confirm(Reason,Reason2)
	Confirmation = false
	HeyDestroyed = false

	ConfirmationFrame = Instance.new("Frame", getParent)
	Sure = Instance.new("TextLabel", getParent)
	Not = Instance.new("TextLabel", getParent)
	Help2 = Instance.new("TextLabel", getParent)
	Yes = Instance.new("TextButton", getParent)
	No = Instance.new("TextButton", getParent)

	ConfirmationFrame.Name = "ConfirmationFrame"
	ConfirmationFrame.Parent = Unnamed
	ConfirmationFrame.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
	ConfirmationFrame.BackgroundTransparency = 0
	ConfirmationFrame.BorderSizePixel = 0
	ConfirmationFrame.Position = UDim2.new(0.328281224, 0, 0.362222254, 0)
	ConfirmationFrame.Size = UDim2.new(0.342812598, 0, 0.275277853, 0)

	Sure.Name = "Sure"
	Sure.Parent = ConfirmationFrame
	Sure.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Sure.BackgroundTransparency = 1.000
	Sure.Position = UDim2.new(0.489562482, 0, 0.113113157, 0)
	Sure.Size = UDim2.new(0.0199999996, 0, 0.0500000007, 0)
	Sure.Font = Enum.Font.GothamBold
	Sure.Text = Reason
	Sure.TextColor3 = Color3.fromRGB(255, 255, 255)
	Sure.TextSize = 20.000

	Not.Name = "Not"
	Not.Parent = ConfirmationFrame
	Not.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Not.BackgroundTransparency = 1.000
	Not.Position = UDim2.new(0.459936291, 0, 0.222500637, 0)
	Not.Size = UDim2.new(0.0692250952, 0, 0.10650862, 0)
	Not.Font = Enum.Font.GothamBold
	Not.Text = Reason2
	Not.TextColor3 = Color3.fromRGB(255, 255, 255)
	Not.TextSize = 20.000

	if Reason == "Default" then
		Sure.Text = "Are you sure you want to run this command?"
	end
	if Reason2 == "Default" then
		Not.Text = "This may not work properly."
	end

	Help2.Name = "Help2"
	Help2.Parent = ConfirmationFrame
	Help2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Help2.BackgroundTransparency = 1.000
	Help2.Position = UDim2.new(0.467900336, 0, 0.834136486, 0)
	Help2.Size = UDim2.new(0.0622250475, 0, 0.118617564, 0)
	Help2.Font = Enum.Font.GothamBold
	Help2.Text = "Need help? "..cordCode
	Help2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Help2.TextSize = 20.000

	Yes.Name = "Yes"
	Yes.Parent = ConfirmationFrame
	Yes.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
	Yes.BackgroundTransparency = 0.700
	Yes.BorderColor3 = Color3.fromRGB(53, 51, 51)
	Yes.BorderSizePixel = 0
	Yes.Position = UDim2.new(0.310771585, 0, 0.50248313, 0)
	Yes.Size = UDim2.new(0.155925438, 0, 0.147881001, 0)
	Yes.Font = Enum.Font.GothamBold
	Yes.Text = "Yes"
	Yes.TextColor3 = Color3.fromRGB(255, 255, 255)
	Yes.TextSize = 30.000
	Yes.MouseButton1Down:Connect(function()
		ConfirmationFrame:Destroy()
		Confirmation = true
		HeyDestroyed = true
	end)

	No.Name = "No"
	No.Parent = ConfirmationFrame
	No.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
	No.BackgroundTransparency = 0.700
	No.BorderColor3 = Color3.fromRGB(53, 51, 51)
	No.BorderSizePixel = 0
	No.Position = UDim2.new(0.545502543, 0, 0.50248313, 0)
	No.Size = UDim2.new(0.155925438, 0, 0.147881001, 0)
	No.Font = Enum.Font.GothamBold
	No.Text = "No"
	No.TextColor3 = Color3.fromRGB(255, 255, 255)
	No.TextSize = 30.000
	No.MouseButton1Down:Connect(function()
		ConfirmationFrame:Destroy()
		Confirmation = false
		HeyDestroyed = true
	end)

	repeat wait(.01) until HeyDestroyed == true
end

ScrollingFrame.Parent = logsframe
ScrollingFrame.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
ScrollingFrame.BackgroundTransparency = 0.30000001192093
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0, 0, 0.0680000037, 0)
ScrollingFrame.Size = UDim2.new(0, 300, 0, 404)
 
logsframe.Name = "logsframe"
logsframe.Parent = Unnamed
logsframe.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
logsframe.BackgroundTransparency = 1
logsframe.BorderSizePixel = 0
logsframe.Position = UDim2.new(0.28193146, 0, 0.0159704965, 0)
logsframe.Size = UDim2.new(0, 300, 0, 433)
logsframe.Visible = false
logsframe.Active = true
logsframe.Draggable = true
 
logstitle.Name = "logstitle"
logstitle.Parent = logsframe
logstitle.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
logstitle.BorderColor3 = Color3.new(1, 1, 1)
logstitle.Position = UDim2.new(-1.1920929e-07, 0, 0, 0)
logstitle.Size = UDim2.new(0, 300, 0, 29)
logstitle.Font = Enum.Font.GothamBlack
logstitle.Text = "Strylix-FE LOGS VIEWER"
logstitle.TextColor3 = Color3.new(1, 1, 1)
logstitle.TextSize = 14

function findCmd(cmd_name)
	for _,v in pairs(CMDN) do
		for _,x in pairs(v.A) do
			if v.N:lower() == cmd_name:lower() or x:lower() == cmd_name:lower() then
				v = v.N
				return v
			end
		end
	end
end

cmdiframe.Name = "cmdiframe"
cmdiframe.Parent = Unnamed
cmdiframe.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
cmdiframe.BackgroundTransparency = 1
cmdiframe.BorderSizePixel = 0
cmdiframe.Position = UDim2.new(0.28193146, 0, 0.0159704965, 0)
cmdiframe.Size = UDim2.new(0, 300, 0, 433)
cmdiframe.Visible = false
cmdiframe.Active = true
cmdiframe.Draggable = true
 
Scrollingad.Parent = adframe
Scrollingad.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Scrollingad.BackgroundTransparency = 0.30000001192093
Scrollingad.BorderSizePixel = 0
Scrollingad.Position = UDim2.new(0, 0, 0.0680000037, 0)
Scrollingad.Size = UDim2.new(0, 300, 0, 404)
 
adframe.Name = "adframe"
adframe.Parent = Unnamed
adframe.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
adframe.BackgroundTransparency = 1
adframe.BorderSizePixel = 0
adframe.Position = UDim2.new(0.28193146, 0, 0.0159704965, 0)
adframe.Size = UDim2.new(0, 300, 0, 433)
adframe.Visible = false
adframe.Active = true
adframe.Draggable = true
 
adtitle.Name = "adtitle"
adtitle.Parent = adframe
adtitle.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
adtitle.BorderColor3 = Color3.new(1, 1, 1)
adtitle.Position = UDim2.new(-1.1920929e-07, 0, 0, 0)
adtitle.Size = UDim2.new(0, 300, 0, 29)
adtitle.Font = Enum.Font.GothamBlack
adtitle.Text = "Strylix-FE ADMIN DETECTOR"
adtitle.TextColor3 = Color3.new(1, 1, 1)
adtitle.TextSize = 14
 
xad.Name = "xad"
xad.Parent = adtitle
xad.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
xad.BorderColor3 = Color3.new(1, 1, 1)
xad.Position = UDim2.new(0.903333306, 0, 0, 0)
xad.Size = UDim2.new(0, 29, 0, 29)
xad.Font = Enum.Font.GothamBlack
xad.Text = "X"
xad.TextColor3 = Color3.new(1, 1, 1)
xad.TextSize = 20
xad.MouseButton1Down:connect(function()
	adframe:TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, .5, false, function() adframe.Visible = false end)
end)
 
if getParent ~= game then
	adframe:TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, .5, false, function() adframe.Visible = false end)
end

cmdititle.Name = "cmdititle"
cmdititle.Parent = cmdiframe
cmdititle.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
cmdititle.BorderColor3 = Color3.new(1, 1, 1)
cmdititle.Position = UDim2.new(-1.1920929e-07, 0, 0, 0)
cmdititle.Size = UDim2.new(0, 300, 0, 29)
cmdititle.Font = Enum.Font.GothamBlack
cmdititle.Text = "Strylix-FE CMDS VIEWER"
cmdititle.TextColor3 = Color3.new(1, 1, 1)
cmdititle.TextSize = 14
 
CMDlist.Name = "CMDlist"
CMDlist.Parent = Unnamed
CMDlist.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
CMDlist.BackgroundTransparency = 0.30000001192093
CMDlist.BorderSizePixel = 0
CMDlist.Position = UDim2.new(0.28193146, 0, 0.0159704965, 0)
CMDlist.Size = UDim2.new(0, 300, 0, 433)
CMDlist.Visible = false
CMDlist.Active = true
CMDlist.Draggable = true
 
cmdstitle.Name = "cmdstitle"
cmdstitle.Parent = CMDlist
cmdstitle.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
cmdstitle.BorderColor3 = Color3.new(1, 1, 1)
cmdstitle.Position = UDim2.new(-1.1920929e-07, 0, 0, 0)
cmdstitle.Size = UDim2.new(0, 300, 0, 29)
cmdstitle.Font = Enum.Font.GothamBlack
cmdstitle.Text = "Strylix-FE CMD LIST"
cmdstitle.TextColor3 = Color3.new(1, 1, 1)
cmdstitle.TextSize = 14
 
configframe.Name = "configframe"
configframe.Parent = Unnamed
configframe.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
configframe.BackgroundTransparency = 1
configframe.BorderSizePixel = 0
configframe.Position = UDim2.new(0.28193146, 0, 0.0159704965, 0)
configframe.Size = UDim2.new(0, 300, 0, 433)
configframe.Active = true
configframe.Draggable = true
configframe.Visible = false
 
configtitle.Name = "configtitle"
configtitle.Parent = configframe
configtitle.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
configtitle.BorderColor3 = Color3.new(1, 1, 1)
configtitle.Position = UDim2.new(-1.1920929e-07, 0, 0, 0)
configtitle.Size = UDim2.new(0, 300, 0, 29)
configtitle.Font = Enum.Font.GothamBlack
configtitle.Text = "Strylix-FE CONFIG"
configtitle.TextColor3 = Color3.new(1, 1, 1)
configtitle.TextSize = 14
 
af2.Name = "af2"
af2.Parent = configframe
af2.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
af2.BackgroundTransparency = 0.30000001192093
af2.BorderSizePixel = 0
af2.Position = UDim2.new(0, 0, 0.0680000037, 0)
af2.Size = UDim2.new(0, 300, 0, 404)
 
osconfigtext.Name = "osconfigtext"
osconfigtext.Parent = configframe
osconfigtext.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
osconfigtext.BorderColor3 = Color3.new(1, 1, 1)
osconfigtext.Position = UDim2.new(0.226666674, 0, 0.129330248, 0)
osconfigtext.Size = UDim2.new(0, 76, 0, 29)
osconfigtext.Font = Enum.Font.GothamBlack
osconfigtext.Text = "Text (Scientific)"
osconfigtext.TextColor3 = Color3.new(1, 1, 1)
 
osconfigtext2.Name = "osconfigtext2"
osconfigtext2.Parent = configframe
osconfigtext2.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
osconfigtext2.BorderColor3 = Color3.new(1, 1, 1)
osconfigtext2.Position = UDim2.new(0.51666671, 0, 0.129330248, 0)
osconfigtext2.Size = UDim2.new(0, 76, 0, 29)
osconfigtext2.Font = Enum.Font.GothamBlack
osconfigtext2.Text = "Text (Simple)"
osconfigtext2.TextColor3 = Color3.new(1, 1, 1)
osconfigtext2.TextSize = 9
 
oscheck2.Name = "oscheck2"
oscheck2.Parent = configframe
oscheck2.BackgroundColor3 = Color3.new(1, 1, 1)
oscheck2.BackgroundTransparency = 1
oscheck2.BorderSizePixel = 0
oscheck2.Position = UDim2.new(0.183333278, 0, 0.221708983, 0)
oscheck2.Size = UDim2.new(0, 190, 0, 19)
oscheck2.Font = Enum.Font.Gotham
oscheck2.Text = "Win32           Windows"
oscheck2.TextColor3 = Color3.new(1, 1, 1)
oscheck2.TextSize = 14
 
oscheck.Name = "oscheck"
oscheck.Parent = configframe
oscheck.BackgroundColor3 = Color3.new(1, 1, 1)
oscheck.BackgroundTransparency = 1
oscheck.BorderSizePixel = 0
oscheck.Position = UDim2.new(0.180000007, 0, 0.0669745803, 0)
oscheck.Size = UDim2.new(0, 190, 0, 30)
oscheck.Font = Enum.Font.GothamBlack
oscheck.Text = "Operating System"
oscheck.TextColor3 = Color3.new(1, 1, 1)
oscheck.TextSize = 14
 
profile.Name = "profile"
profile.Parent = CMDlist
profile.BackgroundColor3 = Color3.new(1, 1, 1)
profile.BackgroundTransparency = 1
profile.BorderSizePixel = 0
profile.Position = UDim2.new(0.0233333334, 0, 0.0877597779, 0)
profile.Size = UDim2.new(0, 286, 0, 388)
profile.Font = Enum.Font.GothamBlack
profile.Text = "The Strylix-FE CMD LIST is currently under construction please navigate to the .LUA file for the pastebin containing them."
profile.TextColor3 = Color3.new(1, 1, 1)
profile.TextScaled = true
profile.TextSize = 14
profile.TextWrapped = true
profile.TextXAlignment = Enum.TextXAlignment.Left
profile.TextYAlignment = Enum.TextYAlignment.Top
 
avatarframe.Name = "avatarframe"
avatarframe.Parent = Unnamed
avatarframe.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
avatarframe.BackgroundTransparency = 0.30000001192093
avatarframe.BorderSizePixel = 0
avatarframe.Position = UDim2.new(0.28193146, 0, 0.0159704965, 0)
avatarframe.Size = UDim2.new(0, 300, 0, 433)
avatarframe.Visible = false
avatarframe.Active = true
avatarframe.Draggable = true
 
gameframe.Name = "gameframe"
gameframe.Parent = Unnamed
gameframe.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
gameframe.BackgroundTransparency = 0.30000001192093
gameframe.BorderSizePixel = 0
gameframe.Position = UDim2.new(0.28193146, 0, 0.0159704965, 0)
gameframe.Size = UDim2.new(0, 300, 0, 433)
gameframe.Visible = false
gameframe.Active = true
gameframe.Draggable = true
 
gametitle.Name = "gametitle"
gametitle.Parent = gameframe
gametitle.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
gametitle.BorderColor3 = Color3.new(1, 1, 1)
gametitle.Size = UDim2.new(0, 300, 0, 29)
gametitle.Font = Enum.Font.GothamBlack
gametitle.Text = "Strylix-FE GAME VIEWER"
gametitle.TextColor3 = Color3.new(1, 1, 1)
gametitle.TextSize = 14
 
fecheck.Name = "fecheck"
fecheck.Parent = gameframe
fecheck.BackgroundColor3 = Color3.new(1, 1, 1)
fecheck.BackgroundTransparency = 1
fecheck.BorderSizePixel = 0
fecheck.Position = UDim2.new(0.183333337, 0, 0.725173175, 0)
fecheck.Size = UDim2.new(0, 190, 0, 19)
fecheck.Font = Enum.Font.Gotham
fecheck.Text = "Filtering:.."
fecheck.TextColor3 = Color3.new(1, 1, 1)
fecheck.TextSize = 14
 
gameimage.Name = "gameimage"
gameimage.Parent = gameframe
gameimage.BackgroundColor3 = Color3.new(1, 1, 1)
gameimage.BackgroundTransparency = 1
gameimage.BorderSizePixel = 0
gameimage.Position = UDim2.new(0.183333337, 0, 0.104622021, 0)
gameimage.Size = UDim2.new(0, 190, 0, 190)
gameimage.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
 
gameview.Name = "gameview"
gameview.Parent = gameframe
gameview.BackgroundColor3 = Color3.new(1, 1, 1)
gameview.BackgroundTransparency = 1
gameview.BorderSizePixel = 0
gameview.Position = UDim2.new(0.183333337, 0, 0.568129301, 0)
gameview.Size = UDim2.new(0, 190, 0, 30)
gameview.Font = Enum.Font.GothamBlack
gameview.Text = "You are playing.."
gameview.TextColor3 = Color3.new(1, 1, 1)
gameview.TextSize = 14
 
gameid.Name = "gameid"
gameid.Parent = gameframe
gameid.BackgroundColor3 = Color3.new(1, 1, 1)
gameid.BackgroundTransparency = 1
gameid.BorderSizePixel = 0
gameid.Position = UDim2.new(0.183333337, 0, 0.637413383, 0)
gameid.Size = UDim2.new(0, 190, 0, 19)
gameid.Font = Enum.Font.Gotham
gameid.Text = "ID of game:.."
gameid.TextColor3 = Color3.new(1, 1, 1)
gameid.TextSize = 14
 
uptime.Name = "uptime"
uptime.Parent = gameframe
uptime.BackgroundColor3 = Color3.new(1, 1, 1)
uptime.BackgroundTransparency = 1
uptime.BorderSizePixel = 0
uptime.Position = UDim2.new(0.183333337, 0, 0.681293309, 0)
uptime.Size = UDim2.new(0, 190, 0, 19)
uptime.Font = Enum.Font.Gotham
uptime.Text = "uptime..workspace.DistributedGameTime"
uptime.TextColor3 = Color3.new(1, 1, 1)
uptime.TextSize = 14
 
creditsgame.Name = "creditsgame"
creditsgame.Parent = gameframe
creditsgame.BackgroundColor3 = Color3.new(1, 1, 1)
creditsgame.BackgroundTransparency = 1
creditsgame.BorderSizePixel = 0
creditsgame.Position = UDim2.new(0.183333337, 0, 0.889145553, 0)
creditsgame.Size = UDim2.new(0, 190, 0, 19)
creditsgame.Font = Enum.Font.GothamBlack
creditsgame.Text = "Made by "..DevCords[1]
creditsgame.TextColor3 = Color3.new(1, 1, 1)
creditsgame.TextSize = 14
 
xconfig.Name = "xconfig"
xconfig.Parent = configtitle
xconfig.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
xconfig.BorderColor3 = Color3.new(1, 1, 1)
xconfig.Position = UDim2.new(0.903333306, 0, 0, 0)
xconfig.Size = UDim2.new(0, 29, 0, 29)
xconfig.Font = Enum.Font.GothamBlack
xconfig.Text = "X"
xconfig.TextColor3 = Color3.new(1, 1, 1)
xconfig.TextSize = 20
xconfig.MouseButton1Down:connect(function()
	configframe:TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, .5, false, function() configframe.Visible = false end)
end)
 
xgameinfo.Name = "xgameinfo"
xgameinfo.Parent = gametitle
xgameinfo.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
xgameinfo.BorderColor3 = Color3.new(1, 1, 1)
xgameinfo.Position = UDim2.new(0.903333306, 0, 0, 0)
xgameinfo.Size = UDim2.new(0, 29, 0, 29)
xgameinfo.Font = Enum.Font.GothamBlack
xgameinfo.Text = "X"
xgameinfo.TextColor3 = Color3.new(1, 1, 1)
xgameinfo.TextSize = 20
xgameinfo.MouseButton1Down:connect(function()
	gameframe:TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, .5, false, function() gameframe.Visible = false end)
end)
 
xlogs.Name = "xlogs"
xlogs.Parent = logstitle
xlogs.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
xlogs.BorderColor3 = Color3.new(1, 1, 1)
xlogs.Position = UDim2.new(0.903333306, 0, 0, 0)
xlogs.Size = UDim2.new(0, 29, 0, 29)
xlogs.Font = Enum.Font.GothamBlack
xlogs.Text = "X"
xlogs.TextColor3 = Color3.new(1, 1, 1)
xlogs.TextSize = 20
xlogs.MouseButton1Down:connect(function()
	logsframe:TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, .5, false, function() logsframe.Visible = false end)
	logsEnabled = false
end)
 
xcmdi.Name = "xcmdi"
xcmdi.Parent = cmdititle
xcmdi.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
xcmdi.BorderColor3 = Color3.new(1, 1, 1)
xcmdi.Position = UDim2.new(0.903333306, 0, 0, 0)
xcmdi.Size = UDim2.new(0, 29, 0, 29)
xcmdi.Font = Enum.Font.GothamBlack
xcmdi.Text = "X"
xcmdi.TextColor3 = Color3.new(1, 1, 1)
xcmdi.TextSize = 20
xcmdi.MouseButton1Down:connect(function()
	cmdiframe:TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, .5, false, function() cmdiframe.Visible = false end)
end)
 
xavatar.Name = "xavatar"
xavatar.Parent = avatartitle
xavatar.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
xavatar.BorderColor3 = Color3.new(1, 1, 1)
xavatar.Position = UDim2.new(0.903333306, 0, 0, 0)
xavatar.Size = UDim2.new(0, 29, 0, 29)
xavatar.Font = Enum.Font.GothamBlack
xavatar.Text = "X"
xavatar.TextColor3 = Color3.new(1, 1, 1)
xavatar.TextSize = 20
xavatar.MouseButton1Down:connect(function()
	avatarframe:TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, .5, false, function() avatarframe.Visible = false end)
end)
 
xcmds.Name = "xcmds"
xcmds.Parent = cmdstitle
xcmds.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
xcmds.BorderColor3 = Color3.new(1, 1, 1)
xcmds.Position = UDim2.new(0.903333306, 0, 0, 0)
xcmds.Size = UDim2.new(0, 29, 0, 29)
xcmds.Font = Enum.Font.GothamBlack
xcmds.Text = "X"
xcmds.TextColor3 = Color3.new(1, 1, 1)
xcmds.TextSize = 20
xcmds.MouseButton1Down:connect(function()
	CMDlist:TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, .5, false, function() CMDlist.Visible = false end)
end)

if getParent ~= game then
	CMDlist:TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, .5, false, function() CMDlist.Visible = false end)
	avatarframe:TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, .5, false, function() avatarframe.Visible = false end)
	logsframe:TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, .5, false, function() logsframe.Visible = false end)
	gameframe:TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, .5, false, function() gameframe.Visible = false end)
	configframe:TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, .5, false, function() configframe.Visible = false end)
	cmdiframe:TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, .5, false, function() cmdiframe.Visible = false end)
end

avatartitle.Name = "avatartitle"
avatartitle.Parent = avatarframe
avatartitle.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
avatartitle.BorderColor3 = Color3.new(1, 1, 1)
avatartitle.Size = UDim2.new(0, 300, 0, 29)
avatartitle.Font = Enum.Font.GothamBlack
avatartitle.Text = "Strylix-FE PROFILE VIEWER"
avatartitle.TextColor3 = Color3.new(1, 1, 1)
avatartitle.TextSize = 14
 
avatarimage.Name = "avatarimage"
avatarimage.Parent = avatarframe
avatarimage.BackgroundColor3 = Color3.new(1, 1, 1)
avatarimage.BackgroundTransparency = 1
avatarimage.BorderSizePixel = 0
avatarimage.Position = UDim2.new(0.183333337, 0, 0.104622021, 0)
avatarimage.Size = UDim2.new(0, 190, 0, 190)
avatarimage.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
 
hs.Name = "hs"
hs.Parent = avatarframe
hs.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
hs.BorderColor3 = Color3.new(1, 1, 1)
hs.Position = UDim2.new(0.183333337, 0, 0.524249375, 0)
hs.Size = UDim2.new(0, 62, 0, 18)
hs.Font = Enum.Font.GothamBlack
hs.Text = "HS"
hs.TextColor3 = Color3.new(1, 1, 1)
hs.TextSize = 14
 
hss.Name = "hs"
hss.Parent = avatarframe
hss.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
hss.BorderColor3 = Color3.new(1, 1, 1)
hss.Position = UDim2.new(0.183333337, 0, 0.524249375, 0)
hss.Size = UDim2.new(0, 62, 0, 18)
hss.Font = Enum.Font.GothamBlack
hss.Text = "HS"
hss.TextColor3 = Color3.new(1, 1, 1)
hss.TextSize = 14
hss.Visible = false
 
at.Name = "at"
at.Parent = avatarframe
at.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
at.BorderColor3 = Color3.new(1, 1, 1)
at.Position = UDim2.new(0.390000045, 0, 0.524249434, 0)
at.Size = UDim2.new(0, 65, 0, 18)
at.Font = Enum.Font.GothamBlack
at.Text = "AT"
at.TextColor3 = Color3.new(1, 1, 1)
at.TextSize = 14
 
ab.Name = "ab"
ab.Parent = avatarframe
ab.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
ab.BorderColor3 = Color3.new(1, 1, 1)
ab.Position = UDim2.new(0.610000014, 0, 0.524249434, 0)
ab.Size = UDim2.new(0, 62, 0, 18)
ab.Font = Enum.Font.GothamBlack
ab.Text = "AB"
ab.TextColor3 = Color3.new(1, 1, 1)
ab.TextSize = 14
 
profileview.Name = "profileview"
profileview.Parent = avatarframe
profileview.BackgroundColor3 = Color3.new(1, 1, 1)
profileview.BackgroundTransparency = 1
profileview.BorderSizePixel = 0
profileview.Position = UDim2.new(0.183333337, 0, 0.568129301, 0)
profileview.Size = UDim2.new(0, 190, 0, 30)
profileview.Font = Enum.Font.GothamBlack
profileview.Text = "target's profile..:"
profileview.TextColor3 = Color3.new(1, 1, 1)
profileview.TextSize = 14
 
accountage.Name = "accountage"
accountage.Parent = avatarframe
accountage.BackgroundColor3 = Color3.new(1, 1, 1)
accountage.BackgroundTransparency = 1
accountage.BorderSizePixel = 0
accountage.Position = UDim2.new(0.183333337, 0, 0.637413383, 0)
accountage.Size = UDim2.new(0, 190, 0, 19)
accountage.Font = Enum.Font.Gotham
accountage.Text = "target.AccountAge"
accountage.TextColor3 = Color3.new(1, 1, 1)
accountage.TextSize = 14
 
userid.Name = "userid"
userid.Parent = avatarframe
userid.BackgroundColor3 = Color3.new(1, 1, 1)
userid.BackgroundTransparency = 1
userid.BorderSizePixel = 0
userid.Position = UDim2.new(0.183333337, 0, 0.681293309, 0)
userid.Size = UDim2.new(0, 190, 0, 19)
userid.Font = Enum.Font.Gotham
userid.Text = "target.UserID"
userid.TextColor3 = Color3.new(1, 1, 1)
userid.TextSize = 14
 
operatingsystem.Name = "operatingsystem"
operatingsystem.Parent = avatarframe
operatingsystem.BackgroundColor3 = Color3.new(1, 1, 1)
operatingsystem.BackgroundTransparency = 1
operatingsystem.BorderSizePixel = 0
operatingsystem.Position = UDim2.new(0.183333337, 0, 0.725173235, 0)
operatingsystem.Size = UDim2.new(0, 190, 0, 19)
operatingsystem.Font = Enum.Font.Gotham
operatingsystem.Text = "target.OperatingSystem"
operatingsystem.TextColor3 = Color3.new(1, 1, 1)
operatingsystem.TextSize = 14
 
vrheadset.Name = "vrheadset"
vrheadset.Parent = avatarframe
vrheadset.BackgroundColor3 = Color3.new(1, 1, 1)
vrheadset.BackgroundTransparency = 1
vrheadset.BorderSizePixel = 0
vrheadset.Position = UDim2.new(0.183333337, 0, 0.769053161, 0)
vrheadset.Size = UDim2.new(0, 190, 0, 19)
vrheadset.Font = Enum.Font.Gotham
vrheadset.Text = "target.VRHeadset"
vrheadset.TextColor3 = Color3.new(1, 1, 1)
vrheadset.TextSize = 14
 
creditsavatar.Name = "creditsavatar"
creditsavatar.Parent = avatarframe
creditsavatar.BackgroundColor3 = Color3.new(1, 1, 1)
creditsavatar.BackgroundTransparency = 1
creditsavatar.BorderSizePixel = 0
creditsavatar.Position = UDim2.new(0.183333337, 0, 0.889145553, 0)
creditsavatar.Size = UDim2.new(0, 190, 0, 19)
creditsavatar.Font = Enum.Font.GothamBlack
creditsavatar.Text = "Made by "..DevCords[1]
creditsavatar.TextColor3 = Color3.new(1, 1, 1)
creditsavatar.TextSize = 14

holder.Name = "holder"
holder.Parent = Unnamed
holder.BackgroundColor3 = Color3.new(1, 1, 1)
holder.BackgroundTransparency = 1
holder.Position = UDim2.new(0, SavedPos.X, 0, SavedPos.Y)
holder.Size = UDim2.new(0, 525, 0, 277)
holder.Active = false

holder.Changed:Connect(function()
	SavedPos = {X = holder.AbsolutePosition.X, Y = holder.AbsolutePosition.Y}
	updatesaves()
end)

HoldTab = Instance.new("Frame",getParent)
TnOT = Instance.new("TextLabel",getParent)
Splitz = Instance.new("Frame",getParent)
T1 = Instance.new("TextLabel",getParent)
XE = Instance.new("TextButton",getParent)
T2 = Instance.new("TextLabel",getParent)
XE_2 = Instance.new("TextButton",getParent)
T4 = Instance.new("TextLabel",getParent)
XE_3 = Instance.new("TextButton",getParent)
T3 = Instance.new("TextLabel",getParent)
XE_4 = Instance.new("TextButton",getParent)
T8 = Instance.new("TextLabel",getParent)
XE_5 = Instance.new("TextButton",getParent)
T6 = Instance.new("TextLabel",getParent)
XE_6 = Instance.new("TextButton",getParent)
T5 = Instance.new("TextLabel",getParent)
XE_7 = Instance.new("TextButton",getParent)
T7 = Instance.new("TextLabel",getParent)
XE_8 = Instance.new("TextButton",getParent)
T9 = Instance.new("TextLabel",getParent)
XE_9 = Instance.new("TextButton",getParent)

HoldTab.Name = "HoldTab"
HoldTab.Parent = Unnamed
HoldTab.Active = true
HoldTab.Draggable = true
HoldTab.BackgroundColor3 = Color3.new(0.219608, 0.219608, 0.219608)
HoldTab.BorderSizePixel = 0
HoldTab.Position = UDim2.new(0.745833397, 0, 0.518735349, 0)
HoldTab.Size = UDim2.new(0, 148, 0, 306)

if TabsOff then HoldTab.Visible = false end

TnOT.Name = "TnOT"
TnOT.Parent = HoldTab
TnOT.BackgroundColor3 = Color3.new(1, 1, 1)
TnOT.BackgroundTransparency = 1
TnOT.BorderSizePixel = 0
TnOT.Position = UDim2.new(-0.00416688668, 0, -0.000872443721, 0)
TnOT.Size = UDim2.new(0, 148, 0, 23)
TnOT.Font = Enum.Font.GothamBold
TnOT.Text = "CMD TABS"
TnOT.TextColor3 = Color3.new(1, 1, 1)
TnOT.TextSize = 20

Splitz.Name = "Splitz"
Splitz.Parent = HoldTab
Splitz.BackgroundColor3 = Color3.new(1, 1, 1)
Splitz.BorderSizePixel = 0
Splitz.Position = UDim2.new(-0.00416660309, 0, 0.074290961, 0)
Splitz.Size = UDim2.new(0, 148, 0, 1)

entry.Name = "entry"
entry.Parent = holder
entry.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
entry.BorderSizePixel = 0
entry.Position = UDim2.new(-0.0152380951, 0, 0.965582669, 0)
entry.Size = UDim2.new(0, 525, 0, 38)
 
user.Name = "user"
user.Parent = entry
user.BackgroundColor3 = Color3.new(1, 1, 1)
user.BackgroundTransparency = 1
user.Position = UDim2.new(-0.0152380941, 0, 0, 0)
user.Size = UDim2.new(0, 137, 0, 36)
user.Font = Enum.Font.Code
user.Text = prompt
user.TextColor3 = Color3.new(1, 0.333333, 0)
user.TextSize = 16
user.TextXAlignment = Enum.TextXAlignment.Right
 
cmd.Name = "cmd"
cmd.Parent = cmdsu
cmd.BackgroundColor3 = Color3.new(1, 1, 1)
cmd.BackgroundTransparency = 1
cmd.BorderSizePixel = 0
cmd.Position = UDim2.new(-0, 0, 0, 0)
cmd.Size = UDim2.new(0, 341, 0, 35)
cmd.Font = Enum.Font.Code
cmd.PlaceholderText = "Enter CMD here"
cmd.Text = ""
cmd.TextWrapped = true
cmd.TextColor3 = Color3.fromRGB(255,255,255)
cmd.PlaceholderColor3 = Color3.fromRGB(255,255,255)
cmd.TextSize = 14
cmd.TextXAlignment = Enum.TextXAlignment.Left
cmd.ClearTextOnFocus = false

cmdsu.Name = "cmdsu"
cmdsu.Parent = entry
cmdsu.BackgroundColor3 = Color3.new(1, 1, 1)
cmdsu.BackgroundTransparency = 1
cmdsu.BorderSizePixel = 0
cmdsu.Position = UDim2.new(0.274285644, 0, 0, 0)
cmdsu.Size = UDim2.new(0, 341, 0, 35)
cmdsu.Font = Enum.Font.Code
cmdsu.Text = ""
cmdsu.TextWrapped = true
cmdsu.TextColor3 = Color3.fromRGB(100,100,100)
cmdsu.TextSize = 14
cmdsu.TextXAlignment = Enum.TextXAlignment.Left

output1.Name = "output1"
output1.Parent = output
output1.BackgroundColor3 = Color3.new(1, 1, 1)
output1.BackgroundTransparency = 1
output1.Position = UDim2.new(0.0157605428, 0, 0.849240005, 0)
output1.Size = UDim2.new(0, 500, 0, 27)
output1.Font = Enum.Font.Code
output1.Text = "Need help? "..cordCode
output1.TextColor3 = Color3.new(0.698039, 0.698039, 0.698039)
output1.TextSize = 16
output1.TextXAlignment = Enum.TextXAlignment.Left
output1.TextWrapped = true
output1.TextTruncate = Enum.TextTruncate.AtEnd

output2.Name = "output2"
output2.Parent = output
output2.BackgroundColor3 = Color3.new(1, 1, 1)
output2.BackgroundTransparency = 1
output2.Position = UDim2.new(0.0157605428, 0, 0.74252063, 0)
output2.Size = UDim2.new(0, 500, 0, 27)
output2.Font = Enum.Font.Code
output2.Text = "Current version: "..ver
output2.TextColor3 = Color3.new(0.698039, 0.698039, 0.698039)
output2.TextSize = 16
output2.TextXAlignment = Enum.TextXAlignment.Left
output2.TextWrapped = true
output2.TextTruncate = Enum.TextTruncate.AtEnd
 
output3.Name = "output3"
output3.Parent = output
output3.BackgroundColor3 = Color3.new(1, 1, 1)
output3.BackgroundTransparency = 1
output3.Position = UDim2.new(0.0157605428, 0, 0.639753819, 0)
output3.Size = UDim2.new(0, 500, 0, 27)
output3.Font = Enum.Font.Code
output3.Text = "Made by "..DevCords[1].." and "..DevCords[2]
output3.TextColor3 = Color3.new(0.698039, 0.698039, 0.698039)
output3.TextSize = 16
output3.TextXAlignment = Enum.TextXAlignment.Left
output3.TextWrapped = true
output3.TextTruncate = Enum.TextTruncate.AtEnd
 
output4.Name = "output4"
output4.Parent = output
output4.BackgroundColor3 = Color3.new(1, 1, 1)
output4.BackgroundTransparency = 1
output4.Position = UDim2.new(0.0157605428, 0, 0.533034444, 0)
output4.Size = UDim2.new(0, 500, 0, 27)
output4.Font = Enum.Font.Code
output4.TextColor3 = Color3.new(0.698039, 0.698039, 0.698039)
output4.TextSize = 16
output4.TextXAlignment = Enum.TextXAlignment.Left
output4.TextWrapped = true
output4.TextTruncate = Enum.TextTruncate.AtEnd
output4.Text = ""
 
output5.Name = "output5"
output5.Parent = output
output5.BackgroundColor3 = Color3.new(1, 1, 1)
output5.BackgroundTransparency = 1
output5.Position = UDim2.new(0.0157605428, 0, 0.430267632, 0)
output5.Size = UDim2.new(0, 500, 0, 27)
output5.Font = Enum.Font.Code
output5.Text = ""
output5.TextColor3 = Color3.new(0.698039, 0.698039, 0.698039)
output5.TextSize = 16
output5.TextXAlignment = Enum.TextXAlignment.Left
output5.TextWrapped = true
output5.TextTruncate = Enum.TextTruncate.AtEnd
 
output6.Name = "output6"
output6.Parent = output
output6.BackgroundColor3 = Color3.new(1, 1, 1)
output6.BackgroundTransparency = 1
output6.Position = UDim2.new(0.0157605428, 0, 0.323548257, 0)
output6.Size = UDim2.new(0, 500, 0, 27)
output6.Font = Enum.Font.Code
output6.Text = ""
output6.TextColor3 = Color3.new(0.698039, 0.698039, 0.698039)
output6.TextSize = 16
output6.TextXAlignment = Enum.TextXAlignment.Left
output6.TextWrapped = true
output6.TextTruncate = Enum.TextTruncate.AtEnd
 
output7.Name = "output7"
output7.Parent = output
output7.BackgroundColor3 = Color3.new(1, 1, 1)
output7.BackgroundTransparency = 1
output7.Position = UDim2.new(0.0157605428, 0, 0.22078146, 0)
output7.Size = UDim2.new(0, 500, 0, 27)
output7.Font = Enum.Font.Code
output7.Text = ""
output7.TextColor3 = Color3.new(0.698039, 0.698039, 0.698039)
output7.TextSize = 16
output7.TextXAlignment = Enum.TextXAlignment.Left
output7.TextWrapped = true
output7.TextTruncate = Enum.TextTruncate.AtEnd
 
output8.Name = "output8"
output8.Parent = output
output8.BackgroundColor3 = Color3.new(1, 1, 1)
output8.BackgroundTransparency = 1
output8.Position = UDim2.new(0.0157605428, 0, 0.114062086, 0)
output8.Size = UDim2.new(0, 500, 0, 27)
output8.Font = Enum.Font.Code
output8.Text = ""
output8.TextColor3 = Color3.new(0.698039, 0.698039, 0.698039)
output8.TextSize = 16
output8.TextXAlignment = Enum.TextXAlignment.Left
output8.TextWrapped = true
output8.TextTruncate = Enum.TextTruncate.AtEnd
 
output9.Name = "output9"
output9.Parent = output
output9.BackgroundColor3 = Color3.new(1, 1, 1)
output9.BackgroundTransparency = 1
output9.Position = UDim2.new(0.0157605428, 0, 0.0112952888, 0)
output9.Size = UDim2.new(0, 500, 0, 27)
output9.Font = Enum.Font.Code
output9.Text = ""
output9.TextColor3 = Color3.new(0.698039, 0.698039, 0.698039)
output9.TextSize = 16
output9.TextXAlignment = Enum.TextXAlignment.Left
output9.TextWrapped = true
output9.TextTruncate = Enum.TextTruncate.AtEnd
 
name.Name = "name"
name.Parent = Unnamed
name.Active = true
name.Draggable = true
name.BackgroundColor3 = Color3.new(0.0823529, 0.0823529, 0.0823529)
name.BorderSizePixel = 0
name.Position = UDim2.new(0.683800638, 0, 0.119778864, 0)
name.Size = UDim2.new(0, 214, 0, 30)
name.Visible = false
 
ehcmdshit.Name = "ehcmdshit"
ehcmdshit.Parent = name
ehcmdshit.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
ehcmdshit.BorderSizePixel = 0
ehcmdshit.Position = UDim2.new(0, 0, 1.00000024, 0)
ehcmdshit.Size = UDim2.new(0, 214, 0, 263)
 
cmdslool.Name = "cmdslool"
cmdslool.Parent = ehcmdshit
cmdslool.BackgroundColor3 = Color3.new(1, 1, 1)
cmdslool.BackgroundTransparency = 1
cmdslool.Position = UDim2.new(0.0420560762, 0, 0.0418250933, 0)
cmdslool.Size = UDim2.new(0, 177, 0, 675)
cmdslool.Font = Enum.Font.Gotham
cmdslool.Text = ""
cmdslool.TextColor3 = Color3.new(1, 1, 1)
cmdslool.TextSize = 13
cmdslool.TextXAlignment = Enum.TextXAlignment.Left
cmdslool.TextYAlignment = Enum.TextYAlignment.Top
 
shitlabeljpeg.Name = "shitlabeljpeg"
shitlabeljpeg.Parent = name
shitlabeljpeg.BackgroundColor3 = Color3.new(1, 1, 1)
shitlabeljpeg.BackgroundTransparency = 1
shitlabeljpeg.BorderSizePixel = 0
shitlabeljpeg.Size = UDim2.new(0, 214, 0, 29)
shitlabeljpeg.Font = Enum.Font.GothamSemibold
shitlabeljpeg.Text = "Commands"
shitlabeljpeg.TextColor3 = Color3.new(1, 1, 1)
shitlabeljpeg.TextSize = 14
 
ScreenGuipoo.Parent = Unnamed

TextButtonpoo.Parent = ScreenGuipoo
TextButtonpoo.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
TextButtonpoo.BorderSizePixel = 0
TextButtonpoo.Position = UDim2.new(0, 0, 0.455743879, 0)
TextButtonpoo.Size = UDim2.new(0, 186, 0, 35)
TextButtonpoo.Font = Enum.Font.SourceSans
TextButtonpoo.Text = "Btools (Off)"
TextButtonpoo.TextColor3 = Color3.new(0.27451, 0.27451, 0.27451)
TextButtonpoo.TextScaled = true
TextButtonpoo.TextSize = 14
TextButtonpoo.TextWrapped = true
TextButtonpoo.Visible = false
 
local On = Instance.new("StringValue", getParent)

On.Parent = TextButtonpoo
On.Value = "Off"
 
-- Scripts

TextButtonpoo.MouseButton1Up:Connect(function()
	if On.Value == "Off" then
		On.Value = "On"
		TextButtonpoo.Text = "Btools (On)"
	else
		On.Value = "Off"
		TextButtonpoo.Text = "Btools (Off)"
	end
end)
 
cmdm.Button1Up:Connect(function()
	if On.Value == "Off" then
	else
		if cmdm.Target.Locked == true then
			cmdm.Target:Destroy()
		else
			cmdm.Target:Destroy()
		end
	end
end)
---------------------------------------|
-- Fly: -------------------------------|
function sFLY(vfly)
	FLYING = false
	speedofthefly = 1
	speedofthevfly = 1
	repeat wait() until cmdlp and cmdlp.Character and cmdlp.Character:FindFirstChild('HumanoidRootPart') and cmdlp.Character:FindFirstChild('Humanoid')
	repeat wait() until cmdm
	local T = cmdlp.Character.HumanoidRootPart
	local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local SPEED = 0
	local function FLY()
		FLYING = true
		local BG = Instance.new('BodyGyro', T)
		local BV = Instance.new('BodyVelocity', T)
		BG.P = 9e4
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe = T.CFrame
		BV.velocity = Vector3.new(0, 0, 0)
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
		spawn(function()
			repeat wait()
			if not vfly then
				cmdlp.Character:FindFirstChild("Humanoid").PlatformStand = true
			end
			if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
				SPEED = 50
			elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
				SPEED = 0
			end
			if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
				BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
				lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
			elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
				BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
			else
				BV.velocity = Vector3.new(0, 0, 0)
			end
			BG.cframe = workspace.CurrentCamera.CoordinateFrame
			until not FLYING
			CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			SPEED = 0
			BG:destroy()
			BV:destroy()
			cmdlp.Character.Humanoid.PlatformStand = false
		end)
	end
	cmdm.KeyDown:connect(function(KEY)
		if KEY:lower() == 'w' then
			if vfly then
				CONTROL.F = speedofthevfly
			else
				CONTROL.F = speedofthefly
			end
		elseif KEY:lower() == 's' then
			if vfly then
				CONTROL.B = - speedofthevfly
			else
				CONTROL.B = - speedofthefly
			end
		elseif KEY:lower() == 'a' then
			if vfly then
				CONTROL.L = - speedofthevfly
			else
				CONTROL.L = - speedofthefly
			end
		elseif KEY:lower() == 'd' then
			if vfly then
				CONTROL.R = speedofthevfly
			else
				CONTROL.R = speedofthefly
			end
		elseif KEY:lower() == 'y' then
			if vfly then
				CONTROL.Q = speedofthevfly*2
			else
				CONTROL.Q = speedofthefly*2
			end
		elseif KEY:lower() == 't' then
			if vfly then
				CONTROL.E = -speedofthevfly*2
			else
				CONTROL.E = -speedofthefly*2
			end
		end
	end)
	cmdm.KeyUp:connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = 0
		elseif KEY:lower() == 's' then
			CONTROL.B = 0
		elseif KEY:lower() == 'a' then
			CONTROL.L = 0
		elseif KEY:lower() == 'd' then
			CONTROL.R = 0
		elseif KEY:lower() == 'y' then
			CONTROL.Q = 0
		elseif KEY:lower() == 't' then
			CONTROL.E = 0
		end
	end)
	FLY()
end
---------------------------------------|
-- Aimbot Whitelist: ------------------|
PlayersWLsystem = {}
--Shit to change
for i,p in pairs(cmdp:GetPlayers()) do 
	PlayersWLsystem[p.Name] = false
end
 --Shit to change
cmdp.PlayerAdded:Connect(function(plr)
	PlayersWLsystem[plr.Name] = false
	for n,p in pairs(Devs) do
		for i,d in pairs(PlayersWLsystem) do
			if p == d then
				p = true
			end
		end
	end
end)
--Shit to change
cmdp.PlayerRemoving:Connect(function(plr)
	for i,a in pairs(PlayersWLsystem) do
		if a == plr.Name then
			table.remove(PlayersWLsystem,i)
		end
	end
end)
if cmdlp.Character then
	cmdlp.Character:FindFirstChildWhichIsA("Humanoid").Died:Connect(function()
		if conFly == true then
			if FLYING == true then
				repeat wait() until cmdlp.Character ~= nil and cmdlp.Character:FindFirstChild('HumanoidRootPart') and cmdlp.Character:FindFirstChild('Humanoid')
				wait(2)
				FLYING = false
				cmdlp.Character.Humanoid.PlatformStand = false 
				sFLY()
				speedofthefly = permflyspeed
			end
		end
		Enabledaimbot = false
		if Clip == false then
			Clip = true
			wait(1)
			Clip = false
		end
	end)
end
cmdlp.CharacterAdded:Connect(function(char)
	wait(2)
	char:FindFirstChildWhichIsA("Humanoid").Died:Connect(function()
		if conFly == true then
			if FLYING == true then
				repeat wait() until cmdlp.Character ~= nil and cmdlp.Character:FindFirstChild('HumanoidRootPart') and cmdlp.Character:FindFirstChild('Humanoid')
				wait(.1)
				FLYING = false
				cmdlp.Character.Humanoid.PlatformStand = false 
				sFLY()
				speedofthefly = permflyspeed
			end
		end
		Enabledaimbot = false
		if Clip == false then
			Clip = true
			wait(1)
			Clip = false
		end
	end)
end)


opxholder = Instance.new("Frame", getParent)
opxviewertitle = Instance.new("TextLabel", getParent)
xoutofopx = Instance.new("TextButton", getParent)
opxscrollholder = Instance.new("Frame", getParent)
opxreferer = Instance.new("TextLabel", getParent)
opxsplitting = Instance.new("Frame", getParent)
opxScrolling = Instance.new("TextLabel", getParent)

opxholder.Name = "opxholder"
opxholder.Parent = Unnamed
opxholder.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
opxholder.BorderSizePixel = 0
opxholder.Position = UDim2.new(0.217357904, 0, 0.208845213, 0)
opxholder.Size = UDim2.new(0, 424, 0, 294)
opxholder.Visible = false
opxholder.Active = true
opxholder.Draggable = true

opxviewertitle.Name = "opxviewertitle"
opxviewertitle.Parent = opxholder
opxviewertitle.BackgroundColor3 = Color3.new(1, 1, 1)
opxviewertitle.BackgroundTransparency = 1
opxviewertitle.Position = UDim2.new(0.264150947, 0, 0, 0)
opxviewertitle.Size = UDim2.new(0, 200, 0, 22)
opxviewertitle.Font = Enum.Font.GothamBold
opxviewertitle.Text = "Strylix-FE OUTPUT-LONGER"
opxviewertitle.TextColor3 = Color3.new(1, 1, 1)
opxviewertitle.TextSize = 14

xoutofopx.Name = "xoutofopx"
xoutofopx.Parent = opxholder
xoutofopx.BackgroundColor3 = Color3.new(1, 1, 1)
xoutofopx.BackgroundTransparency = 1
xoutofopx.Position = UDim2.new(0.948113203, 0, 0, 0)
xoutofopx.Size = UDim2.new(0, 22, 0, 22)
xoutofopx.Font = Enum.Font.GothamBold
xoutofopx.Text = "X"
xoutofopx.TextColor3 = Color3.new(1, 1, 1)
xoutofopx.TextSize = 20
xoutofopx.MouseButton1Down:Connect(function()
	opxholder.Visible = false
end)

opxscrollholder.Name = "opxscrollholder"
opxscrollholder.Parent = opxholder
opxscrollholder.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
opxscrollholder.BorderSizePixel = 0
opxscrollholder.Position = UDim2.new(0.0306603778, 0, 0.0748299286, 0)
opxscrollholder.Size = UDim2.new(0, 397, 0, 232)

opxreferer.Name = "opxreferer"
opxreferer.Parent = opxscrollholder
opxreferer.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
opxreferer.BorderSizePixel = 0
opxreferer.Size = UDim2.new(0, 397, 0, 20)
opxreferer.Font = Enum.Font.Gotham
opxreferer.Text = " Output-Longer"
opxreferer.TextColor3 = Color3.new(1, 1, 1)
opxreferer.TextSize = 14
opxreferer.TextXAlignment = Enum.TextXAlignment.Left

opxsplitting.Name = "splitting"
opxsplitting.Parent = opxscrollholder
opxsplitting.BackgroundColor3 = Color3.new(1, 1, 1)
opxsplitting.BorderColor3 = Color3.new(1, 1, 1)
opxsplitting.Position = UDim2.new(0.0100755664, 0, 0.0892857313, 0)
opxsplitting.Size = UDim2.new(0, 389, 0, 0)

opxScrolling.Name = "opxScrolling"
opxScrolling.Parent = opxscrollholder
opxScrolling.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
opxScrolling.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
opxScrolling.BorderSizePixel = 0
opxScrolling.Position = UDim2.new(0.00986763742, 0, 0.102678575, 0)
opxScrolling.Size = UDim2.new(0, 389, 0, 204)
opxScrolling.TextColor3 = Color3.new(1, 1, 1)
opxScrolling.TextSize = 12
opxScrolling.Font = Enum.Font.Code
opxScrolling.TextXAlignment = Enum.TextXAlignment.Left
opxScrolling.TextYAlignment = Enum.TextYAlignment.Top
opxScrolling.TextWrapped = true
opxScrolling.TextScaled = true

function opxL(title,text)
	opxreferer.Text = " "..title
	opxScrolling.Text = text
	opxholder.Visible = true
end

if AntiCheat.ScriptDetectOff == false then
	if sDetect == true then
		cmdlp.MaximumSimulationRadius = 139
		if sethiddenproperty then
			sethiddenproperty(cmdlp, "SimulationRadius", 139)
		end
	end
end

local statholder = Instance.new("Frame", getParent)
local statviewertitle = Instance.new("TextLabel", getParent)
local xoutofstats = Instance.new("TextButton", getParent)
local statscrollholder = Instance.new("Frame", getParent)
local referer = Instance.new("TextLabel", getParent)
local splitting = Instance.new("Frame", getParent)
local Scrollingstats = Instance.new("ScrollingFrame", getParent)
local Save = Instance.new("TextButton", getParent)

statholder.Name = "statholder"
statholder.Parent = Unnamed
statholder.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
statholder.BorderSizePixel = 0
statholder.Position = UDim2.new(0.217357904, 0, 0.208845213, 0)
statholder.Size = UDim2.new(0, 424, 0, 294)
statholder.Visible = false
statholder.Active = true
statholder.Draggable = true

statviewertitle.Name = "statviewertitle"
statviewertitle.Parent = statholder
statviewertitle.BackgroundColor3 = Color3.new(1, 1, 1)
statviewertitle.BackgroundTransparency = 1
statviewertitle.Position = UDim2.new(0.264150947, 0, 0, 0)
statviewertitle.Size = UDim2.new(0, 200, 0, 22)
statviewertitle.Font = Enum.Font.GothamBold
statviewertitle.Text = "Strylix-FE STATISTICS VIEWER"
statviewertitle.TextColor3 = Color3.new(1, 1, 1)
statviewertitle.TextSize = 14

xoutofstats.Name = "xoutofstats"
xoutofstats.Parent = statholder
xoutofstats.BackgroundColor3 = Color3.new(1, 1, 1)
xoutofstats.BackgroundTransparency = 1
xoutofstats.Position = UDim2.new(0.948113203, 0, 0, 0)
xoutofstats.Size = UDim2.new(0, 22, 0, 22)
xoutofstats.Font = Enum.Font.GothamBold
xoutofstats.Text = "X"
xoutofstats.TextColor3 = Color3.new(1, 1, 1)
xoutofstats.TextSize = 20
xoutofstats.MouseButton1Down:Connect(function()
	statholder.Visible = false
end)

statscrollholder.Name = "statscrollholder"
statscrollholder.Parent = statholder
statscrollholder.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
statscrollholder.BorderSizePixel = 0
statscrollholder.Position = UDim2.new(0.0306603778, 0, 0.0748299286, 0)
statscrollholder.Size = UDim2.new(0, 397, 0, 232)

referer.Name = "referer"
referer.Parent = statscrollholder
referer.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
referer.BorderSizePixel = 0
referer.Size = UDim2.new(0, 397, 0, 20)
referer.Font = Enum.Font.Gotham
referer.Text = " Name | All time"
referer.TextColor3 = Color3.new(1, 1, 1)
referer.TextSize = 14
referer.TextXAlignment = Enum.TextXAlignment.Left

splitting.Name = "splitting"
splitting.Parent = statscrollholder
splitting.BackgroundColor3 = Color3.new(1, 1, 1)
splitting.BorderColor3 = Color3.new(1, 1, 1)
splitting.Position = UDim2.new(0.0100755664, 0, 0.0892857313, 0)
splitting.Size = UDim2.new(0, 389, 0, 0)

Scrollingstats.Name = "Scrollingstats"
Scrollingstats.Parent = statscrollholder
Scrollingstats.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
Scrollingstats.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Scrollingstats.BorderSizePixel = 0
Scrollingstats.Position = UDim2.new(0.00986763742, 0, 0.102678575, 0)
Scrollingstats.Size = UDim2.new(0, 389, 0, 204)
Scrollingstats.ScrollBarThickness = 10

Save.Name = "Save"
Save.Parent = statholder
Save.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
Save.BorderSizePixel = 0
Save.Position = UDim2.new(0.275943398, 0, 0.887755096, 0)
Save.Size = UDim2.new(0, 188, 0, 26)
Save.Font = Enum.Font.GothamBold
Save.Text = "Save as .txt"
Save.TextColor3 = Color3.new(1, 1, 1)
Save.TextSize = 14
Save.MouseButton1Down:Connect(function()
	writestats = "\n"
	for _,v in pairs(CMDStat) do
		if v.T ~= 0 then
			writestats = writestats.."\n"..v.N.." "..v.T
		end
	end
	writefile("Strylix-FE Stats "..math.random(1000)..".txt",tostring(writestats))
end)

function CreateStatLabel(cmd,times,today)
	local sf2 = Scrollingstats
	if #sf2:GetChildren() >= 2546 then
		sf2:ClearAllChildren()
	end
	local alls2 = 0
	for _,v in pairs(sf2:GetChildren()) do
		if v then
			alls2 = v.Size.Y.Offset + alls2
		end
		if not v then
			alls2 = 0
		end
	end
	local tl2 = Instance.new('TextLabel', sf2)
	local il2 = Instance.new('Frame', tl2)
	tl2.Name = cmd
	tl2.ZIndex = 6
	tl2.Text = cmd.." | "..times
	tl2.Size = UDim2.new(0,322,0,50)
	tl2.BackgroundTransparency = 1
	tl2.BorderSizePixel = 0
	tl2.Font = "SourceSansBold"
	tl2.Position = UDim2.new(-1,0,0,alls2)
	tl2.TextTransparency = 1
	tl2.TextScaled = false
	tl2.TextSize = 14
	tl2.TextWrapped = true
	tl2.TextXAlignment = "Left"
	tl2.TextYAlignment = "Top"
	il2.BackgroundTransparency = 1
	il2.BorderSizePixel = 0
	il2.Size = UDim2.new(0,12,1,0)
	il2.Position = UDim2.new(0,316,0,0)
	tl2.TextColor3 = Color3.fromRGB(255,255,255)
	tl2.Size = UDim2.new(0,322,0,tl2.TextBounds.Y)
	sf2.CanvasSize = UDim2.new(0,0,0,alls2+tl2.TextBounds.Y)
	sf2.CanvasPosition = Vector2.new(0,sf2.CanvasPosition.Y+tl2.TextBounds.Y)
	local size22 = sf2.CanvasSize.Y.Offset
	tl2:TweenPosition(UDim2.new(0,3,0,alls2), 'In', 'Quint', 0.5)
	tl2.TextTransparency = 0
end
function autofriendwl(dowhitelistfriends)
	local function iterPageItems(pages)
		return coroutine.wrap(function()
			local pagenum = 1
			while true do
				for _, user in ipairs(pages:GetCurrentPage()) do
					coroutine.yield(user, pagenum)
				end
				if pages.IsFinished then
					break
				end
				pages:AdvanceToNextPageAsync()
				pagenum = pagenum + 1
			end
		end)
	end
	   
	local FP = cmdp:GetFriendsAsync(cmdlp.UserId)
   
	if dowhitelistfriends then
		for user, pageNo in iterPageItems(FP) do
			PlayersWLsystem[user.Username] = true
			for a,e in pairs(Devs) do
				for i,t in pairs(PlayersWLsystem) do
					if t == e then
						t = true
					end
				end
			end
		end
	elseif not dowhitelistfriends then
		for user, pageNo in iterPageItems(FP) do
			for a,e in pairs(Devs) do
				for i,t in pairs(PlayersWLsystem) do
					if t == e then
						t = true
					elseif t == user.Username then
						t = false
					end
				end
			end
		end
	end
end
	   
function Wl(playerrequested,does)
	if does then
		PlayersWLsystem[playerrequested.Name] = true
	elseif not does then
		PlayersWLsystem[playerrequested.Name] = false
		for n,p in pairs(Devs) do
			for i,d in pairs(PlayersWLsystem) do
				if p == d then
					p = true
				end
			end
		end
	end
end
---------------------------------------|
-- Functions: -------------------------|
function findplr(args)
	if args == "me" then
		return cmdlp
	elseif args == "random" then --Shit to change
		return cmdp:GetPlayers()[math.random(1,#cmdp:GetPlayers())]
	elseif args == "using" then
		local vAges = {} --Shit to change
		for _,v in pairs(cmdp:GetPlayers()) do
			if v.OperatingSystem == "Strylix-FE" and v ~= cmdlp then
				vAges[#vAges+1] = v
			end
		end
		return vAges[math.random(1,#vAges)]
	elseif args == "new" then
		local vAges = {} --Shit to change
		for _,v in pairs(cmdp:GetPlayers()) do
			if v.AccountAge < 30 and v ~= cmdlp then
				vAges[#vAges+1] = v
			end
		end
		return vAges[math.random(1,#vAges)]
	elseif args == "old" then
		local vAges = {} --Shit to change
		for _,v in pairs(cmdp:GetPlayers()) do
			if v.AccountAge > 30 and v ~= cmdlp then
				vAges[#vAges+1] = v
			end
		end
		return vAges[math.random(1,#vAges)]
	elseif args == "bacon" then
		local vAges = {} --Shit to change
		for _,v in pairs(cmdp:GetPlayers()) do
			if v.Character:FindFirstChild("Pal Hair") or v.Character:FindFirstChild("Kate Hair") and v ~= cmdlp then
				vAges[#vAges+1] = v
			end
		end
		return vAges[math.random(1,#vAges)]
	elseif args == "friend" then
		local vAges = {} --Shit to change
		for _,v in pairs(cmdp:GetPlayers()) do
			if v:IsFriendsWith(cmdlp.UserId) and v ~= cmdlp then
				vAges[#vAges+1] = v
			end
		end
		return vAges[math.random(1,#vAges)]
	elseif args == "notfriend" then
		local vAges = {} --Shit to change
		for _,v in pairs(cmdp:GetPlayers()) do
			if not v:IsFriendsWith(cmdlp.UserId) and v ~= cmdlp then
				vAges[#vAges+1] = v
			end
		end
		return vAges[math.random(1,#vAges)]
	elseif args == "ally" then
		local vAges = {} --Shit to change
		for _,v in pairs(cmdp:GetPlayers()) do
			if v.Team == cmdlp.Team and v ~= cmdlp then
				vAges[#vAges+1] = v
			end
		end
		return vAges[math.random(1,#vAges)]
	elseif args == "enemy" then
		local vAges = {} --Shit to change
		for _,v in pairs(cmdp:GetPlayers()) do
			if v.Team ~= cmdlp.Team then
				vAges[#vAges+1] = v
			end
		end
		return vAges[math.random(1,#vAges)]
	elseif args == "near" then
		local vAges = {} --Shit to change
		for _,v in pairs(cmdp:GetPlayers()) do
			if v ~= cmdlp then
				local math = (v.Character:FindFirstChild("HumanoidRootPart").Position - cmdlp.Character.HumanoidRootPart.Position).magnitude
				if math < 30 then
					vAges[#vAges+1] = v
				end
			end
		end
		return vAges[math.random(1,#vAges)]
	elseif args == "far" then
		local vAges = {} --Shit to change
		for _,v in pairs(cmdp:GetPlayers()) do
			if v ~= cmdlp then
				local math = (v.Character:FindFirstChild("HumanoidRootPart").Position - cmdlp.Character.HumanoidRootPart.Position).magnitude
				if math > 30 then
					vAges[#vAges+1] = v
				end
			end
		end
		return vAges[math.random(1,#vAges)]
	else --Shit to change
		for _,v in pairs(cmdp:GetPlayers()) do
			if string.find(string.lower(v.Name),string.lower(args)) then
				return v
			end
		end
	end
end
 
function cmdnum(str)
	return tonumber(str) ~= nil
end
function cmd15(plr)
	if plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
		return true
	end
end
osconfigtext.MouseButton1Down:connect(function()
	text1 = true
	text2 = false
	updatesaves()
end)
osconfigtext2.MouseButton1Down:connect(function()
	text2 = true
	text1 = false
	updatesaves()
end)
function cmd6(plr)
	if plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
		return true
	end
end
function x(v)
	if v then
		for _,i in pairs(cmdws:GetDescendants()) do
			if i:IsA("BasePart") and not i.Parent:FindFirstChild("Humanoid") and not i.Parent.Parent:FindFirstChild("Humanoid") then
				i.LocalTransparencyModifier = 0.5
			end
		end
	else
		for _,i in pairs(cmdws:GetDescendants()) do
			if i:IsA("BasePart") and not i.Parent:FindFirstChild("Humanoid") and not i.Parent.Parent:FindFirstChild("Humanoid") then
				i.LocalTransparencyModifier = 0
			end
		end
	end
end
cmdlp.CharacterAdded:connect(function()
	if spawning and sppos ~= nil then
		repeat wait() until cmdlp.Character ~= nil and cmdlp.Character:FindFirstChild('HumanoidRootPart')
		cmdlp.Character.HumanoidRootPart.CFrame = sppos
	end
end)

logsholding2 = Instance.new("Frame", getParent)
logsviewertitle2 = Instance.new("TextLabel", getParent)
xoutoflogs2 = Instance.new("TextButton", getParent)
logsscrollholder2 = Instance.new("Frame", getParent)
refereral2 = Instance.new("TextLabel", getParent)
splittinger2 = Instance.new("Frame", getParent)
Scrollinglogs2 = Instance.new("ScrollingFrame", getParent)
Save22 = Instance.new("TextBox", getParent)

logsholding2.Name = "logsholding2"
logsholding2.Parent = Unnamed
logsholding2.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
logsholding2.BorderSizePixel = 0
logsholding2.Position = UDim2.new(0.217357904, 0, 0.208845213, 0)
logsholding2.Size = UDim2.new(0, 424, 0, 294)
logsholding2.Visible = false
logsholding2.Draggable = true
logsholding2.Active = true

logsviewertitle2.Name = "logsviewertitle2"
logsviewertitle2.Parent = logsholding2
logsviewertitle2.BackgroundColor3 = Color3.new(1, 1, 1)
logsviewertitle2.BackgroundTransparency = 1
logsviewertitle2.Position = UDim2.new(0.264150947, 0, 0, 0)
logsviewertitle2.Size = UDim2.new(0, 200, 0, 22)
logsviewertitle2.Font = Enum.Font.GothamBold
logsviewertitle2.Text = "Strylix-FE SCRIPT CHAT VIEWER"
logsviewertitle2.TextColor3 = Color3.new(1, 1, 1)
logsviewertitle2.TextSize = 14

xoutoflogs2.Name = "xoutoflogs2"
xoutoflogs2.Parent = logsholding2
xoutoflogs2.BackgroundColor3 = Color3.new(1, 1, 1)
xoutoflogs2.BackgroundTransparency = 1
xoutoflogs2.Position = UDim2.new(0.948113203, 0, 0, 0)
xoutoflogs2.Size = UDim2.new(0, 22, 0, 22)
xoutoflogs2.Font = Enum.Font.GothamBold
xoutoflogs2.Text = "X"
xoutoflogs2.TextColor3 = Color3.new(1, 1, 1)
xoutoflogs2.TextSize = 20
xoutoflogs2.MouseButton1Down:Connect(function()
	logsholding2.Visible = false
end)

logsscrollholder2.Name = "logsscrollholder2"
logsscrollholder2.Parent = logsholding2
logsscrollholder2.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
logsscrollholder2.BorderSizePixel = 0
logsscrollholder2.Position = UDim2.new(0.0306603778, 0, 0.0748299286, 0)
logsscrollholder2.Size = UDim2.new(0, 397, 0, 232)

refereral2.Name = "refereral2"
refereral2.Parent = logsscrollholder2
refereral2.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
refereral2.BorderSizePixel = 0
refereral2.Size = UDim2.new(0, 397, 0, 20)
refereral2.Font = Enum.Font.Gotham
refereral2.Text = " Username | Message"
refereral2.TextColor3 = Color3.new(1, 1, 1)
refereral2.TextSize = 14
refereral2.TextXAlignment = Enum.TextXAlignment.Left

splittinger2.Name = "splittinger2"
splittinger2.Parent = logsscrollholder2
splittinger2.BackgroundColor3 = Color3.new(1, 1, 1)
splittinger2.BorderColor3 = Color3.new(1, 1, 1)
splittinger2.Position = UDim2.new(0.0100755664, 0, 0.0892857313, 0)
splittinger2.Size = UDim2.new(0, 389, 0, 0)

Scrollinglogs2.Name = "Scrollinglogs2"
Scrollinglogs2.Parent = logsscrollholder2
Scrollinglogs2.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
Scrollinglogs2.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Scrollinglogs2.BorderSizePixel = 0
Scrollinglogs2.Position = UDim2.new(0.00986763742, 0, 0.102678575, 0)
Scrollinglogs2.Size = UDim2.new(0, 389, 0, 204)
Scrollinglogs2.ScrollBarThickness = 10

Save22.Name = "Save2"
Save22.Parent = logsholding2
Save22.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
Save22.BorderSizePixel = 0
Save22.Position = UDim2.new(0.275943398, 0, 0.887755096, 0)
Save22.Size = UDim2.new(0, 188, 0, 26)
Save22.Font = Enum.Font.GothamBold
Save22.TextScaled = true
Save22.Text = ""
Save22.TextColor3 = Color3.new(1, 1, 1)
Save22.TextSize = 14
Save22.TextScaled = true
Save22.PlaceholderText = "Type here..."
Save22.FocusLost:Connect(function()
	SaveOS = cmdlp.OsPlatform
	cmdlp.OsPlatform = Save22.Text.."nigger"
	Save22.Text = ""
	wait(1)
	cmdlp.OsPlatform = SaveOS
end)


function CreateSCLabel(Prefix, Text)
	local plr = cmdp:GetChildren()
	local sf = Scrollinglogs2
	if #sf:GetChildren() >= 2546 then
		sf:ClearAllChildren()
	end
	local alls = 0
	for _,v in pairs(sf:GetChildren()) do
		if v then
			alls = v.Size.Y.Offset + alls
		end
		if not v then
			alls = 0
		end
	end
	local tl = Instance.new('TextLabel', sf)
	local il = Instance.new('Frame', tl)
	tl.Name = Prefix
	tl.ZIndex = 6
	tl.Text = "["..Prefix.."] "..Text
	tl.Size = UDim2.new(0,322,0,60)
	tl.BackgroundTransparency = 1
	tl.BorderSizePixel = 0
	tl.Font = "SourceSansBold"
	tl.Position = UDim2.new(-1,0,0,alls)
	tl.TextTransparency = 1
	tl.TextScaled = false
	tl.TextSize = 14
	tl.TextWrapped = true
	tl.TextXAlignment = "Left"
	tl.TextYAlignment = "Top"
	il.BackgroundTransparency = 1
	il.BorderSizePixel = 0
	il.Size = UDim2.new(0,12,1,0)
	il.Position = UDim2.new(0,316,0,0)
	tl.TextColor3 = Color3.fromRGB(255,255,255)
	tl.Size = UDim2.new(0,322,0,tl.TextBounds.Y)
	sf.CanvasSize = UDim2.new(0,0,0,alls+tl.TextBounds.Y)
	sf.CanvasPosition = Vector2.new(0,sf.CanvasPosition.Y+tl.TextBounds.Y)
	local size2 = sf.CanvasSize.Y.Offset
	game:GetService("TweenService"):Create(tl, TweenInfo.new(.5, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {Position = UDim2.new(0,3,0,alls)}):Play()
	for i = 0,50 do
		game:GetService("RunService").Heartbeat:Wait()
		tl.TextTransparency = tl.TextTransparency - 0.05
	end
	tl.TextTransparency = 0
end

logsholding = Instance.new("Frame", getParent)
logsviewertitle = Instance.new("TextLabel", getParent)
xoutoflogs = Instance.new("TextButton", getParent)
logsscrollholder = Instance.new("Frame", getParent)
refereral = Instance.new("TextLabel", getParent)
splittinger = Instance.new("Frame", getParent)
Scrollinglogs = Instance.new("ScrollingFrame", getParent)
Save2 = Instance.new("TextButton", getParent)

logsholding.Name = "logsholding"
logsholding.Parent = Unnamed
logsholding.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
logsholding.BorderSizePixel = 0
logsholding.Position = UDim2.new(0.217357904, 0, 0.208845213, 0)
logsholding.Size = UDim2.new(0, 424, 0, 294)
logsholding.Visible = false
logsholding.Draggable = true
logsholding.Active = true

logsviewertitle.Name = "logsviewertitle"
logsviewertitle.Parent = logsholding
logsviewertitle.BackgroundColor3 = Color3.new(1, 1, 1)
logsviewertitle.BackgroundTransparency = 1
logsviewertitle.Position = UDim2.new(0.264150947, 0, 0, 0)
logsviewertitle.Size = UDim2.new(0, 200, 0, 22)
logsviewertitle.Font = Enum.Font.GothamBold
logsviewertitle.Text = "Strylix-FE LOGS VIEWER"
logsviewertitle.TextColor3 = Color3.new(1, 1, 1)
logsviewertitle.TextSize = 14

xoutoflogs.Name = "xoutoflogs"
xoutoflogs.Parent = logsholding
xoutoflogs.BackgroundColor3 = Color3.new(1, 1, 1)
xoutoflogs.BackgroundTransparency = 1
xoutoflogs.Position = UDim2.new(0.948113203, 0, 0, 0)
xoutoflogs.Size = UDim2.new(0, 22, 0, 22)
xoutoflogs.Font = Enum.Font.GothamBold
xoutoflogs.Text = "X"
xoutoflogs.TextColor3 = Color3.new(1, 1, 1)
xoutoflogs.TextSize = 20
xoutoflogs.MouseButton1Down:Connect(function()
	logsholding.Visible = false
end)

logsscrollholder.Name = "logsscrollholder"
logsscrollholder.Parent = logsholding
logsscrollholder.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
logsscrollholder.BorderSizePixel = 0
logsscrollholder.Position = UDim2.new(0.0306603778, 0, 0.0748299286, 0)
logsscrollholder.Size = UDim2.new(0, 397, 0, 232)

refereral.Name = "refereral"
refereral.Parent = logsscrollholder
refereral.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
refereral.BorderSizePixel = 0
refereral.Size = UDim2.new(0, 397, 0, 20)
refereral.Font = Enum.Font.Gotham
refereral.Text = " Username | Message"
refereral.TextColor3 = Color3.new(1, 1, 1)
refereral.TextSize = 14
refereral.TextXAlignment = Enum.TextXAlignment.Left

splittinger.Name = "splittinger"
splittinger.Parent = logsscrollholder
splittinger.BackgroundColor3 = Color3.new(1, 1, 1)
splittinger.BorderColor3 = Color3.new(1, 1, 1)
splittinger.Position = UDim2.new(0.0100755664, 0, 0.0892857313, 0)
splittinger.Size = UDim2.new(0, 389, 0, 0)

Scrollinglogs.Name = "Scrollinglogs"
Scrollinglogs.Parent = logsscrollholder
Scrollinglogs.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
Scrollinglogs.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Scrollinglogs.BorderSizePixel = 0
Scrollinglogs.Position = UDim2.new(0.00986763742, 0, 0.102678575, 0)
Scrollinglogs.Size = UDim2.new(0, 389, 0, 204)
Scrollinglogs.ScrollBarThickness = 10

Save2.Name = "Save"
Save2.Parent = logsholding
Save2.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
Save2.BorderSizePixel = 0
Save2.Position = UDim2.new(0.275943398, 0, 0.887755096, 0)
Save2.Size = UDim2.new(0, 188, 0, 26)
Save2.Font = Enum.Font.GothamBold
Save2.Text = "Save as .txt"
Save2.TextColor3 = Color3.new(1, 1, 1)
Save2.TextSize = 14
Save2.MouseButton1Down:Connect(function()
	writestats2 = "\n"
	for _,v in pairs(Scrollinglogs:GetChildren()) do
		writestats2 = writestats2.."\n"..v.Text
	end
	writefile("Strylix-FE Logs "..math.random(1000)..".txt",tostring(writestats2))
end)

function CreateLabel(Name, Text)
	local plr = cmdp:GetChildren()
	local sf = Scrollinglogs
	if #sf:GetChildren() >= 2546 then
		sf:ClearAllChildren()
	end
	local alls = 0
	for _,v in pairs(sf:GetChildren()) do
		if v then
			alls = v.Size.Y.Offset + alls
		end
		if not v then
			alls = 0
		end
	end
	local tl = Instance.new('TextLabel', sf)
	local il = Instance.new('Frame', tl)
	tl.Name = Name
	tl.ZIndex = 6
	tl.Text = "["..Name.."]  | "..Text
	tl.Size = UDim2.new(0,322,0,60)
	tl.BackgroundTransparency = 1
	tl.BorderSizePixel = 0
	tl.Font = "SourceSansBold"
	tl.Position = UDim2.new(-1,0,0,alls)
	tl.TextTransparency = 1
	tl.TextScaled = false
	tl.TextSize = 14
	tl.TextWrapped = true
	tl.TextXAlignment = "Left"
	tl.TextYAlignment = "Top"
	il.BackgroundTransparency = 1
	il.BorderSizePixel = 0
	il.Size = UDim2.new(0,12,1,0)
	il.Position = UDim2.new(0,316,0,0)
	tl.TextColor3 = Color3.fromRGB(255,255,255)
	tl.Size = UDim2.new(0,322,0,tl.TextBounds.Y)
	sf.CanvasSize = UDim2.new(0,0,0,alls+tl.TextBounds.Y)
	sf.CanvasPosition = Vector2.new(0,sf.CanvasPosition.Y+tl.TextBounds.Y)
	local size2 = sf.CanvasSize.Y.Offset
	tl:TweenPosition(UDim2.new(0,3,0,alls), 'In', 'Quint', 0.5)
	for i = 0,50 do 
		wait(0.05)
		tl.TextTransparency = tl.TextTransparency - 0.05
	end
	tl.TextTransparency = 0
end
function CreateADLabel(name,rank)
	local sf3 = Scrollingad
	if #sf3:GetChildren() >= 2546 then
		sf3:ClearAllChildren()
	end
	local alls3 = 0
	for _,v in pairs(sf3:GetChildren()) do
		if v then
			alls3 = v.Size.Y.Offset + alls3
		end
		if not v then
			alls3 = 0
		end
	end
	local tl3 = Instance.new('TextLabel', sf3)
	local il3 = Instance.new('Frame', tl3)
	tl3.Name = name
	tl3.ZIndex = 6
	tl3.Text = name.." | "..rank
	tl3.Size = UDim2.new(0,322,0,50)
	tl3.BackgroundTransparency = 1
	tl3.BorderSizePixel = 0
	tl3.Font = "SourceSansBold"
	tl3.Position = UDim2.new(-1,0,0,alls3)
	tl3.TextTransparency = 1
	tl3.TextScaled = false
	tl3.TextSize = 14
	tl3.TextWrapped = true
	tl3.TextXAlignment = "Left"
	tl3.TextYAlignment = "Top"
	il3.BackgroundTransparency = 1
	il3.BorderSizePixel = 0
	il3.Size = UDim2.new(0,12,1,0)
	il3.Position = UDim2.new(0,316,0,0)
	tl3.TextColor3 = Color3.fromRGB(255,255,255)
	tl3.Size = UDim2.new(0,322,0,tl3.TextBounds.Y)
	sf3.CanvasSize = UDim2.new(0,0,0,alls3+tl3.TextBounds.Y)
	sf3.CanvasPosition = Vector2.new(0,sf3.CanvasPosition.Y+tl3.TextBounds.Y)
	local size33 = sf3.CanvasSize.Y.Offset
	tl3:TweenPosition(UDim2.new(0,3,0,alls3), 'In', 'Quint', 0.5)
	tl3.TextTransparency = 0
end
local CMDN = {}
local CS = {}
table.insert(CMDN, {N = "prefix", A = {""}, CMD = "1,prefix,,Shows you the chat prefix."})
table.insert(CMDN, {N = "promptnew", A = {""}, CMD = "2,promptnew,(str/name),Changes your prompt text to something else."})
table.insert(CMDN, {N = "prefixnew", A = {""}, CMD = "3,prefixnew,(str),Changes chat prefix."})
table.insert(CMDN, {N = "hotkeyopen", A = {""}, CMD = "4,hotkeyopen,(str),Changes your hotkey for opening the GUI."})
table.insert(CMDN, {N = "hotkeyoutput", A = {""}, CMD = "5,hotkeyoutput,(str),Changes your hotkey for opening the output GUI."})
table.insert(CMDN, {N = "hotkeyfocus", A = {""}, CMD = "6,hotkeyfocus,(str),Changes your hotkey for focusing on the cmdbar."})
table.insert(CMDN, {N = "entercmdnew", A = {""}, CMD = "7,entercmdnew,(str),Adds a new command to the list of commands that are activated when you first execute Strylix-FE."})
table.insert(CMDN, {N = "entercmds", A = {""}, CMD = "8,entercmds,,Allows you to add entercmds."})
table.insert(CMDN, {N = "entercmddel", A = {""}, CMD = "9,entercmddel,(str),Deletes a command in the entercmds list."})
table.insert(CMDN, {N = "entercmdsclr", A = {""}, CMD = "10,entercmdsclr,,Clears the entercmds."})
table.insert(CMDN, {N = "eightballpu", A = {"8ballpu"}, CMD = "11,eightballpu/8ballpu,(str),Ask 8Ball a question publicly."})
table.insert(CMDN, {N = "eightballpr", A = {"8ballpr"}, CMD = "12,eightballpr/8ballpr,(str),Ask 8Ball a question privately."})
table.insert(CMDN, {N = "friendjoin", A = {"fjoin"}, CMD = "13,friendjoin/fjoin,(full plr name),Joins your friends game."})
table.insert(CMDN, {N = "support", A = {""}, CMD = "14,support/help,(CB/COPY),If you need support while using Strylix-FE use this command!"})
table.insert(CMDN, {N = "commands", A = {"cmds","help"}, CMD = "15,cmds/commands,,Shows this page."})
table.insert(CMDN, {N = "config", A = {"settings"}, CMD = "16,config/settings,,Configure Strylix-FE."})
table.insert(CMDN, {N = "advertise", A = {"adv"}, CMD = "17,adv/advertise,,Help spread Strylix-FE by doing this cmd in game! (<3)"})
table.insert(CMDN, {N = "unadvertise", A = {"unadv"}, CMD = "18,unadv/unadvertise,,()"})
table.insert(CMDN, {N = "version", A = {"ver","v"}, CMD = "19,version/ver/v,,Shows version."})
table.insert(CMDN, {N = "nextupdate", A = {""}, CMD = "20,nextupdate,,Shows you when the next update may be coming out."})
table.insert(CMDN, {N = "walkspeed", A = {"ws"}, CMD = "21,ws/walkspeed,(num),Sets your characters walkspeed."})
table.insert(CMDN, {N = "defaultwalkspeed", A = {"dws"}, CMD = "22,dws/defaultwalkspeed,,()"})
table.insert(CMDN, {N = "jumppower", A = {"jp"}, CMD = "23,jp/jumppower,(num),Sets your characters jumppower."})
table.insert(CMDN, {N = "defaultjumppower", A = {"djp"}, CMD = "24,djp/deafultjumppower,,()"})
table.insert(CMDN, {N = "hipheight", A = {"hh"}, CMD = "25,hh/hipheight,(num),Sets your characters hipheight."})
table.insert(CMDN, {N = "defaulthipheight", A = {"dhh"}, CMD = "26,dhh/defaulthipheight,,()"})
table.insert(CMDN, {N = "gravity", A = {"grav"}, CMD = "27,gravity/grav,(num),Sets your characters gravity."})
table.insert(CMDN, {N = "defaultgravity", A = {"dgrav"}, CMD = "28,dgrav/defaultgravity,,()"})
table.insert(CMDN, {N = "bodypositionwalkspeed", A = {"bpws"}, CMD = "29,bpws/bodypositionwalkspeed,(num),Modifies your characters bodyposition walkspeed. (R6 ONLY) (AC BYPASS)"})
table.insert(CMDN, {N = "halve", A = {"decapitate"}, CMD = "30,halve/decapitate,,Splits your character into two. (R15 ONLY)"})
table.insert(CMDN, {N = "removehands", A = {"rhands"}, CMD = "31,rhands/removehands,,Removes your characters hands. (R15 ONLY)"})
table.insert(CMDN, {N = "removefeet", A = {"rfeet"}, CMD = "32,rfeet/removefeet,,Removes your characters feet. (R15 ONLY)"})
table.insert(CMDN, {N = "removeleftleg", A = {"rlleg"}, CMD = "33,rlleg/removeleftleg,,Removes your left leg."})
table.insert(CMDN, {N = "removerightleg", A = {"rrleg"}, CMD = "34,rrleg/removerightleg,,Removes your right leg."})
table.insert(CMDN, {N = "removeleftarm", A = {"rlarm"}, CMD = "35,rlarm/removeleftarm,,Removes your left arm."})
table.insert(CMDN, {N = "removerightarm", A = {"rrarm"}, CMD = "36,rrarm/removerightarm,,Removes your right arm."})
table.insert(CMDN, {N = "removearms", A = {"rarms"}, CMD = "37,rarms/removearms,,Removes your characters arms."})
table.insert(CMDN, {N = "removelegs", A = {"rlegs"}, CMD = "38,rlegs/removelegs,,Removes your characters legs."})
table.insert(CMDN, {N = "removelimbs", A = {"rlimbs"}, CMD = "39,rlimbs/removelimbs,,Removes your characters limbs."})
table.insert(CMDN, {N = "removeanim", A = {"ranim"}, CMD = "40,ranim/removeanim,,Removes your characters animations."})
table.insert(CMDN, {N = "restoreanim", A = {"reanim"}, CMD = "41,reanim/restoreanim,,Restores your characters animations."})
table.insert(CMDN, {N = "removeshirt", A = {"rshirt"}, CMD = "42,rshirt/removeshirt,,Removes your characters shirt."})
table.insert(CMDN, {N = "removetshirt", A = {"rtshirt"}, CMD = "43,rtshirt/removetshirt,,Removes your characters tshirt"})
table.insert(CMDN, {N = "removepants", A = {"rpants"}, CMD = "44,rpants/removepants,,Removes your characters pants."})
table.insert(CMDN, {N = "removeclothes", A = {"naked","rclothes"}, CMD = "45,naked/rclothes/removeclothes,,Removes your character clothes."})
table.insert(CMDN, {N = "removehatsmesh", A = {"rhatsmesh","rhm"}, CMD = "46,rhatsmesh/rhm/removehatsmesh,,Removes your characters hat meshes."})
table.insert(CMDN, {N = "removegearmesh", A = {"rgearmesh","rgm","rtoolmesh","rtm","removetoolmesh"}, CMD = "47,rgearmesh/rgm/rtoolmesh/rtm/removetoolmesh/removegearmesh,,Removes your current characters gear mesh."})
table.insert(CMDN, {N = "changelog", A = {"clog"}, CMD = "48,changelog/clog,,Opens changelog."})
table.insert(CMDN, {N = "drophats", A = {""}, CMD = "49,drophats,,Drops your characters hats on the map."})
table.insert(CMDN, {N = "dropgears", A = {"droptools"}, CMD = "50,dropgears/droptools,,Drops your characters gears on the map."})
table.insert(CMDN, {N = "hatspam", A = {""}, CMD = "51,hatspam,,Spams your hats onto the map."})
table.insert(CMDN, {N = "unhatspam", A = {""}, CMD = "52,unhatspam,,()"})
table.insert(CMDN, {N = "removeface", A = {"rface"}, CMD = "53,rface/removeface,,Removes your characters face."})
table.insert(CMDN, {N = "removehats", A = {"rhats"}, CMD = "54,rhats/removehats,,Removes your characters hats."})
table.insert(CMDN, {N = "rheadmesh", A = {"rhdm"}, CMD = "55,rheadmesh/rhdm,,Removes the mesh of your characters head."})
table.insert(CMDN, {N = "equip", A = {"equipall"}, CMD = "56,equip/equipall,,Equips all gears in your characters backpack."})
table.insert(CMDN, {N = "banlands", A = {""}, CMD = "57,banlands,(plr),Teleports player to banlands (NEED A HAT AND TOOL).", ARG = "Player"})
table.insert(CMDN, {N = "flip", A = {""}, CMD = "58,flip,,Allows your character to flip."})
table.insert(CMDN, {N = "unflip", A = {""}, CMD = "59,unflip,,()"})
table.insert(CMDN, {N = "doubleflip", A = {"duoflip"}, CMD = "60,duoflip/doubleflip,,Allows your character to double flip."})
table.insert(CMDN, {N = "undoubleflip", A = {"unduoflip"}, CMD = "61,unduoflip/undoubleflip,,()"})
table.insert(CMDN, {N = "glue", A = {"stick"}, CMD = "62,glue/stick,(plr),Sticks your character to the target.", ARG = "Player"})
table.insert(CMDN, {N = "unglue", A = {"unstick"}, CMD = "63,unglue/unstick,,()"})
table.insert(CMDN, {N = "nugget", A = {""}, CMD = "64,nugget,,Makes your character look like a nugget."})
table.insert(CMDN, {N = "cartwheel", A = {""}, CMD = "65,cartwheel,,Makes your character do a cartwheel."})
table.insert(CMDN, {N = "uncartwheel", A = {""}, CMD = "66,uncartwheel,,()"})
table.insert(CMDN, {N = "seizure", A = {"juicewrld"}, CMD = "67,seizure/juicewrld,,Makes your character have a seizure."})
table.insert(CMDN, {N = "unseizure", A = {"unjuicewrld"}, CMD = "68,unseizure/unjuicewrld,,()"})
table.insert(CMDN, {N = "fling", A = {""}, CMD = "69,fling,(plr),Flings player. (COLLISION ONLY)", ARG = "Player"})
table.insert(CMDN, {N = "invisiblefling", A = {"invisfling","ifling"}, CMD = "70,invisiblefling/invisfling/ifling,,Invisibly flings players. (COLLISION ONLY)"})
table.insert(CMDN, {N = "freefling", A = {"ffling"}, CMD = "71,freefling/ffling,,Flings players. (COLLISION ONLY)"})
table.insert(CMDN, {N = "unfling", A = {""}, CMD = "72,unfling,,()"})
table.insert(CMDN, {N = "cleanfling", A = {"cfling"}, CMD = "73,cleanfling/cfling,,Flings players in an undetected way. (COLLISION ONLY)"})
table.insert(CMDN, {N = "lag", A = {"stutter"}, CMD = "74,lag/stutter,,Appears like your character is stuttering or lagging."})
table.insert(CMDN, {N = "unlag", A = {"unstutter"}, CMD = "75,unlag/unstutter,,()"})
table.insert(CMDN, {N = "annoy", A = {""}, CMD = "76,annoy,(plr),Annoys the player.", ARG = "Player"})
table.insert(CMDN, {N = "unannoy", A = {""}, CMD = "77,unannoy,,()"})
table.insert(CMDN, {N = "weaken", A = {"weak"}, CMD = "78,weak/weaken,,Weakens your character."})
table.insert(CMDN, {N = "strengthen", A = {"strong"}, CMD = "79,strong/strengthen,,Strengthens your character."})
table.insert(CMDN, {N = "noresult", A = {"		","  ",""}, CMD = "80,,,Saved CMD NUM"})
table.insert(CMDN, {N = "unweak", A = {"unstrong"}, CMD = "81,unweak/unstrong,,()"})
table.insert(CMDN, {N = "plague", A = {""}, CMD = "82,plague,(name),Starts a plague."})
table.insert(CMDN, {N = "parts", A = {""}, CMD = "83,parts,(name),Lists parts."})
table.insert(CMDN, {N = "bringunanchored", A = {"buna"}, CMD = "84,bringunanchored/buna,,Brings unachored parts (works best with .loop).", ARG = "Player"})
table.insert(CMDN, {N = "listunanchored", A = {"luna"}, CMD = "85,listunanchored/luna,,Lists unanchored parts."})
table.insert(CMDN, {N = "credits", A = {""}, CMD = "86,credits,,Lists credits for Strylix-FE"})
table.insert(CMDN, {N = "animation", A = {"anim"}, CMD = "87,anim/animation,(num1) (num2),Plays the AnimationID you state in num1 and speeds it up in num2. (R6 ONLY)"})
table.insert(CMDN, {N = "unanimation", A = {"unanim"}, CMD = "88,unanim/unanimation,,Stops all animations."})
table.insert(CMDN, {N = "uninsane", A = {"unspas"}, CMD = "89,uninsane/unspas,,()"})
table.insert(CMDN, {N = "monstermash", A = {"mashdance"}, CMD = "90,monstermash/mashdance,,Monster mashes your character. (R6 ONLY)"})
table.insert(CMDN, {N = "ragdoll", A = {"stun"}, CMD = "91,ragdoll/stun,,Stuns your character."})
table.insert(CMDN, {N = "unragdoll", A = {"unstun"}, CMD = "92,unragdoll/unstun,,()"})
table.insert(CMDN, {N = "animpack", A = {""}, CMD = "93,animpack,(animation),Loads the animation you state; toy/ pirate/ knight/ astronaut/ vampire/ robot/ levitation/ bubbly/ werewolf/ stylish/ mage/ cartoony/ zombie/ superhero/ ninja/ elder/ old. (R15 ONLY)"})
table.insert(CMDN, {N = "spin", A = {"beybladeletitrip"}, CMD = "94,spin/baybladeletitrip,(num),Spins your character around like a beyblade."})
table.insert(CMDN, {N = "unspin", A = {""}, CMD = "95,unspin,,()"})
table.insert(CMDN, {N = "hatspin", A = {""}, CMD = "96,hatspin,,Spins your characters hats around your head."})
table.insert(CMDN, {N = "unhatspin", A = {""}, CMD = "97,unhatspin,,()"})
table.insert(CMDN, {N = "facefuck", A = {"facerape"}, CMD = "98,facefuck/facerape,(plr),Sits your character in front of their face to create the illusion of facefucking.", ARG = "Player"})
table.insert(CMDN, {N = "unfacefuck", A = {"unfacerape"}, CMD = "99,unfacefuck/unfacerape,,()"})
table.insert(CMDN, {N = "facefuckanim", A = {"facerapeanim"}, CMD = "100,facefuckanim/facerapeanim,(plr),Places your character in front of their face with an animation to create the illusion of facefucking.", ARG = "Player"})
table.insert(CMDN, {N = "unfacefuckanim", A = {"unfacerapeanim"}, CMD = "101,unfacefuckanim/unfacerapeanim,,()"})
table.insert(CMDN, {N = "piggyback", A = {"ride"}, CMD = "102,piggyback/ride,(plr),Sits your character behind their head to create the illusion of a piggy back.", ARG = "Player"})
table.insert(CMDN, {N = "unpiggyback", A = {"unride"}, CMD = "103,unpiggyback/unride,,()"})
table.insert(CMDN, {N = "fuck", A = {"rape"}, CMD = "104,fuck/rape,(plr),Rapes player you stated using an animation.", ARG = "Player"})
table.insert(CMDN, {N = "unfuck", A = {"unrape"}, CMD = "105,unfuck/unrape,,()"})
table.insert(CMDN, {N = "follow", A = {"stalk"}, CMD = "106,follow/stalk,(plr),Follows player you stated at a safe distance.", ARG = "Player"})
table.insert(CMDN, {N = "unfollow", A = {"unstalk"}, CMD = "107,unfollow/unstalk,,()"})
table.insert(CMDN, {N = "oldroblox", A = {"oldrblx"}, CMD = "108,oldrblx/oldroblox,,Makes your game look like old roblox."})
table.insert(CMDN, {N = "savegame", A = {"sg"}, CMD = "109,savegame/sg,,Saves the current game instance to your workspace folder. (SYNAPSE ONLY)"})
table.insert(CMDN, {N = "btools", A = {"bt"}, CMD = "110,btools/bt,,Gives you building tools. (CLIENT SIDED)"})
table.insert(CMDN, {N = "fex", A = {"f3x"}, CMD = "111,f3x/fex,,Gives you advanced building tools. (CLIENT SIDED) (GUI)"})
table.insert(CMDN, {N = "remotespy", A = {"sspy"}, CMD = "112,sspy/remotespy,,Opens remote spy. (GUI)"})
table.insert(CMDN, {N = "badger", A = {""}, CMD = "113,badger,,Opens badger V2. (GUI) (<3)"})
table.insert(CMDN, {N = "explorer", A = {"dex"}, CMD = "114,explorer/dex,,Spies workspace. (GUI)"})
table.insert(CMDN, {N = "removeeffects", A = {"reffects"}, CMD = "115,reffects/removeeffects,,Removes all effects in the game. (CLIENT SIDED)"})
table.insert(CMDN, {N = "removeseats", A = {"rseats"}, CMD = "116,rseats/removeseats,,Removes all seats in game. (CLIENT SIDED)"})
table.insert(CMDN, {N = "removelocalscripts", A = {"rls"}, CMD = "117,removelocalscripts/rls,,Removes all local scripts, useful for bypassing anti exploits. (CLIENT SIDED)"})
table.insert(CMDN, {N = "xray", A = {"x"}, CMD = "118,xray/x,,Changes all items to 0.5 Transparency."})
table.insert(CMDN, {N = "unxray", A = {"unx"}, CMD = "119,unxray/unx,,()"})
table.insert(CMDN, {N = "lockws", A = {"lws"}, CMD = "120,lockws/lws,,Locks all of workspace."})
table.insert(CMDN, {N = "unlockws", A = {"uws"}, CMD = "121,unlockws/uws,,Unlocks all of workspace."})
table.insert(CMDN, {N = "day", A = {"time14"}, CMD = "122,day/time14,,Turns the skybox time to day (18:00). (CLIENT SIDED)"})
table.insert(CMDN, {N = "night", A = {"time0"}, CMD = "123,night/time0,,Turns the skybox time to night (00:00). (CLIENT SIDED)"})
table.insert(CMDN, {N = "removesky", A = {"rsky"}, CMD = "124,rsky/removesky,,Removes the games skybox. (CLIENT SIDED)"})
table.insert(CMDN, {N = "restorelighting", A = {"relighting"}, CMD = "125,relighting/restorelighting,,Restores games lighting. (CLIENT SIDED)"})
table.insert(CMDN, {N = "restorecamera", A = {"recamera"}, CMD = "126,recamera/restorecamera,,Restores your characters camera."})
table.insert(CMDN, {N = "unscramble", A = {""}, CMD = "127,unscramble,,Unscrambles games variable names."})
table.insert(CMDN, {N = "removeinviswalls", A = {"riw"}, CMD = "128,riw/removeinviswalls,,Removes invisible walls in game. (CLIENT SIDED)"})
table.insert(CMDN, {N = "gameinfo", A = {"placeinfo"}, CMD = "129,gameinfo/placeinfo,,Provides various information on the game you are playing in."})
table.insert(CMDN, {N = "closegameinfo", A = {""}, CMD = "130,closegameinfo,,()"})
table.insert(CMDN, {N = "math", A = {"calc","calculate"}, CMD = "131,math/calc/calculate,(num) (+,-,/,*) (num) (CB/COPY),Multiplicates numbers together."})
table.insert(CMDN, {N = "hidechat", A = {""}, CMD = "132,hidechat,,Turns off chat."})
table.insert(CMDN, {N = "showchat", A = {""}, CMD = "133,showchat,,Turns on chat."})
table.insert(CMDN, {N = "switchteam", A = {""}, CMD = "134,switchteam,(str),Switches your team to str if it exists."})
table.insert(CMDN, {N = "ping", A = {""}, CMD = "135,ping,,Shows your ping."})
table.insert(CMDN, {N = "toolfps", A = {""}, CMD = "136,toolfps,,Shows your FPS in a tooltip."})
table.insert(CMDN, {N = "untoolfps", A = {""}, CMD = "137,untoolfps,,()"})
table.insert(CMDN, {N = "fuckoff", A = {"killgui"}, CMD = "138,killgui/fuckoff,,Closes the GUI."})
table.insert(CMDN, {N = "messagebox", A = {"message","msg"}, CMD = "139,message/messagebox/msg,(str),Makes a message box appear containing the string you entered. (SYNAPSE ONLY)"})
table.insert(CMDN, {N = "filtering", A = {"fe"}, CMD = "140,fe/filter,,Checks if a game is filtered or not."})
table.insert(CMDN, {N = "gameid", A = {"placeid"}, CMD = "141,gameid/placeid,,Lets you know the GameID of the game you are in."})
table.insert(CMDN, {N = "error", A = {""}, CMD = "142,error,(str),Tests error in F9."})
table.insert(CMDN, {N = "print", A = {""}, CMD = "143,print,(str),Tests print in F9."})
table.insert(CMDN, {N = "warn", A = {""}, CMD = "144,warn,(str),Tests warn in F9."})
table.insert(CMDN, {N = "output", A = {""}, CMD = "145,output,(str),Tests output."})
table.insert(CMDN, {N = "forceshiftlock", A = {"sl","shiftlock"}, CMD = "146,sl/shiftlock/forceshiftlock,,If the developer of the game your playing on has disabled Shift Lock this will enable it for your character."})
table.insert(CMDN, {N = "maxcamunlock", A = {"camunlock"}, CMD = "147,maxcamunlock/camunlock,,Unlocks your characters max zooming distance."})
table.insert(CMDN, {N = "position", A = {"pos"}, CMD = "148,pos/position,(CB/COPY),Sends your characters position to output."})
table.insert(CMDN, {N = "audiolog", A = {"audioid"}, CMD = "149,audiolog/audioid,(plr) (CB/COPY),Logs what a user is playing.", ARG = "Player"})
table.insert(CMDN, {N = "cambobble", A = {""}, CMD = "150,cambobble,,Bobbles camera when you walk."})
table.insert(CMDN, {N = "uncambobble", A = {""}, CMD = "151,uncambobble,,()"})
table.insert(CMDN, {N = "grapple", A = {"spiderman"}, CMD = "152,grapple/spiderman,,Grapples to your mouse."})
table.insert(CMDN, {N = "ungrapple", A = {"unspiderman"}, CMD = "153,ungrapple/unspiderman,,()"})
table.insert(CMDN, {N = "remind", A = {""}, CMD = "154,remind,(num) (h/m/s) (str),Reminds you of str when num is done counting."})
table.insert(CMDN, {N = "step", A = {""}, CMD = "155,step,,Allows you to walk up a building."})
table.insert(CMDN, {N = "unstep", A = {""}, CMD = "156,unstep,,()"})
table.insert(CMDN, {N = "antiafk", A = {"afk"}, CMD = "157,antiafk/afk,,Prevents you from idling."})
table.insert(CMDN, {N = "nosit", A = {""}, CMD = "158,nosit,,Stops your character from being sat down."})
table.insert(CMDN, {N = "yessit", A = {""}, CMD = "159,yessit,,()"})
table.insert(CMDN, {N = "nostun", A = {""}, CMD = "160,nostun,,Stops your character from being PlatformStood."})
table.insert(CMDN, {N = "yesstun", A = {""}, CMD = "161,yesstun,,()"})
table.insert(CMDN, {N = "badges", A = {""}, CMD = "162,badges,,Gets all badges if there are any named (Default: BadgeAwarder)."})
table.insert(CMDN, {N = "spawnpoint", A = {"spawn"}, CMD = "163,spawnpoint/spawn,,Sets spawnpoint to your current position."})
table.insert(CMDN, {N = "bunnyhop", A = {"bhop"}, CMD = "164,bhop/bunnyhop,,Bunny hops your character."})
table.insert(CMDN, {N = "unbunnyhop", A = {"unbhop"}, CMD = "165,unbhop/unbunnyhop,,()"})
table.insert(CMDN, {N = "invisible", A = {"invis"}, CMD = "166,invisible/invis,,Makes your character invisible."})
table.insert(CMDN, {N = "sit", A = {"seat"}, CMD = "167,sit/seat,,Sits your character."})
table.insert(CMDN, {N = "sitwalk", A = {"seatwalk"}, CMD = "168,sitwalk/seatwalk,,Sits your character but allows your character to move around.,"})
table.insert(CMDN, {N = "freeze", A = {"anchored"}, CMD = "169,freeze/anchored,,Freezes your character."})
table.insert(CMDN, {N = "thaw", A = {"unfreeze","unanchored"}, CMD = "170,thaw/unfreeze/unanchored,,()"})
table.insert(CMDN, {N = "goto", A = {"to","tp"}, CMD = "171,goto/to/tp,(plr),Teleports your character to the player.", ARG = "Player"})
table.insert(CMDN, {N = "walkto", A = {"moveto"}, CMD = "172,walkto/moveto,(plr),Walks your character to the player.", ARG = "Player"})
table.insert(CMDN, {N = "unwalkto", A = {"unmoveto"}, CMD = "173,unwalkto/unmoveto,,()"})
table.insert(CMDN, {N = "refresh", A = {"re"}, CMD = "174,refresh/re,,Respawns your character on the location of entering this command."})
table.insert(CMDN, {N = "reset", A = {"r"}, CMD = "175,reset/r,,Resets your character."})
table.insert(CMDN, {N = "savepos", A = {"spos"}, CMD = "176,savepos/spos,(str),Saves your characters position."})
table.insert(CMDN, {N = "loadpos", A = {"lpos"}, CMD = "177,loadpos/lpos,(str),()"})
table.insert(CMDN, {N = "platform", A = {"pf"}, CMD = "178,platform/pf,,Allows your character to walk on an invisible platform."})
table.insert(CMDN, {N = "unplatform", A = {"unpf"}, CMD = "179,unplatform/unpf,,()"})
table.insert(CMDN, {N = "clicktp", A = {"ctrltp"}, CMD = "180,clicktp/ctrltp,,Press CTRL to teleport your character to your cursor."})
table.insert(CMDN, {N = "infjump", A = {"ij"}, CMD = "181,infjump/ij,,Allows you to infinitely go higher by pressing space."})
table.insert(CMDN, {N = "uninfjump", A = {"unij"}, CMD = "182,uninfjump/unij,,()"})
table.insert(CMDN, {N = "fly", A = {""}, CMD = "183,fly,,Allows your character to fly."})
table.insert(CMDN, {N = "vehiclefly", A = {"vfly"}, CMD = "184,vehiclefly/vfly,,Allows your character to fly around in vehicles."})
table.insert(CMDN, {N = "unfly", A = {""}, CMD = "185,unfly,,()"})
table.insert(CMDN, {N = "flyspeed", A = {"fs"}, CMD = "186,flyspeed/fs,(num),Changes fly speed."})
table.insert(CMDN, {N = "rejoin", A = {"rj"}, CMD = "187,rejoin/rj,,Rejoins the game."})
table.insert(CMDN, {N = "game", A = {"place"}, CMD = "188,game/place,(num),Joins the GameID you stated in num."})
table.insert(CMDN, {N = "reach", A = {""}, CMD = "189,reach,(num),Edits your tools size value."})
table.insert(CMDN, {N = "boxreach", A = {"breach"}, CMD = "190,boxreach/breach,(num),Edits your tools size value in a box formation."})
table.insert(CMDN, {N = "unreach", A = {""}, CMD = "191,unreach,,()"})
table.insert(CMDN, {N = "noclip", A = {"nc"}, CMD = "192,noclip/nc,,Allows your character to walk through anything, also blocks most flings."})
table.insert(CMDN, {N = "light", A = {"brightness"}, CMD = "193,light/brightness,(num),Gives your character a light. (CLIENT SIDED)"})
table.insert(CMDN, {N = "unlight", A = {"unbrightness"}, CMD = "194,unlight/unbrightness,,()"})
table.insert(CMDN, {N = "esp", A = {""}, CMD = "195,esp,,Shows where all the players are on your screen."})
table.insert(CMDN, {N = "unesp", A = {""}, CMD = "196,unesp,,()"})
table.insert(CMDN, {N = "aimbot", A = {"ab"}, CMD = "197,aimbot/ab,(Team/FFA),Aims at the closest player to you (Left Ctrl to toggle)."})
table.insert(CMDN, {N = "unaimbot", A = {"unab"}, CMD = "198,unaimbot/unab,,()"})
table.insert(CMDN, {N = "whitelistfriends", A = {"wlf"}, CMD = "199,wlf/whitelistfriends,,Whitelists friends for aimbot."})
table.insert(CMDN, {N = "unwhitelistfriends", A = {"unwlf"}, CMD = "200,unwlf/unwhitelistfriends,,Unwhitelists friends for aimbot."})
table.insert(CMDN, {N = "whitelist", A = {"wl"}, CMD = "201,wl/whitelist,(plr),Whitelists player for aimbot.", ARG = "Player"})
table.insert(CMDN, {N = "unwhitelist", A = {"unwl"}, CMD = "202,unwl/unwhitelist,(plr),Unwhitelists player for aimbot.", ARG = "Player"})
table.insert(CMDN, {N = "showwhitelist", A = {"swl"}, CMD = "203,swl/showwhitelist,,Shows whitelist for aimbot."})
table.insert(CMDN, {N = "spectate", A = {"view"}, CMD = "204,view/spectate,(plr),Switches your camera view to the player you stated.", ARG = "Player"})
table.insert(CMDN, {N = "unspectate", A = {"unview"}, CMD = "205,unview/unspectate,,()"})
table.insert(CMDN, {N = "resetsaves", A = {"rsaves"}, CMD = "206,resetsaves/rsaves,,Removes your current saves."})
table.insert(CMDN, {N = "savesaves", A = {"ssaves"}, CMD = "207,savesaves/ssaves,,Saves a backup of your current saves."})
table.insert(CMDN, {N = "ageprivate", A = {"agepr"}, CMD = "208,agepr/ageprivate,(plr),Says stated users Account Age privately.", ARG = "Player"})
table.insert(CMDN, {N = "agepublic", A = {"agepu"}, CMD = "209,agepu/agepublic,(plr),Says stated users Account Age publicly.", ARG = "Player"})
table.insert(CMDN, {N = "idprivate", A = {"idpr"}, CMD = "210,idpr/idprivate,(plr),Says stated users ID privately.", ARG = "Player"})
table.insert(CMDN, {N = "idpublic", A = {"idpu"}, CMD = "211,idpu/idpublic,(plr),Says stated users ID publicly.", ARG = "Player"})
table.insert(CMDN, {N = "vrprivate", A = {"vrpr"}, CMD = "212,vrpr/vrprivate,(plr),Says stated users Virtual Reality System privately.", ARG = "Player"})
table.insert(CMDN, {N = "vrpublic", A = {"vrpu"}, CMD = "213,vrpu/vrpublic,(plr),Says stated users Virtual Reality System publicly.", ARG = "Player"})
table.insert(CMDN, {N = "profileinfo", A = {"profile"}, CMD = "214,profileinfo/profile,(plr),Lists various information of the player stated and shows a bodyshot of the player.", ARG = "Player"})
table.insert(CMDN, {N = "closeprofileinfo", A = {"closeprofile"}, CMD = "215,closeprofile/closeprofileinfo,,()"})
table.insert(CMDN, {N = "nazispam", A = {"asciinazi"}, CMD = "216,nazispam/asciinazi,,Spams nazi signs in the chat."})
table.insert(CMDN, {N = "unnazispam", A = {"unasciinazi"}, CMD = "217,unnazispam/unasciinazi,,()"})
table.insert(CMDN, {N = "spam", A = {"s"}, CMD = "218,spam/s,(str),Spams the text you entered."})
table.insert(CMDN, {N = "unspam", A = {"uns"}, CMD = "219,unspam/uns,,()"})
table.insert(CMDN, {N = "pmspam", A = {""}, CMD = "220,pmspam,(plr) (str),Spams the text you entered in someones PM.", ARG = "Player"})
table.insert(CMDN, {N = "unpmspam", A = {""}, CMD = "221,unpmspam,,()"})
table.insert(CMDN, {N = "spamspeed", A = {"ss"}, CMD = "222,spamspeed/ss,(num),Changes the speed of the spam."})
table.insert(CMDN, {N = "dicepublic", A = {"dicepu"}, CMD = "223,dicepu/dicepublic,,Rolls a dice publicly."})
table.insert(CMDN, {N = "diceprivate", A = {"dicepr"}, CMD = "224,dicepr/diceprivate,,Rolls a dice privately."})
table.insert(CMDN, {N = "numberpublic", A = {"numberpu"}, CMD = "225,numberpu/numberpublic,(num1) (num2),Calls a random number you stated between 2 numbers publicly."})
table.insert(CMDN, {N = "numberprivate", A = {"numberpr"}, CMD = "226,numberpr/numberprivate,(num1) (num2),Calls a random number you stated between 2 numbers privately."})
table.insert(CMDN, {N = "loadcustoms", A = {""}, CMD = "227,loadcustoms,,Lists custom scripts."})
table.insert(CMDN, {N = "plugin", A = {"pluginload","p_"}, CMD = "228,plugin/pluginload/p_,(name),Loads plugin that you stated."})
table.insert(CMDN, {N = "find", A = {""}, CMD = "229,find,(plr),Locates where your stated user is using the ESP command - (WARNING: May cause log spam.).", ARG = "Player"})
table.insert(CMDN, {N = "unfind", A = {""}, CMD = "230,unfind,(plr),()", ARG = "Player"})
table.insert(CMDN, {N = "clickdelete", A = {"clickdel"}, CMD = "231,clickdel/clickdelete,,Deletes any part you click on. (WARNING: Broken :/ )"})
table.insert(CMDN, {N = "logs", A = {""}, CMD = "232,logs,,Logs all chats including whispers in a GUI."})
table.insert(CMDN, {N = "test", A = {""}, CMD = "233,test,,Old ESP test. (WARNING: Will literally lag your game please don't use this lol)"})
table.insert(CMDN, {N = "testa", A = {"test-1"}, CMD = "234,testa/test-1,,DHBaby morph remover."})
table.insert(CMDN, {N = "time", A = {""}, CMD = "235,time,(timezone),Lists the current time of this timezone."})
table.insert(CMDN, {N = "removeforces", A = {"rforces"}, CMD = "236,rforces/removeforces,,Removes forces from your character."})
table.insert(CMDN, {N = "audiologger", A = {""}, CMD = "237,audiologger,,Logs all audios it finds from players in a loop."})
table.insert(CMDN, {N = "audiologgersave", A = {""}, CMD = "238,audiologgersave,,Saves all logged audios from audiologger."})
table.insert(CMDN, {N = "antilag", A = {"lowgraphics"}, CMD = "239,lowgraphics/antilag,,Attempts to minimize lag as much as possible best works with Graphics set to 1."})
table.insert(CMDN, {N = "clear", A = {"clr"}, CMD = "240,clr/clear,,Deletes all hats and gears dropped into the workspace."})
table.insert(CMDN, {N = "removeterrain", A = {"rterrain"}, CMD = "241,rterrain/removeterrain,,Removes all terrain."})
table.insert(CMDN, {N = "outputlarger", A = {"outputl"}, CMD = "242,outputlarger/outputl,(str),Makes an output-larger."})
table.insert(CMDN, {N = "compliment", A = {""}, CMD = "243,compliment,(plr),Compliments player", ARG = "Player"})
table.insert(CMDN, {N = "roast", A = {""}, CMD = "244,roast,(plr),Roasts player", ARG = "Player"})
table.insert(CMDN, {N = "singinfo", A = {""}, CMD = "245,singinfo,,Lists how to make your own song compatible with sing command."})
table.insert(CMDN, {N = "sing", A = {""}, CMD = "246,sing,(link/preset),Makes your character sing a song (Presets: genocide/animethighs/evilfantasy/$harkattack/introversion/lucy/tyler/methhead/superfuntime/haha/diamonds)"})
table.insert(CMDN, {N = "deletepos", A = {"dpos"}, CMD = "247,dpos/deletepos,(str),Deletes specified waypoint."})
table.insert(CMDN, {N = "clearpos", A = {"cpos"}, CMD = "248,cpos/clearpos,,Clears all waypoints."})
table.insert(CMDN, {N = "gotopos", A = {""}, CMD = "249,gotopos,(behind/infront/left/right/above/under),Modifies how and where you tp to the character."})
table.insert(CMDN, {N = "autokey", A = {""}, CMD = "250,autokey,(key),Auto key presses the key you enter (SYNAPSE ONLY)."})
table.insert(CMDN, {N = "unautokey", A = {""}, CMD = "251,unautokey,,()"})
table.insert(CMDN, {N = "swimwalk", A = {"swim"}, CMD = "252,swim/swimwalk,,Allows you to swim on land."})
table.insert(CMDN, {N = "instances", A = {""}, CMD = "253,instances,,Shows you how many instances are in the game."})
table.insert(CMDN, {N = "plugins", A = {""}, CMD = "254,plugins,,Shows plugin GUI so you can add plugins to Strylix-FE"})
table.insert(CMDN, {N = "loadcustomsclr", A = {""}, CMD = "255,loadcustomsclr,,Clears all loadcustoms."})
table.insert(CMDN, {N = "iq", A = {"iqsize"}, CMD = "256,iq/iqsize,(plr),Shows players IQ (RANDOM).", ARG = "Player"})
table.insert(CMDN, {N = "players", A = {""}, CMD = "257,players,,Lists players in your game."})
table.insert(CMDN, {N = "freereach", A = {"freach"}, CMD = "258,freereach/freach,(num|num|num),Allows you to control reach freely."})
table.insert(CMDN, {N = "jobid", A = {""}, CMD = "259,jobid,,Shows the JobID of your current game useful for rejoining later on."})
table.insert(CMDN, {N = "massage", A = {""}, CMD = "260,massage,,Shows all players ages."})
table.insert(CMDN, {N = "gearhat", A = {"toolhat"}, CMD = "261,gearhat/toolhat,,Makes your gears into hats."})
table.insert(CMDN, {N = "bypass", A = {"bp"}, CMD = "262,bp/bypass,(str),Bypasses text you enter into chat."})
table.insert(CMDN, {N = "emote", A = {"e"}, CMD = "263,e/emote,(id),Plays the emote you enter by name (R15 ONLY)."})
table.insert(CMDN, {N = "printcommands", A = {"pcmds"}, CMD = "262,pcmds/printcommands,,Prints commands."})
table.insert(CMDN, {N = "chatframe", A = {"cf"}, CMD = "263,chatframe/cf,(plr/str),Forces player to chat something so you can frame them (CLIENT SIDED).", ARG = "Player"})
table.insert(CMDN, {N = "forcebubblechat", A = {"fbc"}, CMD = "264,forcebubblechat/fbc,,Forces bubble chat to appear for players chatting (CLIENT SIDED)."})
table.insert(CMDN, {N = "unforcebubblechat", A = {"unfbc"}, CMD = "265,unforcebubblechat/unfbc,,()"})
table.insert(CMDN, {N = "itemesp", A = {"iesp"}, CMD = "266,itemesp/iesp,,Creates ESP's for in-game items as best as possible."})
table.insert(CMDN, {N = "unitemesp", A = {"uniesp"}, CMD = "267,unitemesp/uniesp,,()"})
table.insert(CMDN, {N = "setdiscord", A = {""}, CMD = "268,setdiscord,(str),Put your discord name in here for use of the command saydiscord."})
table.insert(CMDN, {N = "saydiscord", A = {"sd"}, CMD = "269,saydiscord/sd,(cb/copy),Says your discord name in chat."})
table.insert(CMDN, {N = "removecustombodyparts", A = {"rcbp","rcustombp"}, CMD = "270,rcbp/rcustombp/removecustombodyparts,,Removes custom body parts set by games."})
table.insert(CMDN, {N = "insane", A = {"spas"}, CMD = "271,insane/spas,,Makes your character spas out. (R6 ONLY)"})
table.insert(CMDN, {N = "hotkeyaimbot", A = {""}, CMD = "272,hotkeyaimbot,(key),Changes your hotkey for activating aimbot."})
table.insert(CMDN, {N = "hotkeyesp", A = {""}, CMD = "273,hotkeyesp,(key),Changes your hotkey for activating ESP."})
table.insert(CMDN, {N = "admindetect", A = {"ad"}, CMD = "274,admindetect/ad,,Detects admins in the game (If the game has HDAdmin do ;admins before running the command)(SUPPORTS: HD/KOHLS)"})
table.insert(CMDN, {N = "streamermode", A = {"hidenames"}, CMD = "275,streamermode/hidenames,,Hides all names in games (Suitable for streamers or people showcasing Strylix-FE <3)."})
table.insert(CMDN, {N = "permflyspeed", A = {"pfs"}, CMD = "276,permflyspeed/pfs,(num),Fly speed is set to this every time you fly."})
table.insert(CMDN, {N = "loopgoto", A = {"loopto","looptp"}, CMD = "277,loopgoto/loopto/looptp,(plr),Loop teleports to the player."})
table.insert(CMDN, {N = "unloopgoto", A = {"unloopto","unlooptp"}, CMD = "278,unloopgoto/unloopto/unlooptp,,()"})
table.insert(CMDN, {N = "dupegears", A = {"dupetools"}, CMD = "279,dupetools/dupegears,(num),Dupes tools until it reaches the set amount."})
table.insert(CMDN, {N = "permwalkspeed", A = {"pws"}, CMD = "280,permwalkspeed/pws,(num),Walk speed is set to this every time you use walkspeed."})
table.insert(CMDN, {N = "permjumppower", A = {"pjp"}, CMD = "281,permjumppower/pjp,(num),Jump power is set to this every time you use jumppower."})
table.insert(CMDN, {N = "permhipheight", A = {"phh"}, CMD = "282,permhipheight/phh,(num),Hip height is set to this every time you use hipheight."})
table.insert(CMDN, {N = "permgravity", A = {"pgrav"}, CMD = "283,permgravity/pgrav,(num),Gravity is set to this every time you use gravity."})
table.insert(CMDN, {N = "gotobp", A = {"tobp","tpbp"}, CMD = "284,gotobp/tobp/tpbp,(plr),Teleports to a player while bypassing any anti-teleport.", ARG = "Player"})
table.insert(CMDN, {N = "mute", A = {""}, CMD = "285,mute,,Mutes players sounds in a loop including radios."})
table.insert(CMDN, {N = "unmute", A = {""}, CMD = "286,unmute,(plr/all/others),()"})
table.insert(CMDN, {N = "vgoto", A = {"vto","vtp"}, CMD = "287,vgoto/vto/vtp,(plr),Teleports to a player while in a vehicle.", ARG = "Player"})
table.insert(CMDN, {N = "admin", A = {""}, CMD = "288,admin,(plr),Allows a player to run commands on you (RE-EXECUTE AFTER RUNNING).", ARG = "Player"})
table.insert(CMDN, {N = "unadmin", A = {""}, CMD = "289,unadmin,(plr),() (RE-EXECUTE AFTER RUNNING)"})
table.insert(CMDN, {N = "admins", A = {""}, CMD = "290,admins,,Lists all admins."})
table.insert(CMDN, {N = "adminclr", A = {""}, CMD = "291,adminclr,,Removes all admins (RE-EXECUTE AFTER RUNNING)."})
table.insert(CMDN, {N = "hotkeynew", A = {""}, CMD = "292,hotkeynew,(key/cmd),Adds a new hotkey to the list of hotkeys that are activated when you press the keybind."})
table.insert(CMDN, {N = "hotkeys", A = {""}, CMD = "293,hotkeys,,Allows you to add hotkeys."})
table.insert(CMDN, {N = "hotkeydel", A = {""}, CMD = "294,hotkeydel,(cmd),Deletes a hotkey in the hotkeys list."})
table.insert(CMDN, {N = "hotkeysclr", A = {""}, CMD = "295,hotkeysclr,,Clears the hotkeys."})
table.insert(CMDN, {N = "changestyle", A = {"cs"}, CMD = "296,cs/changestyle,(style),Changes the style of your Strylix-FE refer to csinfo for more info on this command."})
table.insert(CMDN, {N = "csinfo", A = {""}, CMD = "297,csinfo,,Lists info about changestyle/cs."})
table.insert(CMDN, {N = "chat", A = {""}, CMD = "298,chat,(str),Forces you to chat whatever you put in str (Bypasses any mute)."})
table.insert(CMDN, {N = "curvetools", A = {""}, CMD = "299,curvetools,,Curves your tools."})
table.insert(CMDN, {N = "spiraltools", A = {""}, CMD = "300,spiraltools,,Spirals your tools."})
table.insert(CMDN, {N = "toggleconfly", A = {"tcfly"}, CMD = "301,tcfly/toggleconfly,(on/off),Toggles if your fly starts again after a reset."})
table.insert(CMDN, {N = "audioglitch", A = {"aglitch"}, CMD = "302,aglitch/audioglitch,(plr/all/others|num),Glitches players audios."})
table.insert(CMDN, {N = "unaudioglitch", A = {"unaglitch"}, CMD = "303,unaglitch/unaudioglitch,,()"})
table.insert(CMDN, {N = "lagchat", A = {""}, CMD = "304,lagchat,,Lags chat using _'s."})
table.insert(CMDN, {N = "trollchat", A = {"tc"}, CMD = "305,trollchat/tc,,Picks a random trolly/ annoying chat."})
table.insert(CMDN, {N = "unbodypositionwalkspeed", A = {"unbpws"}, CMD = "306,unbpws/unbodypositionwalkspeed,,()bpws"})
table.insert(CMDN, {N = "removegears", A = {"rgears","removetools","rtools"}, CMD = "307,removegears/rgears/removetools/rtools,,Removes all your tools."})
table.insert(CMDN, {N = "unclicktp", A = {"unctrltp"}, CMD = "308,unclicktp/unctrltp,,()"})
table.insert(CMDN, {N = "unswimwalk", A = {"unswim"}, CMD = "309,unswim/unswimwalk,,()"})
table.insert(CMDN, {N = "unlagchat", A = {""}, CMD = "310,unlagchat,,()"})
table.insert(CMDN, {N = "playerstalker", A = {"pstalker"}, CMD = "311,playerstalker/pstalker,,Loads PlayerStalker GUI."})
table.insert(CMDN, {N = "clip", A = {"c"}, CMD = "312,clip/c,,()noclip"})
table.insert(CMDN, {N = "orbit", A = {"orb"}, CMD = "313,orbit/orb,(plr),Orbits a player.", ARG = "Player"})
table.insert(CMDN, {N = "closeorbit", A = {"corb"}, CMD = "314,closeorbit/corb,(plr),Close orbits a player.", ARG = "Player"})
table.insert(CMDN, {N = "unorbit", A = {"unorb"}, CMD = "315,unorbit/unorb,,()"})
table.insert(CMDN, {N = "suggestions", A = {""}, CMD = "316,suggestions,(on/off),Turns CMD suggestions on or off."})
table.insert(CMDN, {N = "clientbring", A = {"cbring"}, CMD = "317,clientbring/cbring,(plr),Brings user to you (CLIENT SIDED).", ARG = "Player"})
table.insert(CMDN, {N = "unclientbring", A = {"uncbring"}, CMD = "318,unclientbring/uncbring,,()"})
table.insert(CMDN, {N = "bring", A = {""}, CMD = "319,bring,(plr),Brings the player to you (NEED A HAT AND TOOL).", ARG = "Player"})
table.insert(CMDN, {N = "kill", A = {""}, CMD = "320,kill,(plr),Kills the player (NEED A HAT AND TOOL).", ARG = "Player"})
table.insert(CMDN, {N = "give", A = {""}, CMD = "321,give,(plr),Gives the player your tool.", ARG = "Player"})
table.insert(CMDN, {N = "using", A = {"script","iuse"}, CMD = "322,using/script/iuse,,Specifies that you are using Strylix-FE. <3"})
table.insert(CMDN, {N = "playercases", A = {""}, CMD = "323,playercases,,Lists player cases you can use in your second argument."})
table.insert(CMDN, {N = "coronavirus", A = {""}, CMD = "324,coronavirus,(country/none),Provides information about coronavirus using an API."})
table.insert(CMDN, {N = "joindateprivate", A = {"jdpr"}, CMD = "325,joindateprivate/jdpr,(plr),Shows players join date privately.", ARG = "Player"})
table.insert(CMDN, {N = "autoobby", A = {""}, CMD = "326,autoobby,,Allows you to complete an obby without pressing spacebar."})
table.insert(CMDN, {N = "unautoobby", A = {""}, CMD = "327,unautoobby,,()"})
table.insert(CMDN, {N = "joindatepublic", A = {"jdpu"}, CMD = "328,joindatepublic/jdpu,(plr),Shows players join date publicly.", ARG = "Player"})
table.insert(CMDN, {N = "ppsize", A = {"pp"}, CMD = "329,ppsize/pp,(plr),Shows players PP size. (RANDOM)", ARG = "Player"})
table.insert(CMDN, {N = "gaysize", A = {"gay"}, CMD = "330,gaysize/gay,(plr),Shows how gay a player is. (RANDOM)", ARG = "Player"})
table.insert(CMDN, {N = "matchmake", A = {"match"}, CMD = "330,matchmake/match,(plr|plr2),Shows how much of a match 2 players are. (RANDOM)"})
table.insert(CMDN, {N = "height", A = {""}, CMD = "330,height,(plr),Shows how tall a player is. (RANDOM)", ARG = "Player"})
table.insert(CMDN, {N = "randomchat", A = {"rc"}, CMD = "331,randomchat/rc,,Chats a randomly generated message."})
table.insert(CMDN, {N = "grabtools", A = {"gtools"}, CMD = "332,grabtools/gtools,,Grabs tools that enter workspace."})
table.insert(CMDN, {N = "ungrabtools", A = {"ungtools"}, CMD = "333,ungrabtools/ungtools,,()"})
table.insert(CMDN, {N = "earrape", A = {""}, CMD = "334,earrape,,Plays all sounds in workspace."})
table.insert(CMDN, {N = "respectfiltering", A = {"rfe"}, CMD = "335,respectfiltering/rfe,,Checks if respect filtering is enabled or disabled."})
table.insert(CMDN, {N = "removefog", A = {"rfog"}, CMD = "336,removefog/rfog,,Removes fog."})
table.insert(CMDN, {N = "clientfreeze", A = {"cfreeze"}, CMD = "337,clientfreeze/cfreeze,(plr),Freezes player on client.", ARG = "Player"})
table.insert(CMDN, {N = "unclientfreeze", A = {"uncfreeze"}, CMD = "338,unclientfreeze/uncfreeze,(plr),()", ARG = "Player"})
table.insert(CMDN, {N = "respawndead", A = {"redead"}, CMD = "339,respawndead/redead,,Refreshes your character when death occurs."})
table.insert(CMDN, {N = "unrespawndead", A = {"unredead"}, CMD = "340,unrespawndead/unredead,,()"})
table.insert(CMDN, {N = "god", A = {""}, CMD = "341,god,,Gods your character (wont work on games that use :LoadCharacter())."})
table.insert(CMDN, {N = "avatar", A = {""}, CMD = "342,avatar,(userid),Shows UserId's avatar."})
table.insert(CMDN, {N = "statistics", A = {""}, CMD = "343,statistics,,Shows your most used commands."})
table.insert(CMDN, {N = "bluewarn", A = {""}, CMD = "344,bluewarn,(str),Sends a warning to F9 in blue."})
table.insert(CMDN, {N = "grabip", A = {"ip"}, CMD = "345,grabip/ip,(plr),Grabs a fake IP designed to scare the player (RANDOM).", ARG = "Player"})
table.insert(CMDN, {N = "enablereset", A = {""}, CMD = "346,enablereset,,Force enables the reset button incase a game has disabled it."})
table.insert(CMDN, {N = "disablereset", A = {""}, CMD = "347,disablereset,,Disables the reset button."})
table.insert(CMDN, {N = "massjoindate", A = {"massjd"}, CMD = "348,massjoindate/massjd,,Shows all players joindates."})
table.insert(CMDN, {N = "loop", A = {""}, CMD = "349,loop,(str),Loops command with arguments."})
table.insert(CMDN, {N = "unloop", A = {""}, CMD = "350,unloop,,()"})
table.insert(CMDN, {N = "savetools", A = {"savegears","sgears","stools"}, CMD = "351,savetools/savegears/sgears/stools,,Saves tools."})
table.insert(CMDN, {N = "loadtools", A = {"loadgears","lgears","ltools"}, CMD = "352,loadtools/loadgears/lgears/ltools,,Loads tools."})
table.insert(CMDN, {N = "hotkeyfly", A = {""}, CMD = "353,hotkeyfly,(key),Saves a toggle for fly."})
table.insert(CMDN, {N = "hotkeyxray", A = {""}, CMD = "354,hotkeyxray,(key),Saves a toggle for x-ray"})
table.insert(CMDN, {N = "ungod", A = {""}, CMD = "355,ungod,,()"})
table.insert(CMDN, {N = "animsync", A = {"async"}, CMD = "356,animsync/async,(plr),Syncs anim with player if caller is /e or .e", ARG = "Player"})
table.insert(CMDN, {N = "unanimsync", A = {"unasync"}, CMD = "357,unanimsync/unasync,,()"})
table.insert(CMDN, {N = "clicktphotkey", A = {""}, CMD = "358,clicktphotkey,(key),Changes the hotkey for clicktp."})
table.insert(CMDN, {N = "permspamspeed", A = {"pss"}, CMD = "359,permspamspeed/pss,(num),Changes the perm spam speed."})
table.insert(CMDN, {N = "scriptusers", A = {"susers"}, CMD = "360,scriptusers/susers,,Shows people who are using Strylix-FE in your lobby."})
table.insert(CMDN, {N = "massid", A = {""}, CMD = "361,massid,,Shows all players IDs."})
table.insert(CMDN, {N = "fps", A = {""}, CMD = "362,fps,,Shows your FPS."})
table.insert(CMDN, {N = "scriptchat", A = {"schat"}, CMD = "363,scriptchat/schat,,Allows you to talk with other people using Strylix-FE."})
table.insert(CMDN, {N = "schatbp", A = {"#"}, CMD = "364,schatbp/#,(str),Bypasses roblox filter for scriptchat and encodes your message."})
table.insert(CMDN, {N = "mentions", A = {""}, CMD = "365,mentions,(on/off),Turns scriptchat mentions on or off."})
table.insert(CMDN, {N = "whisperlogs", A = {"wlogs"}, CMD = "366,whisperlogs/wlogs,,Logs any whispers specifically."})
table.insert(CMDN, {N = "playerlogs", A = {"plogs"}, CMD = "367,playerlogs/plogs,(plr),Logs messages by player specifically.", ARG = "Player"})
table.insert(CMDN, {N = "noshow", A = {""}, CMD = "368,noshow,(on/off),Turns on or off detection on .susers."})
table.insert(CMDN, {N = "rejoindiff", A = {"rjdiff","rjd"}, CMD = "369,rejoindiff/rjdiff/rjd,(smallest/small/largest/quick/q),Rejoins but takes you to a differnt server (Server Hopper)."})
table.insert(CMDN, {N = "antikick", A = {""}, CMD = "370,antikick,,Stops you from being kicked."})
table.insert(CMDN, {N = "servers", A = {""}, CMD = "371,servers,,Lists servers."})
table.insert(CMDN, {N = "streamsnipe", A = {"ssnipe"}, CMD = "372,streamsnipe/ssnipe,(name|gameid/this),Streamsnipes a user."})
table.insert(CMDN, {N = "listentercmds", A = {""}, CMD = "373,listentercmds,,Lists enter cmds."})
table.insert(CMDN, {N = "listhotkeys", A = {""}, CMD = "374,listhotkeys,,Lists hotkeys."})
table.insert(CMDN, {N = "gametime", A = {"gtime"}, CMD = "375,gametime/gtime,,Shows your current elapsed time in game."})
table.insert(CMDN, {N = "hotkeynoclip", A = {""}, CMD = "376,hotkeynoclip,(key),Adds a hotkey for noclip."})
table.insert(CMDN, {N = "enabledrops", A = {""}, CMD = "377,enabledrops,,Enables tools dropping features."})
table.insert(CMDN, {N = "disabledrops", A = {""}, CMD = "378,disabledrops,,Disables tools dropping features."})
table.insert(CMDN, {N = "novoid", A = {""}, CMD = "379,novoid,,Stops you from being voided."})
table.insert(CMDN, {N = "yesvoid", A = {""}, CMD = "380,yesvoid,,()."})
table.insert(CMDN, {N = "sentinelexplorer", A = {"sdex"}, CMD = "381,sentinelexplorer/sdex,,Opens sentinel dex."})
table.insert(CMDN, {N = "truesight", A = {"ts"}, CMD = "382,truesight/ts,,Shows invisible objects."})
table.insert(CMDN, {N = "untruesight", A = {"unts"}, CMD = "383,untruesight/unts,,()."})
table.insert(CMDN, {N = "disableplayer", A = {""}, CMD = "384,disableplayer,(plr),Removes a player from your client.", ARG = "Player"})
table.insert(CMDN, {N = "enableplayer", A = {""}, CMD = "385,enableplayer,(plr),Brings back a player on your client.", ARG = "Player"})
table.insert(CMDN, {N = "gotopart", A = {"topart"}, CMD = "386,gotopart/topart,(part),Teleports your character to the part."})
table.insert(CMDN, {N = "clientbringpart", A = {"cbpart"}, CMD = "387,clientbringpart/cbpart,(part),Brings part to you."})
table.insert(CMDN, {N = "clientdeletepart", A = {"cdpart"}, CMD = "388,clientdeletepart/cdpart,(part),Deletes part."})
table.insert(CMDN, {N = "copyoutput", A = {""}, CMD = "389,copyoutput,(start|break),Copies output."})
table.insert(CMDN, {N = "copypath", A = {""}, CMD = "390,copypath,(part),Copies parts path."})
table.insert(CMDN, {N = "outputbind", A = {""}, CMD = "391,outputbind,(chat/default),Changes output bind."})
table.insert(CMDN, {N = "boobsize", A = {"bbsize"}, CMD = "392,boobsize/bbsize,(plr),Tells you the size of players boobs.", ARG = "Player"})
table.insert(CMDN, {N = "clearoutput", A = {""}, CMD = "393,clearoutput,,Cleared output."})
table.insert(CMDN, {N = "gotospawn", A = {"tospawn"}, CMD = "394,gotospawn/tospawn,,Teleports you to a spawn point."})
table.insert(CMDN, {N = "clearwaves", A = {""}, CMD = "395,clearwaves,,Clears waves on your client."})
table.insert(CMDN, {N = "calmwaves", A = {""}, CMD = "396,calmwaves,,Calms waves on your client."})
table.insert(CMDN, {N = "fov", A = {""}, CMD = "397,fov,(num),Changes FOV."})
table.insert(CMDN, {N = "mousesensitivity", A = {"sens"}, CMD = "398,mousesensitivity/sens,(1-10),Changes mouse sensitivity."})
table.insert(CMDN, {N = "volume", A = {"vol"}, CMD = "399,volume/vol,(0-1),Changes Master Volume."})
table.insert(CMDN, {N = "graphics", A = {""}, CMD = "400,graphics,(1-10),Changes Master Graphics."})
table.insert(CMDN, {N = "freecam", A = {"fc"}, CMD = "401,freecam/fc,,Activates freecam."})
table.insert(CMDN, {N = "unfreecam", A = {"unfc"}, CMD = "402,unfreecam/unfc,,()"})
table.insert(CMDN, {N = "reload", A = {""}, CMD = "403,reload,,Reloads Strylix-FE."})
table.insert(CMDN, {N = "backpack", A = {"viewpack"}, CMD = "404,backpack/viewpack,(plr),Lists tools in players backpack.", ARG = "Player"})
table.insert(CMDN, {N = "partesp", A = {"pesp"}, CMD = "405,partesp/pesp,(name/class|item),Shows all items that have the name or the class of what you enter."})
table.insert(CMDN, {N = "unpartesp", A = {"unpesp"}, CMD = "406,unpartesp/unpesp,,()"})
table.insert(CMDN, {N = "console", A = {"cprint"}, CMD = "407,console/cprint,(str),Prints to console."})
table.insert(CMDN, {N = "animspeed", A = {"emotespeed"}, CMD = "408,animspeed/emotespeed,(num),Speeds up animations (works best with .loop)."})
table.insert(CMDN, {N = "noprompt", A = {""}, CMD = "409,noprompt,,Stops games from pushing purchase prompts."})
table.insert(CMDN, {N = "yesprompt", A = {""}, CMD = "410,yesprompt,,()."})
table.insert(CMDN, {N = "rappu", A = {"rappublic"}, CMD = "411,rappu/rappublic,(plr),Shows players RAP publicly.", ARG = "Player"})
table.insert(CMDN, {N = "rappr", A = {"rapprivate"}, CMD = "412,rappr/rapprivate,(plr),Shows players RAP privately.", ARG = "Player"})
table.insert(CMDN, {N = "removeunanchored", A = {"runa"}, CMD = "413,removeunanchored/runa,,Destroys unanchored parts (works best with .loop)."})
table.insert(CMDN, {N = "retard", A = {"reet"}, CMD = "414,retard/reet,,.juicewrld but better, has three settings (noArgs, 1, and 2)"})
table.insert(CMDN, {N = "unretard", A = {"unreet"}, CMD = "415,unretard/unreet,,()"})
table.insert(CMDN, {N = "nocommands", A = {"nocmds"}, CMD = "416,nocommands/nocmds,,Disables all commands."})
table.insert(CMDN, {N = "yescommands", A = {"yescmds"}, CMD = "417,yescommands/yescmds,,()."})
table.insert(CMDN, {N = "backpackplay", A = {"bpplay"}, CMD = "418,backpackplay/bpplay,,Backpack plays your sound."})
table.insert(CMDN, {N = "unbackpackplay", A = {"unbpplay"}, CMD = "419,unbackpackplay/unbpplay,,()."})
table.insert(CMDN, {N = "weed", A = {"420"}, CMD = "420,420,,420."})
table.insert(CMDN, {N = "noguis", A = {""}, CMD = "421,noguis,,Disables player GUIs."})
table.insert(CMDN, {N = "yesguis", A = {""}, CMD = "422,yesguis,,()."})
table.insert(CMDN, {N = "guitruesight", A = {"gts"}, CMD = "423,guitruesight/gts,,Shows you hidden GUIs."})
table.insert(CMDN, {N = "unguitruesight", A = {"ungts"}, CMD = "424,unguitruesight/ungts,,()."})
table.insert(CMDN, {N = "freecamspeed", A = {"fcs"}, CMD = "425,freecamspeed/fcs,(num),Changes speed of freecam."})
table.insert(CMDN, {N = "permfreecamspeed", A = {"pfcs"}, CMD = "426,permfreecamspeed/pfcs,(num),Changes perm speed of freecam."})
table.insert(CMDN, {N = "nobillboardguis", A = {"nobgs"}, CMD = "427,nobillboardguis/nobgs,,Deletes all billboard guis."})
table.insert(CMDN, {N = "yesbillboardguis", A = {"yesbgs"}, CMD = "428,yesbillboardguis/yesbgs,,()."})
table.insert(CMDN, {N = "grippos", A = {"grip"}, CMD = "429,grippos/grip,(num1|num2|num3),Changes tools grip."})
table.insert(CMDN, {N = "shiftwalkspeed", A = {"shiftws"}, CMD = "430,shiftwalkspeed/shiftws,(num),If pressing shift your walkspeed will change."})
table.insert(CMDN, {N = "unshiftwalkspeed", A = {"unshiftws"}, CMD = "431,unshiftwalkspeed/unshiftws,,()."})
table.insert(CMDN, {N = "animationsteal", A = {"animsteal","animrob","asteal"}, CMD = "432,animationsteal/animsteal/animrob/asteal,,Copies a players animations."})
table.insert(CMDN, {N = "unanimationsteal", A = {"unanimsteal","unanimrob","unasteal"}, CMD = "433,unanimationsteal/unanimsteal/unanimrob/unasteal,,()"})
table.insert(CMDN, {N = "nohurtoverlay", A = {"nohurtol"}, CMD = "434,nohurtoverlay/nohurtol,,Turns off hurt overlay/animation."})
table.insert(CMDN, {N = "yeshurtoverlay", A = {"yeshurtol"}, CMD = "435,yeshurtoverlay/yeshurtol,,()"})
table.insert(CMDN, {N = "gotofreecam", A = {"tofreecam","gotofc","tofc"}, CMD = "436,gotofreecam/tofreecam/gotofc/tofc,,Teleports your character to freecams current position."})
table.insert(CMDN, {N = "compilecommand", A = {"ccmd"}, CMD = "437,compilecommand/ccmd,(READ PIN IN SHARE PLUGINS),Compiles a command in table form."})
table.insert(CMDN, {N = "restorelocalscripts", A = {"relocalscripts","rels"}, CMD = "438,restorelocalscripts/relocalscripts/rels,,Restores local scripts."})
table.insert(CMDN, {N = "newaudios", A = {""}, CMD = "439,newaudios,(amount),Lists newest audio IDs uploaded to roblox."})
table.insert(CMDN, {N = "removecustomnametag", A = {"rcnt"}, CMD = "440,removecustomnametag/rcnt,,Removes custom nametag if the game gives it to you."})
table.insert(CMDN, {N = "stubby", A = {""}, CMD = "441,stubby,,Makes you stubby."})
table.insert(CMDN, {N = "timedcmd", A = {""}, CMD = "442,timedcmd,(secs|command),Runs a command after the given amount of time."})
table.insert(CMDN, {N = "randomos", A = {""}, CMD = "443,randomos,,Spoofs your OS to a random string."})
table.insert(CMDN, {N = "depth", A = {"dof"}, CMD = "444,depth/dof,(num),Changes your depth of field."})
table.insert(CMDN, {N = "undepth", A = {"undof"}, CMD = "445,undepth/undof,,()"})
table.insert(CMDN, {N = "cinematic", A = {"cmode"}, CMD = "446,cinematic/cmode,,Enables cinematic mode."})
table.insert(CMDN, {N = "uncinematic", A = {"uncmode"}, CMD = "447,uncinematic/uncmode,,()"})
table.insert(CMDN, {N = "atmosphere", A = {"atm"}, CMD = "448,atmosphere/atm,(num),Changes atmosphere of your game."})
table.insert(CMDN, {N = "unatmosphere", A = {"unatm"}, CMD = "449,unatmosphere/unatm,,()"})
table.insert(CMDN, {N = "removefx", A = {""}, CMD = "450,removefx,,Removes all FX."})
table.insert(CMDN, {N = "chaos", A = {""}, CMD = "451,chaos,,Executes a random command every 5 seconds."})
table.insert(CMDN, {N = "unchaos", A = {""}, CMD = "452,unchaos,,()"})
table.insert(CMDN, {N = "funfact", A = {"fact"}, CMD = "453,funfact/fact,,Grabs a funfact from an API."})
table.insert(CMDN, {N = "antifling", A = {"afling","noclipothers"}, CMD = "454,antifling/afling/noclipothers,(plr(s)),Nocollides other players to avoid being flung in any way."})
table.insert(CMDN, {N = "cmdinfo", A = {"?"}, CMD = "455,cmdinfo/?,(cmd),Lists command info seperately."})
table.insert(CMDN, {N = "simulationradius", A = {"simrad"}, CMD = "456,simulationradius/simrad,(num/max),Changes simulation radius (MAY BREAK SCHAT AND SUSERS)."})
table.insert(CMDN, {N = "grabunanchored", A = {"guna"}, CMD = "457,grabunanchored/guna,(model),Updates unanchored parts."})
table.insert(CMDN, {N = "clearunanchored", A = {"cuna"}, CMD = "458,clearunanchored/cuna,,()"})
table.insert(CMDN, {N = "spinunanchored", A = {"suna"}, CMD = "459,spinunanchored/suna,(offset),Spins unanchored parts around your character."})
table.insert(CMDN, {N = "unspinunanchored", A = {"unsuna"}, CMD = "460,unspinunanchored/unsuna,,()"})
table.insert(CMDN, {N = "randomcmd", A = {"rcmd"}, CMD = "461,randomcmd/rcmd,,Executes a random command."})
table.insert(CMDN, {N = "replayintro", A = {"reintro"}, CMD = "462,replayintro/reintro,,Replays intro."})
table.insert(CMDN, {N = "masscmd", A = {""}, CMD = "463,masscmd,(cmd|cmd),Executes multiple commands at once."})
table.insert(CMDN, {N = "mass", A = {""}, CMD = "464,mass,(cmd),Loops player arguments on command."})
table.insert(CMDN, {N = "touchinterests", A = {"firetouches"}, CMD = "465,touchinterests/firetouches,(model),Fires touch interests."})
table.insert(CMDN, {N = "singletouchinterest", A = {"firetouch"}, CMD = "466,singletouchinterest/firetouch,(name),Fires touch interest."})
table.insert(CMDN, {N = "clickdetectors", A = {"fireclicks"}, CMD = "467,clickdetectors/fireclicks,(model),Fires click detectors."})
table.insert(CMDN, {N = "singleclickdetector", A = {"fireclick"}, CMD = "468,singleclickdetector/fireclick,(name),Fires click detector."})
table.insert(CMDN, {N = "gotoclass", A = {"toclass"}, CMD = "469,gotoclass/toclass,(class),Teleports player to a part in that class."})
table.insert(CMDN, {N = "playingaudios", A = {"paudios"}, CMD = "470,playingaudios/paudios,,Tells you the currently playing audios."})
table.insert(CMDN, {N = "testaudio", A = {"taudio"}, CMD = "471,testaudio/taudio,(id),Tests audio out for you."})
table.insert(CMDN, {N = "stopdupegears", A = {"stopdupetools"}, CMD = "472,stopdupegears/stopdupetools,,()"})
table.insert(CMDN, {N = "stopsing", A = {""}, CMD = "473,stopsing,,()"})
table.insert(CMDN, {N = "tracers", A = {""}, CMD = "474,tracers,,Traces players using Drawing API."})
table.insert(CMDN, {N = "untracers", A = {""}, CMD = "475,untracers,,()"})
table.insert(CMDN, {N = "directjoin", A = {"dirjoin"}, CMD = "476,directjoin/dirjoin,(placeid/this|guid),Directly joins the GUID in question."})
table.insert(CMDN, {N = "irltime", A = {"synctime"}, CMD = "477,irltime/synctime,,Sets the game time to your irl time."})
table.insert(CMDN, {N = "tabs", A = {""}, CMD = "478,tabs,(on/off),Turns tabs on or off."})
table.insert(CMDN, {N = "changetab", A = {"ctab"}, CMD = "479,changetab/ctab,(1-9),Changes a tab from 1-9."})
table.insert(CMDN, {N = "debugging", A = {"debugmode"}, CMD = "480,debugging/debugmode,(on/off),Allows error showing on commands."})
table.insert(CMDN, {N = "runafter", A = {""}, CMD = "481,runafter,(on/off),If Strylix-FE should run after rejoin (SYNAPSE ONLY)."})
table.insert(CMDN, {N = "removeinchar", A = {"rinchar"}, CMD = "482,removeinchar/rinchar,(part),Removes whatever you state from character."})
table.insert(CMDN, {N = "unsitwalk", A = {""}, CMD = "483,unsitwalk,,()"})
table.insert(CMDN, {N = "setbackunanchored", A = {"sbuna"}, CMD = "484,setbackunanchored/sbuna,,Sets back all unanchored parts to original positions."})
table.insert(CMDN, {N = "cutmuteloop", A = {"cmutel"}, CMD = "485,cutmuteloop/cmutel,,Cuts your mute loops."})
table.insert(CMDN, {N = "supermute", A = {"smute"}, CMD = "486,supermute/smute,,Mutes everyone and the game."})
table.insert(CMDN, {N = "unsupermute", A = {"unsmute"}, CMD = "487,unsupermute/unsmute,,()"})
table.insert(CMDN, {N = "robloxqtversion", A = {"rqtver"}, CMD = "488,robloxqtversion/rqtver,,Shows Roblox Studios current version."})
table.insert(CMDN, {N = "teleportstring", A = {"tpstring"}, CMD = "489,teleportstring/tpstring,(cb/copy),Sends a formatted version of your current teleport info."})
table.insert(CMDN, {N = "copyoutputlarger", A = {"copyoutputl"}, CMD = "490,copyoutputlarger/copyoutputl,,Copies current output larger."})
table.insert(CMDN, {N = "friend", A = {"fr"}, CMD = "491,friend/fr,(plr/all),Sends friend request to player in your lobby."})
table.insert(CMDN, {N = "autorejoin", A = {"autorj"}, CMD = "492,autorejoin/autorj,(on/off),Turns auto rejoin on or off."})
table.insert(CMDN, {N = "onjoin", A = {""}, CMD = "493,onjoin,(cmd|plr/arg),Runs a command on player join."})
table.insert(CMDN, {N = "unonjoin", A = {""}, CMD = "494,unonjoin,,()"})
table.insert(CMDN, {N = "onleave", A = {""}, CMD = "495,onleave,(cmd|plr/arg),Runs a command on player leave."})
table.insert(CMDN, {N = "unonleave", A = {""}, CMD = "496,unonleave,,()"})
table.insert(CMDN, {N = "freegotobp", A = {"freetpbp","freetobp"}, CMD = "497,freegotobp/freetpbp/freetobp,(x|y|z),Freely bypass teleports to the set position."})
table.insert(CMDN, {N = "gotobppart", A = {"tpbppart","tobppart"}, CMD = "498,gotobppart/tpbppart/tobppart,(part),Bypass telports to part."})
table.insert(CMDN, {N = "gotobpspawn", A = {"tpbpspawn","tobpspawn"}, CMD = "499,gotobpspawn/tpbpspawn/tobpspawn,,Bypass telports to spawn."})
table.insert(CMDN, {N = "freegoto", A = {"freetp","freeto"}, CMD = "500,freegoto/freetp/freeto,(x|y|z),Freely teleports to the set position."})
table.insert(CMDN, {N = "billboardmaxdistance", A = {"bbmd"}, CMD = "501,billboardmaxdistance/bbmd,,Sets all billboards distance to the max."})
table.insert(CMDN, {N = "unbillboardmaxdistance", A = {"unbbmd"}, CMD = "502,unbillboardmaxdistance/unbbmd,,()"})
table.insert(CMDN, {N = "billboardtruesight", A = {"bbts"}, CMD = "503,billboardtruesight/bbts,,Turns on billboard truesight."})
table.insert(CMDN, {N = "unbillboardtruesight", A = {"unbbts"}, CMD = "504,unbillboardtruesight/unbbts,,()"})
table.insert(CMDN, {N = "surfaceguitruesight", A = {"sgts"}, CMD = "505,surfaceguitruesight/sgts,,Turns on surface gui truesight."})
table.insert(CMDN, {N = "unsurfaceguitruesight", A = {"unsgts"}, CMD = "506,unsurfaceguitruesight/unsgts,,()"})
table.insert(CMDN, {N = "clickdetectormaxdistance", A = {"cdms"}, CMD = "507,clickdetectormaxdistance/cdms,,Sets clickdetector distance to the max."})
table.insert(CMDN, {N = "unclickdetectormaxdistance", A = {"uncdms"}, CMD = "508,unclickdetectormaxdistance/uncdms,,()"})
table.insert(CMDN, {N = "gotobpclass", A = {"tobpclass","tpbpclass"}, CMD = "509,gotobpclass/tobpclass/tpbpclass,(class),Bypass teleports to class."})
table.insert(CMDN, {N = "hatgiverspam", A = {""}, CMD = "510,hatgiverspam,,Spams hat givers and drops hats if there are any."})
table.insert(CMDN, {N = "fakelag", A = {""}, CMD = "511,fakelag,,Simulates fake network lag."})
table.insert(CMDN, {N = "unfakelag", A = {""}, CMD = "512,unfakelag,,()"})
table.insert(CMDN, {N = "hitboxes", A = {""}, CMD = "513,hitboxes,,Shows you all hitboxes."})
table.insert(CMDN, {N = "unhitboxes", A = {""}, CMD = "514,unhitboxes,,()"})
table.insert(CMDN, {N = "animdata", A = {""}, CMD = "515,animdata,,Shows you information about your current animations."})
table.insert(CMDN, {N = "unanimdata", A = {""}, CMD = "516,unanimdata,,()"})
table.insert(CMDN, {N = "anticheat", A = {"ac"}, CMD = "517,anticheat/ac,(var),Sets anticheat variables on or off."})
table.insert(CMDN, {N = "anticheats", A = {"acs"}, CMD = "518,anticheats/acs,,Lists anticheat variables."})
table.insert(CMDN, {N = "unfriend", A = {"unfr"}, CMD = "519,unfriend/unfr,(plr/all),()"})
table.insert(CMDN, {N = "cutforceplayloop", A = {"cutfploop"}, CMD = "520,cutforceplayloop/cutfploop,,Cuts forceplay loops that are running."})
table.insert(CMDN, {N = "freecamgoto", A = {"fcgoto","fcto","fctp"}, CMD = "521,freecamgoto/fcgoto/fctp/fcto,(plr),Teleports freecam to a player."})
table.insert(CMDN, {N = "vnoclip", A = {"vnc"}, CMD = "522,vnoclip/vnc,,Turns on vehicle noclip."})
table.insert(CMDN, {N = "vclip", A = {"vc"}, CMD = "523,vclip/vc,,()"})
table.insert(CMDN, {N = "freecamfreegoto", A = {"fcfreegoto","fcfreeto","fcfreetp"}, CMD = "524,freecamfreegoto/fcfreegoto/fcfreetp/fcfreeto,(x|y|z),Teleports freecam to pos."})
table.insert(CMDN, {N = "freecamgotopart", A = {"fcgotopart","fctopart","fctppart"}, CMD = "525,freecamgotopart/fcgotopart/fctppart/fctopart,(part),Teleports freecam to part."})
table.insert(CMDN, {N = "audiotp", A = {"atp"}, CMD = "526,audiotp/atp,(num),Teleports audio pos to num."})
table.insert(CMDN, {N = "memory", A = {"mem"}, CMD = "527,memory/mem,,Shows you your current memory usage."})
table.insert(CMDN, {N = "uncleanfling", A = {"uncfling"}, CMD = "528,uncleanfling/uncfling,,()"})
table.insert(CMDN, {N = "loadbpppos", A = {""}, CMD = "529,loadbppos,(name),Bypass teleports to waypoint."})
table.insert(CMDN, {N = "notoolanim", A = {""}, CMD = "530,notoolanim,,Removes tool animations."})
table.insert(CMDN, {N = "play", A = {"aplay"}, CMD = "531,play/aplay,(id),Plays audios in all boomboxes."})
table.insert(CMDN, {N = "attachmenttruesight", A = {"attts"}, CMD = "532,attachmenttruesight/attts,,Shows all attachments."})
table.insert(CMDN, {N = "unattachmenttruesight", A = {"unattts"}, CMD = "533,unattachmenttruesight/unattts,,()."})
table.insert(CMDN, {N = "autoplatform", A = {"autopf"}, CMD = "534,autoplatform/autopf,,Automatically creates a platform when you walk off a part."})
table.insert(CMDN, {N = "unautoplatform", A = {"unautopf"}, CMD = "535,unautoplatform/unautopf,,()."})
table.insert(CMDN, {N = "quickexit", A = {"`","quit"}, CMD = "536,quickexit/`/quit,,Quickly leaves the game."})
table.insert(CMDN, {N = "vfreegoto", A = {"vfreeto","vfreetp"}, CMD = "537,vfreegoto/vfreeto/vfreetp,(x|y|z),Teleports vehicle freely."})
table.insert(CMDN, {N = "vgotopart", A = {"vtopart","vtppart"}, CMD = "538,vgotopart/vtopart/vtppart,(name),Teleports vehicle to part."})
table.insert(CMDN, {N = "vgotoclass", A = {"vtoclass","vtpclass"}, CMD = "539,vgotoclass/vtoclass/vtpclass,(name),Teleports vehicle to class."})
table.insert(CMDN, {N = "vloadpos", A = {""}, CMD = "540,vloadpos,(name),Teleports vehicle to waypoint."})
table.insert(CMDN, {N = "robloxversion", A = {"rver"}, CMD = "541,robloxversion/rver,,Shows you the version of Roblox you are on."})
table.insert(CMDN, {N = "freecamloadpos", A = {"fcloadpos"}, CMD = "542,freecamloadpos/fcloadpos,(name),Teleports freecam to waypoint."})
table.insert(CMDN, {N = "rejoinrefresh", A = {"rjre"}, CMD = "543,rejoinrefresh/rjre,,Rejoins and places you back at the spot you were at."})
table.insert(CMDN, {N = "forceplay", A = {"fp"}, CMD = "544,forceplay/fp,(plr),Loop plays plrs audio to stop muting."})
table.insert(CMDN, {N = "unforceplay", A = {"unfp"}, CMD = "545,unforceplay/unfp,(plr),()."})
table.insert(CMDN, {N = "migratesaves", A = {"msaves"}, CMD = "546,migratesaves/msaves,(file),Migrates save files/backups to Strylix-FE.lua."})
table.insert(CMDN, {N = "resetguipos", A = {"rguipos"}, CMD = "547,resetguipos/rguipos,,Resets GUI position."})
table.insert(CMDN, {N = "properties", A = {"props"}, CMD = "548,properties/props,(class),Lists all properties of class in Roblox using an API."})
table.insert(CMDN, {N = "classes", A = {""}, CMD = "549,classes,,Lists all classes in Roblox using an API."})
table.insert(CMDN, {N = "loopfling", A = {"lfling"}, CMD = "550,loopfling/lfling,(plr),Loop flings player.", ARG = "Player"})
table.insert(CMDN, {N = "unloopfling", A = {"unlfling"}, CMD = "551,unloopfling/unlfling,,()."})
table.insert(CMDN, {N = "nomouse", A = {""}, CMD = "552,nomouse,,Disables mouse icon."})
table.insert(CMDN, {N = "yesmouse", A = {""}, CMD = "553,yesmouse,,()."})
table.insert(CMDN, {N = "futurelighting", A = {"flighting"}, CMD = "554,futurelighting/flighting,,Changes lighting to future."})
table.insert(CMDN, {N = "unfuturelighting", A = {"unflighting"}, CMD = "555,unfuturelighting/unflighting,,()."})
table.insert(CMDN, {N = "removelefthand", A = {"rlefthand","rlhand"}, CMD = "556,removelefthand/rlefthand/rlhand,,Removes left hand."})
table.insert(CMDN, {N = "removerighthand", A = {"rrighthand","rrhand"}, CMD = "557,removerighthand/rrighthand/rrhand,,Removes right hand."})
table.insert(CMDN, {N = "removeleftfoot", A = {"rleftfoot","rlfoot"}, CMD = "558,removeleftfoot/rleftfoot/rlfoot,,Removes left foot."})
table.insert(CMDN, {N = "removerightfoot", A = {"rrightfoot","rrfoot"}, CMD = "559,removerightfoot/rrightfoot/rrfoot,,Removes right floor."})
table.insert(CMDN, {N = "removerightlowerarm", A = {"rrightlowerarm","rrlarm"}, CMD = "560,removerightlowerarm/rrightlowerarm/rrlarm,,Removes right lower arm."})
table.insert(CMDN, {N = "removeleftlowerarm", A = {"rleftlowerarm","rllarm"}, CMD = "561,removeleftlowerarm/rleftlowerarm/rllarm,,Removes left lower arm."})
table.insert(CMDN, {N = "removerightlowerleg", A = {"rrightlowerleg","rrlleg"}, CMD = "562,removerightlowerleg/rrightlowerleg/rrlleg,,Removes right lower leg."})
table.insert(CMDN, {N = "removeleftlowerleg", A = {"rleftlowerleg","rllleg"}, CMD = "563,removeleftlowerleg/rleftlowerleg/rllleg,,Removes left lower leg."})
table.insert(CMDN, {N = "nonick", A = {""}, CMD = "564,nonick,,Blocks nicknames and shows real names."})
table.insert(CMDN, {N = "yesnick", A = {""}, CMD = "565,yesnick,,()."})
table.insert(CMDN, {N = "appearanceidpublic", A = {"aidpu"}, CMD = "566,appearanceidpublic/aidpu,(plr),Publicly shows the character appearance id of player.", ARG = "Player"})
table.insert(CMDN, {N = "appearanceidprivate", A = {"aidpr"}, CMD = "567,appearanceidprivate/aidpr,(plr),Privately shows the character appearance id of player.", ARG = "Player"})
table.insert(CMDN, {N = "nilgoto", A = {""}, CMD = "568,nilgoto,(plr),Teleports to player while in nil.", ARG = "Player"})
table.insert(CMDN, {N = "nilfreegoto", A = {""}, CMD = "569,nilfreegoto,(x|y|z),Freely teleports to position while in nil."})
table.insert(CMDN, {N = "nilgotopart", A = {""}, CMD = "570,nilgotopart,(part),Teleports to part while in nil."})
table.insert(CMDN, {N = "nilgotoclass", A = {""}, CMD = "571,nilgotoclass,(class),Teleports to class while in nil."})
table.insert(CMDN, {N = "removeinworkspace", A = {"rinworkspace"}, CMD = "572,removeinworkspace/rinworkspace,(part),Removes part in workspace."})
table.insert(CMDN, {N = "listnil", A = {""}, CMD = "573,listnil,,Lists nil instances."})
table.insert(CMDN, {N = "removeinnil", A = {"rinnil"}, CMD = "574,removeinnil/rinnil,,Removes part in nil instances."})
currentCMDNUM = "437"
if not syn then syn = {} end
if KeepCMDXOn and syn.queue_on_teleport then
	syn.queue_on_teleport('loadstring(game:HttpGet("PUT SOURCE HERE"))()')
end

--[[
if AntiCheat.ScriptDetectOff and syn then
	setsimulationradius(139,139)
end]]

rejoining = false
function ifKicked()
	cmdp.PlayerRemoving:Connect(function(p)
		if rejoining == false and p == cmdlp then
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, cmdp)
		end
	end)
end

if ifKickedAuto then
	ifKicked()
end

RoundHold = Instance.new("ImageLabel", getParent)
exitplease = Instance.new("TextButton", getParent)
fileworkspace = Instance.new("TextLabel", getParent)
fileext = Instance.new("TextLabel", getParent)
dropkick = Instance.new("ScrollingFrame", getParent)

RoundHold.Name = "RoundHold"
RoundHold.Parent = Unnamed
RoundHold.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RoundHold.BackgroundTransparency = 1.000
RoundHold.Position = UDim2.new(0.679210365, 0, 0.245700255, 0)
RoundHold.Size = UDim2.new(0, 329, 0, 411)
RoundHold.Image = "rbxassetid://3570695787"
RoundHold.ImageColor3 = Color3.fromRGB(29, 29, 29)
RoundHold.ScaleType = Enum.ScaleType.Slice
RoundHold.SliceCenter = Rect.new(100, 100, 100, 100)
RoundHold.SliceScale = 0.120
RoundHold.Active = true
RoundHold.Draggable = true
RoundHold.Visible = false

exitplease.Name = "exitplease"
exitplease.Parent = RoundHold
exitplease.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
exitplease.BackgroundTransparency = 1.000
exitplease.BorderSizePixel = 0
exitplease.Position = UDim2.new(0.896656513, 0, -0.00243308954, 0)
exitplease.Size = UDim2.new(0, 35, 0, 39)
exitplease.Font = Enum.Font.GothamBold
exitplease.Text = "X"
exitplease.TextColor3 = Color3.fromRGB(255, 255, 255)
exitplease.TextSize = 20.000
exitplease.MouseButton1Down:Connect(function()
	RoundHold.Visible = false    
end)

fileworkspace.Name = "fileworkspace"
fileworkspace.Parent = RoundHold
fileworkspace.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
fileworkspace.BackgroundTransparency = 1.000
fileworkspace.Position = UDim2.new(0.0351015925, 0, -0.00124643743, 0)
fileworkspace.Size = UDim2.new(0, 305, 0, 40)
fileworkspace.Font = Enum.Font.GothamBold
fileworkspace.Text = "Choose a file:"
fileworkspace.TextColor3 = Color3.fromRGB(255, 255, 255)
fileworkspace.TextSize = 20.000

fileext.Name = "fileext"
fileext.Parent = RoundHold
fileext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
fileext.BackgroundTransparency = 1.000
fileext.Position = UDim2.new(0.0351015218, 0, 0.925760746, 0)
fileext.Size = UDim2.new(0, 305, 0, 20)
fileext.Font = Enum.Font.GothamBold
fileext.Text = "plugins go inside Strylix-FE Plugins folder located in workspace"
fileext.TextColor3 = Color3.fromRGB(255, 255, 255)
fileext.TextScaled = true
fileext.TextSize = 15.000
fileext.TextWrapped = true

dropkick.Name = "dropkick"
dropkick.Parent = RoundHold
dropkick.Active = true
dropkick.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
dropkick.BorderSizePixel = 0
dropkick.Position = UDim2.new(0.0351015925, 0, 0.0941223204, 0)
dropkick.Size = UDim2.new(0, 305, 0, 327)

function PluginFile(name, full, status, num)
	if status then status = "on" else status = "off" end
	local roundtemp = Instance.new("ImageLabel", getParent)
	local nameof = Instance.new("TextLabel", getParent)
	local roundtempbut = Instance.new("TextButton", getParent)
	local tempround = Instance.new("ImageLabel", getParent)
	local tempframelab = Instance.new("TextLabel", getParent)

	currentPosition = 5

	for i,v in pairs(dropkick:GetChildren()) do
		currentPosition = currentPosition + 40
	end

	roundtemp.Name = "roundtemp"
	roundtemp.Parent = dropkick
	roundtemp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	roundtemp.BackgroundTransparency = 1.000
	roundtemp.Position = UDim2.new(0, 5, 0, currentPosition)
	roundtemp.Size = UDim2.new(0, 277, 0, 35)
	roundtemp.Image = "rbxassetid://3570695787"
	roundtemp.ImageColor3 = Color3.fromRGB(59, 59, 59)
	roundtemp.ScaleType = Enum.ScaleType.Slice
	roundtemp.SliceCenter = Rect.new(100, 100, 100, 100)
	roundtemp.SliceScale = 0.120

	nameof.Name = "nameof"
	nameof.Parent = roundtemp
	nameof.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	nameof.BackgroundTransparency = 1.000
	nameof.Position = UDim2.new(0.0590518415, 0, 0.00727887824, 0)
	nameof.Size = UDim2.new(0, 191, 0, 35)
	nameof.Font = Enum.Font.GothamBold
	nameof.Text = name.." | "..full.." | "..status
	nameof.TextColor3 = Color3.fromRGB(255, 255, 255)
	nameof.TextSize = 14.000
	nameof.TextXAlignment = Enum.TextXAlignment.Left
	nameof.TextWrapped = true

	roundtempbut.Name = "roundtempbut"
	roundtempbut.Parent = roundtemp
	roundtempbut.BackgroundColor3 = Color3.fromRGB(83, 83, 83)
	roundtempbut.BackgroundTransparency = 1.000
	roundtempbut.BorderSizePixel = 0
	roundtempbut.Position = UDim2.new(0.750902534, 0, 0.142857149, 0)
	roundtempbut.Size = UDim2.new(0, 62, 0, 25)
	roundtempbut.Font = Enum.Font.GothamBold
	roundtempbut.Text = "Add"
	roundtempbut.TextColor3 = Color3.fromRGB(255, 255, 255)
	roundtempbut.TextSize = 14.000
	roundtempbut.MouseButton1Down:Connect(function()
		if tempframelab.Text == "turn on" then
			Plugins[num].Status = true
			tempframelab.Text = "turn off"
		else
			Plugins[num].Status = false
			tempframelab.Text = "turn on" 
		end
		updatesaves()
	end)

	tempround.Name = "tempround"
	tempround.Parent = roundtempbut
	tempround.Active = true
	tempround.AnchorPoint = Vector2.new(0.5, 0.5)
	tempround.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	tempround.BackgroundTransparency = 1.000
	tempround.Position = UDim2.new(0.5, 0, 0.5, 0)
	tempround.Selectable = true
	tempround.Size = UDim2.new(1, 0, 1, 0)
	tempround.Image = "rbxassetid://3570695787"
	tempround.ImageColor3 = Color3.fromRGB(83, 83, 83)
	tempround.ScaleType = Enum.ScaleType.Slice
	tempround.SliceCenter = Rect.new(100, 100, 100, 100)
	tempround.SliceScale = 0.120

	tempframelab.Name = "tempframelab"
	tempframelab.Parent = tempround
	tempframelab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	tempframelab.BackgroundTransparency = 1.000
	tempframelab.Position = UDim2.new(-1.11290324, 0, -0.479999989, 0)
	tempframelab.Size = UDim2.new(0, 200, 0, 50)
	tempframelab.Font = Enum.Font.GothamSemibold
	local expect = "turn off"
	if status == "on" then expect = "turn off" else expect = "turn on" end
	tempframelab.Text = expect
	tempframelab.TextColor3 = Color3.fromRGB(255, 255, 255)
	tempframelab.TextSize = 14.000
end

PCs = {"using","far","random","new","old","bacon","friend","notfriend","ally","enemy","near","me"}
cmd.Changed:Connect(function()
	local checkargs = string.split(cmd.Text," ")
	if checkargs[2] then
		for _,v in pairs(CMDN) do
			for _,x in pairs(v.A) do
				if checkargs[1] == v.N or checkargs[1] == x then cmdsu.Text = "" end
			end
		end
	end
	if cmd.Text ~= "" and not checkargs[2] and suggestions == true then
		for _,v in pairs(CMDN) do
			for _,x in pairs(v.A) do
				if string.match(v.N,cmd.Text) then
					if v.N:sub(1,#cmd.Text) == cmd.Text then
						cmdsu.Text = v.N
					end
				end
				if string.match(x,cmd.Text) then
					if x:sub(1,#cmd.Text) == cmd.Text then
						cmdsu.Text = x
					end
				end
				if cmd.Text == nil or cmd.Text == "Enter CMD here" then
					cmdsu.Text = ""
				end
			end
		end
	elseif cmd.Text ~= "" and checkargs[2] and suggestions == true then
		for _,v in pairs(CMDN) do
			for _,x in pairs(v.A) do
				if v.N == checkargs[1] or x == checkargs[1] and v.ARG == "Player" then
					for _,plr in pairs(cmdp:GetPlayers()) do --Shit to change
						for _, pc in pairs(PCs) do
							if v.ARG == "Player" then
								NewName = plr.Name:lower()
								if string.match(NewName,checkargs[2]) then
									if NewName:sub(0,#checkargs[2]) == checkargs[2] then
										cmdsu.Text = checkargs[1].." "..NewName
									end
								end
								if string.match(pc,checkargs[2]) then
									if pc:sub(0,#checkargs[2]) == checkargs[2] then
										cmdsu.Text = checkargs[1].." "..pc
									end
								end
							end
						end
					end
				end
			end
		end
	else
		cmdsu.Text = ""
	end
end)
cmd.FocusLost:Connect(function()
	cmdsu.Text = ""
end)
cmduis.InputBegan:Connect(function()
	if cmduis:IsKeyDown(Enum.KeyCode.RightShift) and cmd:IsFocused() then
		cmd.Text = cmdsu.Text
		cmd.CursorPosition = #cmd.Text+1
	elseif cmduis:IsKeyDown(Enum.KeyCode.Tab) and cmd:IsFocused() then
		wait(.1)
		cmd.Text = cmdsu.Text
		cmd.CursorPosition = #cmd.Text+1
	end
end)

local cmdsholder = Instance.new("Frame", getParent)
local Cmdsearch = Instance.new("TextBox", getParent)
local cmdviewertitle = Instance.new("TextLabel", getParent)
local xoutofcmds = Instance.new("TextButton", getParent)
local scrollholder = Instance.new("Frame", getParent)
local ref = Instance.new("TextLabel", getParent)
local splitter = Instance.new("Frame", getParent)
local Scrollingcmdi = Instance.new("ScrollingFrame", getParent)

cmdsholder.Name = "cmdsholder"
cmdsholder.Parent = Unnamed
cmdsholder.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
cmdsholder.BorderSizePixel = 0
cmdsholder.Position = UDim2.new(0.217357904, 0, 0.208845213, 0)
cmdsholder.Size = UDim2.new(0, 424, 0, 294)
cmdsholder.Draggable = true
cmdsholder.Active = true
cmdsholder.Visible = false

Cmdsearch.Name = "Cmdsearch"
Cmdsearch.Parent = cmdsholder
Cmdsearch.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
Cmdsearch.BorderSizePixel = 0
Cmdsearch.Position = UDim2.new(0.245283023, 0, 0.884353757, 0)
Cmdsearch.Size = UDim2.new(0, 213, 0, 26)
Cmdsearch.Font = Enum.Font.SourceSans
Cmdsearch.PlaceholderText = "Search commands..."
Cmdsearch.Text = ""
Cmdsearch.TextColor3 = Color3.fromRGB(255, 255, 255)
Cmdsearch.TextSize = 14

cmdviewertitle.Name = "cmdviewertitle"
cmdviewertitle.Parent = cmdsholder
cmdviewertitle.BackgroundColor3 = Color3.new(1, 1, 1)
cmdviewertitle.BackgroundTransparency = 1
cmdviewertitle.Position = UDim2.new(0.264150947, 0, 0, 0)
cmdviewertitle.Size = UDim2.new(0, 200, 0, 22)
cmdviewertitle.Font = Enum.Font.GothamBold
cmdviewertitle.Text = "Strylix-FE COMMANDS VIEWER"
cmdviewertitle.TextColor3 = Color3.new(1, 1, 1)
cmdviewertitle.TextSize = 14

xoutofcmds.Name = "xoutofcmds"
xoutofcmds.Parent = cmdsholder
xoutofcmds.BackgroundColor3 = Color3.new(1, 1, 1)
xoutofcmds.BackgroundTransparency = 1
xoutofcmds.Position = UDim2.new(0.948113203, 0, 0, 0)
xoutofcmds.Size = UDim2.new(0, 22, 0, 22)
xoutofcmds.Font = Enum.Font.GothamBold
xoutofcmds.Text = "X"
xoutofcmds.TextColor3 = Color3.new(1, 1, 1)
xoutofcmds.TextSize = 20
xoutofcmds.MouseButton1Down:Connect(function()
	Scrollingcmdi:ClearAllChildren()
	cmdsholder.Visible = false
end)

scrollholder.Name = "scrollholder"
scrollholder.Parent = cmdsholder
scrollholder.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
scrollholder.BorderSizePixel = 0
scrollholder.Position = UDim2.new(0.0306603778, 0, 0.0748299286, 0)
scrollholder.Size = UDim2.new(0, 397, 0, 232)

ref.Name = "ref"
ref.Parent = scrollholder
ref.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
ref.BorderSizePixel = 0
ref.Size = UDim2.new(0, 397, 0, 20)
ref.Font = Enum.Font.Gotham
ref.Text = " Num | Names | Arguments | Description "
ref.TextColor3 = Color3.new(1, 1, 1)
ref.TextSize = 14
ref.TextXAlignment = Enum.TextXAlignment.Left

splitter.Name = "splitter"
splitter.Parent = scrollholder
splitter.BackgroundColor3 = Color3.new(1, 1, 1)
splitter.BorderColor3 = Color3.new(1, 1, 1)
splitter.Position = UDim2.new(0.0100755664, 0, 0.0892857313, 0)
splitter.Size = UDim2.new(0, 389, 0, 0)

Scrollingcmdi.Name = "Scrollingcmdi"
Scrollingcmdi.Parent = scrollholder
Scrollingcmdi.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
Scrollingcmdi.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Scrollingcmdi.BorderSizePixel = 0
Scrollingcmdi.Position = UDim2.new(0.00986763742, 0, 0.102678575, 0)
Scrollingcmdi.Size = UDim2.new(0, 389, 0, 204)
Scrollingcmdi.ScrollBarThickness = 10
function CreateCMDLabel(num,name,arg,func)
	local sf2 = Scrollingcmdi
	if #sf2:GetChildren() >= 2546 then
		sf2:ClearAllChildren()
	end
	local alls2 = 0
	for _,v in pairs(sf2:GetChildren()) do
		if v then
			alls2 = v.Size.Y.Offset + alls2
		end
		if not v then
			alls2 = 0
		end
	end
	local tl2 = Instance.new('TextLabel', sf2)
	local il2 = Instance.new('Frame', tl2)
	tl2.Name = name
	tl2.ZIndex = 6
	tl2.Text = num.." | "..name.." | "..arg.." | "..func
	tl2.Size = UDim2.new(0,322,0,50)
	tl2.BackgroundTransparency = 1
	tl2.BorderSizePixel = 0
	tl2.Font = "SourceSansBold"
	tl2.Position = UDim2.new(-1,0,0,alls2)
	tl2.TextTransparency = 1
	tl2.TextScaled = false
	tl2.TextSize = 14
	tl2.TextWrapped = true
	tl2.TextXAlignment = "Left"
	tl2.TextYAlignment = "Top"
	il2.BackgroundTransparency = 1
	il2.BorderSizePixel = 0
	il2.Size = UDim2.new(0,12,1,0)
	il2.Position = UDim2.new(0,316,0,0)
	tl2.TextColor3 = Color3.fromRGB(255,255,255)
	tl2.Size = UDim2.new(0,322,0,tl2.TextBounds.Y)
	tl2.Position = UDim2.new(0,3,0,alls2)
	sf2.CanvasSize = UDim2.new(0,0,0,alls2+tl2.TextBounds.Y)
	sf2.CanvasPosition = Vector2.new(0,sf2.CanvasPosition.Y+tl2.TextBounds.Y)
	local size22 = sf2.CanvasSize.Y.Offset
	tl2.TextTransparency = 0
end

Cmdsearch.FocusLost:Connect(function()
	Scrollingcmdi:ClearAllChildren()
	if Cmdsearch.Text ~= "" then
		for _,v in pairs(CMDN) do
			for _,x in pairs(v.A) do
				if string.find(v.N,Cmdsearch.Text) then
					if v.N:sub(1,#Cmdsearch.Text) == Cmdsearch.Text then
						local CS = string.split(v.CMD,",")
						CreateCMDLabel(CS[1],CS[2],CS[3],CS[4])
					end
				end
				if string.find(x,Cmdsearch.Text) then
					if x:sub(1,#Cmdsearch.Text) == Cmdsearch.Text then
						local CS = string.split(v.CMD,",")
						CreateCMDLabel(CS[1],CS[2],CS[3],CS[4])
					end
				end
			end
		end
	else
		for _,v in pairs(CMDN) do
			local CS = v.CMD:split(",")
			CreateCMDLabel(CS[1],CS[2],CS[3],CS[4])
		end
	end
end)
function refresh()
	LPos = cmdlp.Character.HumanoidRootPart.CFrame
	cmdlp.Character.Humanoid.PlatformStand = false
	cmdlp.Character.Humanoid.Health = 0
	cmdlp.Character.Head.CFrame = CFrame.new(1e9,0,1e9)
	cmdlp.Character.HumanoidRootPart:Destroy()
	repeat wait() until cmdlp.Character ~= nil and cmdlp.Character:FindFirstChild('HumanoidRootPart')
	cmdlp.Character.HumanoidRootPart.CFrame = LPos
end
function IESP(v)
	spawn(function()
		for i,n in pairs(cmdlp.PlayerGui:GetChildren()) do
			if n.Name == v:GetFullName()..'_IESP' then
				n:Destroy()
			end
		end
		wait()
		IESPholder = Instance.new("Folder", cmdlp.PlayerGui)
		IESPholder.Name = v:GetFullName()..'_IESP'
		local a = Instance.new("BoxHandleAdornment", IESPholder)
		a.Name = v.Name
		a.Adornee = v
		a.AlwaysOnTop = true
		a.ZIndex = 0
		a.Size = v.Size
		a.Transparency = 0.8
		a.Color = v.BrickColor
		local BillboardGui = Instance.new("BillboardGui", IESPholder)
		local TextLabel = Instance.new("TextLabel", getParent)
		BillboardGui.Adornee = v
		BillboardGui.Name = v.Name
		BillboardGui.Size = UDim2.new(0, 100, 0, 150)
		BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
		BillboardGui.AlwaysOnTop = true
		TextLabel.Parent = BillboardGui
		TextLabel.BackgroundTransparency = 1
		TextLabel.Position = UDim2.new(0, 0, 0, -60)
		TextLabel.Size = UDim2.new(0, 100, 0, 100)
		TextLabel.Font = Enum.Font.SourceSansSemibold
		TextLabel.TextSize = 20
		TextLabel.TextColor3 = Color3.new(1, 1, 1)
		TextLabel.TextStrokeTransparency = 0.6
		TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
		TextLabel.Text = v.Name
	end)
end
workspace.DescendantAdded:Connect(function(i)
	if IESPenabled then
		local pi = i.Name:lower()
		local pt = "handle"
		local pt1 = "tool"
		local pt2 = "item"
		local z = string.find(pi,pt)
		local z1 = string.find(pi,pt1)
		local z2 = string.find(pi,pt2)
		if i:IsA("BasePart") and i.Parent.ClassName ~= "Accessory" then
			if z ~= nil or z1 ~= nil or z2 ~= nil then
				IESP(i)
			end
		end
	end
end)
workspace.DescendantRemoving:connect(function(i)
	if IESPenabled then
		for a,v in pairs(cmdlp.PlayerGui:GetChildren()) do
			if v.Name == i:GetFullName()..'_IESP' then
				v:Destroy()
			end
		end
	end
end)
function ESP(plr)
	spawn(function()
		for _,v in pairs(cmdlp.PlayerGui:GetChildren()) do
			if v.Name == plr.Name..'_ESP' then
				v:Destroy()
			end
		end
		wait()
		if plr.Character and plr.Name ~= cmdp.LocalPlayer.Name and not cmdp.LocalPlayer.PlayerGui:FindFirstChild(plr.Name..'_ESP') then
			local ESPholder = Instance.new("Folder", cmdlp.PlayerGui)
			ESPholder.Name = plr.Name..'_ESP'
			for b,n in pairs(plr.Character:GetChildren()) do
				if (n:IsA("BasePart")) then
					local a = Instance.new("BoxHandleAdornment", ESPholder)
					a.Name = plr.Name
					a.Adornee = n
					a.AlwaysOnTop = true
					a.ZIndex = 0
					a.Size = n.Size
					a.Transparency = 0.8
					for i,m in pairs(plr.Character:GetChildren()) do
						if m:IsA("Part") or m:IsA("MeshPart") then
							if m.Name ~= "HumanoidRootPart" and m.Name ~= "Handle" or (m:IsA("Part")) then
								m.Material = "ForceField"
								a.Color = m.BrickColor
							end
						end
					end
				end
			end
			if plr.Character and plr.Character:FindFirstChild('Head') then
				local BillboardGui = Instance.new("BillboardGui", ESPholder)
				local TextLabel = Instance.new("TextLabel", getParent)
				BillboardGui.Adornee = plr.Character.Head
				BillboardGui.Name = plr.Name
				BillboardGui.Size = UDim2.new(0, 100, 0, 150)
				BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
				BillboardGui.AlwaysOnTop = true
				TextLabel.Parent = BillboardGui
				TextLabel.BackgroundTransparency = 1
				TextLabel.Position = UDim2.new(0, 0, 0, -60)
				TextLabel.Size = UDim2.new(0, 100, 0, 100)
				TextLabel.Font = Enum.Font.SourceSansSemibold
				TextLabel.TextSize = 20
				TextLabel.TextColor3 = Color3.new(1, 1, 1)
				TextLabel.TextStrokeTransparency = 0.6
				TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
				plr.CharacterAdded:Connect(function()
					if ESPenabled then
						espLoopFunc:Disconnect()
						ESPholder:Destroy()
					repeat wait(1) until plr.Character:FindFirstChild('HumanoidRootPart') and plr.Character:FindFirstChild('Humanoid')
						ESP(plr)
					end
				end)
				local function espLoop()
					if cmdlp.PlayerGui:FindFirstChild(plr.Name..'_ESP') then
						if plr.Character:FindFirstChild('HumanoidRootPart') and plr.Character:FindFirstChild('Humanoid') then
							TextLabel.Text = plr.Name.."|Studs: ".. math.floor((cmdlp.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).magnitude).."|Health: "..plr.Character.Humanoid.Health
						end
					else
						espLoopFunc:Disconnect()
					end
				end
				espLoopFunc = game:GetService("RunService").RenderStepped:Connect(espLoop)
			end
		end
	end)
end
cmdp.PlayerRemoving:connect(function(player)
	for _,v in pairs(cmdlp.PlayerGui:GetChildren()) do
		if v.Name == player.Name..'_ESP' or v.Name == player.Name..'_LC' then
			v:Destroy()
		end
	end
end)
	   
Enabledaimbot = false
function BodyAimbot()
	if Enabledaimbot == true then
		repeat wait() until #cmdp:GetPlayers() > 1 --Shit to change
		local SPS = .001
		local LPCHead = cmdlp.Character:FindFirstChild("Head")
		local LPCTorso = cmdlp.Character:FindFirstChild("UpperTorso")
		local LPCHRPart = cmdlp.Character:FindFirstChild("HumanoidRootPart")
		local Closest = nil
		local Camera = cmdws:FindFirstChild("Camera")
		local aehl = Instance.new("BoxHandleAdornment", cmdlp.PlayerGui)
		aehl.Name = "ESPhelp"
		aehl.AlwaysOnTop = true
		aehl.ZIndex = 0
		aehl.Size = Vector3.new(2, 2.1, 1)
		aehl.Transparency = 0.8
		aehl.Color3 = Color3.new(255,0,0)
		local try = 1
		local teamcount = game.Teams:GetTeams()
		local teams = false
		if #teamcount >= 1 then
			teams = true
		end
		local Launch = false
		local launchCFrame = nil
		local function searchplr(requestedplr)
			if PlayersWLsystem[requestedplr.Name] == true then
				return false
			elseif PlayersWLsystem[requestedplr.Name] == false then
				return true
			end
		end
		while Enabledaimbot do
			local Distance = 100000
			for count,TargetP in pairs(cmdp:GetPlayers()) do --Shit to change
				if searchplr(TargetP) then
					if (TargetP ~= nil) and TargetP ~= cmdlp then
					local TC = TargetP.Character
					local TCHRPart = nil
					if TC then
					TCHRPart = TC:FindFirstChild("HumanoidRootPart")
					end
						if TCHRPart then
						try = 1
						local DistanceMAg = (TCHRPart.Position - LPCHRPart.Position).Magnitude
							if DistanceMAg < Distance and TCHRPart.Parent.Humanoid.Health > 0 then
								if teams then
								if TargetP.Team ~= cmdlp.Team then
									Closest = TCHRPart
									launchCFrame = TCHRPart.CFrame
									Distance = DistanceMAg
									opx("Target: "..Closest.Parent.Name)
									aehl.Adornee = TCHRPart
									Camera.CFrame = CFrame.new(LPCHRPart.Position,Closest.Position)
								end
								elseif not teams then
									Closest = TCHRPart
									Distance = DistanceMAg
									aehl.Adornee = TCHRPart
									Camera.CFrame = CFrame.new(LPCHRPart.Position,Closest.Position)
								end
							end
						elseif not TCHRPart then
							try = try + 1
							break
						end
					end
				elseif not searchplr(TargetP) then
				opx("Target is whitelisted!")
				end
			end
			local currentRP = LPCHRPart:FindFirstChild("Launch")
			if currentRP ~= nil then
				currentRP.Target = Closest
				if Noclipping then
					currentRP.MaxSpeed = 100
				elseif not Noclipping then
					currentRP.MaxSpeed = 1000
				end
			end
			cmduis.InputBegan:connect(function(input)
				if cmduis:IsKeyDown(Enum.KeyCode.KeypadPlus) and Enabledaimbot then
					Launch = not Launch
					local ps = cmdlp.Character.Humanoid.PlatformStand
					ps = Launch
					if Launch then
						local rp = Instance.new("RocketPropulsion")
						rp.Parent = LPCHRPart
						rp.CartoonFactor = 1
						rp.MaxThrust = 5000
						rp.MaxSpeed = 1000
						rp.ThrustP = 5000
						rp.Name = "Launch"
						currentRP = rp
						rp:Fire()
					elseif not Launch then
						for i,des in pairs(LPCHRPart:GetChildren()) do
							if des:IsA("RocketPropulsion") and des.Name == "Launch" then
								des:Destroy()
							end
						end
					end
				end
			end)
			cmdrs2.Heartbeat:Wait()
		end
	elseif not Enabledaimbot then
		local findESP = cmdlp.PlayerGui:FindFirstChild("ESPhelp")
		 if findESP then
			findESP:Destroy()
		 end
	end
end
cmduis.InputBegan:connect(function(input)
	if cmduis:IsKeyDown(Enum.KeyCode.KeypadPlus) and not Enabledaimbot then
		for _,des in pairs(cmdlp.Character.HumanoidRootPart:GetChildren()) do
			if des:IsA("RocketPropulsion") and des.Name == "Launch" then
				des:Destroy()
			end
		end
	end
end)

if Noclipping then
	Noclipping:Disconnect()
end
Clip = true
function noclip()
	Clip = false
	function NoclipLoop()
		if Clip == false and cmdlp.Character ~= nil then
			for _, child in pairs(cmdlp.Character:GetDescendants()) do
				if child:IsA("BasePart") and child.CanCollide == true then
					child.CanCollide = false
				end
			end
		end
	end
	Noclipping = game:GetService('RunService').Stepped:connect(NoclipLoop)
end
if cmdlp.Character and cmdlp:FindFirstChildWhichIsA("Humanoid") then
	cmdlp.Character:FindFirstChildWhichIsA("Humanoid").Died:Connect(function()
		if conFly == true then
			if FLYING == true then
				repeat wait() until cmdlp.Character ~= nil and cmdlp.Character:FindFirstChild('HumanoidRootPart') and cmdlp.Character:FindFirstChild('Humanoid')
				wait(2)
				FLYING = false
				cmdlp.Character.Humanoid.PlatformStand = false 
				sFLY()
				speedofthefly = permflyspeed
			end
		end
		Enabledaimbot = false
		if Clip == false then
			Clip = true
			wait(1)
			Clip = false
		end
	end)
end
cmdlp.CharacterAdded:Connect(function(char)
	wait(2)
	char:FindFirstChildWhichIsA("Humanoid").Died:Connect(function()
		if conFly == true then
			if FLYING == true then
				repeat wait() until cmdlp.Character ~= nil and cmdlp.Character:FindFirstChild('HumanoidRootPart') and cmdlp.Character:FindFirstChild('Humanoid')
				wait(.1)
				FLYING = false
				cmdlp.Character.Humanoid.PlatformStand = false 
				sFLY()
				speedofthefly = permflyspeed
			end
		end
		Enabledaimbot = false
		if Clip == false then
			Clip = true
			wait(1)
			Clip = false
		end
	end)
end)
---------------------------------------|
-- Commands: --------------------------|

function opx(f,text)
	if ChatBind == false then
		output9.Text = output8.Text
		output8.Text = output7.Text
		output7.Text = output6.Text
		output6.Text = output5.Text
		output5.Text = output4.Text
		output4.Text = output3.Text
		output3.Text = output2.Text
		output2.Text = output1.Text
		if f == "*" then
			output1.Text = "[*] "..text
		elseif f == "-" then
			output1.Text = "[-] "..text
		end
	else
		if f == "*" then
			cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("[Strylix-FE*] "..text,"All")
		elseif f == "-" then
			cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("[Strylix-FE-] "..text,"All")
		end
	end
end

function alignFunctions(getArgs)
	local cmdws = workspace
	local cmdp = game:GetService("Players")
	local cmdl = game:GetService("Lighting")
	local cmdrs = game:GetService("ReplicatedStorage")
	local cmdrs2 = game:GetService("RunService")
	local cmdts = game:GetService("TweenService")
	local cmdvu = game:GetService("VirtualUser")
	local cmduis = game:GetService("UserInputService")
	local cmdteams = game:GetService("Teams")
	local cmdlp = cmdp.LocalPlayer
	local cmdm = cmdlp:GetMouse()
	arguments = string.split(getArgs," ")
	function getstring(begin)
		local start = begin-1
		local AA = ''
		for i,v in pairs(arguments) do
			if i > start then
				if AA ~= '' then
					AA = AA .. ' ' .. v
				else
					AA = AA .. v
				end
			end
		end
		return AA
	end
	arguments[1] = arguments[1]:lower()
end

function findCmd(cmd_name)
	for _,v in pairs(CMDN) do
		for _,x in pairs(v.A) do
			if v.N:lower() == cmd_name:lower() or x:lower() == cmd_name:lower() then
				v = v.N
				return v
			end
		end
	end
end

function giveCmd(cmd_name)
	for _,v in pairs(CMDN) do
		for _,x in pairs(v.A) do
			if v.N:lower() == cmd_name:lower() or x:lower() == cmd_name:lower() then
				return v
			end
		end
	end
end

for i = oldNum+1,#CMDN do
	CMDStat[#CMDStat+1] = {N = CMDN[i].N, T = 0}
end

oldNum = #CMDN
updatesaves()

local noCMD = false

fixedArgs = false
Debugging = false
local History = {}
local useCommand = {}
cmd.FocusLost:connect(function()
	if cmd.Text:lower():sub(1,#prefix) == prefix then
		cmd.Text = cmd.Text:sub(#prefix+1,100000)
	elseif cmd.Text:lower():sub(1,1) == '.' then
		cmd.Text = cmd.Text:sub(2,100000)
	end
	if cmd.Text ~= "" then
		local matchCommand = ""
		wait(.1)
		alignFunctions(cmd.Text)
		local cmdsy = findCmd(arguments[1])
		if cmdsy ~= nile then
			History[#History+1] = cmd.Text
			for _,v in pairs(CMDStat) do
				if cmdsy == v.N then
					v.T = v.T+1
				end
			end
			updatesaves()
			cmd.Text = ""
			if fixedArgs == false then
				if commandsLoaded() and noCMD == false then
					if Debugging == false then
						useCommand[cmdsy]()
					else
						pcall(function() useCommand[cmdsy]() end)
					end
				elseif noCMD == true and cmdsy == "yescommands" then
					useCommand[cmdsy]()
				else
					opx("*","Need help? Join our discord! "..cordCode)
				end
			else
				opx("*","Need help? Join our discord! "..cordCode)
			end
		else
			cmd.Text = ""
			local invalidString = getstring(1)
			if #invalidString > 38 then
				invalidString = invalidString:sub(1,35).."..."
			end
			opx("*",invalidString.." is not a valid command.")
		end
	end
end)

function useCommand.prefix()
	opx("-","Your prefix is "..prefix.." or .")
end

function useCommand.promptnew()
	if arguments[2] == "name" then
		prompt = cmdlp.Name.." >"
		updatesaves()
		user.Text = cmdlp.Name.." >"
		opx("-","Prompt name set to username")
	else
		prompt = getstring(2).." >"
		updatesaves()
		user.Text = getstring(2).." >"
		opx("-","Prompt name set to "..getstring(2))
	end
end

function useCommand.prefixnew()
	if arguments[2] then
		prefix = arguments[2]
		updatesaves()
		opx("-","Prefix set to "..arguments[2])
	else
		opx("*","2 arguments are required for this command!")
	end
end

function useCommand.boobsize()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			local BBtable = {"Baby size","Tiny","Medium size","Normal Size","Large","Gigantic","Anime size"}
			local pickBB = math.random(1,#BBtable)
			opx("-",target.Name.." has "..BBtable[pickBB].." roboobs")
			cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(target.Name.." has "..BBtable[pickBB].." roboobs","All")
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are required for this command!")
	end
end

function useCommand.hotkeyopen()
	if arguments[2] then
		hotkeyopen = arguments[2]:lower()
		updatesaves()
		opx("-","Hotkey set to "..arguments[2])
	else
		opx("*","2 arguments are required for this command!")
	end
end

function useCommand.hotkeyoutput()
	if arguments[2] then
		hotkeyopx = arguments[2]:lower()
		updatesaves()
		opx("-","Hotkey set to "..arguments[2])
	else
		opx("*","2 arguments are required for this command!")
	end
end

function useCommand.hotkeyfocus()
	if arguments[2] then
		hotkeyfocus = arguments[2]:lower()
		updatesaves()
		opx("-","Hotkey set to "..arguments[2])
	else
		opx("*","2 arguments are required for this command!")
	end
end

ManageHolderEnter = Instance.new("Frame", getParent)
MangeScrollEnter = Instance.new("ScrollingFrame", getParent)
BtnAddEnter = Instance.new("TextButton", getParent)
BtnClearEnter = Instance.new("TextButton", getParent)
ManageTitleEnter = Instance.new("TextLabel", getParent)
SlideOutEnter = Instance.new("Frame", getParent)
Edit1Enter = Instance.new("TextBox", getParent)
Edit2Enter = Instance.new("TextBox", getParent)
Edit3Enter = Instance.new("TextBox", getParent)
TitleSlideEnter = Instance.new("TextLabel", getParent)
CancelBtnEnter = Instance.new("TextButton", getParent)
ApplyBtnEnter = Instance.new("TextButton", getParent)
BtnExitEnter = Instance.new("TextButton", getParent)

ManageHolderEnter.Name = "ManageHolderEnter"
ManageHolderEnter.Parent = Unnamed
ManageHolderEnter.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
ManageHolderEnter.BackgroundTransparency = -0.010
ManageHolderEnter.BorderSizePixel = 0
ManageHolderEnter.Position = UDim2.new(0.33610791, 0, 0.279678553, 0)
ManageHolderEnter.Size = UDim2.new(0, 424, 0, 294)
ManageHolderEnter.Active = true
ManageHolderEnter.Draggable = true
ManageHolderEnter.Visible = false

MangeScrollEnter.Name = "MangeScrollEnter"
MangeScrollEnter.Parent = ManageHolderEnter
MangeScrollEnter.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
MangeScrollEnter.BorderSizePixel = 0
MangeScrollEnter.Position = UDim2.new(0.0268278271, 0, 0.10493198, 0)
MangeScrollEnter.Size = UDim2.new(0, 401, 0, 214)

function Template2(name,entry)
	local TemplateFrame = Instance.new("Frame", getParent)
	local TemplateName = Instance.new("TextLabel", getParent)
	local TemplateBtnRemove = Instance.new("TextButton", getParent)
	local TemplateBtnAdd = Instance.new("TextButton", getParent)
	local alls2 = 5
	for _,v in pairs(MangeScrollEnter:GetChildren()) do
		if v then
			alls2 = v.Size.Y.Offset + alls2+5
		end
		if not v then
			alls2 = 5
		end
	end
	TemplateFrame.Name = name
	TemplateFrame.Parent = MangeScrollEnter
	TemplateFrame.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
	TemplateFrame.BorderSizePixel = 0
	TemplateFrame.Position = UDim2.new(-1,0,0,alls2)
	TemplateFrame.Size = UDim2.new(0, 368, 0, 19)

	TemplateName.Name = "TemplateName"
	TemplateName.Parent = TemplateFrame
	TemplateName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TemplateName.BackgroundTransparency = 1.000
	TemplateName.BorderSizePixel = 0
	TemplateName.Position = UDim2.new(0.0231884252, 0, 0, 0)
	TemplateName.Size = UDim2.new(0, 191, 0, 19)
	TemplateName.Font = Enum.Font.GothamBlack
	TemplateName.Text = name.."|"..entry
	TemplateName.TextColor3 = Color3.fromRGB(255, 255, 255)
	TemplateName.TextSize = 14.000
	TemplateName.TextXAlignment = Enum.TextXAlignment.Left

	TemplateBtnRemove.Name = "TemplateBtnRemove"
	TemplateBtnRemove.Parent = TemplateFrame
	TemplateBtnRemove.BackgroundColor3 = Color3.fromRGB(176, 176, 176)
	TemplateBtnRemove.BackgroundTransparency = 0.700
	TemplateBtnRemove.BorderSizePixel = 0
	TemplateBtnRemove.Position = UDim2.new(0.859420359, 0, 0, 0)
	TemplateBtnRemove.Size = UDim2.new(0, 51, 0, 19)
	TemplateBtnRemove.Font = Enum.Font.Gotham
	TemplateBtnRemove.Text = "Remove"
	TemplateBtnRemove.TextColor3 = Color3.fromRGB(255, 255, 255)
	TemplateBtnRemove.TextSize = 12.000
	TemplateBtnRemove.MouseButton1Down:Connect(function()
		table.remove(enterCMD,entry)
		TemplateBtnRemove.Parent:Destroy()
		updatesaves()
	end)

	TemplateBtnAdd.Name = "TemplateBtnAdd"
	TemplateBtnAdd.Parent = TemplateFrame
	TemplateBtnAdd.BackgroundColor3 = Color3.fromRGB(176, 176, 176)
	TemplateBtnAdd.BackgroundTransparency = 0.700
	TemplateBtnAdd.BorderSizePixel = 0
	TemplateBtnAdd.Position = UDim2.new(0.699094296, 0, 0, 0)
	TemplateBtnAdd.Size = UDim2.new(0, 51, 0, 19)
	TemplateBtnAdd.Font = Enum.Font.Gotham
	TemplateBtnAdd.Text = "Edit"
	TemplateBtnAdd.TextColor3 = Color3.fromRGB(255, 255, 255)
	TemplateBtnAdd.TextSize = 12.000
	TemplateBtnAdd.MouseButton1Down:Connect(function()
		SlideOutEnter.Visible = true
		SlideOutEnter:TweenSize(UDim2.new(0, 215, 0, 294), 'In', 'Quint', 0.5)
		CurrentEdit = entry
		TitleSlideEnter.Text = enterCMD[entry].N
		updatesaves()
	end)

	TemplateFrame:TweenPosition(UDim2.new(0,3,0,alls2), 'In', 'Quint', 0.5)
end

BtnAddEnter.Name = "BtnAddEnter"
BtnAddEnter.Parent = ManageHolderEnter
BtnAddEnter.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
BtnAddEnter.BorderSizePixel = 0
BtnAddEnter.Position = UDim2.new(0.026827829, 0, 0.864668369, 0)
BtnAddEnter.Size = UDim2.new(0, 85, 0, 33)
BtnAddEnter.Font = Enum.Font.Gotham
BtnAddEnter.Text = "Add"
BtnAddEnter.TextColor3 = Color3.fromRGB(255, 255, 255)
BtnAddEnter.TextSize = 14.000
BtnAddEnter.MouseButton1Down:Connect(function()
	SlideOutEnter.Visible = true
	SlideOutEnter:TweenSize(UDim2.new(0, 215, 0, 294), 'In', 'Quint', 0.5)
	enterCMD[#enterCMD+1] = {N = "Unnamed"}
	CurrentEdit = #enterCMD
	TitleSlideEnter.Text = enterCMD[#enterCMD].N
	Template2(enterCMD[#enterCMD].N,#enterCMD)
	updatesaves()
end)

BtnClearEnter.Name = "BtnClearEnter"
BtnClearEnter.Parent = ManageHolderEnter
BtnClearEnter.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
BtnClearEnter.BorderSizePixel = 0
BtnClearEnter.Position = UDim2.new(0.244457483, 0, 0.864668369, 0)
BtnClearEnter.Size = UDim2.new(0, 85, 0, 33)
BtnClearEnter.Font = Enum.Font.Gotham
BtnClearEnter.Text = "Clear"
BtnClearEnter.TextColor3 = Color3.fromRGB(255, 255, 255)
BtnClearEnter.TextSize = 14.000
BtnClearEnter.MouseButton1Down:Connect(function()
	MangeScrollEnter:ClearAllChildren()
	enterCMD = {}
	Edit1Enter.Text = ""
	Edit2Enter.Text = ""
	Edit3Enter.Text = ""
	SlideOutEnter.Visible = false
	SlideOutEnter:TweenSize(UDim2.new(0, 0, 0, 294), 'Out', 'Quint', 0.5)
	CurrentEdit = ""
	updatesaves()
end)

ManageTitleEnter.Name = "ManageTitleEnter"
ManageTitleEnter.Parent = ManageHolderEnter
ManageTitleEnter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ManageTitleEnter.BackgroundTransparency = 1.000
ManageTitleEnter.Position = UDim2.new(0.263266504, 0, 0.00765306223, 0)
ManageTitleEnter.Size = UDim2.new(0, 200, 0, 32)
ManageTitleEnter.Font = Enum.Font.GothamSemibold
ManageTitleEnter.Text = "Strylix-FE EnterCMDs MANAGER"
ManageTitleEnter.TextColor3 = Color3.fromRGB(255, 255, 255)
ManageTitleEnter.TextSize = 14.000

SlideOutEnter.Name = "SlideOutEnter"
SlideOutEnter.Parent = ManageHolderEnter
SlideOutEnter.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SlideOutEnter.BackgroundTransparency = 0.500
SlideOutEnter.BorderSizePixel = 0
SlideOutEnter.Position = UDim2.new(-0.507332683, 0, 0, 0)
SlideOutEnter.Size = UDim2.new(0, 0, 0, 294)
SlideOutEnter.Visible = false

Edit1Enter.Name = "Edit1Enter"
Edit1Enter.Parent = SlideOutEnter
Edit1Enter.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
Edit1Enter.BorderSizePixel = 0
Edit1Enter.Position = UDim2.new(0.0325581394, 0, 0.0850340128, 0)
Edit1Enter.Size = UDim2.new(0, 200, 0, 26)
Edit1Enter.Font = Enum.Font.Gotham
Edit1Enter.PlaceholderColor3 = Color3.fromRGB(230, 230, 230)
Edit1Enter.PlaceholderText = "Enter command here"
Edit1Enter.Text = ""
Edit1Enter.TextColor3 = Color3.fromRGB(255, 255, 255)
Edit1Enter.TextSize = 14.000

Edit2Enter.Name = "Edit2Enter"
Edit2Enter.Parent = SlideOutEnter
Edit2Enter.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
Edit2Enter.BorderSizePixel = 0
Edit2Enter.Position = UDim2.new(0.0325581394, 0, 0.204081625, 0)
Edit2Enter.Size = UDim2.new(0, 200, 0, 26)
Edit2Enter.Font = Enum.Font.Gotham
Edit2Enter.PlaceholderColor3 = Color3.fromRGB(230, 230, 230)
Edit2Enter.PlaceholderText = "Enter ... here"
Edit2Enter.Text = ""
Edit2Enter.TextColor3 = Color3.fromRGB(255, 255, 255)
Edit2Enter.TextSize = 14.000

Edit3Enter.Name = "Edit3Enter"
Edit3Enter.Parent = SlideOutEnter
Edit3Enter.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
Edit3Enter.BorderSizePixel = 0
Edit3Enter.Position = UDim2.new(0.0325581394, 0, 0.31292516, 0)
Edit3Enter.Size = UDim2.new(0, 200, 0, 26)
Edit3Enter.Font = Enum.Font.Gotham
Edit3Enter.PlaceholderColor3 = Color3.fromRGB(230, 230, 230)
Edit3Enter.PlaceholderText = "Enter ... here"
Edit3Enter.Text = ""
Edit3Enter.TextColor3 = Color3.fromRGB(255, 255, 255)
Edit3Enter.TextSize = 14.000

TitleSlideEnter.Name = "TitleSlideEnter"
TitleSlideEnter.Parent = SlideOutEnter
TitleSlideEnter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleSlideEnter.BackgroundTransparency = 1.000
TitleSlideEnter.Position = UDim2.new(0.0307083577, 0, -0.0161564611, 0)
TitleSlideEnter.Size = UDim2.new(0, 200, 0, 32)
TitleSlideEnter.Font = Enum.Font.GothamSemibold
TitleSlideEnter.Text = "..."
TitleSlideEnter.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleSlideEnter.TextSize = 14.000

CancelBtnEnter.Name = "CancelBtnEnter"
CancelBtnEnter.Parent = SlideOutEnter
CancelBtnEnter.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
CancelBtnEnter.BorderSizePixel = 0
CancelBtnEnter.Position = UDim2.new(0.561230242, 0, 0.442899674, 0)
CancelBtnEnter.Size = UDim2.new(0, 85, 0, 33)
CancelBtnEnter.Font = Enum.Font.Gotham
CancelBtnEnter.Text = "Cancel"
CancelBtnEnter.TextColor3 = Color3.fromRGB(255, 255, 255)
CancelBtnEnter.TextSize = 14.000
CancelBtnEnter.MouseButton1Down:Connect(function()
	Edit1Enter.Text = ""
	Edit2Enter.Text = ""
	Edit3Enter.Text = ""
	SlideOutEnter.Visible = false
	SlideOutEnter:TweenSize(UDim2.new(0, 0, 0, 294), 'Out', 'Quint', 0.5)
	CurrentEdit = ""
end)

function MakeChanges(title,new)
	for _,v in pairs(MangeScrollEnter:GetChildren()) do
		if v.Name == title then
			v.Name = new
			xText = v.TemplateName.Text:split("|")
			v.TemplateName.Text = new.."|"..xText[2]
		end
	end
end

ApplyBtnEnter.Name = "ApplyBtnEnter"
ApplyBtnEnter.Parent = SlideOutEnter
ApplyBtnEnter.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
ApplyBtnEnter.BorderSizePixel = 0
ApplyBtnEnter.Position = UDim2.new(0.0318313837, 0, 0.442899674, 0)
ApplyBtnEnter.Size = UDim2.new(0, 85, 0, 33)
ApplyBtnEnter.Font = Enum.Font.Gotham
ApplyBtnEnter.Text = "Apply"
ApplyBtnEnter.TextColor3 = Color3.fromRGB(255, 255, 255)
ApplyBtnEnter.TextSize = 14.000
ApplyBtnEnter.MouseButton1Down:Connect(function()
	enterCMD[CurrentEdit] = {N = Edit1Enter.Text}
	MakeChanges(TitleSlideEnter.Text,Edit1Enter.Text)
	Edit1Enter.Text = ""
	Edit2Enter.Text = ""
	Edit3Enter.Text = ""
	SlideOutEnter.Visible = false
	SlideOutEnter:TweenSize(UDim2.new(0, 0, 0, 294), 'Out', 'Quint', 0.5)
	CurrentEdit = ""
	updatesaves()
end)

BtnExitEnter.Name = "BtnExitEnter"
BtnExitEnter.Parent = ManageHolderEnter
BtnExitEnter.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
BtnExitEnter.BackgroundTransparency = 1.000
BtnExitEnter.BorderSizePixel = 0
BtnExitEnter.Position = UDim2.new(0.950231194, 0, -0.00778063387, 0)
BtnExitEnter.Size = UDim2.new(0, 28, 0, 26)
BtnExitEnter.Font = Enum.Font.GothamBold
BtnExitEnter.Text = "X"
BtnExitEnter.TextColor3 = Color3.fromRGB(255, 255, 255)
BtnExitEnter.TextSize = 14.000
BtnExitEnter.MouseButton1Down:Connect(function()
	for i,_ in pairs(enterCMD) do
		if enterCMD[i].N == "Unnamed" then
			table.remove(enterCMD,i)
		end
	end
	ManageHolderEnter.Visible = false
	Edit1Enter.Text = ""
	Edit2Enter.Text = ""
	Edit3Enter.Text = ""
	SlideOutEnter.Visible = false
	SlideOutEnter:TweenSize(UDim2.new(0, 0, 0, 294), 'Out', 'Quint', 0.5)
	CurrentEdit = ""
	updatesaves()
end)

function useCommand.entercmdnew()
	if arguments[2] then
		enterCMD[#enterCMD+1] = {N = getstring(2)}
		updatesaves()
		opx("-","Added "..getstring(2).." to enter cmds")
	else
		opx("*","2 arguments are required for this command!")
	end
end

function useCommand.entercmds()
	opx("-","Opened enter cmd manager")
	MangeScrollEnter:ClearAllChildren()
	ManageHolderEnter.Visible = true
	for i,_ in pairs(enterCMD) do
		Template2(enterCMD[i].N,i)
	end
end

function useCommand.listentercmds()
	if #enterCMD ~= 0 then
		xECMD = #enterCMD.." | "
		for i = 1,#enterCMD do
			xEMD = xECMD..enterCMD[i].N..", "
		end
		opx("-","Listed enter cmds")
		opxL("Enter Commands",xECMD)
	else
		opx("*","You have no enter cmds!")
	end
end

function useCommand.entercmddel()
	if arguments[2] then
		if #enterCMD ~= 0 then
			for i = 1,#enterCMD do
				if enterCMD[i].N == getstring(2) then
					table.remove(enterCMD, i)
					updatesaves()
				end
			end
			opx("Removed "..getstring(2).." from enter cmds")
		else
			opx("*","You have no enter cmds!")
		end
	else
		opx("*","2 arguments are required for this command!")
	end
end

function useCommand.entercmdsclr()
	if #enterCMD ~= 0 then
		enterCMD = {}
		updatesaves()
		opx("-","Cleared all enter cmds")
	else
		opx("*","You have no enter cmds!")
	end
end

function useCommand.eightballpu()
	local eightball = {"Maybe","Possibly","No","Yes","Never","Don't get your hopes up","100%","0%","50%","Likely","Extremely Likely","Almost Certain","Impossible","Possible","Currently... no","Maybe later on in life","Aha... Good luck on that one","This will definently happen buddy","Stop asking me questions","Hmm..."}
	local value = math.random(1,#eightball)
	local picked_value = eightball[value]
	cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("8Ball says: "..tostring(picked_value), "All")
	opx("8Ball says: "..tostring(picked_value))
end

function useCommand.eightballpr()
	local eightball = {"Maybe","Possibly","No","Yes","Never","Don't get your hopes up","100%","0%","50%","Likely","Extremely Likely","Almost Certain","Impossible","Possible","Currently... no","Maybe later on in life","Aha... Good luck on that one","This will definently happen buddy","Stop asking me questions","Hmm..."}
	local value = math.random(1,#eightball)
	local picked_value = eightball[value]
	opx("8Ball says: "..tostring(picked_value))
end

function useCommand.pi()
	opx("-","Pi is "..math.pi)
end

local helpCode = cordCode
function useCommand.support()
	if arguments[2] == "cb" or arguments[2] == "copy" then
		setclipboard(helpCode)
	end
	opx("-","The link for support is "..helpCode)
end

function useCommand.commands()
	Scrollingcmdi:ClearAllChildren()
	cmdsholder.Visible = true
	for i = 1,#CMDN do
		local CS = CMDN[i].CMD:split(",")
		CreateCMDLabel(CS[1],CS[2],CS[3],CS[4])
	end
	opx("-","CMDS Loaded")
end
function useCommand.config()
	configframe.Visible = true
	configframe:TweenSize(UDim2.new(0,300,0,433), Enum.EasingDirection.In, Enum.EasingStyle.Quad, .5)
	opx("-","Config loaded")
end
--Shit to change
local cmdAdvertise = false
function useCommand.advertise()
	cmdAdvertise = true
	while cmdAdvertise do
		cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Get Strylix-FE today! Best admin GUI", "All")
		wait(math.random(1, 6)) 
		local randomPlayer = cmdp:GetPlayers()[math.random(1,#cmdp:GetPlayers())]
		cmdlp.Character.Humanoid:MoveTo(randomPlayer.Character.HumanoidRootPart.Position)
		cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Get Strylix-FE today! Best admin GUI", "All")
		wait(math.random(1, 6))
		local randomPlayer = cmdp:GetPlayers()[math.random(1,#cmdp:GetPlayers())]
		cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w "..randomPlayer.Name.." Get Strylix-FE today! Best admin GUI", "All")
		local randomPlayer = cmdp:GetPlayers()[math.random(1,#cmdp:GetPlayers())]
		cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w "..randomPlayer.Name.." Get Strylix-FE today! Best admin GUI", "All")
		local randomPlayer = cmdp:GetPlayers()[math.random(1,#cmdp:GetPlayers())]
		cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w "..randomPlayer.Name.." Get Strylix-FE today! Best admin GUI", "All")
		local randomPlayer = cmdp:GetPlayers()[math.random(1,#cmdp:GetPlayers())]
		cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w "..randomPlayer.Name.." Get Strylix-FE today! Best admin GUI", "All")
		local randomPlayer = cmdp:GetPlayers()[math.random(1,#cmdp:GetPlayers())]
		cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Get Strylix-FE today! Best admin GUI", "All")
		wait(math.random(1, 6))
		local randomPlayer = cmdp:GetPlayers()[math.random(1,#cmdp:GetPlayers())]
		cmdlp.Character.Humanoid:MoveTo(randomPlayer.Character.HumanoidRootPart.Position)
	end
	opx("-","Now advertising Strylix-FE (Thank you!)")
end

function useCommand.unadvertise()
	cmdAdvertise = false
	opx("-","Stopped advertising Strylix-FE (Thank you!)")
end

function useCommand.version()
	opx("-","Strylix-FE is currently on "..ver)
end

function useCommand.nextupdate()
	opx("-","Next update: "..nextupd)
end

function useCommand.walkspeed()
	if arguments[2] and cmdnum(arguments[2]) then
		cmdlp.Character.Humanoid.WalkSpeed = arguments[2]
		opx("-","Walkspeed set to "..arguments[2])
	else
		cmdlp.Character.Humanoid.WalkSpeed = permwalkspeed
		opx("-","Walkspeed set to "..permwalkspeed)
	end
end

function useCommand.defaultwalkspeed()
	cmdlp.Character.Humanoid.WalkSpeed = 16
	opx("-","Walkspeed set to default (16)")
end

function useCommand.jumppower()
	if arguments[2] and cmdnum(arguments[2]) then
		cmdlp.Character.Humanoid.JumpPower = arguments[2]
		opx("-","Jumppower set to "..arguments[2])
	else
		cmdlp.Character.Humanoid.JumpPower = permjumppower
		opx("-","Jumppower set to "..permjumppower)
	end
end

function useCommand.defaultjumppower()
	cmdlp.Character.Humanoid.JumpPower = 50
	opx("-","Jumppower set to default (50)")
end

function useCommand.hipheight()
	if arguments[2] and cmdnum(arguments[2]) then
		cmdlp.Character.Humanoid.HipHeight = arguments[2]
		opx("-","Hipheight set to "..arguments[2])
	else
		cmdlp.Character.Humanoid.HipHeight = permhipheight
		opx("*","Hipheight set to "..permhipheight)
	end
end

function useCommand.defaulthipheight()
	cmdlp.Character.Humanoid.HipHeight = saveHip
	opx("-","Hipheight set to default ("..saveHip..")")
end

function useCommand.gravity()
	if arguments[2] and cmdnum(arguments[2]) then
		workspace.Gravity = arguments[2]
		opx("-","Gravity set to "..arguments[2])
	else
		workspace.Gravity = permgravity
		opx("-","Gravity set to "..permgravity)
	end
end

function useCommand.defaultgravity()
	workspace.Gravity = 194
	opx("-","Hipheight set to default ("..saveGrav..")")
end

local bodyPos = false
if cmdlp.Character then
	for _,v in pairs(cmdlp.Character:GetDescendants()) do
		if v.Name == "rocket" then
			v:Destroy()
		end
	end
end
function useCommand.bodypositionwalkspeed()
	if arguments[2] and cmdnum(arguments[2]) then
		local speed = 1 + arguments[2]*0.05
	else
		local speed = 1 + 10*0.05
	end
	local rocket = Instance.new("BodyPosition",cmdlp.Character.HumanoidRootPart)
	rocket.Name = "rocket"
	local upvalue = 0
	rocket.maxForce = Vector3.new(12500,12500,12500)
	bodyPos = true
	opx("-","BodyPositionWalkSpeed activated")
	while bodyPos do
		wait()
		if cmdlp.Character.Humanoid.FloorMaterial == Enum.Material.Air then
			rocket.Parent = cmdlp.Character
			wait(0.5)
		else
			wait(0.5)
			rocket.Parent = cmdlp.Character.HumanoidRootPart
		end
	end
	while bodyPos do
		wait()
		rocket.Position = Vector3.new(cmdlp.Character.Torso.Position.X+cmdlp.Character.Humanoid.MoveDirection.X*speed*5.4,cmdlp.Character.Torso.Position.Y,cmdlp.Character.Torso.Position.Z+cmdlp.Character.Humanoid.MoveDirection.Z*speed*5.4)
	end
end

function useCommand.avatar()
	if cmdnum(arguments[2]) then
		opx("-","Inspecting avatar")
		game:GetService("GuiService"):InspectPlayerFromUserId(arguments[2])
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.halve()
	if cmd15(cmdlp) then
		opx("-","Halved character")
		cmdlp.Character.UpperTorso.Waist:Destroy()
		cmdlp.Character.UpperTorso.Anchored = true
	else
		opx("*","You need to be R15 for this command!")
	end
end

function useCommand.removehands()
	if cmd15(cmdlp) then
		opx("-","Removed hands")
		cmdlp.Character.RightHand:Destroy()
		cmdlp.Character.LeftHand:Destroy()
	else
		opx("*","You need to be R15 for this command!")
	end
end

function useCommand.removefeet()
	if cmd15(cmdlp) then
		opx("-","Removed feet")
		cmdlp.Character.RightFoot:Destroy()
		cmdlp.Character.LeftFoot:Destroy()
	else
		opx("*","You need to be R15 for this command!")
	end
end

function useCommand.removeleftleg()
	opx("-","Removed left leg")
	if cmd15(cmdlp) then
		cmdlp.Character.LeftUpperLeg:Destroy()
	else
		cmdlp.Character["Left Leg"]:Destroy()
	end
end

function useCommand.removerightleg()
	opx("-","Removed right leg")
	if cmd15(cmdlp) then
		cmdlp.Character.RightUpperLeg:Destroy()
	else
		cmdlp.Character["Right Leg"]:Destroy()
	end
end

function useCommand.removeleftarm()
	opx("-","Removed left arm")
	if cmd15(cmdlp) then
		cmdlp.Character.LeftUpperArm:Destroy()
	else
		cmdlp.Character["Left Arm"]:Destroy()
	end
end

function useCommand.removerightarm()
	opx("-","Removed right arm")
	if cmd15(cmdlp) then
		cmdlp.Character.RightUpperArm:Destroy()
	else
		cmdlp.Character["Right Arm"]:Destroy()
	end
end

function useCommand.removearms()
	opx("-","Removed arms")
	if cmd15(cmdlp) then
		for _,v in pairs(cmdlp.Character:GetChildren()) do
			if v.Name == "RightUpperArm" or v.Name == "LeftUpperArm" then
				v:Destroy()
			end
		end
	else
		for _,v in pairs(cmdlp.Character:GetChildren()) do
			if v.Name == "Right Arm" or v.Name == "Left Arm" then
				v:Destroy()
			end
		end
	end
end

function useCommand.removelegs()
	opx("-","Removed legs")
	if cmd15(cmdlp) then
		for _,v in pairs(cmdlp.Character:GetChildren()) do
			if v.Name == "RightUpperLeg" or v.Name == "LeftUpperLeg" then
				v:Destroy()
			end
		end
	else
		for _,v in pairs(cmdlp.Character:GetChildren()) do
			if v.Name == "Right Leg" or v.Name == "Left Leg" then
				v:Destroy()
			end
		end
	end
end

function useCommand.removelimbs()
	opx("-","Removed limbs")
	if cmd15(cmdlp) then
		for _,v in pairs(cmdlp.Character:GetChildren()) do
			if v.Name == "RightUpperArm" or v.Name == "LeftUpperArm" or v.Name == "RightUpperLeg" or v.Name == "LeftUpperLeg" then
				v:Destroy()
			end
		end
	else
		for _,v in pairs(cmdlp.Character:GetChildren()) do
			if v.Name == "Right Arm" or v.Name == "Left Arm" or v.Name == "Right Leg" or v.Name == "Left Leg" then
				v:Destroy()
			end
		end
	end
end

function useCommand.removelefthand()
    if cmd15(cmdlp) then
		opx("-","Removed left hand")
		cmdlp.Character.LeftHand:Destroy()
	else
		opx("*","You need to be R15 for this command!")
	end
end

function useCommand.removerighthand()
    if cmd15(cmdlp) then
		opx("-","Removed right hand")
		cmdlp.Character.RightHand:Destroy()
	else
		opx("*","You need to be R15 for this command!")
	end
end

function useCommand.removeleftfoot()
    if cmd15(cmdlp) then
		opx("-","Removed left foot")
		cmdlp.Character.LeftFoot:Destroy()
	else
		opx("*","You need to be R15 for this command!")
	end
end

function useCommand.removerightfoot()
    if cmd15(cmdlp) then
		opx("-","Removed right foot")
		cmdlp.Character.RightFoot:Destroy()
	else
		opx("*","You need to be R15 for this command!")
	end
end

function useCommand.removerightlowerarm()
    if cmd15(cmdlp) then
		opx("-","Removed right lower arm")
		cmdlp.Character.RightLowerArm:Destroy()
	else
		opx("*","You need to be R15 for this command!")
	end
end

function useCommand.removeleftlowerarm()
    if cmd15(cmdlp) then
		opx("-","Removed left lower arm")
		cmdlp.Character.LeftLowerArm:Destroy()
	else
		opx("*","You need to be R15 for this command!")
	end
end

function useCommand.removerightlowerleg()
    if cmd15(cmdlp) then
		opx("-","Removed right lower leg")
		cmdlp.Character.RightLowerLeg:Destroy()
	else
		opx("*","You need to be R15 for this command!")
	end
end

function useCommand.removeleftlowerleg()
    if cmd15(cmdlp) then
		opx("-","Removed left lower leg")
		cmdlp.Character.LeftLowerLeg:Destroy()
	else
		opx("*","You need to be R15 for this command!")
	end
end

xNamingTbl = {}
function useCommand.nonick()
    opx("-","Blocked nicknames")
    function clean(cplr)
        if cplr.DisplayName ~= cplr.Name then
            if cplr.Character then cplr.Character:WaitForChild("Humanoid").DisplayName = cplr.Name end
            cplr.CharacterAdded:Connect(function(char)
                char:WaitForChild("Humanoid").DisplayName = "(NICKNAMED)\n"..cplr.Name
            end)
        end
    end
    xNaming = cmdp.PlayerAdded:Connect(clean)
    for _,p in pairs(cmdp:GetPlayers()) do
        clean(p)
    end
end

function useCommand.yesnick()
    opx("-","Unblocked nicknames")
    xNaming:Disconnect()
end

function useCommand.appearanceidpublic()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			opx("-",target.Name.."s User AppearanceID is "..target.CharacterAppearanceId)
			cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(target.Name.."s User AppearanceID is "..target.CharacterAppearanceId, "All")
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.appearanceidprivate()
    if arguments[2] then
		target = findplr(arguments[2])
		if target then
			opx("-",target.Name.."s User AppearanceID is "..target.CharacterAppearanceId)
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.nilgoto()
    if arguments[2] then
		target = findplr(arguments[2])
		if target then
		    RootNil = cmdlp.Character.HumanoidRootPart
		    RootNil.Parent = nil
			cmdlp.Character.Humanoid.Jump = true
			RootNil.CFrame = target.Character.HumanoidRootPart.CFrame + Vector3.new(gotoPosSide,gotoPosHead,gotoPos)
			RootNil.Parent = cmdlp.Character
			opx("-","Teleported to player "..target.Name)
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.nilfreegoto()
    if arguments[4] then
		opx("-","Teleported to "..arguments[2].." "..arguments[3].." "..arguments[4])
		RootNil = cmdlp.Character.HumanoidRootPart
		RootNil.Parent = nil
		RootNil.CFrame = CFrame.new(arguments[2], arguments[3], arguments[4])
		RootNil.Parent = cmdlp.Character
	else
		opx("*","4 arguments are required!")
	end
end

function useCommand.nilgotopart()
	if arguments[2] then
		for i,v in pairs(workspace:GetDescendants()) do
			if v.Name == getstring(2) then
				opx("-","Teleported to part")
				RootNil = cmdlp.Character.HumanoidRootPart
		        RootNil.Parent = nil
				cmdlp.Character.Humanoid.Jump = true
				RootNil.CFrame = v.CFrame
				RootNil.Parent = cmdlp.Character
				break
			else
				opx("*","Part does not exist")
			end
		end
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.nilgotoclass()
	if arguments[2] then
		opx("-","Teleported to class part")
		local Part
		for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA(arguments[2]) then Part = v; break end
		end
		RootNil = cmdlp.Character.HumanoidRootPart
		RootNil.Parent = nil
		RootNil.CFrame = Part.CFrame
		RootNil.Parent = cmdlp.Character
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.removeinworkspace()
    if arguments[2] then
        for i,v in pairs(workspace:GetDescendants()) do
            if v.Name == getstring(2) then
                v:Destroy()
            end
        end
        opx("-","Removed in workspace "..getstring(2))
    else
        opx("*","2 arguments are required!")    
    end
end

function useCommand.listnil()
    local NilParts = ""
    for i,v in pairs(getnilinstances()) do
        if not v:IsDescendantOf(Unnamed) then
            NilParts = NilParts..v.Name..", "
        end
    end
    opx("-","Listed all nil parts")
    opxL("Nil Parts",NilParts)
end

function useCommand.removeinnil()
    if arguments[2] then
        for i,v in pairs(getnilinstances()) do
            if v.Name == getstring(2) then
                v:Destroy()
            end
        end
        opx("-","Removed in nil "..getstring(2))
    else
        opx("*","2 arguments are required!")    
    end
end

function useCommand.removeanim()
	opx("-","Removed animation")
	cmdlp.Character.Animate.Disabled = true
end

function useCommand.restoreanim()
	opx("-","Restored animation")
	cmdlp.Character.Animate.Disabled = false
end

function useCommand.removeshirt()
	opx("-","You have removed your shirt")
	cmdlp.Character.Shirt:Destroy()
end

function useCommand.removetshirt()
	opx("-","You have removed your t-shirt")
	cmdlp.Character["Shirt Graphic"]:Destroy()
end

function useCommand.removepants()
	opx("-","You have removed your pants")
	cmdlp.Character.Pants:Destroy()
end

function useCommand.removeclothes()
	opx("-","You are now naked on a kids game")
	for _,v in pairs(cmdlp.Character:GetChildren()) do
		if v.Name == "Shirt" or v.Name == "Shirt Graphic" or v.Name == "Pants" then
			v:Destroy()
		end
	end
end

function useCommand.removehatsmesh()
	opx("-","Removed hats meshes")
	for _,v in pairs(cmdlp.Character:GetChildren()) do
		if v:IsA("Accessory") then
			for _,x in pairs(v:GetDescendants()) do
				if x.Name == "Mesh" or x.Name == "SpecialMesh" then
					x:Destroy()
				end
			end
		end
	end
end

function useCommand.removegearmesh()
	opx("-","Removed gears meshes")
	for _,v in pairs(cmdlp.Character:GetChildren()) do
		if v:IsA("Tool") then
			for _,x in pairs(v:GetDescendants()) do
				if x.Name == "Mesh" or x.Name == "SpecialMesh" then
					x:Destroy()
				end
			end
		end
	end
end

function useCommand.hatgear()
	opx("-","Hats are now in your toolbar")
	for _, hat in pairs(cmdlp.Character.Humanoid:GetAccessories()) do
		if hat.Handle ~= nil then
			local tool = Instance.new("Tool", cmdlp.Backpack)
			tool.Name = hat.Name
			local hathandle = hat.Handle
			hathandle:FindFirstChildOfClass("Weld"):Destroy()
			hathandle.Parent = tool
			hathandle.Massless = true
		end
	end
end

function useCommand.bring()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			opx("-","Brung "..target.Name)
			NormPos = cmdlp.Character.HumanoidRootPart.CFrame
			local char = cmdlp.Character
			local tchar = target.Character
			local hum = cmdlp.Character.Humanoid
			local hrp = cmdlp.Character.HumanoidRootPart
			local hrp2 = target.Character.HumanoidRootPart
			local camera = workspace.CurrentCamera
			hum.Name = "1"
			local newHum = hum:Clone()
			newHum.Parent = char
			newHum.Name = "Humanoid"
			wait(0.1)
			hum:Destroy()
			camera.CameraSubject = char
			newHum.DisplayDistanceType = "None"
			wait(0.1)
			v = cmdlp.Backpack:FindFirstChildOfClass("Tool")
			v.Parent = char
			hrp.CFrame = hrp2.CFrame * CFrame.new(0, 0, 0) * CFrame.new(math.random(-100, 100)/200,math.random(-100, 100)/200,math.random(-100, 100)/200)
			local n = 0
			repeat
				game.RunService.RenderStepped:Wait(0)
				n = n + 1
				hrp.CFrame = hrp2.CFrame
				wait(.1)
				hrp.CFrame = NormPos
			until (not hrp or not hrp2 or not hrp.Parent or not hrp2.Parent or n > 250) and n > 2
			hrp.CFrame = NormPos
			camera.CameraType = Enum.CameraType.Custom
			wait(4)
			cmdlp.Character.HumanoidRootPart.CFrame = NormPos
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.drophats()
	opx("-","Dropped your hats")
	for i,v in pairs(cmdlp.Character:GetChildren()) do
		if v:IsA("Hat") or v:IsA("Accessory") then
			v.Parent = workspace
		end
	end
end

function useCommand.dropgears()
	opx("-","Dropped your gears")
	for i,v in pairs(cmdlp.Character:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = workspace
		end
	end
end

local hatSpam = false
function useCommand.hatspam()
	opx("-","Now spamming hats")
	hatSpam = true
	while hatSpam do
		refresh()
		wait(1)
		for _,v in pairs(cmdlp.Character:GetChildren()) do
			if v:IsA("Accessory") then
				for _,x in pairs(v:GetDescendants()) do
					if x.Name == "Mesh" or x.Name == "SpecialMesh" then
						x:Destroy()
					end
				end
			end
		end
		wait(1)
		for i,v in pairs(cmdlp.Character:GetChildren()) do
			if v:IsA("Accessory") then
				v.Parent = workspace
			end
		end
		wait(1)
	end
end

function useCommand.unhatspam()
	opx("-","Stopped spamming hats")
	hatSpam = false
end

function useCommand.removeface()
	opx("-","Removed face")
	cmdlp.Character.Head.face:Destroy()
end

function useCommand.removehats()
	opx("-","Removed hats")
	for i,v in pairs(cmdlp.Character:GetChildren()) do
		if v:IsA("Accessory") then
			v:Destroy()
		end
	end
end

function useCommand.rheadmesh()
	opx("-","Removed head mesh")
	cmdlp.Character.Head.Mesh:Destroy()
end

function useCommand.equip()
	opx("-","Equipped all gears")
	for _,v in pairs(cmdlp.Backpack:GetChildren()) do
		v.Parent = cmdlp.Character
	end
end

function useCommand.give()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			newTool = cmdlp.Character:FindFirstChildOfClass("Tool")
			cmdlp.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame + target.Character.HumanoidRootPart.CFrame.lookVector * -7
			wait(1)
			newTool.Parent = workspace
			opx("-","Gave tool to "..target.Name)
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.using()
	opx("-","Said script <3")
	game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I am using Strylix-FE, Version: "..ver, "All")
end

function useCommand.banlands()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			opx("-","Banished "..target.Name.." to the banlands")
			local char = cmdlp.Character
			local tchar = target.Character
			local hum = cmdlp.Character.Humanoid
			local hrp = cmdlp.Character.HumanoidRootPart
			local hrp2 = target.Character.HumanoidRootPart
			local camera = workspace.CurrentCamera
			hum.Name = "1"
			local newHum = hum:Clone()
			newHum.Parent = char
			newHum.Name = "Humanoid"
			wait(0.1)
			hum:Destroy()
			camera.CameraSubject = char
			newHum.DisplayDistanceType = "None"
			wait(0.1)
			v = cmdlp.Backpack:FindFirstChildOfClass("Tool")
			v.Parent = char
			hrp.CFrame = hrp2.CFrame * CFrame.new(0, 0, 0) * CFrame.new(math.random(-100, 100)/200,math.random(-100, 100)/200,math.random(-100, 100)/200)
			local n = 0
			repeat
				game.RunService.RenderStepped:Wait(0)
				n = n + 1
				hrp.CFrame = hrp2.CFrame
				wait(.1)
				hrp.CFrame = CFrame.new(0,1000000,0)
			until (not hrp or not hrp2 or not hrp.Parent or not hrp2.Parent or n > 250) and n > 2
			hrp.CFrame = CFrame.new(0,1000000,0)
			camera.CameraType = Enum.CameraType.Custom
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.kill()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			opx("-","Killed "..target.Name)
			local char = cmdlp.Character
			local tchar = target.Character
			local hum = cmdlp.Character.Humanoid
			local hrp = cmdlp.Character.HumanoidRootPart
			local hrp2 = target.Character.HumanoidRootPart
			local camera = workspace.CurrentCamera
			hum.Name = "1"
			local newHum = hum:Clone()
			newHum.Parent = char
			newHum.Name = "Humanoid"
			wait(0.1)
			hum:Destroy()
			camera.CameraSubject = char
			newHum.DisplayDistanceType = "None"
			wait(0.1)
			v = cmdlp.Backpack:FindFirstChildOfClass("Tool")
			v.Parent = char
			hrp.CFrame = hrp2.CFrame * CFrame.new(0, 0, 0) * CFrame.new(math.random(-100, 100)/200,math.random(-100, 100)/200,math.random(-100, 100)/200)
			local n = 0
			repeat
				game.RunService.RenderStepped:Wait(0)
				n = n + 1
				hrp.CFrame = hrp2.CFrame
				wait(.1)
				hrp.CFrame = CFrame.new(999999, workspace.FallenPartsDestroyHeight + 5,999999)
			until (not hrp or not hrp2 or not hrp.Parent or not hrp2.Parent or n > 250) and n > 2
			hrp.CFrame = CFrame.new(999999, workspace.FallenPartsDestroyHeight + 5,999999)
			camera.CameraType = Enum.CameraType.Custom
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

local Flipping = false
function useCommand.flip()
	opx("-","Now flipping")
	Flipping = true
	pl=game.Players.LocalPlayer
	me=pl.Character
	xl=me.Torso['Right Shoulder']
	local debounce=false
	function _restoreproperties()
		Holder = player.Character
		Torso = Holder:FindFirstChild("Torso")
		RightS = Torso:FindFirstChild("Right Shoulder")
		LeftS = Torso:FindFirstChild("Left Shoulder")
		RightH = Torso:FindFirstChild("Right Hip")
		LeftH = Torso:FindFirstChild("Left Hip")
		RightS.MaxVelocity = .15
		LeftS.MaxVelocity = .15
		RightH.MaxVelocity = .1
		LeftH.MaxVelocity = .1
		RightS.DesiredAngle = 0
		LeftS.DesiredAngle = 0
		LeftH.DesiredAngle = 0
		RightH.DesiredAngle = 0
	end
	function ManageAnimation(value)
		Holder = player.Character
		Player = player
		if value == "no anim" then
			Anim = Holder:FindFirstChild("Animate")
			if Anim~=nil then
				Anim.Disabled = true
				Anim.Parent = Player
			end
		elseif value == "re-anim" then
			Anim = Player:FindFirstChild("Animate")
			if Anim~=nil then
				Anim.Disabled = false
				Anim.Parent = Holder
			end
		end
	end
	function Down(ml)
		for i=1, ml.velocity.y/3 do
			ml.velocity = ml.velocity+Vector3.new(0,-4.25,0)
			wait()
		end
		ml:Remove()
	end
	function Flip2()
		if debounce==true then return end
		debounce=true
		Char = player.Character
		Human = Char.Humanoid
		Torso = Char.Torso
		CF = Torso.CFrame
		Human.PlatformStand = true
		VelUp = Instance.new("BodyVelocity")
		VelUp.velocity = Vector3.new(0,60,0)+Torso.CFrame.lookVector*26
		VelUp.P = VelUp.P*2
		VelUp.maxForce = Vector3.new(10000,10000,10000)*999
		VelUp.Parent = Torso
		coroutine.resume(coroutine.create(Down),VelUp)
		Gyro = Instance.new("BodyGyro")
		Gyro.P = Gyro.P*10
		Gyro.maxTorque = Vector3.new(100000,100000,100000)*999
		Gyro.cframe = CF
		Gyro.Parent = Torso
		for i=2, 28 do
			Gyro.cframe = Gyro.cframe*CFrame.fromEulerAnglesXYZ(math.pi/-16,0,0)
			wait()
		end
		Gyro.cframe = CF
		wait()
		Gyro:Remove()
		Human.PlatformStand = false
		_restoreproperties()
		debounce=false
	end
	while Flipping do
		wait()
		Flip2()
	end
end

function useCommand.unflip()
	Flipping = false
	opx("-","No longer flipping")
end

local doubleFlipping = false
function useCommand.doubleflip()
	opx("-","Now double flipping")
	doubleFlipping = true
	pl=game.Players.LocalPlayer
	me=pl.Character
	xl=me.Torso['Right Shoulder']
	local debounce=false
	function _restoreproperties()
		Holder = player.Character
		Torso = Holder:FindFirstChild("Torso")
		RightS = Torso:FindFirstChild("Right Shoulder")
		LeftS = Torso:FindFirstChild("Left Shoulder")
		RightH = Torso:FindFirstChild("Right Hip")
		LeftH = Torso:FindFirstChild("Left Hip")
		RightS.MaxVelocity = .15
		LeftS.MaxVelocity = .15
		RightH.MaxVelocity = .1
		LeftH.MaxVelocity = .1
		RightS.DesiredAngle = 0
		LeftS.DesiredAngle = 0
		LeftH.DesiredAngle = 0
		RightH.DesiredAngle = 0
	end
	function ManageAnimation(value)
		Holder = player.Character
		Player = player
		if value == "no anim" then
			Anim = Holder:FindFirstChild("Animate")
			if Anim~=nil then
				Anim.Disabled = true
				Anim.Parent = Player
			end
		elseif value == "re-anim" then
			Anim = Player:FindFirstChild("Animate")
			if Anim~=nil then
				Anim.Disabled = false
				Anim.Parent = Holder
			end
		end
	end
	function Down(ml)
		for i=1, ml.velocity.y/3 do
			ml.velocity = ml.velocity+Vector3.new(0,-4.25,0)
			wait()
		end
		ml:Remove()
	end
	function Flip3()
		if debounce==true then return end
		debounce=true
		Char = player.Character
		Human = Char.Humanoid
		Torso = Char.Torso
		CF = Torso.CFrame
		Human.PlatformStand = true
		VelUp = Instance.new("BodyVelocity")
		VelUp.velocity = Vector3.new(0,60,0)+Torso.CFrame.lookVector*26
		VelUp.P = VelUp.P*2
		VelUp.maxForce = Vector3.new(10000,10000,10000)*999
		VelUp.Parent = Torso
		coroutine.resume(coroutine.create(Down),VelUp)
		Gyro = Instance.new("BodyGyro")
		Gyro.P = Gyro.P*10
		Gyro.maxTorque = Vector3.new(100000,100000,100000)*999
		Gyro.cframe = CF
		Gyro.Parent = Torso
		for i=2, 28 do
			Gyro.cframe = Gyro.cframe*CFrame.fromEulerAnglesXYZ(math.pi/-8,0,0)
			wait()
		end
		Gyro.cframe = CF
		wait()
		Gyro:Remove()
		Human.PlatformStand = false
		_restoreproperties()
		debounce=false
	end
	while doubleFlipping do
		wait()
		Flip3()
	end
end

function useCommand.undoubleflip()
	doubleFlipping = false
	opx("-","No longer double flipping")
end

local stick = false
function useCommand.glue()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			stick = true
			opx("-","Now glued to "..target.Name)
			repeat wait()
				cmdlp.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(cmdlp.Character.HumanoidRootPart.CFrame.lookVector.X,target.Character.HumanoidRootPart.Size.Y,cmdlp.Character.HumanoidRootPart.CFrame.lookVector.Z)
			until stick == false
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.unglue()
	stick = false
	opx("-","No longer glued")
end

T1.Name = "T1"
T1.Parent = HoldTab
T1.BackgroundColor3 = Color3.new(0.113725, 0.113725, 0.113725)
T1.BorderSizePixel = 0
T1.Position = UDim2.new(0, 0, 0.110238664, 0)
T1.Size = UDim2.new(0, 141, 0, 18)
T1.Text = ""
T1.TextColor3 = Color3.new(1, 1, 1)
T1.TextSize = 12

XE.Name = "XE"
XE.Parent = T1
XE.BackgroundColor3 = Color3.new(0.101961, 0.101961, 0.101961)
XE.BorderSizePixel = 0
XE.Position = UDim2.new(0.861749768, 0, -0.0032687718, 0)
XE.Size = UDim2.new(0, 19, 0, 18)
XE.Font = Enum.Font.SourceSansBold
XE.Text = "+"
XE.TextColor3 = Color3.new(1, 1, 1)
XE.TextSize = 14
XE.MouseButton1Down:Connect(function()
	arguments = T1.Text:split(" ")
	useCommand[arguments[1]]()
end)

T2.Name = "T2"
T2.Parent = HoldTab
T2.BackgroundColor3 = Color3.new(0.113725, 0.113725, 0.113725)
T2.BorderSizePixel = 0
T2.Position = UDim2.new(0, 0, 0.188670039, 0)
T2.Size = UDim2.new(0, 141, 0, 18)
T2.Text = ""
T2.TextColor3 = Color3.new(1, 1, 1)
T2.TextSize = 12

XE_2.Name = "XE"
XE_2.Parent = T2
XE_2.BackgroundColor3 = Color3.new(0.101961, 0.101961, 0.101961)
XE_2.BorderSizePixel = 0
XE_2.Position = UDim2.new(0.861749768, 0, -0.0032687718, 0)
XE_2.Size = UDim2.new(0, 19, 0, 18)
XE_2.Font = Enum.Font.SourceSansBold
XE_2.Text = "+"
XE_2.TextColor3 = Color3.new(1, 1, 1)
XE_2.TextSize = 14
XE_2.MouseButton1Down:Connect(function()
	arguments = T2.Text:split(" ")
	useCommand[arguments[1]]()
end)

T4.Name = "T4"
T4.Parent = HoldTab
T4.BackgroundColor3 = Color3.new(0.113725, 0.113725, 0.113725)
T4.BorderSizePixel = 0
T4.Position = UDim2.new(-9.31322575e-10, 0, 0.348800778, 0)
T4.Size = UDim2.new(0, 141, 0, 18)
T4.Text = ""
T4.TextColor3 = Color3.new(1, 1, 1)
T4.TextSize = 12

XE_3.Name = "XE"
XE_3.Parent = T4
XE_3.BackgroundColor3 = Color3.new(0.101961, 0.101961, 0.101961)
XE_3.BorderSizePixel = 0
XE_3.Position = UDim2.new(0.861749768, 0, -0.0032687718, 0)
XE_3.Size = UDim2.new(0, 19, 0, 18)
XE_3.Font = Enum.Font.SourceSansBold
XE_3.Text = "+"
XE_3.TextColor3 = Color3.new(1, 1, 1)
XE_3.TextSize = 14
XE_3.MouseButton1Down:Connect(function()
	arguments = T4.Text:split(" ")
	useCommand[arguments[1]]()
end)

T3.Name = "T3"
T3.Parent = HoldTab
T3.BackgroundColor3 = Color3.new(0.113725, 0.113725, 0.113725)
T3.BorderSizePixel = 0
T3.Position = UDim2.new(-9.31322575e-10, 0, 0.270369381, 0)
T3.Size = UDim2.new(0, 141, 0, 18)
T3.Text = ""
T3.TextColor3 = Color3.new(1, 1, 1)
T3.TextSize = 12

XE_4.Name = "XE"
XE_4.Parent = T3
XE_4.BackgroundColor3 = Color3.new(0.101961, 0.101961, 0.101961)
XE_4.BorderSizePixel = 0
XE_4.Position = UDim2.new(0.861749768, 0, -0.0032687718, 0)
XE_4.Size = UDim2.new(0, 19, 0, 18)
XE_4.Font = Enum.Font.SourceSansBold
XE_4.Text = "+"
XE_4.TextColor3 = Color3.new(1, 1, 1)
XE_4.TextSize = 14
XE_4.MouseButton1Down:Connect(function()
	arguments = T3.Text:split(" ")
	useCommand[arguments[1]]()
end)

T8.Name = "T8"
T8.Parent = HoldTab
T8.BackgroundColor3 = Color3.new(0.113725, 0.113725, 0.113725)
T8.BorderSizePixel = 0
T8.Position = UDim2.new(-9.31322575e-10, 0, 0.669062257, 0)
T8.Size = UDim2.new(0, 141, 0, 18)
T8.Text = ""
T8.TextColor3 = Color3.new(1, 1, 1)
T8.TextSize = 12

XE_5.Name = "XE"
XE_5.Parent = T8
XE_5.BackgroundColor3 = Color3.new(0.101961, 0.101961, 0.101961)
XE_5.BorderSizePixel = 0
XE_5.Position = UDim2.new(0.861749768, 0, -0.0032687718, 0)
XE_5.Size = UDim2.new(0, 19, 0, 18)
XE_5.Font = Enum.Font.SourceSansBold
XE_5.Text = "+"
XE_5.TextColor3 = Color3.new(1, 1, 1)
XE_5.TextSize = 14
XE_5.MouseButton1Down:Connect(function()
	arguments = T8.Text:split(" ")
	useCommand[arguments[1]]()
end)
T6.Name = "T6"
T6.Parent = HoldTab
T6.BackgroundColor3 = Color3.new(0.113725, 0.113725, 0.113725)
T6.BorderSizePixel = 0
T6.Position = UDim2.new(0, 0, 0.508931518, 0)
T6.Size = UDim2.new(0, 141, 0, 18)
T6.Text = ""
T6.TextColor3 = Color3.new(1, 1, 1)
T6.TextSize = 12

XE_6.Name = "XE"
XE_6.Parent = T6
XE_6.BackgroundColor3 = Color3.new(0.101961, 0.101961, 0.101961)
XE_6.BorderSizePixel = 0
XE_6.Position = UDim2.new(0.861749768, 0, -0.0032687718, 0)
XE_6.Size = UDim2.new(0, 19, 0, 18)
XE_6.Font = Enum.Font.SourceSansBold
XE_6.Text = "+"
XE_6.TextColor3 = Color3.new(1, 1, 1)
XE_6.TextSize = 14
XE_6.MouseButton1Down:Connect(function()
	arguments = T6.Text:split(" ")
	useCommand[arguments[1]]()
end)

T5.Name = "T5"
T5.Parent = HoldTab
T5.BackgroundColor3 = Color3.new(0.113725, 0.113725, 0.113725)
T5.BorderSizePixel = 0
T5.Position = UDim2.new(0, 0, 0.43050012, 0)
T5.Size = UDim2.new(0, 141, 0, 18)
T5.Text = ""
T5.TextColor3 = Color3.new(1, 1, 1)
T5.TextSize = 12

XE_7.Name = "XE"
XE_7.Parent = T5
XE_7.BackgroundColor3 = Color3.new(0.101961, 0.101961, 0.101961)
XE_7.BorderSizePixel = 0
XE_7.Position = UDim2.new(0.861749768, 0, -0.0032687718, 0)
XE_7.Size = UDim2.new(0, 19, 0, 18)
XE_7.Font = Enum.Font.SourceSansBold
XE_7.Text = "+"
XE_7.TextColor3 = Color3.new(1, 1, 1)
XE_7.TextSize = 14
XE_7.MouseButton1Down:Connect(function()
	arguments = T5.Text:split(" ")
	useCommand[arguments[1]]()
end)

T7.Name = "T7"
T7.Parent = HoldTab
T7.BackgroundColor3 = Color3.new(0.113725, 0.113725, 0.113725)
T7.BorderSizePixel = 0
T7.Position = UDim2.new(-9.31322575e-10, 0, 0.590630829, 0)
T7.Size = UDim2.new(0, 141, 0, 18)
T7.Text = ""
T7.TextColor3 = Color3.new(1, 1, 1)
T7.TextSize = 12

XE_8.Name = "XE"
XE_8.Parent = T7
XE_8.BackgroundColor3 = Color3.new(0.101961, 0.101961, 0.101961)
XE_8.BorderSizePixel = 0
XE_8.Position = UDim2.new(0.861749768, 0, -0.0032687718, 0)
XE_8.Size = UDim2.new(0, 19, 0, 18)
XE_8.Font = Enum.Font.SourceSansBold
XE_8.Text = "+"
XE_8.TextColor3 = Color3.new(1, 1, 1)
XE_8.TextSize = 14
XE_8.MouseButton1Down:Connect(function()
	arguments = T7.Text:split(" ")
	useCommand[arguments[1]]()
end)

T9.Name = "T9"
T9.Parent = HoldTab
T9.BackgroundColor3 = Color3.new(0.113725, 0.113725, 0.113725)
T9.BorderSizePixel = 0
T9.Position = UDim2.new(-1.39698386e-09, 0, 0.750761628, 0)
T9.Size = UDim2.new(0, 141, 0, 18)
T9.Text = ""
T9.TextColor3 = Color3.new(1, 1, 1)
T9.TextSize = 12

XE_9.Name = "XE"
XE_9.Parent = T9
XE_9.BackgroundColor3 = Color3.new(0.101961, 0.101961, 0.101961)
XE_9.BorderSizePixel = 0
XE_9.Position = UDim2.new(0.861749768, 0, -0.0032687718, 0)
XE_9.Size = UDim2.new(0, 19, 0, 18)
XE_9.Font = Enum.Font.SourceSansBold
XE_9.Text = "+"
XE_9.TextColor3 = Color3.new(1, 1, 1)
XE_9.TextSize = 14
XE_9.MouseButton1Down:Connect(function()
	arguments = T9.Text:split(" ")
	useCommand[arguments[1]]()
end)

T1.Text = CMDTab[1]
T2.Text = CMDTab[2]
T3.Text = CMDTab[3]
T4.Text = CMDTab[4]
T5.Text = CMDTab[5]
T6.Text = CMDTab[6]
T7.Text = CMDTab[7]
T8.Text = CMDTab[8]
T9.Text = CMDTab[9]

function useCommand.nugget()
	opx("-","Changed character into a nugget")
	if cmd15(cmdlp) then
		for i,v in pairs(cmdlp.Character:GetChildren()) do
			if v.Name == "RightUpperArm" or v.Name == "LeftUpperArm" or v.Name == "RightUpperLeg" or v.Name == "LeftUpperLeg" then
				v:Destroy()
			end
		end
	else
		for i,v in pairs(cmdlp.Character:GetChildren()) do
			if v.Name == "Right Arm" or v.Name == "Left Arm" or v.Name == "Right Leg" or v.Name == "Left Leg" then
				v:Destroy()
			end
		end
	end
	cmdlp.Character.Head.Mesh:Destroy()
end

local cwFlipping = false
function useCommand.cartwheel()
	opx("-","Now cartwheeling")
	cwFlipping = true
	function _restoreproperties()
		Torso = cmdlp.Character:FindFirstChild("Torso")
		RightS = Torso:FindFirstChild("Right Shoulder")
		LeftS = Torso:FindFirstChild("Left Shoulder")
		RightH = Torso:FindFirstChild("Right Hip")
		LeftH = Torso:FindFirstChild("Left Hip")
		RightS.MaxVelocity = .15
		LeftS.MaxVelocity = .15
		RightH.MaxVelocity = .1
		LeftH.MaxVelocity = .1
		RightS.DesiredAngle = 0
		LeftS.DesiredAngle = 0
		LeftH.DesiredAngle = 0
		RightH.DesiredAngle = 0
	end
	function Down(ml)
		for i = 1,ml.velocity.y/3 do
			ml.velocity = ml.velocity + Vector3.new(0,-4.25,0)
			wait()
		end
		ml:Remove()
	end
	function Flip()
		if debounce == true then return end
		debounce = true
		local Gyro = Instance.new("BodyGyro")
		Gyro.P = Gyro.P*10
		Gyro.maxTorque = Vector3.new(100000,100000,100000)*999
		Gyro.CFrame = cmdlp.Character.Torso.CFrame
		Gyro.Parent = cmdlp.Character.Torso
		for i=0, 50 do
			Gyro.CFrame = Gyro.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/-29,0,0)
			wait()
		end
		Gyro.CFrame = cmdlp.Character.Torso.CFrame
		wait()
		Gyro:Remove()
		cmdlp.Character.Humanoid.PlatformStand = false
		_restoreproperties()
		debounce = false
	end
	while cwFlipping do
		wait()
		Flip()
	end
end

function useCommand.uncartwheel()
	cwFlipping = false
	opx("-","No longer cartwheeling")
end

local seizureFlipping = false
function useCommand.seizure()
	opx("-","Now seizuring")
	seizureFlipping = true
	function _restoreproperties()
		Torso = cmdlp.Character:FindFirstChild("Torso")
		RightS = Torso:FindFirstChild("Right Shoulder")
		LeftS = Torso:FindFirstChild("Left Shoulder")
		RightH = Torso:FindFirstChild("Right Hip")
		LeftH = Torso:FindFirstChild("Left Hip")
		RightS.MaxVelocity = .15
		LeftS.MaxVelocity = .15
		RightH.MaxVelocity = .1
		LeftH.MaxVelocity = .1
		RightS.DesiredAngle = 0
		LeftS.DesiredAngle = 0
		LeftH.DesiredAngle = 0
		RightH.DesiredAngle = 0
	end
	function Down(ml)
		for i = 1,ml.velocity.y/3 do
			ml.velocity = ml.velocity + Vector3.new(0,-4.25,0)
			wait()
		end
		ml:Remove()
	end
	function Flip4()
		if debounce == true then return end
		debounce = true
		cmdlp.Character.Humanoid.PlatformStand = true
		local VelUp = Instance.new("BodyVelocity")
		VelUp.maxForce = Vector3.new(10000,10000,10000)*999
		VelUp.Parent = cmdlp.Character.Torso
		coroutine.resume(coroutine.create(Down),VelUp)
		local Gyro = Instance.new("BodyGyro")
		Gyro.P = Gyro.P*10
		Gyro.CFrame = cmdlp.Character.Torso.CFrame
		Gyro.Parent = cmdlp.Character.Torso
		for i=1, 16 do
			Gyro.CFrame = Gyro.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/9,math.pi/-18,0)
			wait()
		end
		Gyro.CFrame = cmdlp.Character.Torso.CFrame
		wait()
		Gyro:Remove()
		cmdlp.Character.Humanoid.PlatformStand = false
		_restoreproperties()
		debounce = false
	end
	while seizureFlipping do
		wait()
		Flip4()
	end
end

function useCommand.unseizure()
	seizureFlipping = false
	opx("-","No longer seizuring")
end

function useCommand.fling()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			noclip()
			PF = 99
			PF = PF*10
			local BT = Instance.new("BodyThrust")
			cmdhrp = cmdlp.Character.HumanoidRootPart
			BT.Parent = cmdhrp
			BT.Force = Vector3.new(PF, 0, PF)
			BT.Location = cmdhrp.Position
			for i,player in pairs(cmdlp.Character:GetChildren()) do
				if player.ClassName == "Part" then
					player.CustomPhysicalProperties = PhysicalProperties.new(0, 0.3, 0.5)
				end
			end
			cmdhrp.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(0), 0) * CFrame.new(0, 0, 0)
			wait(1)
			for i,player in pairs(cmdlp.Character:GetChildren()) do
				if player.ClassName == "Part" then
					player.CustomPhysicalProperties = PhysicalProperties.new(0.7, 0.3, 0.5)
				end
			end
			if Noclipping then
				Noclipping:Disconnect()
			end
			Clip = true
			cmdlp.Character.HumanoidRootPart.BodyThrust:Destroy()
			cmdlp.Character.Humanoid.PlatformStand = true
			cmdlp.Character.Humanoid.Sit = true
			wait(0.1)
			cmdlp.Character.Humanoid.Jump = true
			opx("-","Flung "..target.Name)
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.invisiblefling()
	opx("-","Now Invisible Flinging use refresh to stop")
	local ch = game.Players.LocalPlayer.Character
	local prt=Instance.new("Model", game.Players.LocalPlayer.Character)
	local z1 = Instance.new("Part")
	z1.Name="Torso"
	z1.CanCollide = false
	z1.Anchored = true
	local z2 = Instance.new("Part", prt)
	z2.Name="Head"
	z2.Anchored = true
	z2.CanCollide = false
	local z3 =Instance.new("Humanoid", prt)
	z3.Name="Humanoid"
	z1.Position = Vector3.new(0,9999,0)
	game.Players.LocalPlayer.Character=prt
	wait(3)
	game.Players.LocalPlayer.Character=ch
	wait(3)
	local plr = game.Players.LocalPlayer
	cmdm = plr:GetMouse()
	local Hum = Instance.new("Humanoid")
	z2:Clone()
	Hum.Parent = game.Players.LocalPlayer.Character
	local root =  game.Players.LocalPlayer.Character.HumanoidRootPart
	for i,v in pairs(plr.Character:GetChildren()) do
		if v ~= root and  v.Name ~= "Humanoid" then
			v:Destroy()
		end
	end
	root.Transparency = 0
	root.Material = "ForceField"
	root.Color = Color3.new(1, 1, 1)
	game:GetService('RunService').Stepped:connect(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
	end)
	game:GetService('RunService').RenderStepped:connect(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
	end)
	sFLY()
	workspace.CurrentCamera.CameraSubject = root
	PF = 99999
	PF = PF*10
	local bambam = Instance.new("BodyThrust")
	bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
	bambam.Force = Vector3.new(PF,0,PF)
	bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
end

function useCommand.freefling()
	opx("-","Now freeflinging use unfling to stop")
	noclip()
	sFLY()
	workspace.CurrentCamera.CameraSubject = cmdlp.Character.HumanoidRootPart
	local BT = Instance.new("BodyThrust")
	BT.Parent = cmdlp.Character.HumanoidRootPart
	BT.Force = Vector3.new(999999, 999999, 999999)
	BT.Location = cmdlp.Character.HumanoidRootPart.Position
	for i,player in pairs(cmdlp.Character:GetChildren()) do
		if player.ClassName == "Part" then
			player.CustomPhysicalProperties = PhysicalProperties.new(0, 0.3, 0.5)
		end
	end
end

function useCommand.unfling()
	opx("-","You are no longer flinging")
	for i,player in pairs(cmdlp.Character:GetChildren()) do
		if player.ClassName == "Part" then
			player.CustomPhysicalProperties = PhysicalProperties.new(0.7, 0.3, 0.5)
		end
	end
	if Noclipping then
		Noclipping:Disconnect()
	end
	Clip = true
	FLYING = false
	cmdlp.Character.HumanoidRootPart.BodyThrust:Destroy()
	cmdlp.Character.Humanoid.PlatformStand = true
	cmdlp.Character.Humanoid.Sit = true
	wait(0.1)
	cmdlp.Character.Humanoid.Jump = true
end

RestoreCFling = {}
function useCommand.cleanfling()
	local tool = cmdlp.Character:FindFirstChildOfClass("Tool")
	if tool then
		opx("-","Now clean flinging")
		tool.Parent = cmdlp.Backpack
		tool.Handle.Massless = true
		RestoreCFling = {
			Anim = cmdlp.Character.Animate.toolnone.ToolNoneAnim.AnimationId;
			Grip = tool.GripPos;
		}
		tool.GripPos = Vector3.new(100000000000000,100000000000000,100000000000000)
		cmdlp.Character.HumanoidRootPart.CustomPhysicalProperties = PhysicalProperties.new(math.huge,math.huge,math.huge,math.huge,math.huge)
		tool.Parent = cmdlp.Character
		pcall(function() cmdlp.Character.Animate.toolnone.ToolNoneAnim.AnimationId = "nil" end)
		wait(.1)
		tool.Parent = cmdlp.Backpack
		wait(.1)
		tool.Parent = cmdlp.Character
		noclip()
	else
		opx("*","You have no tool equipped!")
	end
end

function useCommand.uncleanfling()
	opx("-","No longer clean flinging")
	cmdlp.Character.HumanoidRootPart.CustomPhysicalProperties = PhysicalProperties.new(0.7, 0.3, 0.5)
	cmdlp.Character.Animate.toolnone.ToolNoneAnim.AnimationId = RestoreCFling.Anim
	local tool = cmdlp.Character:FindFirstChildOfClass("Tool")
	if tool then
		tool.GripPos = RestoreCFling.Grip
	end
end

function useCommand.notoolanim()
	pcall(function() cmdlp.Character.Animate.toolnone.ToolNoneAnim.AnimationId = "nil" end)
	opx("-","You now have no tool anim")
	local tool = cmdlp.Character:FindFirstChildOfClass("Tool")
	if tool then
		wait(.1)
		tool.Parent = cmdlp.Backpack
		wait(.1)
		tool.Parent = cmdlp.Character
	end
end

local Lagging = false
function useCommand.lag()
	opx("-","Now lagging character")
	Lagging = true
	repeat wait()
		cmdlp.Character.HumanoidRootPart.Anchored = false
		wait(.1)
		cmdlp.Character.HumanoidRootPart.Anchored = true
		wait(.1)
	until Lagging == false
end

function useCommand.unlag()
	Lagging = false
	opx("No longer lagging character")
	wait(.3)
	cmdlp.Character.HumanoidRootPart.Anchored = false
end

local Annoy = false
function useCommand.annoy()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			if target.Character and target.Character:FindFirstChild('Humanoid') then
				Annoy = true
				opx("-","Now annoying "..target.Name)
				while Annoy do
					cmdlp.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.Angles(0,math.rad(0),0)* CFrame.new(0,0,0)
					wait()
				end
			end
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.unannoy()
	Annoy = false
	opx("-","No longer annoying")
end

function useCommand.weaken()
	for i,player in pairs(cmdlp.Character:GetChildren()) do
		if player.ClassName == "Part" then
			player.CustomPhysicalProperties = PhysicalProperties.new(0, 0.3, 0.5)
		end
	end
	opx("-","You are now weak")
end

function useCommand.strengthen()
	for i,player in pairs(cmdlp.Character:GetChildren()) do
		if player.ClassName == "Part" then
			player.CustomPhysicalProperties = PhysicalProperties.new(100, 0.3, 0.5)
		end
	end
	opx("-","You are now strong")
end

function useCommand.unweak()
	for i,player in pairs(cmdlp.Character:GetChildren()) do
		if player.ClassName == "Part" then
			player.CustomPhysicalProperties = PhysicalProperties.new(0.7, 0.3, 0.5)
		end
	end
	opx("-","You are no longer weak/strong")
end

function useCommand.sparkles()
	opx("-","If you had a Fairy it now makes a sparkles illusion")
	for _, hat in pairs(cmdlp.Character.Humanoid:GetAccessories()) do
		if hat.Handle ~= nil then
			local tool = Instance.new("Tool", cmdlp.Backpack)
			tool.Name = hat.Name
			tool.GripPos = Vector3.new(1.5, 0, -1.5)
			local hathandle = hat.Handle
			hathandle:FindFirstChildOfClass("Weld"):Destroy()
			hathandle.Parent = tool
			hathandle.Massless = true
		end
	end
end

function useCommand.sword()
	opx("-","If you had a Sword on your back you are now holding it")
	for _, hat in pairs(cmdlp.Character.Humanoid:GetAccessories()) do
		if hat.Handle ~= nil then
			local tool = Instance.new("Tool", cmdlp.Backpack)
			tool.Name = hat.Name
			tool.GripPos = Vector3.new(2, 2, 0)
			tool.GripRight = Vector3.new(9, 9, 9)
			tool.GripUp = Vector3.new(-9, -9, 0)
			local hathandle = hat.Handle
			hathandle:FindFirstChildOfClass("Weld"):Destroy()
			hathandle.Parent = tool
			hathandle.Massless = true
		end
	end
	local Anim = Instance.new("Animation")
	Anim.AnimationId = "rbxassetid://28090109"
	local play = cmdlp.Character.Humanoid:LoadAnimation(Anim)
	while wait() do
		for i,v in pairs(cmdlp.Character:GetChildren()) do
			if v:IsA("Tool") then
				v.Equipped:Connect(function(Mouse)
					Mouse.Button1Down:Connect(function()
						play:Play()
					end)
				end)
			end
		end
	end
end

function useCommand.scythe()
	opx("-","If you had a Scythe on your back you are now holding it")
	for _, hat in pairs(cmdlp.Character.Humanoid:GetAccessories()) do
		if hat.Handle ~= nil then
			local tool = Instance.new("Tool", cmdlp.Backpack)
			tool.Name = hat.Name
			tool.GripPos = Vector3.new(-0.8, -2, 0)
			tool.GripRight = Vector3.new(0, 0, 0)
			tool.GripUp = Vector3.new(9, 9, -3)
			tool.GripForward = Vector3.new(0, 0, 0)
			local hathandle = hat.Handle
			hathandle:FindFirstChildOfClass("Weld"):Destroy()
			hathandle.Parent = tool
			hathandle.Massless = true
		end
	end
	local Anim = Instance.new("Animation")
	Anim.AnimationId = "rbxassetid://28090109"
	local play = cmdlp.Character.Humanoid:LoadAnimation(Anim)
	while wait() do
		for i,v in pairs(cmdlp.Character:GetChildren()) do
			if v:IsA("Tool") then
				v.Equipped:Connect(function(Mouse)
					Mouse.Button1Down:Connect(function()
						play:Play()
					end)
				end)
			end
		end
	end
end

local Follow = false
function useCommand.leash()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			for _, hat in pairs(cmdlp.Character.Humanoid:GetAccessories()) do
				if hat.Handle ~= nil then
					if hat.Name == "FurryCatTail" then
						local tool = Instance.new("Tool", cmdlp.Backpack)
						tool.Name = target.Name.."s leash"
						tool.Parent = cmdp.LocalPlayer.Character
						tool.GripPos = Vector3.new(0, 0, 1)
						tool.GripRight = Vector3.new(1,1,0)
						tool.GripUp = Vector3.new(-9,-3,0)
						local hathandle = hat.Handle
						hathandle:FindFirstChildOfClass("Weld"):Destroy()
						hathandle.Parent = tool
						hathandle.Massless = true
					elseif hat.Name == "Spike Necklace" then
						local tool = Instance.new("Tool", cmdlp.Backpack)
						tool.Name = target.Name.."s collar"
						tool.Parent = cmdp.LocalPlayer.Character
						tool.GripPos = Vector3.new(0.6, -0.6, 3)
						local hathandle = hat.Handle
						hathandle:FindFirstChildOfClass("Weld"):Destroy()
						hathandle.Parent = tool
						hathandle.Massless = true
					end
				end
			end
			flwnum = -4.5
			if target.Character and target.Character:FindFirstChild('Humanoid') then
				Follow = true
				opx("-","Now leashing "..target.Name)
				while Follow do
					cmdlp.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.Angles(0,math.rad(0),0)* CFrame.new(-0.9,0,4.5)
					wait()
				end
			end
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.penis()
	opx("-","You boutta ro-cum bro?")
	for i,v in pairs(cmdlp.Character:GetChildren()) do
		if v:IsA("Accessory") then
			if v.Handle.SpecialMesh.TextureId == "http://www.roblox.com/asset/?id=4390955131" then
				v.Name = cmdlp.Name.."'s huge shaft"
			end
		end
	end
	for i,v in pairs(cmdlp.Character:GetChildren()) do
		if v:IsA("Accessory") then
			if v.Handle.SpecialMesh.TextureId == "http://www.roblox.com/asset/?id=4566834838" then
				v.Name = cmdlp.Name.."'s right ball"
			end
		end
	end
	for i,v in pairs(cmdlp.Character:GetChildren()) do
		if v:IsA("Accessory") then
			if v.Handle.SpecialMesh.TextureId == "http://www.roblox.com/asset/?id=4524758175" then
				v.Name = cmdlp.Name.."'s left ball"
			end
		end
	end
	for _, hat in pairs(cmdlp.Character.Humanoid:GetAccessories()) do
		if hat.Handle ~= nil then
			local tool = Instance.new("Tool", cmdlp.Backpack)
			if hat.Name == cmdlp.Name.."'s huge shaft" then
				tool.Name = hat.Name
				tool.Parent = cmdlp.Character
				hat.Handle.SpecialMesh:Destroy()
				tool.GripPos = Vector3.new(-1, 2, 1.5)
				tool.GripRight = Vector3.new(0, 0, 0)
				tool.GripUp = Vector3.new(9, 9, 0)
				tool.GripForward = Vector3.new(0, 0, 0)
			elseif hat.Name == cmdlp.Name.."'s right ball" then
				tool.Name = hat.Name
				tool.Parent = cmdlp.Character
				hat.Handle.SpecialMesh:Destroy()
				tool.GripPos = Vector3.new(0.5, 2, 0.5)
				tool.GripRight = Vector3.new(0, 0, 0)
				tool.GripUp = Vector3.new(9, 9, 0)
				tool.GripForward = Vector3.new(0, 0, 0)
			elseif hat.Name == cmdlp.Name.."'s left ball" then
				tool.Name = hat.Name
				tool.Parent = cmdlp.Character
				hat.Handle.SpecialMesh:Destroy()
				tool.GripPos = Vector3.new(0.5, 2, 2.5)
				tool.GripRight = Vector3.new(0, 0, 0)
				tool.GripUp = Vector3.new(9, 9, 0)
				tool.GripForward = Vector3.new(0, 0, 0)
			end
			local hathandle = hat.Handle
			hathandle:FindFirstChildOfClass("Weld"):Destroy()
			hathandle.Parent = tool
			hathandle.Massless = true
		end
	end
end

function useCommand.animation()
	if arguments[2] and cmdnum(arguments[2]) then
		if cmd6(cmdlp) then
			local AnimationId = tostring(arguments[2])
			local Animprefix = Instance.new("Animation")
			Animprefix.AnimationId = "rbxassetid://"..AnimationId
			local animplay = cmdlp.Character.Humanoid:LoadAnimation(Animprefix)
			animplay:Play()
			if arguments[3] and cmdnum(arguments[3]) then
				animplay:AdjustSpeed(arguments[3])
			end
			opx("-","Now playing animation: "..arguments[2])
		else
			opx("*","R6 is needed for this command")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.unanimation()
	for i,v in pairs(cmdlp.Character.Humanoid:GetPlayingAnimationTracks()) do
		v:Stop()
	end
	opx("-","Stopped all aniamtions")
end

function useCommand.uninsane()
	opx("-","You are no longer insane")
	insane:Stop()
	Spas:Destroy()
end

function useCommand.monstermash()
	if cmd6(cmdlp) then
		local AnimationId = "35654637"
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"..AnimationId
		local play = cmdlp.Character.Humanoid:LoadAnimation(Anim)
		play:Play()
		opx("-","Now playing animation: 35654637")
	else
		opx("*","R6 is needed for this command")
	end
end

function useCommand.ragdoll()
	opx("-","Now ragdolling")
	cmdlp.Character.Humanoid.PlatformStand = true
end

function useCommand.unragdoll()
	opx("-","No longer ragdolling")
	cmdlp.Character.Humanoid.PlatformStand = false
end

function useCommand.animpack()
	if arguments[2] == "sneaky" then
		local Char = game.Players.LocalPlayer.Character
		Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1132461372"
		Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1132469004"
		Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1132473842"
		Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1132477671"
		Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1132489853"
		Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1132494274"
		Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=1132500520"
		Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=1132506407"
		Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1132510133"
	elseif arguments[2] == "old" then
		local Char = game.Players.LocalPlayer.Character
		Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=387947158"
		Char.Animate.idle.Animation1.Weight.Value = "9"
		Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=387947464"
		Char.Animate.idle.Animation2.Weight.Value = "1"
		Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=387947975"
		Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616092998"
		Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616094091"
		Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=382460631"
	elseif arguments[2] == "toy" then
		local Char = cmdlp.Character
		Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=782843869"
		Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=782846423"
		Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
		Char.Animate.idle.Animation1.Weight.Value = "9"
		Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
		Char.Animate.idle.Animation2.Weight.Value = "1"
		Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=782847020"
		Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=782842708"
		Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=782844582"
		Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=782845186"
		Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=782843345"
	elseif arguments[2] == "pirate" then
		local Char = cmdlp.Character
		Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=750779899"
		Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=750780242"
		Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=750781874"
		Char.Animate.idle.Animation1.Weight.Value = "9"
		Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=750782770"
		Char.Animate.idle.Animation2.Weight.Value = "1"
		Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=750782230"
		Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=750783738"
		Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=750784579"
		Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=750785176"
		Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=750785693"
	elseif arguments[2] == "knight" then
		local Char = cmdlp.Character
		Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=658360781"
		Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=657600338"
		Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=657595757"
		Char.Animate.idle.Animation1.Weight.Value = "9"
		Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=657568135"
		Char.Animate.idle.Animation2.Weight.Value = "1"
		Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=658409194"
		Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=657564596"
		Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=657560551"
		Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=657557095"
		Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=657552124"
	elseif arguments[2] == "astronaut" then
		local Char = cmdlp.Character
		Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=891609353"
		Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=891617961"
		Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=891621366"
		Char.Animate.idle.Animation1.Weight.Value = "9"
		Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=891633237"
		Char.Animate.idle.Animation2.Weight.Value = "1"
		Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=891627522"
		Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=891636393"
		Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=891639666"
		Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=891663592"
		Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=891636393"
	elseif arguments[2] == "vampire" then
		local Char = cmdlp.Character
		Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083439238"
		Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083443587"
		Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083445855"
		Char.Animate.idle.Animation1.Weight.Value = "9"
		Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083450166"
		Char.Animate.idle.Animation2.Weight.Value = "1"
		Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083455352"
		Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083462077"
		Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=1083464683"
		Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=1083467779"
		Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083473930"
	elseif arguments[2] == "robot" then
		local Char = cmdlp.Character
		Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616086039"
		Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616087089"
		Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616088211"
		Char.Animate.idle.Animation1.Weight.Value = "9"
		Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616089559"
		Char.Animate.idle.Animation2.Weight.Value = "1"
		Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616090535"
		Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616091570"
		Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616092998"
		Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616094091"
		Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616095330"
	elseif arguments[2] == "levitation" then
		local Char = cmdlp.Character
		Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616003713"
		Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
		Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
		Char.Animate.idle.Animation1.Weight.Value = "9"
		Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
		Char.Animate.idle.Animation2.Weight.Value = "1"
		Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
		Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616010382"
		Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616011509"
		Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616012453"
		Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
	elseif arguments[2] == "bubbly" then
		local Char = cmdlp.Character
		Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=909997997"
		Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=910001910"
		Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=910004836"
		Char.Animate.idle.Animation1.Weight.Value = "9"
		Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=910009958"
		Char.Animate.idle.Animation2.Weight.Value = "1"
		Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=910016857"
		Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=910025107"
		Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=910028158"
		Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=910030921"
		Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=910034870"
	elseif arguments[2] == "werewolf" then
		local Char = cmdlp.Character
		Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083182000"
		Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083189019"
		Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083195517"
		Char.Animate.idle.Animation1.Weight.Value = "9"
		Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083214717"
		Char.Animate.idle.Animation2.Weight.Value = "1"
		Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
		Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083216690"
		Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=1083222527"
		Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=1083225406"
		Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083178339"
	elseif arguments[2] == "stylish" then
		local Char = cmdlp.Character
		Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616133594"
		Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616134815"
		Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616136790"
		Char.Animate.idle.Animation1.Weight.Value = "9"
		Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616138447"
		Char.Animate.idle.Animation2.Weight.Value = "1"
		Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616139451"
		Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616140816"
		Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616143378"
		Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616144772"
		Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616146177"
	elseif arguments[2] == "mage" then
		local Char = cmdlp.Character
		Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=707826056"
		Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
		Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=707742142"
		Char.Animate.idle.Animation1.Weight.Value = "9"
		Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=707855907"
		Char.Animate.idle.Animation2.Weight.Value = "1"
		Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=707853694"
		Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=707861613"
		Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=707876443"
		Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=707894699"
		Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=707897309"
	elseif arguments[2] == "cartoony" then
		local Char = cmdlp.Character
		Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=742636889"
		Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=742637151"
		Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=742637544"
		Char.Animate.idle.Animation1.Weight.Value = "9"
		Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=742638445"
		Char.Animate.idle.Animation2.Weight.Value = "1"
		Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=742637942"
		Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=742638842"
		Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=742639220"
		Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=742639812"
		Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=742640026"
	elseif arguments[2] == "zombie" then
		local Char = cmdlp.Character
		Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616156119"
		Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
		Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616158929"
		Char.Animate.idle.Animation1.Weight.Value = "9"
		Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616160636"
		Char.Animate.idle.Animation2.Weight.Value = "1"
		Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
		Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
		Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616165109"
		Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616166655"
		Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
	elseif arguments[2] == "superhero" then
		local Char = cmdlp.Character
		Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616104706"
		Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616108001"
		Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616111295"
		Char.Animate.idle.Animation1.Weight.Value = "9"
		Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616113536"
		Char.Animate.idle.Animation2.Weight.Value = "1"
		Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616115533"
		Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616117076"
		Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616119360"
		Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616120861"
		Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616122287"
	elseif arguments[2] == "ninja" then
		local Char = cmdlp.Character
		Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=656114359"
		Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=656115606"
		Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=656117400"
		Char.Animate.idle.Animation1.Weight.Value = "9"
		Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=656118341"
		Char.Animate.idle.Animation2.Weight.Value = "1"
		Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=656117878"
		Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=656118852"
		Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=656119721"
		Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=656121397"
		Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=656121766"
	elseif arguments[2] == "elder" then
		local Char = cmdlp.Character
		Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=845392038"
		Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=845396048"
		Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=845397899"
		Char.Animate.idle.Animation1.Weight.Value = "9"
		Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=845400520"
		Char.Animate.idle.Animation2.Weight.Value = "1"
		Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=845398858"
		Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=845386501"
		Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=845401742"
		Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=845403127"
		Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=845403856"
	elseif arguments[2] == "oldschool" then
		local Char = cmdlp.Character
		Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=5319816685"
		Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=5319839762"
		Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=5319828216"
		Char.Animate.idle.Animation1.Weight.Value = "9"
		Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=5319831086"
		Char.Animate.idle.Animation2.Weight.Value = "1"
		Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=5319841935"
		Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=5319844329"
		Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=5319850266"
		Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=5319852613"
		Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=5319847204"
	elseif arguments[2] == "confident" then
		local Char = cmdlp.Character
		Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1069946257"
		Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1069973677"
		Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1069977950"
		Char.Animate.idle.Animation1.Weight.Value = "9"
		Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1069987858"
		Char.Animate.idle.Animation2.Weight.Value = "1"
		Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1069984524"
		Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1070001516"
		Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=1070009914"
		Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=1070012133"
		Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1070017263"
	elseif arguments[2] == "popstar" then
		local Char = cmdlp.Character
		Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1213044953"
		Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1212900995"
		Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1212900985"
		Char.Animate.idle.Animation1.Weight.Value = "9"
		Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1212900985"
		Char.Animate.idle.Animation2.Weight.Value = "1"
		Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1212954642"
		Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1212980348"
		Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=1212852603"
		Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=1212998578"
		Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1212980338"
	elseif arguments[2] == "patrol" then
		local Char = cmdlp.Character
		Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1148811837"
		Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1148863382"
		Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1149612882"
		Char.Animate.idle.Animation1.Weight.Value = "9"
		Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1150842221"
		Char.Animate.idle.Animation2.Weight.Value = "1"
		Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1150944216"
		Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1150967949"
		Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=1151204998"
		Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=1151221899"
		Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1151231493"
	elseif arguments[2] == "princess" then
		local Char = cmdlp.Character
		Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=940996062"
		Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=941000007"
		Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=941003647"
		Char.Animate.idle.Animation1.Weight.Value = "9"
		Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=941013098"
		Char.Animate.idle.Animation2.Weight.Value = "1"
		Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=941008832"
		Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=941015281"
		Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=941018893"
		Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=941025398"
		Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=941028902"
	elseif arguments[2] == "cowboy" then
		local Char = cmdlp.Character
		Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1014380606"
		Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1014384571"
		Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1014390418"
		Char.Animate.idle.Animation1.Weight.Value = "9"
		Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1014398616"
		Char.Animate.idle.Animation2.Weight.Value = "1"
		Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1014394726"
		Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1014401683"
		Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=1014406523"
		Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=1014411816"
		Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1014421541"
	else
		opx("*","2 arguments are required for this command!")
	end
end

function useCommand.spin()
	local Spin = Instance.new("BodyAngularVelocity", cmdlp.Character.HumanoidRootPart)
	Spin.Name = "Spinning"
	if arguments[2] then
		if cmdnum(arguments[2]) then
			Spin.AngularVelocity = Vector3.new(0,arguments[2],0)
			Spin.MaxTorque = Vector3.new(0, math.huge, 0)
			opx("-","Now spinning at speed: "..arguments[2])
		else
			opx("*","A number is needed")
		end
	else
		Spin.AngularVelocity = Vector3.new(0,20,0)
		Spin.MaxTorque = Vector3.new(0, math.huge, 0)
		opx("-","Now spinning")
	end
end

function useCommand.unspin()
	opx("-","Stopped spinning")
	for i,v in pairs(cmdlp.Character.HumanoidRootPart:GetChildren()) do
		if v.Name == "Spinning" then
			v:Destroy()
		end
	end
end

function useCommand.hatspin()
	opx("-","Hats are now spinning")
	for i,v in pairs(cmdlp.Character:GetChildren()) do
		if v:IsA("Accessory") then
			local findForce = v.Handle:FindFirstChildOfClass("BodyForce")
			if findForce == nil then
				local a = Instance.new("BodyPosition")
				local b = Instance.new("BodyAngularVelocity")
				a.Parent = v.Handle
				b.Parent = v.Handle
				a.Name = "un"
				b.Name = "un2"
				v.Handle.AccessoryWeld:Destroy()
				b.AngularVelocity = Vector3.new(0,100,0)
				b.MaxTorque = Vector3.new(0,200,0)
				a.P = 30000
				a.D = 50
				game:GetService('RunService').Stepped:connect(function()
					a.Position = cmdlp.Character.Head.Position
				end)
			end
		end
	end
end

function useCommand.unhatspin()
	opx("-","Stopped spinning hats")
	for i,v in pairs(cmdlp.Character:GetChildren()) do
		if v:IsA("Accessory") then
			v.Handle.un:Destroy()
			v.Handle.un2:Destroy()
		end
	end
end

local ff = false
function useCommand.facefuck()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			if target.Character and target.Character:FindFirstChild('Humanoid') then
				if ff == true then
					ff = false
					opx("-","Stopped facefucking/faceraping")
					cmdlp.Character.Humanoid.Sit = false				
				return
				else ff = true
					opx("-","Facefucking/faceraping enabled")
					while ff do
						cmdlp.Character.Humanoid.Sit = true
						cmdlp.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.Angles(0,math.rad(180),0)* CFrame.new(0,1.6,0.4)
						wait()
					end
				end
			end
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.unfacefuck()
	opx("-","Stopped facefucking/faceraping")
	cmdlp.Character.Humanoid.Sit = false
	ff = false
end

local ff2 = false
function useCommand.facefuckanim()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			facebangAnim = Instance.new("Animation")
			facebangAnim.AnimationId = "rbxassetid://148840371"
			facebang = cmdlp.Character.Humanoid:LoadAnimation(facebangAnim)
			facebang:Play(.1, 1, 1)
			facebang:AdjustSpeed(3)
			if target.Character and target.Character:FindFirstChild('Humanoid') then
				if ff2 == true then
					ff2 = false
					opx("-","Stopped facefucking/faceraping")				
				return
				else ff2 = true
					opx("-","Facefucking/faceraping enabled")
					while ff2 do
						cmdlp.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.Angles(0,math.rad(180),0)* CFrame.new(0.4,1.6,0.4)
						wait()
					end
				end
			end
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.unfacefuckanim()
	ff2 = false
	facebang:Stop()
	facebang:Destroy()
	opx("-","Stopped facefucking/faceraping")
end

local pb = false
function useCommand.piggyback()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			if target.Character and target.Character:FindFirstChild('Humanoid') then
				if pb == true then
					pb = false
					opx("-","Stopped riding/piggybacking")
					cmdlp.Character.Humanoid.Sit = false
				return
				else pb = true
					opx("-","Riding/piggybacking enabled")
					while pb do
						cmdlp.Character.Humanoid.Sit = true
						cmdlp.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.Angles(0,math.rad(0),0)* CFrame.new(0,1.6,0.4)
						wait()
					end
				end
			end
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.unpiggyback()
	opx("-","Stopped piggybacking/riding")
	pb = false
	cmdlp.Character.Humanoid.Sit = false
end

local Bang = false
function useCommand.fuck()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			flwnum = -1
			bangAnim = Instance.new("Animation")
			bangAnim.AnimationId = "rbxassetid://148840371"
			bang = cmdlp.Character.Humanoid:LoadAnimation(bangAnim)
			bang:Play(.1, 1, 1)
			bang:AdjustSpeed(3)
			if target.Character and target.Character:FindFirstChild('Humanoid') then
				if Bang == true then
					Follow = false
					Bang = false
					opx("-","Fuck/rape disabled")
				return
				else Bang = true
					opx("-","Fuck/rape enabled")
					while Bang do
						cmdlp.Character.HumanoidRootPart.CFrame=
						target.Character.HumanoidRootPart.CFrame +  target.Character.HumanoidRootPart.CFrame.lookVector * flwnum
						wait()
					end
				end
			end
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.unfuck()
	bang:Stop()
	bangAnim:Destroy()
	Bang = false
	opx("-","Rape/fuck disabled")
end

local Follow = false
function useCommand.follow()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			flwnum = -5
			if target.Character and target.Character:FindFirstChild('Humanoid') then
				if Follow == true then
					Follow = false;
					opx("-","Follow/stalk disabled")
				return
				else Follow = true
					opx("-","Follow/stalk enabled") 
				end
				while Follow do
					cmdlp.Character.HumanoidRootPart.CFrame=
					target.Character.HumanoidRootPart.CFrame +  target.Character.HumanoidRootPart.CFrame.lookVector * flwnum
					wait()
				end
			end
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.unfollow()
	Follow = false
	opx("-","Stalk/follow disabled")
end

function useCommand.oldroblox()
	Confirm("Default","This command is not reversable.")
	if Confirmation == true then
		for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA("BasePart") then
				local dec = Instance.new("Texture", v)
				dec.Texture = "rbxassetid://48715260"
				dec.Face = "Top"
				dec.StudsPerTileU = "1"
				dec.StudsPerTileV = "1"
				dec.Transparency = v.Transparency
				v.Material = "Plastic"
				local dec2 = Instance.new("Texture", v)
				dec2.Texture = "rbxassetid://20299774"
				dec2.Face = "Bottom"
				dec2.StudsPerTileU = "1"
				dec2.StudsPerTileV = "1"
				dec2.Transparency = v.Transparency
				v.Material = "Plastic"
			end
		end
		game.Lighting.ClockTime = 12
		game.Lighting.GlobalShadows = false
		game.Lighting.Outlines = false
		for i,v in pairs(game.Lighting:GetDescendants()) do
			if v:IsA("Sky") then
				v:Destroy()
			end
		end
		local sky = Instance.new("Sky", game.Lighting)
		sky.SkyboxBk = "rbxassetid://161781263"
		sky.SkyboxDn = "rbxassetid://161781258"
		sky.SkyboxFt = "rbxassetid://161781261"
		sky.SkyboxLf = "rbxassetid://161781267"
		sky.SkyboxRt = "rbxassetid://161781268"
		sky.SkyboxUp = "rbxassetid://161781260"
		opx("-","Old Roblox game theme loaded")
	end
end

function useCommand.savegame()
	opx("-","Saving game in your workspace folder")
	saveinstance()
end

function useCommand.btools()
	opx("-","Btools are in your backpack")
	local Clone_T = Instance.new("HopperBin",cmdlp.Backpack)
	Clone_T.BinType = "Clone"
	local Destruct = Instance.new("HopperBin",cmdlp.Backpack)
	Destruct.BinType = "Hammer"
	local Hold_T = Instance.new("HopperBin",cmdlp.Backpack)
	Hold_T.BinType = "Grab"
end

function useCommand.fex()
	opx("-","Loading F3X")
	
	loadstring(game:GetObjects("rbxassetid://4698064966")[1].Source)()
	opx("-","Loaded F3X")
end

function useCommand.remotespy()
	opx("-","Loading Simple Spy credits to exxtremestuffs")
	loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
	opx("-","Simple Spy has loaded")
end

function useCommand.playerstalker()
	opx("-","Loading PlayerStalker")
	loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/projetcs/PlayerStalkerV2",true))()
	opx("-","Loaded PlayerStalker")
end

function useCommand.badger()
	opx("-","Loading Badger V2")
	loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/others/badger",true))()
	opx("-","Loaded Badger V2")
end

function useCommand.explorer()
	opx("-","Loading DEX")
	loadstring(game:GetObjects("rbxassetid://418957341")[1].Source)()
	opx("-","DEX has been loaded")
end

function useCommand.removeeffects()
	opx("-","Removed all effects")
	for i,v in pairs(game:GetDescendants()) do
		if v:IsA("Sparkles") or v:IsA("ParticleEmitter") or v:IsA("Fire") or v:IsA("Smoke") then
			v:Destroy()
		end
	end
end

function useCommand.removeseats()
	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA("Seat") or v:IsA("VehicleSeat") then
			v:Destroy()
		end
	end
	opx("-","Removed all seats")
end

XLS = {}
function useCommand.removelocalscripts()
	opx("-","Removed all localscripts")
	for _,ls in pairs(game:GetDescendants()) do
		if ls:IsA("LocalScript") then
			ls.Disabled = true
			table.insert(XLS, ls)
		end
	end
end

function useCommand.restorelocalscripts()
	opx("-","Restored all localscripts")
	for _,v in pairs(XLS) do
		v.Disabled = false
	end
end

function useCommand.xray()
	transparent = true
	x(transparent)
	opx("-","X-Ray enabled")
end

function useCommand.unxray()
	transparent = false
	x(transparent)
	opx("-","X-Ray disabled")
end

function useCommand.tabs()
	if arguments[2] == "off" then
		opx("-","Turned off tabs")
		TabsOff = true
		HoldTab.Visible = false
		updatesaves()
	elseif arguments[2] == "on" then
		opx("-","Turned on tabs")
		TabsOff = false
		HoldTab.Visible = true
		updatesaves()
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.changetab()
	if arguments[3] then
		MoreArg = getstring(3)
		if arguments[2] == "1" then
			T1.Text = MoreArg
			CMDTab[1] = MoreArg
		elseif arguments[2] == "2" then
			T2.Text = MoreArg
			CMDTab[2] = MoreArg
		elseif arguments[2] == "3" then
			T3.Text = MoreArg
			CMDTab[3] = MoreArg
		elseif arguments[2] == "4" then
			T4.Text = MoreArg
			CMDTab[4] = MoreArg
		elseif arguments[2] == "5" then
			T5.Text = MoreArg
			CMDTab[5] = MoreArg
		elseif arguments[2] == "6" then
			T6.Text = MoreArg
			CMDTab[6] = MoreArg
		elseif arguments[2] == "7" then
			T7.Text = MoreArg
			CMDTab[7] = MoreArg
		elseif arguments[2] == "8" then
			T8.Text = MoreArg
			CMDTab[8] = MoreArg
		elseif arguments[2] == "9" then
			T9.Text = MoreArg
			CMDTab[9] = MoreArg
		end
	else
		opx("*","3 arguments are required!")
	end
end

function useCommand.lockws()
	opx("-","Locked workspace")
	for i,v in pairs(cmdws:GetDescendants()) do
		if v:IsA("BasePart") then
			v.Locked = true
		end
	end
end

function useCommand.unlockws()
	opx("-","Locked workspace")
	for i,v in pairs(cmdws:GetDescendants()) do
		if v:IsA("BasePart") then
			v.Locked = false
		end
	end
end

function useCommand.day()
	opx("-","It is now day")
	cmdl.ClockTime = 14
end

function useCommand.night()
	opx("-","It is now night")
	cmdl.ClockTime = 0
end

function useCommand.removesky()
	opx("-","You have removed the skybox")
	for i,v in pairs(cmdl:GetChildren()) do
		if v:IsA("Sky") then
			v:Destroy()
		end
	end
end

function useCommand.restorelighting()
	cmdl.Ambient = Color3.new(0.715, 0.715, 0.715)
	cmdl.Brightness = 1
	cmdl.ClockTime = 14
	cmdl.ColorShift_Bottom = Color3.new(0, 0, 0)
	cmdl.ColorShift_Top = Color3.new(0, 0, 0)
	cmdl.ExposureCompensation = 0
	cmdl.FogColor = Color3.new(0.754, 0.754, 0.754)
	cmdl.FogEnd = 100000
	cmdl.FogStart = 0
	cmdl.GeographicLatitude = 41.73
	cmdl.GlobalShadows = false
	cmdl.OutdoorAmbient = Color3.new(0.400, 0.400, 0.400)
	cmdl.Outlines = true
	opx("-","Restored lighting to original settings")
end

function useCommand.restorecamera()
	opx("-","Restored camera to original settings")
	workspace.Camera.FieldOfView = 70
	workspace.Camera.CameraType = "Track"
	cmdlp.CameraMaxZoomDistance = 400
	cmdlp.CameraMinZoomDistance = 0.5
	cmdlp.CameraMode = "Classic"
	cmdlp.EnableMouseLockOption = true
end

function useCommand.unscramble()
	opx("-","Unscrambled names")
	for i,v in pairs(game:GetDescendants()) do
		if v:IsA("Workspace") or v:IsA("Camera") or v:IsA("Players") or v:IsA("Lighting") or v:IsA("ReplicatedStorage") or v:IsA("StarterPlayer") then
			v.Name = v.ClassName
		end
	end
end

function useCommand.removeinviswalls()
	opx("-","Removed invisible walls")
	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
			if v.Transparency == 1 then
				v:Destroy()
			end
		end
	end
end

function useCommand.gameinfo()
	opx("-","Game info opened")
	function getAsset(ID)
		return("http://www.roblox.com/Thumbs/Asset.ashx?format=png&width=420&height=230&assetId="..ID)
	end
	gameframe.Visible = true
	gameframe:TweenSize(UDim2.new(0,300,0,433), Enum.EasingDirection.In, Enum.EasingStyle.Quad, .5)
	gameimage.Image = getAsset(game.PlaceId)
	local GetName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
	gameview.Text = "You are playing "..GetName.Name
	gameid.Text = "ID of game: "..game.PlaceId
	uptime.Text = "Uptime (s): "..workspace.DistributedGameTime
	if workspace.FilteringEnabled == true then
		fecheck.Text = "Filtering is enabled"
	else
		fecheck.Text = "Filtering is disabled"
	end
end

function useCommand.closegameinfo()
	opx("-","Game info closed")
	gameframe.Visible = false
end

function useCommand.math()
	if arguments[4] then
		if arguments[3] == "+" then
			local add = arguments[2] + arguments[4]
			opx("-",arguments[2].." + "..arguments[4].." = "..add)
			if arguments[5] == "cb" or arguments[5] == "copy" then
				setclipboard(arguments[2].." + "..arguments[4].." = "..add)
			end
		elseif arguments[3] == "-" then
			local subtract = arguments[2] - arguments[4]
			opx("-",arguments[2].." - "..arguments[4].." = "..subtract)
			if arguments[5] == "cb" or arguments[5] == "copy" then
				setclipboard(arguments[2].." - "..arguments[4].." = "..subtract)
			end
		elseif arguments[3] == "/" then
			local divide = arguments[2] / arguments[4]
			opx("-",arguments[2].." / "..arguments[4].." = "..divide)
			if arguments[5] == "cb" or arguments[5] == "copy" then
				setclipboard(arguments[2].." / "..arguments[4].." = "..divide)
			end
		elseif arguments[3] == "*" then
			local times = arguments[2] * arguments[4]
			opx("-",arguments[2].." * "..arguments[4].." = "..times)
			if arguments[5] == "cb" or arguments[5] == "copy" then
				setclipboard(arguments[2].." * "..arguments[4].." = "..times)
			end
		else
			opx("*","A proper multiplication sign is needed!")
		end
	else
		opx("*","2 numbers and a multiplication sign is needed")
	end
end

function useCommand.hidechat()
	opx("-","Chat is disabled")
	game:GetService("StarterGui"):SetCoreGuiEnabled('Chat', false)
end

function useCommand.showchat()
	opx("-","Chat is enabled")
	game:GetService("StarterGui"):SetCoreGuiEnabled('Chat', true)
end

function useCommand.switchteam()
	if arguments[2] then
		opx("-","Switched team to: "..arguments[2])
		cmdlp.Team = arguments[2]
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.ping()
	local ping = (1/wait())
	local pingexact = string.sub(ping,0,4)
	opx("-","Pong! Your ping is "..pingexact.."ms")
end

function useCommand.toolfps()
	opx("-","FPS will now show - Credit to Curvn")
	local ToolNameGrabber = Instance.new("ScreenGui", getParent)
	local ToolNameTxt = Instance.new("TextLabel", getParent)
	local player = game.Players.LocalPlayer
	ToolNameGrabber.Name = "ToolNameGrabber"
	ToolNameGrabber.Parent = game.CoreGui
	ToolNameGrabber.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	ToolNameGrabber.Enabled = true
	ToolNameTxt.Name = "ToolNameTxt"
	ToolNameTxt.Parent = ToolNameGrabber
	ToolNameTxt.BackgroundColor3 = Color3.new(1, 1, 1)
	ToolNameTxt.BackgroundTransparency = 1
	ToolNameTxt.BorderColor3 = Color3.new(0, 0, 0)
	ToolNameTxt.Position = UDim2.new(0.894944727, 0, 0.952606618, 0)
	ToolNameTxt.Size = UDim2.new(0, 133, 0, 30)
	ToolNameTxt.Font = Enum.Font.GothamSemibold
	ToolNameTxt.Text = "TextLabel"
	ToolNameTxt.TextColor3 = Color3.new(1, 1, 1)
	ToolNameTxt.TextScaled = true
	ToolNameTxt.TextSize = 14
	ToolNameTxt.TextWrapped = true
	ToolNameTxt.Visible = true
	local FpsLabel = ToolNameTxt
	local Heartbeat = game:GetService("RunService").Heartbeat
	local LastIteration, Start
	local FrameUpdateTable = { }
	local function HeartbeatUpdate()
		LastIteration = tick()
		for Index = #FrameUpdateTable, 1, -1 do
			FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
		end
		FrameUpdateTable[1] = LastIteration
		local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
		CurrentFPS = CurrentFPS - CurrentFPS % 1
		FpsLabel.Text = "" .. CurrentFPS .. " FPS"
	end
	Start = tick()
	Heartbeat:Connect(HeartbeatUpdate)
end

function useCommand.fps()
    local HBFps = 0
    local Heartbeat = game:GetService("RunService").Heartbeat
	local LastIteration, Start
	local FrameUpdateTable = { }
	local function HeartbeatUpdate()
    	LastIteration = tick()
    	for Index = #FrameUpdateTable, 1, -1 do
    		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
    	end
    	FrameUpdateTable[1] = LastIteration
    	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
    	CurrentFPS = CurrentFPS - CurrentFPS % 1
    	HBFps = CurrentFPS
	end
	Start = tick()
    local x = Heartbeat:Connect(HeartbeatUpdate)
    wait(.5)
    x:Disconnect()
	opx("-",HBFps.."FPS")
end

function useCommand.untoolfps()
	opx("-","No longer showing FPS")
	game.CoreGui.ToolNameGrabber:Destroy()
end

function useCommand.gametime()
	opx("-",math.floor(workspace.DistributedGameTime).."s in game")
end

function useCommand.resetsaves()
	Confirm("Default","This will reset your stats and saves.")
	if Confirmation then
		opx("-","Successfully reset your Strylix-FE.")
		if isfile("Strylix-FE.lua") then
			delfile("Strylix-FE.lua")
		end
	end
end

function useCommand.savesaves()
	opx("-","A save was copied to your clipboard")
	setclipboard(readfile("Strylix-FE.lua"))
	writefile("Strylix-FE.save",readfile("Strylix-FE.lua"))
end

function useCommand.migratesaves()
	Confirm("Default","This will replace your stats and saves.")
	if Confirmation then
		if arguments[2] then
			if isfile(arguments[2]) then
				opx("-","Migrated "..arguments[2].." to current saves")
				writefile("Strylix-FE.lua",readfile(arguments[2]))
			else
				opx("*","You do not have a save by that name.")
			end
		else
			if isfile("Strylix-FE.save") then
				opx("-","Migrated Strylix-FE.save to current saves")
				writefile("Strylix-FE.lua",readfile("Strylix-FE.save"))
			else
				opx("*","You do not have a Strylix FE save.")
			end
		end
	end
end

function useCommand.resetguipos()
	opx("-","Reset GUI position")
	holder.Position = UDim2.new(0, 147, 0, 324)
end

function useCommand.fuckoff()
	opx("-","You can fuck off too!")
	Unnamed:Destroy()
end

function useCommand.reload()
	opx("-","Reloading Strylix FE...")
	loadstring(game:HttpGet("http://fe.strylix.net/main/main.lua", true))()
end

function useCommand.console()
	if arguments[2] then
		opx("-","Printed "..getstring(2).." to console.")
		rconsoleprint(getstring(2))
	else
		opx("*","2 areguments are required!")
	end
end

function useCommand.partesp()
	if arguments[2] == "class" then
		opx("-","PartESP Enabled")
		IESPenabled = true
		for _,i in pairs(workspace:GetDescendants()) do
			if i:IsA(arguments[3]) then
				if arguments[3] == "ClickDetector" or arguments[2] == "TouchInterest" then
					if i:IsA("BasePart") then
						IESP(i.Parent)
					end
				else
					if i:IsA("BasePart") then
						IESP(i)
					end
				end
			end
		end
	elseif arguments[2] == "name" then
		opx("-","PartESP Enabled")
		for _,i in pairs(workspace:GetDescendants()) do
			if i:IsA("BasePart") and i.Name == arguments[3] then
				IESP(i)
			end
		end
	else
		opx("*","2 arguments are required")
	end
end

function useCommand.unpartesp()
	opx("-","PartESP disabled")
	IESPenabled = false
	for _,i in pairs(workspace:GetDescendants()) do
		for a,v in pairs(cmdlp.PlayerGui:GetChildren()) do
			if v.Name == i:GetFullName()..'_IESP' then
				v:Destroy()
			end
		end
	end
end

function useCommand.backpack()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			xTools = ""
			Num = 0
			for i,v in pairs(target.Backpack:GetChildren()) do
				if v:IsA("Tool") then
					xTools = xTools..v.Name..", "
					Num = Num+1
				end
			end
			opxL("Backpack",Num.."|"..xTools)
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.messagebox()
	if messageboxasync then
		opx("-","Opened message box, "..getstring(2))
		messageboxasync(getstring(2), "Strylix FE Message", 262148)
	else
		opx("*","Your exploit does not support messageboxes!")
	end
end

function useCommand.enabledrops()
	opx("-","Enabled tool dropping")
	for i,v in pairs(cmdlp.Backpack:GetChildren()) do
		v.CanBeDropped = true
	end
	cmdlp.Character:FindFirstChildOfClass("Tool").CanBeDropped = true
end

local noVoid = false
function useCommand.novoid()
	opx("-","NoVoid is now enabled")
	noVoid = true
	cmdlp.Character.ChildAdded:Connect(function(rg)
		if rg:IsA("Tool") and noVoid == true then
			rg:Destroy()
		end
	end)
end

function useCommand.yesvoid()
	noVoid = false
	opx("-","NoVoid is now disabled")
end

function useCommand.disabledrops()
	opx("-","Disabled tool dropping")
	for i,v in pairs(cmdlp.Backpack:GetChildren()) do
		v.CanBeDropped = false
	end
	cmdlp.Character:FindFirstChildOfClass("Tool").CanBeDropped = false
end

local toolsget = false
function useCommand.grabtools()
	opx("-","Now getting tools")
	toolsget = true
	for i,v in pairs(workspace:GetChildren()) do
		if v:IsA("Tool") then
			v.Handle.CFrame = cmdlp.Character.HumanoidRootPart.CFrame
		end
	end
	workspace.ChildAdded:Connect(function(pt)
		if toolsget == true then
			if pt:IsA("Tool") then
				wait(.25)
				pt.Handle.CFrame = cmdlp.Character.HumanoidRootPart.CFrame
			end
		end
	end)
end

function useCommand.ungrabtools()
	opx("-","No longer getting tools")
	toolsget = false
end

function useCommand.earrape()
	opx("-","Played all workspace sounds")
	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA("Sound") then 
			v:Play()
		end
	end
end

function useCommand.respectfiltering()
	if game:GetService("SoundService").RespectFilteringEnabled == false then
		opx("-","Respect Filtering is disabled")
	else
		opx("*","Respect Filtering is enabled")
	end
end

function useCommand.filtering()
	opx("-","retard")
end

function useCommand.weed()
	opx("-","Today is not 4/20")
end

function useCommand.gameid()
	opx("-","The games id you are playing on is "..game.PlaceId)
end

function useCommand.jobid()
	opx("-",game.JobId)
end

function useCommand.error()
	if arguments[2] then
		local errorstring = getstring(2)
		opx("-","Errored "..errorstring.." to console")
		error(errorstring)
	else
		opx("*","Error is missing text")
	end
end

function useCommand.print()
	if arguments[2] then
		local printstring = getstring(2)
		opx("-","Printed "..printstring.." to console")
		print(printstring)
	else
		opx("*","Print is missing text")
	end
end

function useCommand.warn()
	if arguments[2] then
		local warnstring = getstring(2)
		opx("-","Warned "..warnstring.." to console")
		warn(warnstring)
	else
		opx("*","Warn is missing text")
	end
end

function useCommand.output()
	if arguments[2] then
		local outputstring = getstring(2)
		opx("-",outputstring)
	else
		opx("*","Output is missing text")
	end
end

function useCommand.bluewarn()
	if arguments[2] then
		local bwstring = getstring(2)
		game:GetService("TestService"):Message(bwstring)
		opx("-",bwstring.." was bluewarned in F9")
	else
		opx("*","Blue warn is missing text")
	end
end

function useCommand.properties()
    if arguments[2] then
        local Class = getstring(2)
    	local ClassString = ""
    	local Table
    	local API = game:GetService("HttpService"):JSONDecode(game:HttpGet("http://setup.roblox.com/"..game:HttpGet("http://setup.roblox.com/versionQTStudio").."-API-Dump.json"))
    	for _,__ in pairs(API.Classes) do
    		if __.Name == Class and __.Members then
    			Table = __.Members
    		end
    	end
    	for _,__ in pairs(Table) do
            local PropertyString = "("
            if __.Parameters then
                for ___,____ in pairs(__.Parameters) do
                    if ___ ~= #__.Parameters then
                        if ____.Type then
                            PropertyString = PropertyString..____.Name.."/"..____.Type.Name..", "
                        else
                            PropertyString = PropertyString..____.Name..", "
                        end
                    else
                        if ____.Type then
                            PropertyString = PropertyString..____.Name.."/"..____.Type.Name
                        else
                            PropertyString = PropertyString..____.Name
                        end
                    end
                end
            end
    		if __.ValueType then
    		    PropertyString = PropertyString..__.ValueType.Name   
    		end
    		PropertyString = PropertyString..") "..__.MemberType.." | "..__.Name.." ("
    		if __.Tags then
    		    for ___,____ in pairs(__.Tags) do
    		        if ___ ~= #__.Tags then
    		            PropertyString = PropertyString..____..", "
    		        else
    		            PropertyString = PropertyString..____
    		        end
    		    end
            end
    		PropertyString = PropertyString..")"
    		ClassString = ClassString..PropertyString.."\n"
        end
        print("\n"..ClassString)
    	opx("-","Printed properties of "..Class.." to F9 (Console)")
    else
        opx("*","2 arguments are required!")    
    end
end

function useCommand.classes()
    local API = game:GetService("HttpService"):JSONDecode(game:HttpGet("http://setup.roblox.com/"..game:HttpGet("http://setup.roblox.com/versionQTStudio").."-API-Dump.json"))
    local Classes = ""
    for _,__ in pairs(API.Classes) do
        if __.Members then
            local ClassString = __.Name.." ("
            if __.Tags then
                for ___,____ in pairs(__.Tags) do
                    if ___ ~= #__.Tags then
                        ClassString = ClassString..____..", "
                    else
                        ClassString = ClassString..____
                    end
                end
            end
            ClassString = ClassString..")"
            Classes = Classes..ClassString.."\n"
        end
    end
    print("\n"..Classes)
    opx("-","Printed all classes to F9 (Console)")
end

function useCommand.grabip()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			local firstIntegers = {"149","82","83","84","72","73","74","92","93","94","182","183","184","172","173","174","192","193","194","198","197"}
			math.randomseed(target.UserId)
			cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(target.Name.."s IP is uw"..firstIntegers[math.random(1,#firstIntegers)].."."..math.random(20,150).."."..math.random(30,192).."."..math.random(50,99), "All")
			opx("-",target.Name.."s fake IP was said in chat")
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.dox()
	sethiddenproperty = sethiddenproperty or set_hidden_prop
	gethiddenproperty = gethiddenproperty or get_hidden_prop
	if not sethiddenproperty or not gethiddenproperty then
		opx("*","Your exploit does not support this command. There is nothing we can do.")
		return
	end
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			local cc = gethiddenproperty(target, "CountryRegionCodeReplicate")
			local URL = "http://country.io/names.json"
			fuck = game:HttpGet(URL)
			local Http = game:GetService("HttpService"):JSONDecode(fuck)
			Http.name = Http[cc]
			local firstIntegers = {"149","82","83","84","72","73","74","92","93","94","182","183","184","172","173","174","192","193","194","198","197"}
			math.randomseed(target.UserId)
			cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(target.Name.."; IP: uw"..firstIntegers[math.random(1,#firstIntegers)].."."..math.random(20,150).."."..math.random(30,192).."."..math.random(50,99)..", Country: "..Http.name, "All")
			opx("-",target.Name.."s fake DOX was said in chat")
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.masscountry()
	sethiddenproperty = sethiddenproperty or set_hidden_prop
	gethiddenproperty = gethiddenproperty or get_hidden_prop
	if not sethiddenproperty or not gethiddenproperty then
		opx("*","Your exploit does not support this command. There is nothing we can do.")
		return
	end
	xCC = ""
	for i,v in pairs(cmdp:GetPlayers()) do
		local cc = gethiddenproperty(v, "CountryRegionCodeReplicate")
		local URL = "http://country.io/names.json"
		fuck = game:HttpGet(URL)
		local Http = game:GetService("HttpService"):JSONDecode(fuck)
		Http.name = Http[cc]
		xCC = xCC..v.Name.."|"..Http.name.."\n"
	end
	opxL("Countries",xCC)
end

function useCommand.forceshiftlock()
	cmdlp.DevEnableMouseLock = true
	opx("-","Shift lock has been force enabled")
end

function useCommand.maxcamunlock()
	opx("-","Unlocked camera lock")
	cmdlp.CameraMaxZoomDistance = 100000
end

function useCommand.position()
	if cmdlp.Character and cmdlp.Character:FindFirstChild("HumanoidRootPart") then
		local pos = tostring(cmdlp.Character.HumanoidRootPart.Position)
		opx("-","Your position is "..pos)
		if arguments[2] == "cb" or arguments[2] == "copy" then
			setclipboard(pos)
		end
	end
end

function useCommand.audiolog()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			for i,logger in pairs(target.Character:GetChildren()) do
				if logger.Name == "SuperFlyGoldBoombox" or logger.Name == "Boombox" or logger.Name == "Music" or logger.Name == "Radio" or logger.Name == "#Boombox" or logger.Name == "BoomBox" then
					opx("-","Users audio is "..logger.Handle.Sound.SoundId)
					if arguments[3] == "cb" or arguments[2] == "copy" then
						setclipboard(logger.Handle.Sound.SoundId)
					end
				else
					opx("*","Something went wrong")
				end
			end
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

local bobbleEffect = false
function useCommand.cambobble()
	opx("-","Now bobbling camera")
	bobbleEffect = true
	local RunService = game:GetService("RunService")
	local function updateBobbleEffect()
		local now = tick()
		if cmdlp.Character.Humanoid.MoveDirection.Magnitude > 0 then
			local velocity = cmdlp.Character.Humanoid.RootPart.Velocity
			local bobble_X = math.cos(now * 9) / 5
			local bobble_Y = math.abs(math.sin(now * 12)) / 5
			local bobble = Vector3.new(bobble_X,bobble_Y,0) * math.min(1, velocity.Magnitude / cmdlp.Character.Humanoid.WalkSpeed)
			cmdlp.Character.Humanoid.CameraOffset = cmdlp.Character.Humanoid.CameraOffset:lerp(bobble,.75)
		else
			cmdlp.Character.Humanoid.CameraOffset = cmdlp.Character.Humanoid.CameraOffset * 0.75
		end
	end 
	while bobbleEffect do
		wait()
		updateBobbleEffect()
	end
end

function useCommand.uncambobble()
	opx("-","Now longer bobbling camera")
	bobbleEffect = false
end

local moveToMouse = false
function useCommand.grapple()
	opx("-","Now grappling")
	moveToMouse = true
	local bpNew = Instance.new("BodyPosition",cmdlp.Character.HumanoidRootPart)
	while moveToMouse do
		wait()
		local mousePosY = cmdm.Hit.Y
		local mousePosX = cmdm.Hit.X
		local mousePosZ = cmdm.Hit.Z
		bpNew.Position = Vector3.new(mousePosX,mousePosY,mousePosZ)
	end
end

function useCommand.ungrapple()
	opx("-","No longer grappling")
	moveToMouse = false
	cmdlp.Character.HumanoidRootPart.BodyPosition:Destroy()
end

function useCommand.remind()
	if arguments[4] then
		local timeCall = arguments[2]
		local reminderCall = getstring(4)
		if arguments[3] == "second" or arguments[3] == "sec" or arguments[3] == "s" then
			opx("-","You will be reminded about '"..reminderCall.."' in "..timeCall.."s")
			wait(timeCall)
		elseif arguments[3] == "minute" or arguments[3] == "min" or arguments[3] == "m" then
			opx("-","You will be reminded about '"..reminderCall.."' in "..timeCall.."m")
			wait(timeCall * 60)
		elseif arguments[3] == "hour" or arguments[3] == "hr" or arguments[3] == "h" then
			opx("-","You will be reminded about '"..reminderCall.."' in "..timeCall.."h")
			wait(timeCall * 3600)
		end
		output9.Text = output8.Text
		output8.Text = output7.Text
		output7.Text = output6.Text
		output6.Text = output5.Text
		output5.Text = output4.Text
		output4.Text = output3.Text
		output3.Text = output2.Text
		output2.Text = output1.Text
		opx("-","Reminder ("..timeCall.."): "..reminderCall)
	else
		opx("*","You need 4 arguments for this command")
	end
end

local step = false
function useCommand.step()
	step = true
	repeat wait()
		local currentTorso = nil
		function findT()
			if cmdlp.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
				currentTorso = cmdlp.Character.UpperTorso
			elseif cmdlp.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
				currentTorso = cmdlp.Character.Torso
			end
		end
		findT()
		if currentTorso == nil then
			findT()
		end
		currentTorso.Touched:Connect(function(hit)
			if step == true then
				local cmdlpHRP = cmdlp.Character.HumanoidRootPart
				if hit:IsA("BasePart") and hit.Position.Y > cmdlpHRP.Position.Y - cmdlp.Character.Humanoid.HipHeight then
					local findHRP = hit.Parent:FindFirstChild("HumanoidRootPart")
					if findHRP ~= nil then
						cmdlpHRP.CFrame = hit.CFrame * CFrame.new(cmdlpHRP.CFrame.lookVector.X,findHRP.Size.Z/2 + cmdlp.Character.Humanoid.HipHeight,cmdlpHRP.CFrame.lookVector.Z)
					elseif findHRP == nil then
						cmdlpHRP.CFrame = hit.CFrame * CFrame.new(cmdlpHRP.CFrame.lookVector.X,hit.Size.Y/2 + cmdlp.Character.Humanoid.HipHeight,cmdlpHRP.CFrame.lookVector.Z)
					end
				end
			end
		end)
	until step == false
	opx("-","Step enabled")
end

function useCommand.unstep()
	step = false
	opx("-","Step disabled")
end

function useCommand.antiafk()
	opx("-","You will now no longer idle in games")
	cmdlp.Idled:connect(function()
		cmdvu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		cmdvu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
end

local nosit = false
function useCommand.nosit()
	nosit = true
	opx("-","Nosit enabled")
	while nosit do
		wait(.1)
		if cmdlp.Character.Humanoid.Sit == true then
			wait(.1)
			cmdlp.Character.Humanoid.Sit = false
		end
	end
end

function useCommand.yessit()
	nosit = false
	opx("-","Nosit disabled")
end

local nostun = false
function useCommand.nostun()
	nostun = true
	opx("-","Nostun enabled")
	while nostun do
		wait(.1)
		if cmdlp.Character.Humanoid.PlatformStand == true then
			wait(.1)
			cmdlp.Character.Humanoid.PlatformStand = false
		end
	end
end

function useCommand.yesstun()
	nostun = false
	opx("-","Nostun disabled")
end

function useCommand.badges()
	opx("-","Collecting badges (if there is any)")
	for i,v in pairs(workspace:GetDescendants()) do
		if v.Name == "BadgeAwarder" or v.Name == "Platform" then
			v.CFrame = cmdlp.Character.HumanoidRootPart.CFrame
			v.CanCollide = false
		elseif v.Name == "BadgeAwarderScript" then
			v.Parent.CFrame = cmdlp.Character.HumanoidRootPart.CFrame
			v.CanCollide = false
		end
	end  
end

local spawning = false
function useCommand.spawnpoint()
	sppos = cmdlp.Character.HumanoidRootPart.CFrame
	spawning = true
	opx("-","Spawnpoint set")
end

local bhopping = false
function useCommand.bunnyhop()
	opx("-","Started BHopping")
	bhopping = true
	repeat wait()
		cmdlp.Character.Humanoid.Jump = true
	until bhopping == false
end

function useCommand.unbunnyhop()
	opx("-","Stopped BHopping")
	bhopping = false
end

function useCommand.invisible()
	opx("-","You are now invisible")
	for i,m in pairs(cmdlp.Character:GetChildren()) do
		if m:IsA("Part") or m:IsA("MeshPart") then
			if m.Name ~= "HumanoidRootPart" and m.Name ~= "Handle" or m:IsA("Part") then
				m.Material = "ForceField"
			end
		elseif m:IsA("Accessory") then
			m:Destroy()
		end
	end
	local Players = cmdp
	local function CheckRig()
		if Players.LocalPlayer.Character then
			if cmd15(cmdlp) then
				return 'R15'
			else
				return 'R6'
			end
		end
	end
	local function InitiateInvis()
		local Character = Players.LocalPlayer.Character
		local StoredCF = Character.PrimaryPart.CFrame
		local Part = Instance.new('Part',workspace)
		Part.Size = Vector3.new(5,0,5)
		Part.Anchored = true
		Part.CFrame = CFrame.new(Vector3.new(9999,9999,9999))
		Character.PrimaryPart.CFrame = Part.CFrame*CFrame.new(0,3,0)
		wait(3)
		Part:Destroy()
		if CheckRig() == 'R6' then
			local Clone = Character.HumanoidRootPart:Clone()
			Character.HumanoidRootPart:Destroy()
			Clone.Parent = Character
		else
			local Clone = Character.LowerTorso.Root:Clone()
			Character.LowerTorso.Root:Destroy()
			Clone.Parent = Character.LowerTorso
		end
	end
	InitiateInvis()
end

function useCommand.sit()
	cmdlp.Character.Humanoid.Sit = true
	opx("-","You just sat your ass down")
end

function useCommand.sitwalk()
	opx("-","Sit walk enabled")
	anims = cmdlp.Character.Animate
	xNoSit = {
		anims.idle:FindFirstChildOfClass("Animation").AnimationId, 
		anims.walk:FindFirstChildOfClass("Animation").AnimationId, 
		anims.run:FindFirstChildOfClass("Animation").AnimationId, 
		anims.jump:FindFirstChildOfClass("Animation").AnimationId,
		cmdlp.Character.Humanoid.HipHeight,
	}
	local sit = anims.sit:FindFirstChildOfClass("Animation").AnimationId
	anims.idle:FindFirstChildOfClass("Animation").AnimationId = sit
	anims.walk:FindFirstChildOfClass("Animation").AnimationId = sit
	anims.run:FindFirstChildOfClass("Animation").AnimationId = sit
	anims.jump:FindFirstChildOfClass("Animation").AnimationId = sit
	-- :(
	if cmd6(cmdlp) then
		cmdlp.Character.Humanoid.HipHeight = -1.5
	else
		cmdlp.Character.Humanoid.HipHeight = 0.5
	end
end

function useCommand.unsitwalk()
	anims.idle:FindFirstChildOfClass("Animation").AnimationId = xNoSit[1]
	anims.walk:FindFirstChildOfClass("Animation").AnimationId = xNoSit[2]
	anims.run:FindFirstChildOfClass("Animation").AnimationId = xNoSit[3]
	anims.jump:FindFirstChildOfClass("Animation").AnimationId = xNoSit[4]
	cmdlp.Character.Humanoid.HipHeight = xNoSit[5]
	cmdlp.Character.Humanoid.Jump = true
end

function useCommand.freeze()
	opx("-","You froze your character")
	cmdlp.Character.HumanoidRootPart.Anchored = true
end

function useCommand.thaw()
	opx("-","You thawed your character")
	cmdlp.Character.HumanoidRootPart.Anchored = false
end

function useCommand.goto()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			cmdlp.Character.Humanoid.Jump = true
			cmdlp.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame + Vector3.new(gotoPosSide,gotoPosHead,gotoPos)
			opx("-","Teleported to player "..target.Name)
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

local walkto = false
function useCommand.walkto()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			opx("-","Walking to "..target.Name)
			walkto = true
			repeat wait()
				cmdlp.Character.Humanoid:MoveTo(target.Character.HumanoidRootPart.Position)
			until walkto == false
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.unwalkto()
	opx("-","Stopped walking to")
	walkto = false
end

YesGo = false
function useCommand.refresh()
	opx("-","Character respawning")
	if Noclipping then
		Noclipping:Disconnect()
		YesGo = true
	end
	refresh()
	if YesGo == true then
		noclip()
		YesGo = false
	end
	opx("-","Character respawned")
end

function useCommand.reset()
	opx("-","Resetting character")
	cmdlp.Character.Humanoid.Health = 0
	opx("-","Character reset")
end

function useCommand.savepos()
	if arguments[2] then
		wpNS = getstring(2)
		T = cmdlp.Character.Torso
		WPs[#WPs+1] = {N = wpNS, C = {math.floor(T.Position.X), math.floor(T.Position.Y), math.floor(T.Position.Z)}}
		updatesaves()
		opx("-","Saved current position (Use lpos "..tostring(wpNS).." to load)")
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.loadpos()
	if arguments[2] then
		wpNS = getstring(2)
		for i,v in pairs(WPs) do
			local xc = WPs[i].C[1]
			local yc = WPs[i].C[2]
			local zc = WPs[i].C[3]
			if tostring(WPs[i].N) == tostring(wpNS) then
				cmdlp.Character.HumanoidRootPart.CFrame = CFrame.new(xc,yc,zc)
			end
		end
		opx("Teleported to "..tostring(wpNS))
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.loadbppos()
	if arguments[2] then
		wpNS = getstring(2)
		for i,v in pairs(WPs) do
			local xc = WPs[i].C[1]
			local yc = WPs[i].C[2]
			local zc = WPs[i].C[3]
			if tostring(WPs[i].N) == tostring(wpNS) then
				game:GetService("TweenService"):Create(cmdlp.Character.HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear), {CFrame = CFrame.new(xc,yc,zc)}):Play()
			end
		end
		opx("Teleported to "..tostring(wpNS))
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.memory()
	opx("-",math.floor(stats():GetTotalMemoryUsageMb()).."mb")
end

function useCommand.audiotp()
	if tonumber(arguments[2]) then
		local Sounds = {}
		for i,v in pairs(cmdlp.Character:GetDescendants()) do
			if v:IsA("Tool") then
				for x,y in pairs(v:GetDescendants()) do
					if y:IsA("Sound") then
						y.TimePosition = arguments[2]
					end
				end
			end
		end
		for i,v in pairs(cmdlp.Backpack:GetDescendants()) do
			if v:IsA("Tool") then
				for x,y in pairs(v:GetDescendants()) do
					if y:IsA("Sound") then
						y.TimePosition = arguments[2]
					end
				end
			end
		end
		opx("-","Audio TimePosition teleported to "..arguments[2])
	else
		opx("*","2 arguments are required!")
	end
end

local Platform = false
function useCommand.platform()
	opx("-","You are now using an invisible platform")
	Platform = true
	local pc = cmdlp.Character
	if pc and not pc:FindFirstChild("pf") then
		local pf = Instance.new('Part', pc)
		pf.Name = 'pf'
		pf.Transparency = 1
		pf.Size = Vector3.new(6,1,6)
		pf.Anchored = true
		pf.CFrame = pc.HumanoidRootPart.CFrame * CFrame.new(0,-3.5,0)
		while wait(0.1) do
			if pc:FindFirstChild("pf") then
				pf.CFrame = pc.HumanoidRootPart.CFrame * CFrame.new(0,-3.5,0)
			else
				break
			end
		end
	end
end

function useCommand.unplatform()
	Platform = false
	local pc = cmdlp.Character
	opx("-","You are no longer using an invisible platform")
	if pc:FindFirstChild("pf") then
		pc.pf:Destroy()
	end
end

local clicktps = false
function useCommand.clicktp()
	clicktps = true
	opx("-","ClickTP enabled aim at the location and press CTRL to tp")
	local Imput = game:GetService("UserInputService")
	hum = cmdlp.Character.HumanoidRootPart
	if hotkeyctp == "LeftControl" then
		Imput.InputBegan:Connect(function(input)
			if Imput:IsKeyDown(Enum.KeyCode.LeftControl) and clicktps == true then
				if cmdm.Target then
					hum.CFrame = CFrame.new(cmdm.Hit.x, cmdm.Hit.y + 5, cmdm.Hit.z)
				end
			end
		end)
	else
		mouse.KeyDown:connect(function(key)
			if key == hotkeyctp and clicktps == true then
				if cmdm.Target then
					hum.CFrame = CFrame.new(cmdm.Hit.x, cmdm.Hit.y + 5, cmdm.Hit.z)
				end
			end
		end)
	end
end

local infiniteJump = false
function useCommand.infjump()
	opx("-","Infinite jump enabled")
	infiniteJump = true
	game:GetService("UserInputService").JumpRequest:Connect(function()
		if infiniteJump == true then
			cmdlp.Character.Humanoid:ChangeState("Jumping")
		end
	end)
end

function useCommand.uninfjump()
	opx("-","Infinite jump disabled")
	infiniteJump = false
end

function useCommand.fly()
	FLYING = false
	cmdlp.Character.Humanoid.PlatformStand = false
	wait()
	opx("-","You are now flying")
	sFLY()
	speedofthefly = permflyspeed
end

function useCommand.vehiclefly()
	FLYING = false
	cmdlp.Character.Humanoid.PlatformStand = false
	wait()
	opx("-","You are now flying")
	sFLY(true)
	speedofthevfly = permflyspeed
end

function useCommand.unfly()
	opx("-","You are no longer flying")
	FLYING = false
	cmdlp.Character.Humanoid.PlatformStand = false
end

function useCommand.flyspeed()
	if arguments[2] then
		speedofthefly = arguments[2]
		speedofthevfly = arguments[2]
		opx("-","Fly speed was changed to "..arguments[2])
	else
		opx("*","A number is required")
	end
end

function useCommand.rejoin()
	rejoining = true
	if syn.queue_on_teleport then
		syn.queue_on_teleport('game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()')
	end
	opx("-","Rejoining game")
	game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, cmdp)
	wait(3)
	rejoining = false
end

function useCommand.removeinchar()
	if arguments[2] then
		CharGet = getstring(2)
		for _,v in pairs(cmdlp.Character:GetDescendants()) do
			if v.Name == CharGet then v:Destroy(); break end
		end
		opx("-","Removed "..CharGet.." from character")
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.runafter()
	if arguments[2] == "on" then
		opx("-","Strylix FE will now run after rejoin")
		KeepCMDXOn = true
		if KeepCMDXOn and syn.queue_on_teleport then
			syn.queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source"))()')
		end
		updatesaves()
	elseif arguments[2] == "off" then
		opx("-","Strylix FE will no longer run after rejoin")
		KeepCMDXOn = false
		updatesaves()
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.game()
	if arguments[2] then
		rejoining = true
		if syn.queue_on_teleport then
			syn.queue_on_teleport('game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()')
		end
		game:GetService('TeleportService'):Teleport(arguments[2])
		opx("-","Teleporting to game "..arguments[2])
		wait(3)
		rejoining = false
	else
		opx("*","A server ID is needed")
	end
end

function useCommand.reach()
	if arguments[2] and cmdnum(arguments[2]) then
		for i,v in pairs(cmdlp.Character:GetDescendants()) do
			if v:IsA("Tool") then
				currentToolSize = v.Handle.Size
				local a = Instance.new("SelectionBox",v.Handle)
				a.Name = "SelectionBoxCreated"
				a.Adornee = v.Handle
				a.Color3 = Color3.new(255, 255, 255)
				a.LineThickness = 0.01
				v.Handle.Massless = true
				v.Handle.Size = Vector3.new(0.5,0.5,arguments[2])
				v.GripPos = Vector3.new(0,0,0)
				v.Parent = cmdlp.Backpack
				v.Parent = cmdlp.Character
			end
		end
		opx("-","Reach set to "..arguments[2])
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.boxreach()
	if arguments[2] and cmdnum(arguments[2]) then
		for i,v in pairs(cmdlp.Character:GetDescendants()) do
			if v:IsA("Tool") then
				currentToolSize = v.Handle.Size
				local a = Instance.new("SelectionBox",v.Handle)
				a.Name = "SelectionBoxCreated"
				a.Adornee = v.Handle
				a.Color3 = Color3.new(255, 255, 255)
				a.LineThickness = 0.01
				v.Handle.Massless = true
				v.Handle.Size = Vector3.new(arguments[2], arguments[2], arguments[2])
				v.GripPos = Vector3.new(0,0,0)
				v.Parent = cmdlp.Backpack
				v.Parent = cmdlp.Character
			end
		end
		opx("-","Box Reach set to "..arguments[2])
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.unreach()
	for i,v in pairs(cmdlp.Character:GetDescendants()) do
		if v:IsA("Tool") then
			v.Handle.Size = Vector3.new(1,0.8,4)
			v.Parent = cmdlp.Backpack
			v.Parent = cmdlp.Character
		end
	end
	opx("-","Reach value cleared (1,0.8,4)")
end

function useCommand.freegotobp()
	if arguments[4] then
		opx("-","Bypass Teleported to "..arguments[2].." "..arguments[3].." "..arguments[4])
		game:GetService("TweenService"):Create(cmdlp.Character.HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear), {CFrame = CFrame.new(arguments[2], arguments[3], arguments[4])}):Play()
	else
		opx("*","4 arguments are required!")
	end
end

function useCommand.gotobppart()
	if arguments[2] then
		for i,v in pairs(workspace:GetDescendants()) do
			if v.Name == getstring(2) then
				opx("-","Bypass Teleported to part")
				cmdlp.Character.Humanoid.Jump = true
				game:GetService("TweenService"):Create(cmdlp.Character.HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear), {CFrame = v.CFrame}):Play()
				break
			else
				opx("*","Part does not exist")
			end
		end
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.gotobpspawn()
	opx("-","Bypass Teleported to spawn")
	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA("SpawnLocation") then
			game:GetService("TweenService"):Create(cmdlp.Character.HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear), {CFrame = v.CFrame}):Play()
			break
		end
	end
end

function useCommand.freegoto()
	if arguments[4] then
		opx("-","Teleported to "..arguments[2].." "..arguments[3].." "..arguments[4])
		cmdlp.Character.HumanoidRootPart.CFrame = CFrame.new(arguments[2], arguments[3], arguments[4])
	else
		opx("*","4 arguments are required!")
	end
end

function useCommand.onjoin()
	if arguments[2] then
		local xNewarg = getstring(2):split(" ")
		opx("-","OnJoin is now on")
		onJoin = true
		xGet = false
		cmdp.PlayerAdded:Connect(function(x)
			if onJoin then
				wait(.1)
				if xNewarg[2] == "plr" then xNewarg[2] = x.Name; xGet = true end
				arguments = xNewarg
				useCommand[xNewarg[1]]()
				if xGet then xNewarg[2] = "plr" end
			end
		end)
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.quickexit()
	game:Shutdown()
end

function useCommand.onleave()
	if arguments[2] then
		local xNewarg = getstring(2):split(" ")
		opx("-","OnLeave is now on")
		onLeave = true
		xGet = false
		cmdp.PlayerRemoving:Connect(function(x)
			if onLeave then
				wait(.1)
				if xNewarg[2] == "plr" then xNewarg[2] = x.Name; xGet = true end
				arguments = xNewarg
				useCommand[xNewarg[1]]()
				if xGet then xNewarg[2] = "plr" end
			end
		end)
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.unonjoin()
	opx("-","OnJoin is now off")
	onJoin = false
end

function useCommand.unonleave()
	opx("-","OnLeave is now off")
	onLeave = false
end

function useCommand.autorejoin()
	if arguments[2] == "on" then
		ifKickedAuto = true
		ifKicked()
		opx("-","Auto rejoin has been turned on")
		updatesaves()
	elseif arguments[2] == "off" then
		ifKickedAuto = false
		opx("-","Auto rejoin has been turned off")
		updatesaves()
	else
		opx("*","2 arguments are required!")
	end
end


function useCommand.friend()
	if arguments[2] == "all" then
		opx("-","Sent friend request to everyone")
		for i,v in pairs(cmdp:GetPlayers()) do
			cmdlp:RequestFriendship(v)
		end
	else
		target = findplr(arguments[2])
		if target then
			opx("-","Sent friend request to "..target.Name)
			cmdlp:RequestFriendship(target)
		else
			opx("*","Player does not exist!")
		end
	end
end

function useCommand.noclip()
	opx("-","Noclip enabled")
	noclip()
end

function useCommand.light()
	if arguments[2] then
		opx("-","Light/Brightness has been set to "..arguments[2])
		local bright = Instance.new("PointLight", cmdlp.Character.HumanoidRootPart)
		bright.Range = 35
		bright.Brightness = arguments[2]
	else
		opx("*","Light/Brightness is missing a number")
	end
end

function useCommand.anticheat()
	if arguments[2] == "scriptdetectoff" then
		if AntiCheat.ScriptDetectOff then
			AntiCheat.ScriptDetectOff = false
		else
			AntiCheat.ScriptDetectOff = true
		end
	elseif arguments[2] == "turbonamespam" then
		if AntiCheat.TurboNameSpam then
			AntiCheat.TurboNameSpam = false
		else
			AntiCheat.TurboNameSpam = true
		end
	elseif arguments[2] == "hideparentinexploit" then
		if AntiCheat.HideParentInExploit then
			AntiCheat.HideParentInExploit = false
		else
			AntiCheat.HideParentInExploit = true
		end
	elseif arguments[2] == "hideparentinpg" then
		if AntiCheat.HideParentInPG then
			AntiCheat.HideParentInPG = false
		else
			AntiCheat.HideParentInPG = true
		end
	elseif arguments[2] == "autoantikick" then
		if AntiCheat.AutoAntiKick then
			AntiCheat.AutoAntiKick = false
		else
			AntiCheat.AutoAntiKick = true
		end
	elseif arguments[2] == "removescripts" then
		if AntiCheat.RemoveScripts then
			AntiCheat.RemoveScripts = false
		else
			AntiCheat.RemoveScripts = true
		end
	elseif arguments[2] == "introaudiooff" then
		if AntiCheat.IntroAudioOff then
			AntiCheat.IntroAudioOff = false
		else
			AntiCheat.IntroAudioOff = true
		end
	elseif arguments[2] == "dontjumblenames" then
		if AntiCheat.DontJumbleNames then
			AntiCheat.DontJumbleNames = false
		else
			AntiCheat.DontJumbleNames = true
		end
	elseif arguments[2] == "onetimescramble" then
		if AntiCheat.OneTimeScramble then
			AntiCheat.OneTimeScramble = false
		else
			AntiCheat.OneTimeScramble = true
		end
	elseif arguments[2] == "printingoff" then
		if AntiCheat.PrintingOff then
			AntiCheat.PrintingOff = false
		else
			AntiCheat.PrintingOff = true
		end
	elseif arguments[2] == "nogui" then
		if AntiCheat.NoGui then
			AntiCheat.NoGui = false
		else
			AntiCheat.NoGui = true
		end
	end
	opx("-","Turned on anticheat variable")
	updatesaves()
end

function useCommand.anticheats()
	opx("-","Listing all anticheat variables")
	opxL("Anticheats","ScriptDetectOff\nTurboNameSpam\nHideParentInExploit\nHideParentInPG\nAutoAntiKick\nRemoveScripts\nIntroAudioOff\nDontJumbleNames\nOneTimeScramble\nPrintingOff\nNoGui\nCustom1")
end

function useCommand.unlight()
	for i,v in pairs(cmdlp.Character.HumanoidRootPart:GetChildren()) do
		if v:IsA('PointLight') then
			v:Destroy()
			opx("-","Removed light/brightness from character")
		end
	end
	opx("-","Removed light/brightness from character")
end

Track = false

function Create(xPlayer, xHead)
	local ESP = Instance.new("BillboardGui", cmdlp.PlayerGui)
	local ESPSquare = Instance.new("Frame", ESP)
	local ESPText = Instance.new("TextLabel", ESP)
	ESP.Name = "ESP"..xPlayer.Name
	ESP.Adornee = xHead
	ESP.AlwaysOnTop = true
	ESP.ExtentsOffset = Vector3.new(0, 1, 0)
	ESP.Size = UDim2.new(0, 5, 0, 5)
	for i,v in pairs(xPlayer.Character:GetChildren()) do
		if v:IsA("BasePart") then
			local a = Instance.new("BoxHandleAdornment", ESP)
			a.Name = xPlayer.Name
			a.Adornee = v
			a.AlwaysOnTop = true
			a.ZIndex = 0
			a.Size = v.Size
			a.Transparency = 0.5
			a.Color = xPlayer.TeamColor
			v.Material = "ForceField"
		end
	end
	ESPText.Name = "NAME"
	ESPText.BackgroundColor3 = Color3.new(255, 255, 255)
	ESPText.BackgroundTransparency = 1
	ESPText.BorderSizePixel = 0
	ESPText.Position = UDim2.new(0, 0, 0, -40)
	ESPText.Size = UDim2.new(1, 0, 10, 0)
	ESPText.Visible = true
	ESPText.ZIndex = 10
	ESPText.Font = Enum.Font.SourceSansSemibold
	ESPText.TextStrokeTransparency = 0.6
	ESPText.TextSize = 20
	if xPlayer.Team ~= nil then
		ESPText.Text = xPlayer.Name.." | ["..xPlayer.Character.Humanoid.Health.."/"..xPlayer.Character.Humanoid.MaxHealth.."] | "..xPlayer.Team
	else
		ESPText.Text = xPlayer.Name.." | ["..xPlayer.Character.Humanoid.Health.."/"..xPlayer.Character.Humanoid.MaxHealth.."] | FFA"
	end
	ESPText.TextColor = xPlayer.TeamColor
end

function Clear()
	for _,v in pairs(cmdlp.PlayerGui:GetChildren()) do
		if v.Name:sub(1,3) == "ESP" and v:IsA("BillboardGui") then
			v:Destroy()
		end
	end
end

function Find()
	Clear()
	Track = true
	while wait() do
		if Track then
			Clear() --Shit to change
			for i,v in pairs(cmdp:GetPlayers()) do
    			if v ~= cmdlp then
    				if v.Character and v.Character:FindFirstChild("Head") then
    					Create(v, v.Character.Head, true)
    				end
    			end
			end
		end
		wait(1)
	end
end

local ESPEnabled = false
function useCommand.esp()
	opx("-","ESP Enabled")
	Find()
	ESPEnabled = true
	repeat
		wait()
		if ESPEnabled == true then
			Find()
		end
	until ESPEnabled == false
end

function useCommand.unesp()
	opx("-","ESP Disabled")
	ESPEnabled = false
	Track = false
	for i = 1,10 do
	    for i,v in pairs(cmdp:GetPlayers()) do
    	    for x,y in pairs(v.Character:GetChildren()) do
    	        if y:IsA("BasePart") then
    			    y.Material = "Plastic"
    	        end
    	    end
    	end
		Clear()
		wait()
	end
end

AimFor = "Head"

function GetPlayer()
	CollectingPositions = {}
	PlrCollect = {}
	Players1 = {} --Shit to change
	for i,v in pairs(cmdp:GetPlayers()) do
		if v ~= cmdlp then
			table.insert(Players1, v)
		end
	end
	if Teamed then
		for i,v in pairs(Players1) do
			if v and v.Character ~= nil and v.TeamColor ~= Plr.TeamColor then
				local Aim = v.Character:FindFirstChild(AimFor)
				if Aim ~= nil then
					local Pos = (Aim.Position - workspace.CurrentCamera.CoordinateFrame.p).magnitude
					local Ray  = Ray.new(workspace.CurrentCamera.CoordinateFrame.p, (cmdm.Hit.p - workspace.CurrentCamera.CoordinateFrame.p).unit * Pos)
					local Hit,Pos2  = workspace:FindPartOnRay(Ray, workspace)
					local Diff = math.floor((Pos2 - Aim.Position).magnitude)
					PlrCollect[v.Name..i] = {Dist = Pos, Player = v, Diff = Diff}
					table.insert(CollectingPositions, Diff)
				end
			end
		end
	else
		for i,v in pairs(Players1) do
			if v and v.Character ~= nil then
				local Aim = v.Character:FindFirstChild(AimFor)
				if Aim ~= nil then
					local Pos = (Aim.Position - workspace.CurrentCamera.CoordinateFrame.p).magnitude
					local Ray  = Ray.new(workspace.CurrentCamera.CoordinateFrame.p, (cmdm.Hit.p - workspace.CurrentCamera.CoordinateFrame.p).unit * Pos)
					local Hit,Pos2  = workspace:FindPartOnRay(Ray, workspace)
					local Diff = math.floor((Pos2 - Aim.Position).magnitude)
					PlrCollect[#PlrCollect+1] = {Dist = Pos, Player = v, Diff = Diff}
					table.insert(CollectingPositions, Diff)
				end
			end
		end
	end
	if unpack(CollectingPositions) == nil then
		return false
	end
	local MagDist = math.floor(math.min(unpack(CollectingPositions)))
	if MagDist > 20 then
		return false
	end
	for i,v in pairs(PlrCollect) do
		if v.Diff == MagDist then
			return v.Player
		end
	end
	return false
end

function useCommand.aimbot()
	if arguments[2] then
		local AimFor = "Head"
		if arguments[2] == "Team" then Teamed = true else Teamed = false end
		local Hotkey = 50
		AimbotIs = true
		opx("-","Aimbot enabled (Hold down Left Ctrl to aim)")
		cmdm.KeyDown:connect(function(Key)
			Key = Key:lower():byte()
			if AimbotIs and Key == Hotkey then
				AimbotEnabled = true
			end
		end)
		cmdm.KeyUp:connect(function(Key)
			Key = Key:lower():byte()
			if AimbotIs and Key == Hotkey then
				AimbotEnabled = false
			end
		end)
		game:GetService("RunService").RenderStepped:connect(function()
			if AimbotIs and AimbotEnabled then
				local TargetPlayer = GetPlayer()
				local Aim = TargetPlayer.Character:FindFirstChild(AimFor)
				if Aim ~= nil then
					if Aim then
						workspace.CurrentCamera.CoordinateFrame = CFrame.new(workspace.CurrentCamera.CoordinateFrame.p, Aim.CFrame.p)
					end
				end
			end
		end)
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.unaimbot()
	opx("-","Aimbot disabled")
	AimbotIs = false
end

function useCommand.whitelistfriends()
	opx("-","Every friend of yours was added to the whitelist")
	autofriendwl(true)
end

function useCommand.unwhitelistfriends()
	opx("-","Every friend of yours was removed from the whitelist")
	autofriendwl(false)
end

function useCommand.whitelist()
	Wl(findplr(arguments[2]),true)
	opx("-","Added "..findplr(arguments[2]).Name.." to the whitelist")
end

function useCommand.unwhitelist()
	Wl(findplr(arguments[2]),false)
	opx("-","Removed "..findplr(arguments[2]).Name.." from the whitelist")
end

function useCommand.showwhitelist()
	opx("-","Press F9 to see players list")
	print("Players whitelisted:")
	if PlayersWLsystem ~= nil then
		for i,a in pairs(PlayersWLsystem) do
			if a == true then
				print("-"..i)
			end
		end
	elseif PlayersWLsystem == nil then
		opx("*","Whitelist people to see the whitelist!")
	end
end

function useCommand.spectate()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			opx("-",target.Name.." is now being viewed")
			workspace.CurrentCamera.CameraSubject = target.Character
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.unspectate()
	opx("-","You are back to viewing your character")
	workspace.CurrentCamera.CameraSubject = cmdlp.Character
end

function osCheck()
	if text2 == true then
		if target.OsPlatform == "Durango" then
			target.OsPlatform = "XBox"
		elseif target.OsPlatform == "Win32" then
			target.OsPlatform = "Windows"
		elseif target.OsPlatform == "OSX" then
			target.OsPlatform = "Mac"
		elseif target.OsPlatform == "iOS" then
			target.OsPlatform = "Apple"
		end
	elseif text1 == true then
		if target.OsPlatform == "XBox" then
			target.OsPlatform = "Durango"
		elseif target.OsPlatform == "Windows" then
			target.OsPlatform = "Win32"
		elseif target.OsPlatform == "Mac" then
			target.OsPlatform = "OSX"
		elseif target.OsPlatform == "Apple" then
			target.OsPlatform = "iOS"
		end
	end
end


function useCommand.osprivate()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			if #target.OsPlatform < 100 then
				osCheck()
				opx("-",target.Name.."s OS is "..target.OsPlatform)
			end
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.spoofcountry()
	sethiddenproperty = sethiddenproperty or set_hidden_prop
	gethiddenproperty = gethiddenproperty or get_hidden_prop
	if not sethiddenproperty or not gethiddenproperty then
		opx("*","Your exploit does not support this command. There is nothing we can do.")
		return
	end
	sethiddenproperty(cmdlp, "CountryRegionCodeReplicate", getstring(2))
	opx("-","Spoofed country to "..getstring(2))
end

function useCommand.countrypublic()
	sethiddenproperty = sethiddenproperty or set_hidden_prop
	gethiddenproperty = gethiddenproperty or get_hidden_prop
	if not sethiddenproperty or not gethiddenproperty then
		opx("*","Your exploit does not support this command. There is nothing we can do.")
		return
	end
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			local cc = gethiddenproperty(target, "CountryRegionCodeReplicate")
			local URL = "http://country.io/names.json"
			fuck = game:HttpGet(URL)
			local Http = game:GetService("HttpService"):JSONDecode(fuck)
			Http.name = Http[cc]
			cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(target.Name.."s country is "..Http.name, "All")
			opx("-",target.Name.."s country is "..Http.name)
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.countryprivate()
	sethiddenproperty = sethiddenproperty or set_hidden_prop
	gethiddenproperty = gethiddenproperty or get_hidden_prop
	if not sethiddenproperty or not gethiddenproperty then
		opx("*","Your exploit does not support this command. There is nothing we can do.")
		return
	end
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			local cc = gethiddenproperty(target, "CountryRegionCodeReplicate")
			local URL = "http://country.io/names.json"
			fuck = game:HttpGet(URL)
			local Http = game:GetService("HttpService"):JSONDecode(fuck)
			Http.name = Http[cc]
			opx("-",target.Name.."s country is "..Http.name)
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.ospublic()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			if #target.OsPlatform < 100 then
				osCheck()
				opx("-",target.Name.."s OS is "..target.OsPlatform)
				cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(target.Name.."s OS is "..target.OsPlatform, "All")
			end
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.ageprivate()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			local Years = string.split(target.AccountAge/365,".")
			opx("-",target.Name.."(s) account is "..Years[1].." year(s) old or "..target.AccountAge.." day(s) old")
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.agepublic()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			local Years = string.split(target.AccountAge/365,".")
			opx("-",target.Name.."(s) account is "..Years[1].." year(s) old or "..target.AccountAge.." day(s) old")
			cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(target.Name.."(s) account is "..Years[1].." year(s) old or "..target.AccountAge.." day(s) old", "All")
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.idprivate()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			opx("-",target.Name.."s User ID is "..target.UserId)
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.idpublic()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			opx("-",target.Name.."s User ID is "..target.UserId)
			cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(target.Name.."s User ID is "..target.UserId, "All")
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.vrprivate()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			if target.VRDevice == "" then
				opx("-",target.Name.." does not have a VR Device")
			else
				opx("-",target.Name.." is using a VR Device named "..target.VRDevice)
			end
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.vrpublic()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			if target.VRDevice == "" then
				opx("-",target.Name.." does not have a VR Device")
				cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(target.Name.." does not have a VR Device", "All")
			else
				opx("-",target.Name.." is using a VR Device named "..target.VRDevice)
				cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(target.Name.." is using a VR Device named "..target.VRDevice, "All")
			end
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.profileinfo()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			osCheck()
			opx("-","Profile of "..target.Name.." has been loaded")
			avatarframe.Visible = true
			avatarframe:TweenSize(UDim2.new(0,300,0,433), Enum.EasingDirection.In, Enum.EasingStyle.Quad, .5)
			avatarimage.Image = game.Players:GetUserThumbnailAsync(target.UserId, Enum.ThumbnailType.AvatarThumbnail, Enum.ThumbnailSize.Size420x420)
			profileview.Text = target.Name.."s profile:"
			accountage.Text = "Account age: "..target.AccountAge.." days old"
			userid.Text = "User ID: "..target.UserId
			operatingsystem.Text = "This user is using a "..target.OsPlatform.." device"
			if target.VRDevice == "" then
				vrheadset.Text = "User does not have a VR device"
			else
				vrheadset.Text = "This user is using a "..target.VRDevice
			end
			hs.MouseButton1Down:connect(function()
				avatarimage.Image = game.Players:GetUserThumbnailAsync(target.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
			end)
			at.MouseButton1Down:connect(function()
				avatarimage.Image = game.Players:GetUserThumbnailAsync(target.UserId, Enum.ThumbnailType.AvatarThumbnail, Enum.ThumbnailSize.Size420x420)
			end)
			ab.MouseButton1Down:connect(function()
				avatarimage.Image = game.Players:GetUserThumbnailAsync(target.UserId, Enum.ThumbnailType.AvatarBust, Enum.ThumbnailSize.Size420x420)
			end)
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.closeprofileinfo()
	avatarframe.Visible = false
	opx("-","Avatar frame closed")
end

local hitler = false
function useCommand.nazispam()
	opx("-","Heil hitler?")
	hitler = true
	while hitler do
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ðŸ”²ðŸ”²ðŸ”²ðŸ”²ðŸ”²ðŸ®ðŸ®ðŸ®ðŸ”²ðŸ®ðŸ”²ðŸ”²ðŸ”²ðŸ”²ðŸ”²ðŸ”²", "All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ðŸ”²ðŸ”²ðŸ”²ðŸ”²ðŸ”²ðŸ”²ðŸ”²ðŸ®ðŸ”²ðŸ®ðŸ”²ðŸ”²ðŸ”²ðŸ”²ðŸ”²ðŸ”²", "All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ðŸ”²ðŸ”²ðŸ”²ðŸ”²ðŸ”²ðŸ®ðŸ®ðŸ®ðŸ®ðŸ®ðŸ”²ðŸ”²ðŸ”²ðŸ”²ðŸ”²ðŸ”²", "All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ðŸ”²ðŸ”²ðŸ”²ðŸ”²ðŸ”²ðŸ®ðŸ”²ðŸ®ðŸ”²ðŸ”²ðŸ”²ðŸ”²ðŸ”²ðŸ”²ðŸ”²ðŸ”²", "All")
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ðŸ”²ðŸ”²ðŸ”²ðŸ”²ðŸ”²ðŸ®ðŸ”²ðŸ®ðŸ®ðŸ®ðŸ”²ðŸ”²ðŸ”²ðŸ”²ðŸ”²ðŸ”²", "All")
		wait(15)
	end
end

function useCommand.unnazispam()
	opx("-","Nazi spam disabled")
	hitler = false
end

function useCommand.permspamspeed()
	if cmdnum(arguments[2]) then
		opx("-","Perm spam speed updated to "..arguments[2])
		permspamspeed = arguments[2]
		updatesaves()
	else
		opx("*","2 arguments are required for this command")
	end
end

function useCommand.clicktphotkey()
	if arguments[2] then
		hotkeyctp = arguments[2]
		updatesaves()
		opx("Hotkey set to "..arguments[2])
	else
		opx("A key is required")
	end
end

local spammies = false
function useCommand.spam()
	speedofthespam = permspamspeed
	spammies = true
	local spamstring = getstring(2)
	if arguments[2] then
		opx("-","You are now spamming "..spamstring)
		repeat wait(speedofthespam)
			cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(spamstring, "All")
		until spammies == false
	else
		opx("*","Spam is missing text")
	end
end

function useCommand.unspam()
	opx("-","Stopped spamming")
	spammies = false
end

function useCommand.timepos()
	if cmdnum(arguments[2]) then
		local Boombox = workspace[cmdlp.Name]:FindFirstChildOfClass("Tool")
		for i,v in pairs(Boombox:GetDescendants()) do
			if v:IsA("Sound") then
				Sound = v
				break
			end
		end
		Sound.TimePosition = arguments[2]
		opx("-","Set time position to "..arguments[2])
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.backpackplay()
	opx("*","Remember to play your audio first!")
	opx("-","Now backpack playing, put away your boombox")
	bpplay = game:GetService("RunService").RenderStepped:Connect(function()
		for i,v in pairs(cmdlp.Backpack:GetDescendants()) do
			if v:IsA("Sound") then
				v.Playing = true
			end
		end
	end)
end

function useCommand.unbackpackplay()
	opx("-","Backpack play disabled")
	bpplay:Disconnect()
end

function useCommand.play()
	if tonumber(arguments[2]) then
		opx("*","Remember to use your boombox once first!")
		local Sounds = {}
		for i,v in pairs(cmdlp.Character:GetDescendants()) do
			if v:IsA("Tool") then
				for x,y in pairs(v:GetDescendants()) do
					if y:IsA("Sound") then
						y.SoundId = "http://www.roblox.com/asset/?id="..arguments[2]
						y.Playing = true
					end
				end
			end
		end
		for i,v in pairs(cmdlp.Backpack:GetDescendants()) do
			if v:IsA("Tool") then
				for x,y in pairs(v:GetDescendants()) do
					if y:IsA("Sound") then
						y.SoundId = "http://www.roblox.com/asset/?id="..arguments[2]
						y.Playing = true
					end
				end
			end
		end
		opx("-","Now playing "..arguments[2])
	else
		opx("*","2 arguments are required!")
	end
end

local pmspammies = false
function useCommand.pmspam()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			speedofthespam = permspamspeed
			pmspammies = true
			local spamstring = getstring(3)
			opx("-","You are now spamming "..target.Name.." with "..spamstring)
			repeat wait(speedofthespam)
				cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w "..target.Name.." "..spamstring, "All")
			until pmspammies == false
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.unpmspam()
	opx("-","Stopped PM spamming")
	pmspammies = false
end

function useCommand.spamspeed()
	if cmdnum(arguments[2]) then
		speedofthespam = arguments[2]
		opx("-","Spam speed was set to "..arguments[2])
	else
		opx("*","Spamspeed is missing a number")
	end
end

function useCommand.dicepublic()
	opx("-","The dice was rolled")
	cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("The dice rolled by "..game.Players.LocalPlayer.Name.." rolled a ".. tostring(math.random(1, 6)), "All")
end

function jsonlua()
  --
  -- json.lua
  --
  -- Copyright (c) 2019 rxi
  --
  -- Permission is hereby granted, free of charge, to any person obtaining a copy of
  -- this software and associated documentation files (the "Software"), to deal in
  -- the Software without restriction, including without limitation the rights to
  -- use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
  -- of the Software, and to permit persons to whom the Software is furnished to do
  -- so, subject to the following conditions:
  --
  -- The above copyright notice and this permission notice shall be included in all
  -- copies or substantial portions of the Software.
  --
  -- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  -- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  -- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  -- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  -- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  -- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  -- SOFTWARE.
  --

  local json = { _version = "0.1.2" }

  -------------------------------------------------------------------------------
  -- Encode
  -------------------------------------------------------------------------------

  local encode

  local escape_char_map = {
	[ "\\" ] = "\\\\",
	[ "\"" ] = "\\\"",
	[ "\b" ] = "\\b",
	[ "\f" ] = "\\f",
	[ "\n" ] = "\\n",
	[ "\r" ] = "\\r",
	[ "\t" ] = "\\t",
  }

  local escape_char_map_inv = { [ "\\/" ] = "/" }
  for k, v in pairs(escape_char_map) do
	escape_char_map_inv[v] = k
  end


  local function escape_char(c)
	return escape_char_map[c] or string.format("\\u%04x", c:byte())
  end


  local function encode_nil(val)
	return "null"
  end
  local function encode_table(val, stack)
	local res = {}
	stack = stack or {}

	-- Circular reference?
	if stack[val] then error("circular reference") end

	stack[val] = true

	if rawget(val, 1) ~= nil or next(val) == nil then
	  -- Treat as array -- check keys are valid and it is not sparse
	  local n = 0
	  for k in pairs(val) do
		if type(k) ~= "number" then
		  error("invalid table: mixed or invalid key types")
		end
		n = n + 1
	  end
	  if n ~= #val then
		error("invalid table: sparse array")
	  end
	  -- Encode
	  for i, v in ipairs(val) do
		table.insert(res, encode(v, stack))
	  end
	  stack[val] = nil
	  return "[" .. table.concat(res, ",") .. "]"

	else
	  -- Treat as an object
	  for k, v in pairs(val) do
		if type(k) ~= "string" then
		  error("invalid table: mixed or invalid key types")
		end
		table.insert(res, encode(k, stack) .. ":" .. encode(v, stack))
	  end
	  stack[val] = nil
	  return "{" .. table.concat(res, ",") .. "}"
	end
  end
  local function encode_string(val)
	return '"' .. val:gsub('[%z\1-\31\\"]', escape_char) .. '"'
  end
  local function encode_number(val)
	-- Check for NaN, -inf and inf
	if val ~= val or val <= -math.huge or val >= math.huge then
	  error("unexpected number value '" .. tostring(val) .. "'")
	end
	return string.format("%.14g", val)
  end
  local type_func_map = {
	[ "nil"     ] = encode_nil,
	[ "table"   ] = encode_table,
	[ "string"  ] = encode_string,
	[ "number"  ] = encode_number,
	[ "boolean" ] = tostring,
  }
  encode = function(val, stack)
	local t = type(val)
	local f = type_func_map[t]
	if f then
	  return f(val, stack)
	end
	error("unexpected type '" .. t .. "'")
  end
  function json.encode(val)
	return ( encode(val) )
  end
  -------------------------------------------------------------------------------
  -- Decode
  -------------------------------------------------------------------------------
  local parse
  local function create_set(...)
	local res = {}
	for i = 1, select("#", ...) do
	  res[ select(i, ...) ] = true
	end
	return res
  end
  local space_chars   = create_set(" ", "\t", "\r", "\n")
  local delim_chars   = create_set(" ", "\t", "\r", "\n", "]", "}", ",")
  local escape_chars  = create_set("\\", "/", '"', "b", "f", "n", "r", "t", "u")
  local literals      = create_set("true", "false", "null")
  local literal_map = {
	[ "true"  ] = true,
	[ "false" ] = false,
	[ "null"  ] = nil,
  }
  local function next_char(str, idx, set, negate)
	for i = idx, #str do
	  if set[str:sub(i, i)] ~= negate then
		return i
	  end
	end
	return #str + 1
  end
  local function decode_error(str, idx, msg)
	local line_count = 1
	local col_count = 1
	for i = 1, idx - 1 do
	  col_count = col_count + 1
	  if str:sub(i, i) == "\n" then
		line_count = line_count + 1
		col_count = 1
	  end
	end
	error( string.format("%s at line %d col %d", msg, line_count, col_count) )
  end
  local function codepoint_to_utf8(n)
	-- http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=iws-appendixa
	local f = math.floor
	if n <= 0x7f then
	  return string.char(n)
	elseif n <= 0x7ff then
	  return string.char(f(n / 64) + 192, n % 64 + 128)
	elseif n <= 0xffff then
	  return string.char(f(n / 4096) + 224, f(n % 4096 / 64) + 128, n % 64 + 128)
	elseif n <= 0x10ffff then
	  return string.char(f(n / 262144) + 240, f(n % 262144 / 4096) + 128,
						f(n % 4096 / 64) + 128, n % 64 + 128)
	end
	error( string.format("invalid unicode codepoint '%x'", n) )
  end
  local function parse_unicode_escape(s)
	local n1 = tonumber( s:sub(3, 6),  16 )
	local n2 = tonumber( s:sub(9, 12), 16 )
	-- Surrogate pair?
	if n2 then
	  return codepoint_to_utf8((n1 - 0xd800) * 0x400 + (n2 - 0xdc00) + 0x10000)
	else
	  return codepoint_to_utf8(n1)
	end
  end
  local function parse_string(str, i)
	local has_unicode_escape = false
	local has_surrogate_escape = false
	local has_escape = false
	local last
	for j = i + 1, #str do
	  local x = str:byte(j)

	  if x < 32 then
		decode_error(str, j, "control character in string")
	  end

	  if last == 92 then -- "\\" (escape char)
		if x == 117 then -- "u" (unicode escape sequence)
		  local hex = str:sub(j + 1, j + 5)
		  if not hex:find("%x%x%x%x") then
			decode_error(str, j, "invalid unicode escape in string")
		  end
		  if hex:find("^[dD][89aAbB]") then
			has_surrogate_escape = true
		  else
			has_unicode_escape = true
		  end
		else
		  local c = string.char(x)
		  if not escape_chars[c] then
			decode_error(str, j, "invalid escape char '" .. c .. "' in string")
		  end
		  has_escape = true
		end
		last = nil

	  elseif x == 34 then -- '"' (end of string)
		local s = str:sub(i + 1, j - 1)
		if has_surrogate_escape then
		  s = s:gsub("\\u[dD][89aAbB]..\\u....", parse_unicode_escape)
		end
		if has_unicode_escape then
		  s = s:gsub("\\u....", parse_unicode_escape)
		end
		if has_escape then
		  s = s:gsub("\\.", escape_char_map_inv)
		end
		return s, j + 1

	  else
		last = x
	  end
	end
	decode_error(str, i, "expected closing quote for string")
  end
  local function parse_number(str, i)
	local x = next_char(str, i, delim_chars)
	local s = str:sub(i, x - 1)
	local n = tonumber(s)
	if not n then
	  decode_error(str, i, "invalid number '" .. s .. "'")
	end
	return n, x
  end
  local function parse_literal(str, i)
	local x = next_char(str, i, delim_chars)
	local word = str:sub(i, x - 1)
	if not literals[word] then
	  decode_error(str, i, "invalid literal '" .. word .. "'")
	end
	return literal_map[word], x
  end
  local function parse_array(str, i)
	local res = {}
	local n = 1
	i = i + 1
	while 1 do
	  local x
	  i = next_char(str, i, space_chars, true)
	  -- Empty / end of array?
	  if str:sub(i, i) == "]" then
		i = i + 1
		break
	  end
	  -- Read token
	  x, i = parse(str, i)
	  res[n] = x
	  n = n + 1
	  -- Next token
	  i = next_char(str, i, space_chars, true)
	  local chr = str:sub(i, i)
	  i = i + 1
	  if chr == "]" then break end
	  if chr ~= "," then decode_error(str, i, "expected ']' or ','") end
	end
	return res, i
  end
  local function parse_object(str, i)
	local res = {}
	i = i + 1
	while 1 do
	  local key, val
	  i = next_char(str, i, space_chars, true)
	  -- Empty / end of object?
	  if str:sub(i, i) == "}" then
		i = i + 1
		break
	  end
	  -- Read key
	  if str:sub(i, i) ~= '"' then
		decode_error(str, i, "expected string for key")
	  end
	  key, i = parse(str, i)
	  -- Read ':' delimiter
	  i = next_char(str, i, space_chars, true)
	  if str:sub(i, i) ~= ":" then
		decode_error(str, i, "expected ':' after key")
	  end
	  i = next_char(str, i + 1, space_chars, true)
	  -- Read value
	  val, i = parse(str, i)
	  -- Set
	  res[key] = val
	  -- Next token
	  i = next_char(str, i, space_chars, true)
	  local chr = str:sub(i, i)
	  i = i + 1
	  if chr == "}" then break end
	  if chr ~= "," then decode_error(str, i, "expected '}' or ','") end
	end
	return res, i
  end
  local char_func_map = {
	[ '"' ] = parse_string,
	[ "0" ] = parse_number,
	[ "1" ] = parse_number,
	[ "2" ] = parse_number,
	[ "3" ] = parse_number,
	[ "4" ] = parse_number,
	[ "5" ] = parse_number,
	[ "6" ] = parse_number,
	[ "7" ] = parse_number,
	[ "8" ] = parse_number,
	[ "9" ] = parse_number,
	[ "-" ] = parse_number,
	[ "t" ] = parse_literal,
	[ "f" ] = parse_literal,
	[ "n" ] = parse_literal,
	[ "[" ] = parse_array,
	[ "{" ] = parse_object,
  }
  parse = function(str, idx)
	local chr = str:sub(idx, idx)
	local f = char_func_map[chr]
	if f then
	  return f(str, idx)
	end
	decode_error(str, idx, "unexpected character '" .. chr .. "'")
  end
  function json.decode(str)
	if type(str) ~= "string" then
	  error("expected argument of type string, got " .. type(str))
	end
	local res, idx = parse(str, next_char(str, 1, space_chars, true))
	idx = next_char(str, idx, space_chars, true)
	if idx <= #str then
	  decode_error(str, idx, "trailing garbage")
	end
	return res
  end
  return json
end
local json = jsonlua()

function useCommand.coronavirus()
	if arguments[2] then
		local res = game:HttpGet("https://coronavirus-19-api.herokuapp.com/countries/"..arguments[2])
		local tbl = json.decode(res)
		opx("-","Cases: "..tbl["cases"]..", Deaths: "..tbl["deaths"]..", Recovered: "..tbl["recovered"]..", Active: "..tbl["active"])
		cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(tbl['country'].."; ".."Cases: ".."uw"..tbl["cases"]..", Deaths: ".."uw"..tbl["deaths"]..", Recovered: ".."uw"..tbl["recovered"]..", Active: ".."uw"..tbl["active"], "All")
	else
		local res = game:HttpGet("https://coronavirus-19-api.herokuapp.com/all")
		local tbl = json.decode(res)
		opx("-","Cases: "..tbl["cases"]..", Deaths: "..tbl["deaths"]..", Recovered: "..tbl["recovered"])
		cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("World; ".."Cases: ".."uw"..tbl["cases"]..", Deaths: ".."uw"..tbl["deaths"]..", Recovered: ".."uw"..tbl["recovered"], "All")
	end
end

function useCommand.joindateprivate()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			local res = game:HttpGet("https://users.roblox.com/v1/users/"..target.UserId)
			local tbl = json.decode(res)
			local Created = tbl["created"]:split("T")
			local Created2 = Created[2]:split(".")
			opx("-",target.Name.." joined on: "..Created[1].." "..Created2[1])
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.joindatepublic()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			local res = game:HttpGet("https://users.roblox.com/v1/users/"..target.UserId)
			local tbl = json.decode(res)
			local Created = tbl["created"]:split("T")
			local Created2 = Created[2]:split(".")
			opx("-",target.Name.." joined on: "..Created[1].." "..Created2[1])
			cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(target.Name.." joined on: "..Created[1].." "..Created2[1], "All")
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.diceprivate()
	opx("-","The dice rolled a "..tostring(math.random(1, 6)))
end

function useCommand.numberpublic()
	if arguments[3] then
		opx("-","Your random number is ".. tostring(math.random(arguments[2], arguments[3])))
		cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(game.Players.LocalPlayer.Name.." has picked a random number between "..arguments[2].." and "..arguments[3].." the number is ".. tostring(math.random(arguments[2], arguments[3])), "All")
	else
		opx("*","You need to pick 2 numbers")
	end
end

function useCommand.numberprivate()
	if arguments[3] then
		opx("-","Your random number is ".. tostring(math.random(arguments[2], arguments[3])))
	else
		opx("*","You need to pick 2 numbers")
	end
end

function useCommand.loadcustoms()
	opx("-","Scripts you can load were listed")
	xPins = #loadCustoms.." | "
	for i,v in pairs(loadCustoms) do
		xPins = xPins..loadCustoms[i].N..", "
	end
	opxL("Plugins",xPins)
end

local HolderOfP = Instance.new("Frame", getParent)
local PExplain = Instance.new("Frame", getParent)
local P2 = Instance.new("TextLabel", getParent)
local P1 = Instance.new("TextLabel", getParent)
local PText = Instance.new("Frame", getParent)
local PB = Instance.new("TextButton", getParent)
local PA = Instance.new("TextButton", getParent)
local PTextBox = Instance.new("TextBox", getParent)
local PCopy = Instance.new("TextButton", getParent)
local PC = Instance.new("TextLabel", getParent)
local PRemove = Instance.new("Frame", getParent)
local PPlugin = Instance.new("TextLabel", getParent)
local PImage3 = Instance.new("ImageButton", getParent)
local PImage1 = Instance.new("ImageButton", getParent)
local PImage2 = Instance.new("ImageButton", getParent)
local PExit = Instance.new("TextButton", getParent)
local PAliases = Instance.new("TextBox", getParent)
local PName = Instance.new("TextBox", getParent)
local PDesc = Instance.new("TextBox", getParent)

HolderOfP.Name = "HolderOfP"
HolderOfP.Parent = Unnamed
HolderOfP.BackgroundColor3 = Color3.new(0.0470588, 0.0470588, 0.0470588)
HolderOfP.BorderSizePixel = 0
HolderOfP.Position = UDim2.new(0.250384033, 0, 0.217444718, 0)
HolderOfP.Size = UDim2.new(0, 714, 0, 24)
HolderOfP.Draggable = true
HolderOfP.Active = true
HolderOfP.Visible = false

PExplain.Name = "PExplain"
PExplain.Parent = HolderOfP
PExplain.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
PExplain.BorderColor3 = Color3.new(0.0588235, 0.0627451, 0.0705882)
PExplain.BorderSizePixel = 0
PExplain.Position = UDim2.new(-0.000316262245, 0, 0.996928751, 0)
PExplain.Size = UDim2.new(0, 188, 0, 412)

P2.Name = "P2"
P2.Parent = PExplain
P2.BackgroundColor3 = Color3.new(1, 1, 1)
P2.BackgroundTransparency = 1
P2.Position = UDim2.new(0.0425531901, 0, 0.0194174759, 0)
P2.Size = UDim2.new(0, 173, 0, 41)
P2.Font = Enum.Font.GothamBold
P2.Text = "Plugins and how to use them:"
P2.TextColor3 = Color3.new(1, 1, 1)
P2.TextSize = 20
P2.TextWrapped = true
P2.TextYAlignment = Enum.TextYAlignment.Top

P1.Name = "P1"
P1.Parent = PExplain
P1.BackgroundColor3 = Color3.new(1, 1, 1)
P1.BackgroundTransparency = 1
P1.Position = UDim2.new(0.0425531901, 0, 0.118932039, 0)
P1.Size = UDim2.new(0, 173, 0, 357)
P1.Font = Enum.Font.Gotham
P1.Text = "Type your plugin in the box then press add, once done you can edit/remove it in the Frame below it."
P1.TextColor3 = Color3.new(1, 1, 1)
P1.TextSize = 14
P1.TextWrapped = true
P1.TextYAlignment = Enum.TextYAlignment.Top

PText.Name = "PText"
PText.Parent = HolderOfP
PText.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
PText.BorderColor3 = Color3.new(0.478431, 0.509804, 0.576471)
PText.BorderSizePixel = 0
PText.Position = UDim2.new(0.263124585, 0, 0.996928751, 0)
PText.Size = UDim2.new(0, 526, 0, 412)

PB.Name = "PB"
PB.Parent = PText
PB.BackgroundColor3 = Color3.new(0.101961, 0.101961, 0.101961)
PB.BorderColor3 = Color3.new(0.470588, 0.47451, 0.517647)
PB.BorderSizePixel = 0
PB.Position = UDim2.new(0.0136517286, 0, 0.864077687, 0)
PB.Size = UDim2.new(0, 200, 0, 50)
PB.Font = Enum.Font.GothamBold
PB.Text = "Add Plugin"
PB.TextColor3 = Color3.new(1, 1, 1)
PB.TextSize = 14
PB.MouseButton1Down:Connect(function()
	if PName.Text ~= "" then
		loadCustoms[#loadCustoms+1] = {N = PName.Text, File = PTextBox.Text}
		updatesaves()
	end
end)

PA.Name = "PA"
PA.Parent = PText
PA.BackgroundColor3 = Color3.new(0.101961, 0.101961, 0.101961)
PA.BorderColor3 = Color3.new(0.470588, 0.47451, 0.517647)
PA.BorderSizePixel = 0
PA.Position = UDim2.new(0.60300535, 0, 0.864077687, 0)
PA.Size = UDim2.new(0, 200, 0, 50)
PA.Font = Enum.Font.GothamBold
PA.Text = "Clear Text"
PA.TextColor3 = Color3.new(1, 1, 1)
PA.TextSize = 14
PA.MouseButton1Down:Connect(function()
	PTextBox.Text = ""
end)

PAliases.Name = "PAliases"
PAliases.Parent = PText
PAliases.BackgroundColor3 = Color3.new(0.101961, 0.101961, 0.101961)
PAliases.BorderColor3 = Color3.new(0.470588, 0.47451, 0.517647)
PAliases.BorderSizePixel = 0
PAliases.Position = UDim2.new(0.243346006, 0, 0.788834929, 0)
PAliases.Size = UDim2.new(0, 183, 0, 22)
PAliases.Font = Enum.Font.Code
PAliases.PlaceholderText = "Command aliases (OPTIONAL)"
PAliases.Text = ""
PAliases.TextColor3 = Color3.new(1, 1, 1)
PAliases.TextSize = 14
PAliases.TextWrapped = true
PAliases.TextXAlignment = Enum.TextXAlignment.Left
PAliases.ClearTextOnFocus = false

PName.Name = "PName"
PName.Parent = PText
PName.BackgroundColor3 = Color3.new(0.101961, 0.101961, 0.101961)
PName.BorderColor3 = Color3.new(0.470588, 0.47451, 0.517647)
PName.BorderSizePixel = 0
PName.Position = UDim2.new(0.0114068445, 0, 0.788834929, 0)
PName.Size = UDim2.new(0, 114, 0, 22)
PName.Font = Enum.Font.Code
PName.PlaceholderText = "Command name..."
PName.Text = ""
PName.TextColor3 = Color3.new(1, 1, 1)
PName.TextSize = 14
PName.TextWrapped = true
PName.TextXAlignment = Enum.TextXAlignment.Left
PName.ClearTextOnFocus = false

PDesc.Name = "PDesc"
PDesc.Parent = PText
PDesc.BackgroundColor3 = Color3.new(0.101961, 0.101961, 0.101961)
PDesc.BorderColor3 = Color3.new(0.470588, 0.47451, 0.517647)
PDesc.BorderSizePixel = 0
PDesc.Position = UDim2.new(0.60266161, 0, 0.788834929, 0)
PDesc.Size = UDim2.new(0, 200, 0, 22)
PDesc.Font = Enum.Font.Code
PDesc.PlaceholderText = "Command description..."
PDesc.Text = ""
PDesc.TextColor3 = Color3.new(1, 1, 1)
PDesc.TextSize = 14
PDesc.TextWrapped = true
PDesc.TextXAlignment = Enum.TextXAlignment.Left
PDesc.ClearTextOnFocus = false

PTextBox.Name = "PTextBox"
PTextBox.Parent = PText
PTextBox.BackgroundColor3 = Color3.new(0.101961, 0.101961, 0.101961)
PTextBox.BorderColor3 = Color3.new(0.470588, 0.47451, 0.517647)
PTextBox.BorderSizePixel = 0
PTextBox.Position = UDim2.new(0.0133079849, 0, 0.0194174759, 0)
PTextBox.Size = UDim2.new(0, 510, 0, 308)
PTextBox.Font = Enum.Font.Code
PTextBox.PlaceholderText = "Paste raw text link here (EX. pastebin.com/raw/(link))..."
PTextBox.Text = ""
PTextBox.TextColor3 = Color3.new(1, 1, 1)
PTextBox.TextSize = 14
PTextBox.TextWrapped = true
PTextBox.TextXAlignment = Enum.TextXAlignment.Left
PTextBox.TextYAlignment = Enum.TextYAlignment.Top
PTextBox.ClearTextOnFocus = false

PCopy.Name = "PCopy"
PCopy.Parent = PTextBox
PCopy.BackgroundColor3 = Color3.new(0.0627451, 0.0627451, 0.0627451)
PCopy.BorderSizePixel = 0
PCopy.Position = UDim2.new(0.896078408, 0, 0.911764681, 0)
PCopy.Size = UDim2.new(0, 47, 0, 23)
PCopy.Font = Enum.Font.GothamBold
PCopy.Text = "Copy"
PCopy.TextColor3 = Color3.new(1, 1, 1)
PCopy.TextSize = 14
PCopy.MouseButton1Down:Connect(function()
	setclipboard(PTextBox.Text)
end)

PC.Name = "PC"
PC.Parent = PText
PC.BackgroundColor3 = Color3.new(1, 1, 1)
PC.BackgroundTransparency = 1
PC.BorderSizePixel = 0
PC.Position = UDim2.new(0.406844109, 0, 0.878640771, 0)
PC.Size = UDim2.new(0, 97, 0, 38)
PC.Font = Enum.Font.GothamBold
PC.Text = "CMD-X PLUGINS"
PC.TextColor3 = Color3.new(1, 1, 1)
PC.TextSize = 12

PRemove.Name = "PRemove"
PRemove.Parent = HolderOfP
PRemove.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
PRemove.BorderColor3 = Color3.new(0.0588235, 0.0627451, 0.0705882)
PRemove.BorderSizePixel = 0
PRemove.Position = UDim2.new(-0.000316262245, 0, 18.1280708, 0)
PRemove.Size = UDim2.new(0, 714, 0, 42)

PPlugin.Name = "PPlugin"
PPlugin.Parent = PRemove
PPlugin.BackgroundColor3 = Color3.new(0.101961, 0.101961, 0.101961)
PPlugin.BackgroundTransparency = 0.10000000149012
PPlugin.BorderSizePixel = 0
PPlugin.Position = UDim2.new(0.273109257, 0, 0.238095239, 0)
PPlugin.Size = UDim2.new(0, 379, 0, 21)
PPlugin.Font = Enum.Font.GothamBold
PPlugin.Text = "Coming soon..."
PPlugin.TextColor3 = Color3.new(1, 1, 1)
PPlugin.TextSize = 14
PPlugin.TextXAlignment = Enum.TextXAlignment.Left

PImage3.Name = "PImage3"
PImage3.Parent = PRemove
PImage3.BackgroundColor3 = Color3.new(1, 1, 1)
PImage3.BackgroundTransparency = 1
PImage3.BorderSizePixel = 0
PImage3.Position = UDim2.new(0.869747937, 0, 0, 0)
PImage3.Size = UDim2.new(0, 43, 0, 42)
PImage3.Image = "http://www.roblox.com/asset/?id=4673169548"

PImage1.Name = "PImage1"
PImage1.Parent = PRemove
PImage1.BackgroundColor3 = Color3.new(1, 1, 1)
PImage1.BackgroundTransparency = 1
PImage1.BorderSizePixel = 0
PImage1.Position = UDim2.new(0.929972053, 0, 0, 0)
PImage1.Size = UDim2.new(0, 43, 0, 42)
PImage1.Image = "http://www.roblox.com/asset/?id=23151442"
PImage1.ScaleType = Enum.ScaleType.Fit

PImage2.Name = "PImage2"
PImage2.Parent = PRemove
PImage2.BackgroundColor3 = Color3.new(1, 1, 1)
PImage2.BackgroundTransparency = 1
PImage2.BorderSizePixel = 0
PImage2.Position = UDim2.new(0.809523821, 0, 0.166666672, 0)
PImage2.Size = UDim2.new(0, 43, 0, 35)
PImage2.Image = "http://www.roblox.com/asset/?id=2249727556"
PImage2.ScaleType = Enum.ScaleType.Fit

PExit.Name = "PExit"
PExit.Parent = HolderOfP
PExit.BackgroundColor3 = Color3.new(1, 1, 1)
PExit.BackgroundTransparency = 1
PExit.Position = UDim2.new(0.964985967, 0, 0, 0)
PExit.Size = UDim2.new(0, 24, 0, 24)
PExit.Font = Enum.Font.GothamBold
PExit.Text = "X"
PExit.TextColor3 = Color3.new(1, 1, 1)
PExit.TextScaled = true
PExit.TextSize = 14
PExit.TextWrapped = true
PExit.MouseButton1Down:Connect(function()
	HolderOfP.Visible = false
end)

function useCommand.plugin()
	if arguments[2] then
		lcNS = getstring(2)
		for i,v in pairs(Plugins) do
			if Plugins[i].Name == lcNS and Plugins[i].Status then
				loadstring(readfile("Strylix-FE Plugins/"..Plugins[i].File))()
			end
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function Locate(plr)
	for i,v in pairs(cmdlp.PlayerGui:GetChildren()) do
		if v.Name == plr.Name..'_LC' then
			v:Destroy()
		end
	end
	wait()
	if plr.Character and plr.Name ~= cmdlp.Name and not cmdlp.PlayerGui:FindFirstChild(plr.Name..'_LC') then
		local ESPholder = Instance.new("Folder", cmdlp.PlayerGui)
		ESPholder.Name = plr.Name..'_LC'
		for b,n in pairs(plr.Character:GetChildren()) do
			if n:IsA("BasePart") then
				local a = Instance.new("BoxHandleAdornment", ESPholder)
				a.Name = plr.Name
				a.Adornee = n
				a.AlwaysOnTop = true
				a.ZIndex = 0
				a.Size = n.Size
				a.Transparency = 0.8
				for i,m in pairs(plr.Character:GetChildren()) do
					if m:IsA("Part") or m:IsA("MeshPart") then
						if m.Name ~= "HumanoidRootPart" and m.Name ~= "Handle" or (m:IsA("Part")) then
							m.Material = "ForceField"
							a.Color = m.BrickColor
						end
					end
				end
			end
		end
		if plr.Character and plr.Character:FindFirstChild('Head') then
			local BillboardGui = Instance.new("BillboardGui", ESPholder)
			local TextLabel = Instance.new("TextLabel")
			BillboardGui.Adornee = plr.Character.Head
			BillboardGui.Name = plr.Name
			BillboardGui.Size = UDim2.new(0, 100, 0, 150)
			BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
			BillboardGui.AlwaysOnTop = true
			TextLabel.Parent = BillboardGui
			TextLabel.BackgroundTransparency = 1
			TextLabel.Position = UDim2.new(0, 0, 0, -60)
			TextLabel.Size = UDim2.new(0, 100, 0, 100)
			TextLabel.Font = Enum.Font.SourceSansSemibold
			TextLabel.TextSize = 20
			TextLabel.TextColor3 = Color3.new(1, 1, 1)
			TextLabel.TextStrokeTransparency = 0.6
			TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
			plr.CharacterAdded:Connect(function()
				if ESPholder ~= nil and ESPholder.Parent ~= nil then
					lcLoopFunc:Disconnect()
					ESPholder:Destroy()
					repeat wait(1) until plr.Character:FindFirstChild('HumanoidRootPart') and plr.Character:FindFirstChild('Humanoid')
					Locate(plr)
				end
			end)
			local function lcLoop()
				if cmdlp.PlayerGui:FindFirstChild(plr.Name..'_LC') then
					if plr.Character and plr.Character:FindFirstChild('HumanoidRootPart') and plr.Character:FindFirstChild('Humanoid') then
						TextLabel.Text = plr.Name.."|Studs: ".. math.floor((cmdlp.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).magnitude).."|Health: "..plr.Character.Humanoid.Health
					end
				else
					lcLoopFunc:Disconnect()
				end
			end
			lcLoopFunc = game:GetService("RunService").RenderStepped:Connect(lcLoop)
		end
	end
end

local autoObby = false
function useCommand.autoobby()
	opx("-","Now Auto obbying")
	autoObby = true
	cmdlp.Character.Humanoid.Running:Connect(function(speed)
		if speed > 0 and autoObby == true and cmdlp.Character.Humanoid.FloorMaterial == Enum.Material.Air then
			cmdlp.Character.Humanoid:ChangeState("Jumping")
		end
	end)
end

function useCommand.unautoobby()
	opx("-","No longer Auto obbying")
	autoObby = false
end

autoPf = false
function useCommand.autoplatform()
	opx("-","Now Auto platforming")
	autoPf = true
	cmdlp.Character.Humanoid.Running:Connect(function(speed)
		if speed > 0 and autoPf == true and cmdlp.Character.Humanoid.FloorMaterial == Enum.Material.Air then
			local pc = cmdlp.Character
			if pc then
				if pc:FindFirstChild("pf") then
					pc:FindFirstChild("pf").CFrame = pc.HumanoidRootPart.CFrame * CFrame.new(0,-3.5,0)
				else
					local pf = Instance.new('Part', pc)
					pf.Name = 'pf'
					pf.Transparency = 1
					pf.Size = Vector3.new(6,1,6)
					pf.Anchored = true
					pf.CFrame = pc.HumanoidRootPart.CFrame * CFrame.new(0,-3.5,0)
				end
			end
		else
			if cmdlp.Character:FindFirstChild("pf") then
				cmdlp.Character:FindFirstChild("pf"):Destroy()
			end
		end
	end)
end

function useCommand.unautoplatform()
	opx("-","No longer Auto platforming")
	autoPf = false
	if cmdlp.Character:FindFirstChild("pf") then
		cmdlp.Character:FindFirstChild("pf"):Destroy()
	end
end

function CheckTargets(check)
    for i,v in pairs(FindingTargets) do
        if v == check then
            return true
        end
    end
end

FindingTargets = {}
function useCommand.find()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
		    table.insert(FindingTargets, target.Name)
			opx("-",target.Name.." is now being found")
            Create(target, target.Character.Head, true)
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.unfind()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			opx("-",target.Name.." is no longer being found")
			cmdlp.PlayerGui["ESP"..target.Name]:Destroy()
    	    for x,y in pairs(target.Character:GetChildren()) do
    	        if y:IsA("BasePart") then
    			    y.Material = "Plastic"
    	        end
    	    end
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.clickdelete()
	if TextButtonpoo.Visible == false then
		TextButtonpoo.Visible = true
		opx("-","Click delete loaded")
	else
		TextButtonpoo.Visible = false
		opx("-","Click delete unloaded")
	end
end
--Shit to change
cmdp.PlayerAdded:connect(function(plr)
	plr.Chatted:connect(function(msg)
		if logsEnabled == true then
			CreateLabel(plr.Name,msg)
		end
	end)
end) --Shit to change
for i,v in pairs(cmdp:GetPlayers()) do
	v.Chatted:connect(function(msg)
		if logsEnabled == true then
			CreateLabel(v.Name,msg)
		end
	end)
end

function useCommand.logs()
	logsEnabled = true
	wLogs = false
	pLogs = false
	if logsholding.Visible == false then
		opx("-","Logs have been loaded")
		logsholding.Visible = true
	elseif logsholding.Visible == true then
		opx("-","Logs have been unloaded")
		logsholding.Visible = false
		logsEnabled = false
	end
end

function useCommand.test()
	opx("-","")
end

function useCommand.testa()
	opx("-","grr fucking baby niggas")
	workspace.Baby:Destroy()
end

function useCommand.time()
	function localHour(hour)
		local h = "{hour}"
		local result = string.gsub(h, "{(%w+)}", hour)
		return result
	end
	local wc = {"afghanistan","albania","algeria","andorra","angola","antiguaandbarbuda","argentinia","armenia","australia","austrianempire","azerbijan","baden","thebahamas","bahrain","bangladesh","barbados","bavaria","belarus","belgium","belize","benin","bolivia","bosniaandherzegovina","botswana","brazil","brunei","brunswickandluneberg","bulgaria","burkinafaso","burma","burundi","caboverde","cambodia","cameroon","canada","thecaymanislands","centralafricanrepublic","centralamericanfederation","chad","chile","china","colombia","comoros","thecongofreestate","costarica","coted'ivoire","croatia","cuba","cyprus","czechia","czechoslovakia","democraticrepublicofcongo","denmark","dijbouti","dominica","dominicanrepublic","theduchyofparma","eastgermany","ecuador","egypt","elsalvador","equatorialguinea","eritrea","estonia","eswatini","ethiopia","federalgovernmentofgermany","fiji","finland","france","gabon","thegambia","georgia","germany","ghana","thegrandduchyoftuscany","greece","grenada","guatemala","guinea","guinea-bissau","guyana","haiti","hanover","hanseaticrepublics","hawaii","hesse","holysee","honduras","hungary","iceland","india","indonesia","iran","iraq","ireland","israel","italy","jamaica","japan","jordan","kazakhstan","kenya","kingdomofserbia","kiribati","korea","kosovo","kuwait","kyrgyzstan","laos","latvia","lebanon","lewchew","liberia","libya","liechtenstein","lithuania","luxembourg","madagascar","malawi","malaysia","maldives","mali","malta","marshall islands","mauritania","mauritius","mecklenburg-schwerin","mecklenberg-strelitz","mexico","micronesia","moldova","monaco","mongolia","montenegro","morocco","mozambique","namibia","nassau","nauru","nepal","thenetherlands","newzealand","nicargua","niger","nigeria","northgermanconfederation","northgermanunion","northmacedonia","norway","oldenburg","oman","orangefreestate","pakistan","palau","panama","papalstates","papuanewguinea","paraguay","peru","philippines","piedmont-sardinia","poland","portugal","qatar","republicofgenoa","republicofkorea","republicofthecongo","romania","russia","rwanda","saintkittsandnevis","saintlucia","saintvincentandthegrenadines","samoa","sanmarino","saotomeandprincipe","saudiarabia","schaumburg-lippe","senegal","serbia","seychelles","sierraleone","singapore","slovakia","slovenia","thesolomonislands","somalia","southafrica","southsudan","spain","srilanka","sudan","suriname","sweden","switzerland","syria","tajikistan","tanzania","texas","thailand","timor-leste","togo","tonga","trinidadandtobago","tunisia","turkey","turkmenistan","tuvalu","twosicilies","uganda","ukraine","unionofsoviertsocialistrepublics","theunitedarabemirates","theunitedkingdom","uruguay","uzbekistan","vanuatu","venezuela","vietnam","wurttemberg","yemen","zambia","zimbabwe"}
	local now = os.time()
	local malformedHour = localHour(os.date("!*t", now))
	arguments[2] = arguments[2]:lower()
	if arguments[2] == "a" then
		malformedHour = malformedHour+1
	elseif arguments[2] == "acdt" then
		malformedHour = malformedHour+10
	elseif arguments[2] == "acst" then
		malformedHour = malformedHour+9
	elseif arguments[2] == "act" then
		malformedHour = malformedHour-5
	elseif arguments[2] == "act2" then
		malformedHour = malformedHour+10
	elseif arguments[2] == "acwst" then
		malformedHour = malformedHour+9
	elseif arguments[2] == "adt" then
		malformedHour = malformedHour+4
	elseif arguments[2] == "adt2" then
		malformedHour = malformedHour-3
	elseif arguments[2] == "aedt" then
		malformedHour = malformedHour+11
	elseif arguments[2] == "aest" then
		malformedHour = malformedHour+10
	elseif arguments[2] == "aet" then
		malformedHour = malformedHour+math.random(10,11)
	elseif arguments[2] == "aft" then
		malformedHour = malformedHour+4
	elseif arguments[2] == "akdt" then
		malformedHour = malformedHour-8
	elseif arguments[2] == "akst" then
		malformedHour = malformedHour-9
	elseif arguments[2] == "almt" then
		malformedHour = malformedHour+6
	elseif arguments[2] == "amst" then
		malformedHour = malformedHour-3
	elseif arguments[2] == "amst2" then
		malformedHour = malformedHour+5
	elseif arguments[2] == "amt" then
		malformedHour = malformedHour-4
	elseif arguments[2] == "amt2" then
		malformedHour = malformedHour+4
	elseif arguments[2] == "anast" then
		malformedHour = malformedHour+12
	elseif arguments[2] == "anat" then
		malformedHour = malformedHour+12
	elseif arguments[2] == "aqtt" then
		malformedHour = malformedHour+5
	elseif arguments[2] == "art" then
		malformedHour = malformedHour-3
	elseif arguments[2] == "ast" then
		malformedHour = malformedHour+3
	elseif arguments[2] == "ast2" then
		malformedHour = malformedHour-4
	elseif arguments[2] == "at" then
		malformedHour = malformedHour-math.random(3,4)
	elseif arguments[2] == "awdt" then
		malformedHour = malformedHour+9
	elseif arguments[2] == "awst" then
		malformedHour = malformedHour+8
	elseif arguments[2] == "azost" then
		malformedHour = malformedHour
	elseif arguments[2] == "azot" then
		malformedHour = malformedHour-1
	elseif arguments[2] == "azst" then
		malformedHour = malformedHour+5
	elseif arguments[2] == "azt" then
		malformedHour = malformedHour+4
	elseif arguments[2] == "aoe" then
		malformedHour = malformedHour-12
	elseif arguments[2] == "b" then
		malformedHour = malformedHour+2
	elseif arguments[2] == "bnt" then
		malformedHour = malformedHour+8
	elseif arguments[2] == "bot" then
		malformedHour = malformedHour-4
	elseif arguments[2] == "brst" then
		malformedHour = malformedHour-2
	elseif arguments[2] == "brt" then
		malformedHour = malformedHour-3
	elseif arguments[2] == "bst" then
		malformedHour = malformedHour+6
	elseif arguments[2] == "bst2" then
		malformedHour = malformedHour+11
	elseif arguments[2] == "bst3" then
		malformedHour = malformedHour+1
	elseif arguments[2] == "btt" then
		malformedHour = malformedHour+6
	elseif arguments[2] == "c" then
		malformedHour = malformedHour+3
	elseif arguments[2] == "cast" then
		malformedHour = malformedHour+8
	elseif arguments[2] == "cat" then
		malformedHour = malformedHour+2
	elseif arguments[2] == "cct" then
		malformedHour = malformedHour+6
	elseif arguments[2] == "cdt" then
		malformedHour = malformedHour-5
	elseif arguments[2] == "cest" then
		malformedHour = malformedHour+2
	elseif arguments[2] == "cet" then
		malformedHour = malformedHour+1
	elseif arguments[2] == "chadt" then
		malformedHour = malformedHour+14
	elseif arguments[2] == "chast" then
		malformedHour = malformedHour+13
	elseif arguments[2] == "chost" then
		malformedHour = malformedHour+9
	elseif arguments[2] == "chot" then
		malformedHour = malformedHour+8
	elseif arguments[2] == "chut" then
		malformedHour = malformedHour+10
	elseif arguments[2] == "cidst" then
		malformedHour = malformedHour-4
	elseif arguments[2] == "cist" then
		malformedHour = malformedHour-5
	elseif arguments[2] == "ckt" then
		malformedHour = malformedHour-10
	elseif arguments[2] == "clst" then
		malformedHour = malformedHour-3
	elseif arguments[2] == "clt" then
		malformedHour = malformedHour-4
	elseif arguments[2] == "cot" then
		malformedHour = malformedHour-5
	elseif arguments[2] == "cst" then
		malformedHour = malformedHour-6
	elseif arguments[2] == "cst2" then
		malformedHour = malformedHour+8
	elseif arguments[2] == "cst3" then
		malformedHour = malformedHour-5
	elseif arguments[2] == "ct" then
		malformedHour = malformedHour-math.random(5,6)
	elseif arguments[2] == "cvt" then
		malformedHour = malformedHour-1
	elseif arguments[2] == "cxt" then
		malformedHour = malformedHour+7
	elseif arguments[2] == "chst" then
		malformedHour = malformedHour+10
	elseif arguments[2] == "d" then
		malformedHour = malformedHour+4
	elseif arguments[2] == "davt" then
		malformedHour = malformedHour+7
	elseif arguments[2] == "ddut" then
		malformedHour = malformedHour+10
	elseif arguments[2] == "e" then
		malformedHour = malformedHour+5
	elseif arguments[2] == "easst" then
		malformedHour = malformedHour-5
	elseif arguments[2] == "east" then
		malformedHour = malformedHour-6
	elseif arguments[2] == "eat" then
		malformedHour = malformedHour+3
	elseif arguments[2] == "ect" then
		malformedHour = malformedHour-5
	elseif arguments[2] == "edt" then
		malformedHour = malformedHour-4
	elseif arguments[2] == "eest" then
		malformedHour = malformedHour+3
	elseif arguments[2] == "eet" then
		malformedHour = malformedHour+2
	elseif arguments[2] == "egst" then
		malformedHour = malformedHour
	elseif arguments[2] == "egt" then
		malformedHour = malformedHour-1
	elseif arguments[2] == "est" then
		malformedHour = malformedHour-5
	elseif arguments[2] == "et" then
		malformedHour = malformedHour-math.random(4,5)
	elseif arguments[2] == "f" then
		malformedHour = malformedHour+6
	elseif arguments[2] == "fet" then
		malformedHour = malformedHour+3
	elseif arguments[2] == "fjst" then
		malformedHour = malformedHour+13
	elseif arguments[2] == "fjt" then
		malformedHour = malformedHour+12
	elseif arguments[2] == "fkst" then
		malformedHour = malformedHour-3
	elseif arguments[2] == "fkt" then
		malformedHour = malformedHour-4
	elseif arguments[2] == "fnt" then
		malformedHour = malformedHour-2
	elseif arguments[2] == "g" then
		malformedHour = malformedHour+7
	elseif arguments[2] == "galt" then
		malformedHour = malformedHour-6
	elseif arguments[2] == "gamt" then
		malformedHour = malformedHour-9
	elseif arguments[2] == "get" then
		malformedHour = malformedHour+4
	elseif arguments[2] == "gft" then
		malformedHour = malformedHour-3
	elseif arguments[2] == "gilt" then
		malformedHour = malformedHour+12
	elseif arguments[2] == "gmt" then
		malformedHour = malformedHour
	elseif arguments[2] == "gst" then
		malformedHour = malformedHour+4
	elseif arguments[2] == "gst2" then
		malformedHour = malformedHour-2
	elseif arguments[2] == "gyt" then
		malformedHour = malformedHour-4
	elseif arguments[2] == "h" then
		malformedHour = malformedHour+8
	elseif arguments[2] == "hdt" then
		malformedHour = malformedHour-9
	elseif arguments[2] == "hkt" then
		malformedHour = malformedHour+8
	elseif arguments[2] == "hovst" then
		malformedHour = malformedHour+8
	elseif arguments[2] == "hovt" then
		malformedHour = malformedHour+7
	elseif arguments[2] == "hst" then
		malformedHour = malformedHour-10
	elseif arguments[2] == "i" then
		malformedHour = malformedHour+9
	elseif arguments[2] == "ict" then
		malformedHour = malformedHour+7
	elseif arguments[2] == "idt" then
		malformedHour = malformedHour+3
	elseif arguments[2] == "iot" then
		malformedHour = malformedHour+6
	elseif arguments[2] == "irdt" then
		malformedHour = malformedHour+4
	elseif arguments[2] == "irkst" then
		malformedHour = malformedHour+9
	elseif arguments[2] == "irkt" then
		malformedHour = malformedHour+8
	elseif arguments[2] == "irst" then
		malformedHour = malformedHour+3
	elseif arguments[2] == "ist" then
		malformedHour = malformedHour+5
	elseif arguments[2] == "ist2" then
		malformedHour = malformedHour+1
	elseif arguments[2] == "jst" then
		malformedHour = malformedHour+9
	elseif arguments[2] == "k" then
		malformedHour = malformedHour+10
	elseif arguments[2] == "kgt" then
		malformedHour = malformedHour+6
	elseif arguments[2] == "kost" then
		malformedHour = malformedHour+11
	elseif arguments[2] == "krast" then
		malformedHour = malformedHour+8
	elseif arguments[2] == "krat" then
		malformedHour = malformedHour+7
	elseif arguments[2] == "kst" then
		malformedHour = malformedHour+9
	elseif arguments[2] == "kuyt" then
		malformedHour = malformedHour+4
	elseif arguments[2] == "l" then
		malformedHour = malformedHour+11
	elseif arguments[2] == "lhdt" then
		malformedHour = malformedHour+11
	elseif arguments[2] == "lhst" then
		malformedHour = malformedHour+10
	elseif arguments[2] == "lint" then
		malformedHour = malformedHour+14
	elseif arguments[2] == "m" then
		malformedHour = malformedHour+12
	elseif arguments[2] == "magst" then
		malformedHour = malformedHour+12
	elseif arguments[2] == "magt" then
		malformedHour = malformedHour+11
	elseif arguments[2] == "mart" then
		malformedHour = malformedHour-9
	elseif arguments[2] == "mawt" then
		malformedHour = malformedHour+5
	elseif arguments[2] == "mdt" then
		malformedHour = malformedHour-6
	elseif arguments[2] == "mht" then
		malformedHour = malformedHour+12
	elseif arguments[2] == "mmt" then
		malformedHour = malformedHour+6
	elseif arguments[2] == "msd" then
		malformedHour = malformedHour+4
	elseif arguments[2] == "msk" then
		malformedHour = malformedHour+3
	elseif arguments[2] == "mst" then
		malformedHour = malformedHour-7
	elseif arguments[2] == "mt" then
		malformedHour = malformedHour-math.random(6,7)
	elseif arguments[2] == "mut" then
		malformedHour = malformedHour+4
	elseif arguments[2] == "mvt" then
		malformedHour = malformedHour+5
	elseif arguments[2] == "myt" then
		malformedHour = malformedHour+8
	elseif arguments[2] == "n" then
		malformedHour = malformedHour-1
	elseif arguments[2] == "nct" then
		malformedHour = malformedHour+11
	elseif arguments[2] == "ndt" then
		malformedHour = malformedHour-2
	elseif arguments[2] == "nfdt" then
		malformedHour = malformedHour+12
	elseif arguments[2] == "nft" then
		malformedHour = malformedHour+11
	elseif arguments[2] == "novst" then
		malformedHour = malformedHour+7
	elseif arguments[2] == "novt" then
		malformedHour = malformedHour+7
	elseif arguments[2] == "npt" then
		malformedHour = malformedHour+6
	elseif arguments[2] == "nrt" then
		malformedHour = malformedHour+12
	elseif arguments[2] == "nst" then
		malformedHour = malformedHour-3
	elseif arguments[2] == "nut" then
		malformedHour = malformedHour-11
	elseif arguments[2] == "nzdt" then
		malformedHour = malformedHour+13
	elseif arguments[2] == "nzst" then
		malformedHour = malformedHour+12
	elseif arguments[2] == "o" then
		malformedHour = malformedHour-2
	elseif arguments[2] == "omsst" then
		malformedHour = malformedHour+7
	elseif arguments[2] == "omst" then
		malformedHour = malformedHour+6
	elseif arguments[2] == "orat" then
		malformedHour = malformedHour+5
	elseif arguments[2] == "p" then
		malformedHour = malformedHour-3
	elseif arguments[2] == "pdt" then
		malformedHour = malformedHour-7
	elseif arguments[2] == "pet" then
		malformedHour = malformedHour-5
	elseif arguments[2] == "petst" then
		malformedHour = malformedHour+12
	elseif arguments[2] == "pett" then
		malformedHour = malformedHour+12
	elseif arguments[2] == "pgt" then
		malformedHour = malformedHour+10
	elseif arguments[2] == "phot" then
		malformedHour = malformedHour+13
	elseif arguments[2] == "pht" then
		malformedHour = malformedHour+8
	elseif arguments[2] == "pkt" then
		malformedHour = malformedHour+5
	elseif arguments[2] == "pmdt" then
		malformedHour = malformedHour-2
	elseif arguments[2] == "pmst" then
		malformedHour = malformedHour-3
	elseif arguments[2] == "pont" then
		malformedHour = malformedHour+11
	elseif arguments[2] == "pst" then
		malformedHour = malformedHour-8
	elseif arguments[2] == "pst2" then
		malformedHour = malformedHour-8
	elseif arguments[2] == "pt" then
		malformedHour = malformedHour-math.random(7,8)
	elseif arguments[2] == "pwt" then
		malformedHour = malformedHour+9
	elseif arguments[2] == "pyst" then
		malformedHour = malformedHour-3
	elseif arguments[2] == "pyt" then
		malformedHour = malformedHour-4
	elseif arguments[2] == "pyt2" then
		malformedHour = malformedHour+8
	elseif arguments[2] == "q" then
		malformedHour = malformedHour-4
	elseif arguments[2] == "qyzt" then
		malformedHour = malformedHour+6
	elseif arguments[2] == "r" then
		malformedHour = malformedHour-5
	elseif arguments[2] == "ret" then
		malformedHour = malformedHour+4
	elseif arguments[2] == "rott" then
		malformedHour = malformedHour-3
	elseif arguments[2] == "s" then
		malformedHour = malformedHour-6
	elseif arguments[2] == "sakt" then
		malformedHour = malformedHour+11
	elseif arguments[2] == "samt" then
		malformedHour = malformedHour+4
	elseif arguments[2] == "sast" then
		malformedHour = malformedHour+2
	elseif arguments[2] == "sbt" then
		malformedHour = malformedHour+11
	elseif arguments[2] == "sct" then
		malformedHour = malformedHour+4
	elseif arguments[2] == "sgt" then
		malformedHour = malformedHour+8
	elseif arguments[2] == "sret" then
		malformedHour = malformedHour+11
	elseif arguments[2] == "srt" then
		malformedHour = malformedHour-3
	elseif arguments[2] == "sst" then
		malformedHour = malformedHour-11
	elseif arguments[2] == "syot" then
		malformedHour = malformedHour+3
	elseif arguments[2] == "t" then
		malformedHour = malformedHour-7
	elseif arguments[2] == "taht" then
		malformedHour = malformedHour-10
	elseif arguments[2] == "tft" then
		malformedHour = malformedHour+5
	elseif arguments[2] == "tjt" then
		malformedHour = malformedHour+5
	elseif arguments[2] == "tkt" then
		malformedHour = malformedHour+13
	elseif arguments[2] == "tlt" then
		malformedHour = malformedHour+9
	elseif arguments[2] == "tmt" then
		malformedHour = malformedHour+5
	elseif arguments[2] == "tost" then
		malformedHour = malformedHour+14
	elseif arguments[2] == "tot" then
		malformedHour = malformedHour+13
	elseif arguments[2] == "trt" then
		malformedHour = malformedHour+3
	elseif arguments[2] == "tvt" then
		malformedHour = malformedHour+12
	elseif arguments[2] == "u" then
		malformedHour = malformedHour-8
	elseif arguments[2] == "ulast" then
		malformedHour = malformedHour+9
	elseif arguments[2] == "ulat" then
		malformedHour = malformedHour+8
	elseif arguments[2] == "utc" then
		malformedHour = malformedHour
	elseif arguments[2] == "uyst" then
		malformedHour = malformedHour-2
	elseif arguments[2] == "uyt" then
		malformedHour = malformedHour-3
	elseif arguments[2] == "uzt" then
		malformedHour = malformedHour+5
	elseif arguments[2] == "v" then
		malformedHour = malformedHour-9
	elseif arguments[2] == "vet" then
		malformedHour = malformedHour-4
	elseif arguments[2] == "vlast" then
		malformedHour = malformedHour+11
	elseif arguments[2] == "vlat" then
		malformedHour = malformedHour+10
	elseif arguments[2] == "vost" then
		malformedHour = malformedHour+6
	elseif arguments[2] == "vut" then
		malformedHour = malformedHour+11
	elseif arguments[2] == "w" then
		malformedHour = malformedHour-10
	elseif arguments[2] == "wakt" then
		malformedHour = malformedHour+12
	elseif arguments[2] == "warst" then
		malformedHour = malformedHour-3
	elseif arguments[2] == "wast" then
		malformedHour = malformedHour+2
	elseif arguments[2] == "wat" then
		malformedHour = malformedHour+1
	elseif arguments[2] == "west" then
		malformedHour = malformedHour+1
	elseif arguments[2] == "wet" then
		malformedHour = malformedHour
	elseif arguments[2] == "wft" then
		malformedHour = malformedHour+12
	elseif arguments[2] == "wgst" then
		malformedHour = malformedHour-2
	elseif arguments[2] == "wgt" then
		malformedHour = malformedHour-3
	elseif arguments[2] == "wib" then
		malformedHour = malformedHour+7
	elseif arguments[2] == "wit" then
		malformedHour = malformedHour+9
	elseif arguments[2] == "wita" then
		malformedHour = malformedHour+8
	elseif arguments[2] == "wst" then
		malformedHour = malformedHour+14
	elseif arguments[2] == "wst2" then
		malformedHour = malformedHour+1
	elseif arguments[2] == "wt" then
		malformedHour = malformedHour
	elseif arguments[2] == "x" then
		malformedHour = malformedHour-11
	elseif arguments[2] == "y" then
		malformedHour = malformedHour-12
	elseif arguments[2] == "yakst" then
		malformedHour = malformedHour+10
	elseif arguments[2] == "yakt" then
		malformedHour = malformedHour+9
	elseif arguments[2] == "yapt" then
		malformedHour = malformedHour+10
	elseif arguments[2] == "yekst" then
		malformedHour = malformedHour+6
	elseif arguments[2] == "yekt" then
		malformedHour = malformedHour+5
	elseif arguments[2] == "z" then
		malformedHour = malformedHour
	end
	if malformedHour == 24 then
		malformedHour = "12AM"
	elseif malformedHour == 1 or malformedHour == 25 then
		malformedHour = "1AM"
	elseif malformedHour == 2 or malformedHour == 26 then
		malformedHour = "2AM"
	elseif malformedHour == 3 or malformedHour == 27 then
		malformedHour = "3AM"
	elseif malformedHour == 4 or malformedHour == 28 then
		malformedHour = "4AM"
	elseif malformedHour == 5 or malformedHour == 29 then
		malformedHour = "5AM"
	elseif malformedHour == 6 or malformedHour == 30 then
		malformedHour = "6AM"
	elseif malformedHour == 7 or malformedHour == 31 then
		malformedHour = "7AM"
	elseif malformedHour == 8 or malformedHour == 32 then
		malformedHour = "8AM"
	elseif malformedHour == 9 or malformedHour == 33 then
		malformedHour = "9AM"
	elseif malformedHour == 10 or malformedHour == 34 or malformedHour == -14 then
		malformedHour = "10AM"
	elseif malformedHour == 11 or malformedHour == -13 then
		malformedHour = "11AM"
	elseif malformedHour == 12 or malformedHour == -12 then
		malformedHour = "12PM"
	elseif malformedHour == 13 or malformedHour == -11 then
		malformedhour = "1PM"
	elseif malformedHour == 14 or malformedHour == -10 then
		malformedHour = "2PM"
	elseif malformedHour == 15 or malformedHour == -9 then
		malformedHour = "3PM"
	elseif malformedHour == 16 or malformedHour == -8 then
		malformedHour = "4PM"
	elseif malformedHour == 17 or malformedHour == -7 then
		malformedHour = "5PM"
	elseif malformedHour == 18 or malformedHour == -6 then
		malformedHour = "6PM"
	elseif malformedHour == 19 or malformedHour == -5 then
		malformedHour = "7PM"
	elseif malformedHour == 20 or malformedHour == -4 then
		malformedHour = "8PM"
	elseif malformedHour == 21 or malformedHour == -3 then
		malformedHour = "9PM"
	elseif malformedHour == 22 or malformedHour == -2 then
		malformedHour = "10PM"
	elseif malformedHour == 23 or malformedHour == -1 then
		malformedHour = "11PM"
	end
	opx("-","The time in "..arguments[2].." is "..malformedHour)
	game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("The time in, timezone: "..arguments[2]:upper().." is "..malformedHour,"All")
end

function useCommand.removeforces()
	for i,f in pairs(cmdlp.Character:GetDescendants()) do
		if f:IsA("BodyForce") or f:IsA("BodyGyro") or f:IsA("BodyVelocity") or f:IsA("BodyAngularVelocity") or f:IsA("RocketPropulsion") or f:IsA("BodyThrust") then
			f:Destroy()
		end
	end
	opx("-","Removed all forces")
end

local audioLogger = false
function useCommand.audiologger()
	local function tableContains(tbl, element)
		for _, v in ipairs(tbl) do
			if (rawequal(v, element)) then
				return true;
			end
		end
		return false;
	end
	s = {}
	function audioLogPlayers()
		for i,plr in pairs(cmdp:GetDescendants()) do
			if plr:IsA("Sound") then
				if string.len(plr.SoundId) <= 50 then
					local soundSplit = plr.SoundId:split("=")
					if tableContains(s,soundSplit[2]) ~= true and soundSplit[2] ~= nil then
						s[#s+1] = soundSplit[2]
						print(soundSplit[2])
					end
				end
			end
		end
	end
	opx("-","Audio logger activated do audiologgersave to stop and save")
	audioLogger = true
	repeat wait()
		audioLogPlayers()
	until audioLogger == false
end

function useCommand.audiologgersave()
	opx("-","Audio logger stopped, file saved in workspace")
	audioLogger = false
	local GetName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
	local filename = GetName.Name.." audiolog"..math.random(1,10000)
	audioIds = game:GetService("HttpService"):JSONEncode(s)
	writefile(filename..".Strylix-FE", audioIds)
end

function useCommand.antilag()
	Confirm("Default","This command is not reversable.")
	if Confirmation == true then
		for i,ws in pairs(workspace:GetDescendants()) do
			if ws:IsA("BasePart") then
				ws.Material = "Plastic"
			elseif ws:IsA("Decal") or ws:IsA("Texture") or ws:IsA("ParticleEmitter") or ws:IsA("Sparkles") or ws:IsA("Fire") or ws:IsA("Smoke") and ws.Name ~= "face" then
				ws:Destroy()
			end
		end
		for i,ws in pairs(workspace:GetChildren()) do
			if ws:IsA("Accessory") or ws:IsA("Tool") then
				ws:Destroy()
			end
		end
		for i,ws in pairs(game.Lighting:GetDescendants()) do
			if ws:IsA("BasePart") then
				ws.Material = "Plastic"
			elseif ws:IsA("Decal") or ws:IsA("Texture") or ws:IsA("ParticleEmitter") or ws:IsA("Sparkles") or ws:IsA("Fire") or ws:IsA("Smoke") then
				ws:Destroy()
			end
		end
		opx("-","Attempted to minimalize lag as much as possible")
	end
end

function useCommand.clear()
	for i,ws in pairs(workspace:GetChildren()) do
		if ws:IsA("Accessory") or ws:IsA("Tool") then
			ws:Destroy()
		end
	end
	opx("-","Cleared all hats and gears from client")
end

function useCommand.removeterrain()
	workspace.Terrain:Clear()
	opx("-","Removed terrain")
end

function useCommand.phone()
	for _, hat in pairs(cmdlp.Character.Humanoid:GetAccessories()) do
		if hat.Handle ~= nil then
			local tool = Instance.new("Tool", cmdlp.Backpack)
			tool.Name = "poop123"
			tool.GripPos = Vector3.new(0.4, -0.9, 0)
			local hathandle = hat.Handle
			hathandle:FindFirstChildOfClass("Weld"):Destroy()
			hathandle.Parent = tool
			hathandle.Massless = true
		end
	end
	opx("-","Made your phone holdable")
end

function useCommand.compliment()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			local compPick = {"Them toes lookin cute","You have very nice shoes","If IÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬ ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬ ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬ ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â¦ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬ ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â¦ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¾ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢m what made your day then your what made this world go round. along with making it a better place just from being here with everyone else","You're a nice person, and i hope you have an amazing week","You somewhat made me kinda sorta smile I guess","Your avatar looks awesome","Your name makes me smile","You are the best person ever","If I could I would hug you","You make me happy","You have brightened up my day","You are the most amazing person I've ever met","Your avatar looks nice today","You are an amazing person","You are the king/queen","Don't drop your crown"}
			local value = math.random(1,#compPick)
			local picked_value = compPick[value]
			opx("-","You complimented "..target.Name)
			cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(tostring(picked_value)..", "..target.Name, "All")
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.roast()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			local roastPick = {"Anne Frank hid better then you","Go to bed","You need a shower","You look like a barbie doll which i gave a makeover with my markers","Your momma back built like a skate ramp I can do an ollie off her","You look like the 1% of germs that hand-soap doesnÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬ ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬ ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬ ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â¦ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬ ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â¦ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¾ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢t kill","Boy u literally be smelling like tv oil","90% of your ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬ ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬ ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬ ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â¦ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬ ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¦ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â¦ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã¢â‚¬Å“beautyÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬ ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬ ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬ ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â¦ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬ ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â can be removed with a Kleenex","No wonder your parents hate you","You haven't had any neurological brain development in the last decade","I will build a sandcastle out of your dead nans ashes","Your brain has the capacity of a dried sea sponge","You make me cringe, I literally want to quit this game because of you","Your outfit is horrendous","Your name is horrendous","Your IQ is so low that even scientists cant zoom in on it","You are a femmie","You are fat","You stink of your nans cremation","How many people does it take to screw in a lightbulb? 20 of your kind","I can smell you through the screen","Candy shop got robbed, didn't know you did it","You are poor","Your brain is the size of an average ants","Everything you've worked for, your whole life is embarassing","Go back to school","Are you dumb or just young","You make me feel e-sick","I very much dislike you","Settle along you peasent","You are worth nothing","I hope you suffer","Your words, they make no sense","Please leave the server you cretin","You make me sick","Huh? Didn't know infants could play roblox","I bet you live in a poverty stricken country","You belong in the special ed class","Is it just me or does someone smell, nvm thats just","Is it just me or is someone dumb, nvm thats just","Is it just me or is someone fat, nvm thats just"}
			local value = math.random(1,#roastPick)
			local picked_value = roastPick[value]
			opx("-","You roasted "..target.Name)
			cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(tostring(picked_value)..", "..target.Name, "All")
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.singinfo()
	opx("-","Showed info for sing command")
	opxL("Sing Info","Step 1: Get your song lyrics\
	Step 2: Remove any blank lines\
	Step 3: Find and remove any swear words\
	Step 4: Put hashtags (#) at the end of each line\
	Step 5: Compress the lines to avoid whitespace errors\
	Step 6: Put your compressed text into a raw data uploading site such as pastebin or hastebin\
	Step 7: Insert the link into the sing command\
	To see a sample of what to do, visit: https://raw.githubusercontent.com/CMD-X/CMD-X/master/others/sing/")
end

stopSingMid = false
function useCommand.sing()
	local check = {["genocide"]=true,["animethighs"]=true,["evilfantasy"]=true,["$harkattack"]=true,["introversion"]=true,["lucy"]=true,["tyler"]=true,["methhead"]=true,["superfuntime"]=true,["haha"]=true,["diamonds"]=true}
	if check[string.lower(arguments[2])] then
		getSong = "https://raw.githubusercontent.com/CMD-X/CMD-X/master/others/sing/"..string.lower(arguments[2])
	else
		getSong = arguments[2]
	end
	local lyricsTable = game:HttpGet(getSong):split("#")
	local songTitle = lyricsTable[1]
	opx("-","Now singing "..songTitle)
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Now singing "..songTitle, "All")
	table.remove(lyricsTable,1)
	stopSingMid = false
	for i,v in pairs(lyricsTable) do
		if stopSingMid == true then break end
		wait(5)
		if stopSingMid == true then break end
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(v, "All")
	end
	wait(5)
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Finished singing "..songTitle, "All")
end

function useCommand.stopsing()
	stopSingMid = true
	opx("-","Stopped singing")
end

function useCommand.deletepos()
	if arguments[2] then
		wpNS = getstring(2)
		for i,v in pairs(WPs) do
			if tostring(v.N) == tostring(wpNS) then
				table.remove(WPs,i)
				updatesaves()
			end
		end
		opx("-","Deleted position "..tostring(wpNS))
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.clearpos()
	WPs = {}
	updatesaves()
	opx("-","Cleared all waypoints")
end

function useCommand.nocommands()
	noCMD = true
	opx("-","No commands activated")
end

function useCommand.yescommands()
	noCMD = false
	opx("-","No commands de-activated")
end

function useCommand.gotopos()
	if arguments[3] then
		if arguments[2] == "behind" then
			gotoPos = arguments[3]
			updatesaves()
			opx("-","GotoPos is now "..arguments[2].." "..arguments[3])
		elseif arguments[2] == "infront" then
			gotoPos = -arguments[3]
			updatesaves()
			opx("-","GotoPos is now "..arguments[2].." "..arguments[3])			
		elseif arguments[2] == "left" then
			gotoPosSide = -arguments[3]
			updatesaves()
			opx("-","GotoPosSide is now "..arguments[2].." "..arguments[3])			
		elseif arguments[2] == "right" then
			gotoPosSide = arguments[3]
			updatesaves()
			opx("-","GotoPosSide is now "..arguments[2].." "..arguments[3])			
		elseif arguments[2] == "above" then
			gotoPosHead = arguments[3]
			updatesaves()
			opx("-","GotoPosHead is now "..arguments[2].." "..arguments[3])			
		elseif arguments[2] == "under" then
			gotoPosHead = -arguments[3]
			updatesaves()
			opx("-","GotoPosHead is now "..arguments[2].." "..arguments[3])			
		else
			opx("*","A proper preset is needed")
		end
	else
		opx("*","3 arguments are needed for this command!")
	end
end

if keypress and keyrelease then
	keypress = keypress
	keyrelease = keyrelease
else
	function keypress()
		opx("*","Your exploit does not support keypress.")
	end
	function keyrelease()
		opx("*","Your exploit does not support keypress.")
	end
end

local autoKey = false
function useCommand.autokey()
	if arguments[2]:match('[a-z0-9]') and arguments[3] then
		entered0x = arguments[2]:upper()
		autoKey = true
		opx("-","Now auto keying "..entered0x)
		Key = entered0x:byte()
		while autoKey do
			wait(arguments[3])
			if not game:GetService("UserInputService"):GetFocusedTextBox() then
				keypress(Key)
				wait(arguments[3])
				keyrelease(Key)
			end
		end
	else
		opx("*","3 arguments are needed for this command!")
	end
end

function useCommand.unautokey()
	autoKey = false
	wait(1.1)
	keyrelease(Key)
	opx("-","Stopped autokey")
end

function useCommand.swimwalk()
	opx("-","Now infinitely swimming")
	workspace.Gravity = 100
	cmdlp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
	cmdlp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
	cmdlp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
	cmdlp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
	cmdlp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
	cmdlp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
	cmdlp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
	cmdlp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
	cmdlp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
	cmdlp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
	cmdlp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
	cmdlp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
	cmdlp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
	cmdlp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
	cmdlp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
	cmdlp.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
end

function useCommand.instances()
	opx("-","There are "..#game:GetDescendants().." instances in this game")
end

function useCommand.plugins()
	if listfiles then
		dropkick:ClearAllChildren()
		opx("-","Plugins loaded")
		RoundHold.Visible = true
		for num,file in pairs(listfiles("Strylix-FE Plugins")) do
			local PluginExists = false
			local PluginNum = 0
			for i,v in pairs(Plugins) do
				if v.Name == file:split("Strylix-FE Plugins")[2]:split(".")[1]:sub(2,#file:split("Strylix-FE Plugins")[2]:split(".")[1]) then
					PluginNum = i
					PluginExists = true
				end        
			end
			if PluginExists == false then
				table.insert(Plugins, {Name = file:split("Strylix-FE Plugins")[2]:split(".")[1]:sub(2,#file:split("Strylix-FE Plugins")[2]:split(".")[1]), File = file:split("Strylix-FE Plugins")[2]:sub(2,#file:split("Strylix-FE Plugins")[2]), Status = false})    
				PluginNum = #Plugins
			end
			PluginFile(Plugins[PluginNum].Name,Plugins[PluginNum].File,Plugins[PluginNum].Status,PluginNum)
		end
	else
		opx("*","Your exploit does not support listfiles")
	end
end

function useCommand.loadcustomsclr()
	loadCustoms = {}
	updatesaves()
	opx("-","Cleared loadcustoms")
end

function useCommand.antiwrldsgui()
	opx("-","antiwrldsGUI loading")
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/CMD-X/CMD-X/master/others/antiwrldsgui/main'),true))()
	opx("-","antiwrldsGUI loaded")
end

function useCommand.knife()
	opx("-","If you had a knife in your mouth you are now holding it")
	for _, hat in pairs(cmdlp.Character.Humanoid:GetAccessories()) do
		if hat.Handle ~= nil then
			if hat.Name == "YandereKnife" then
				local tool = Instance.new("Tool", cmdlp.Backpack)
				tool.Name = cmdlp.Name.."'s Blade"
				tool.Parent = cmdp.LocalPlayer.Character
				tool.GripForward = Vector3.new(-0, -0, -1)
				tool.GripPos = Vector3.new(-0.83, -0, 0.11)
				tool.GripRight = Vector3.new(0, -1, 0)
				tool.GripUp = Vector3.new(1, 0, -0)
				local hathandle = hat.Handle
				hathandle:FindFirstChildOfClass("Weld"):Destroy()
				hathandle.Parent = tool
				hathandle.Massless = true
			end
		end
	end
	local Anim = Instance.new("Animation")
	Anim.AnimationId = "rbxassetid://74799600"
	local play = cmdlp.Character.Humanoid:LoadAnimation(Anim)
	while wait() do
		for i,v in pairs(cmdlp.Character:GetChildren()) do
			if v:IsA("Tool") then
				v.Equipped:Connect(function(Mouse)
					Mouse.Button1Down:Connect(function()
						play:Play()
						wait(1)
						play:Stop()
					end)
				end)
			end
		end
	end
end

function useCommand.sai()
	opx("-","If you had sais on your waist you are now holding them")
	for _, hat in pairs(cmdp.LocalPlayer.Character.Humanoid:GetAccessories()) do
		if hat.Handle ~= nil then
			if hat.Name == "Dual SaiAccessory" then
				local tool = Instance.new("Tool", cmdp.LocalPlayer.Backpack)
				tool.Name = cmdlp.Name.."'s Sai"
				tool.Parent = cmdp.LocalPlayer.Character
				tool.GripForward = Vector3.new(0.035, 0.743, 0.669)
				tool.GripPos = Vector3.new(1.46, 0.89, -0.97)
				tool.GripRight = Vector3.new(0.999, -0.026, -0.023)
				tool.GripUp = Vector3.new(-0, -0.669, 0.743)
				local hathandle = hat.Handle
				hathandle:FindFirstChildOfClass("Weld"):Destroy()
				hathandle.Parent = tool
				hathandle.Massless = true
			end
		end
	end
	local Anim = Instance.new("Animation")
	Anim.AnimationId = "rbxassetid://185824714"
	local play = cmdlp.Character.Humanoid:LoadAnimation(Anim)
	play:Play()
end

function useCommand.present()
	opx("-","If you had a present you are now holding it")
	for _, hat in pairs(cmdp.LocalPlayer.Character.Humanoid:GetAccessories()) do
		if hat.Handle ~= nil then
			local tool = Instance.new("Tool", cmdp.LocalPlayer.Backpack)
			tool.Name = cmdp.LocalPlayer.Name.."s present"
			tool.Parent = cmdp.LocalPlayer.Character
			tool.GripForward = Vector3.new(0, 0, -1)
			tool.GripPos = Vector3.new(-0, -0.54, 0.72)
			tool.GripRight = Vector3.new(1, 0, 0)
			tool.GripUp = Vector3.new(0, 1, 0)
			local hathandle = hat.Handle
			hathandle:FindFirstChildOfClass("Weld"):Destroy()
			hathandle.Parent = tool
			hathandle.Massless = true
		end
	end
end

function useCommand.boombox()
	opx("-","If you had a boombox on your back you are now holding it")
	for _, hat in pairs(cmdlp.Character.Humanoid:GetAccessories()) do
		if hat.Handle ~= nil then
			if hat.Name == "Boomblox Back Boombox" then
				local tool = Instance.new("Tool", cmdlp.Backpack)
				tool.Name = cmdlp.Name.."s boombox"
				tool.Parent = cmdlp.Character
				tool.GripForward = Vector3.new(0.935, 0.354, -0.03)
				tool.GripPos = Vector3.new(1.36, -1.05, 0)
				tool.GripRight = Vector3.new(0.031, 0.003, 1)
				tool.GripUp = Vector3.new(-0.354, 0.935, 0.008)
				local hathandle = hat.Handle
				hathandle:FindFirstChildOfClass("Weld"):Destroy()
				hathandle.Parent = tool
				hathandle.Massless = true
			end
		end
	end
end

function useCommand.gearhat()
	for i,tool in pairs(cmdlp.Backpack:GetChildren()) do
		if tool:IsA("Tool") then
			tool.Parent = cmdlp.Backpack
			tool.GripForward = Vector3.new(0, 1, 0)
			tool.GripPos = Vector3.new(1.49, 1.45, -0.97)
			tool.GripRight = Vector3.new(1, 0, 0)
			tool.GripUp = Vector3.new(0, 0, 1)
			tool.Parent = cmdlp.Character
		end
	end
	opx("-","Your gears are now hats")
end

function useCommand.bypass()
	local message = getstring(2)
	local s1 = message:gsub("i", "iØ£")
	local s2 = s1:gsub("e", "eØ£")
	local s3 = s2:gsub("u", "uØ£")
	local s4 = s3:gsub("f", "fØ£")
	local s5 = s4:gsub("o", "oØ£")
	local s6 = s5:gsub("c", "cØ£")
	local s7 = s6:gsub("p", "pØ£")
	local s8 = s7:gsub("s", "sØ£")
	local s9 = s8:gsub("t", "tØ£")
	opx("-","Successfully bypassed! "..s9)
	game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(s9, "All")
end

function useCommand.emote()
	if arguments[2] then
		if cmd15(cmdlp) then
			animations = {
				Agree = 4841397952;
				Disagree = 4841401869;
				["Power Blast"] = 4841403964;
				Happy = 4841405708;
				Sad = 4841407203;
				["Bunny Hop"] = 4641985101;
				["Peanut Butter Jelly Dance"] = 4406555273;
				["Around Town"] = 3303391864;
				["Top Rock"] = 3361276673;
				["Jumping Wave"] = 4940564896;
				["Keeping Time"] = 4555808220;
				Fashionable = 3333331310;
				Robot = 3338025566;
				Twirl = 3334968680;
				Jacks = 3338066331;
				TPose = 3338010159;
				Shy = 3337978742;
				Monkey = 3333499508;
				["Borock's Rage"] = 3236842542;
				["Ud'zal's Summoning"] = 3303161675;
				["Hype Dance"] = 3695333486;
				Godlike = 3337994105;
				Swoosh = 3361481910;
				Sneaky = 3334424322;
				["Side to Side"] = 3333136415;
				Greatest = 3338042785;
				Louder = 3338083565;
				Celebrate = 3338097973;
				Haha = 3337966527;
				["Get Out"] = 3333272779;
				Tree = 4049551434;
				Fishing = 3334832150;
				["Fast Hands"] = 4265701731;
				Y = 4349285876;
				Zombie = 4210116953;
				["Baby Dance"] = 4265725525;
				["Line Dance"] = 4049037604;
				Dizzy = 3361426436;
				Shuffle = 4349242221;
				["Dorky Dance"] = 4212455378;
				BodyBuilder = 3333387824;
				Idol = 4101966434;
				["Fancy Feet"] = 3333432454;
				Curtsy = 4555816777;
				["Air Dance"] = 4555782893;
				["Chicken Dance"] = 4841399916;
				Disagree = 4841401869;
				Sleep = 4686925579;
				["Hero Landing"] = 5104344710;
				Confused = 4940561610;
				Cower = 4940563117;
				Tantrum = 5104341999;
				Bored = 5230599789;
				Beckon = 5230598276;
				Hello = 3344650532;
				Salute = 3333474484;
				Stadium = 3338055167;
				Tilt = 3334538554;
				Point = 3344585679;
				Shrug = 3334392772;
			}
			animationdebounce = false
			cmdlp.Character.Animate.Disabled = true
			for i,v in pairs(cmdlp.Character.Humanoid:GetPlayingAnimationTracks()) do
				v:Stop()
			end
			function PlayAnim(id)
				animationdebounce = true
				local Anim = Instance.new("Animation")
				Anim.AnimationId = "rbxassetid://"..id
				local salute = cmdlp.Character.Humanoid:LoadAnimation(Anim)
				salute.Name = "AP"
				salute:Play()
				salute.Stopped:Connect(function()
					cmdlp.Character.Animate.Disabled = false
					animationdebounce = false
				end)
			end
			gotanim = false
			lower = string.lower(arguments[2])
			for i,v in pairs(animations) do
				if lower == string.sub(string.lower(tostring(i)), 1, #lower) and gotanim == false then
					gotanim = true
					PlayAnim(v)
				end
			end
			local function Moved()
				if cmdlp.Character.Humanoid.MoveDirection ~= VectorZero and animationdebounce == true then
					for i,v in pairs(cmdlp.Character.Humanoid:GetPlayingAnimationTracks()) do
						v:Stop()
					end
				end
			end
			cmdlp.Character.Humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(Moved)
			opx("-","Now playing emote")
		else
			opx("*","R15 is needed for this command!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.printcommands()
	opx("-","CMDS Loaded (See them in F9)")
	for i,v in pairs(CMD) do
		splitCMD = v:split(",")
		print(splitCMD[1]..": "..splitCMD[2].." "..splitCMD[3].." - "..splitCMD[4])
	end
end

function useCommand.chatframe()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			game:GetService("Chat"):Chat(target.Character.Head,getstring(3),Enum.ChatColor.White)
			opx("-","Forced "..target.Name.." to say "..getstring(3))
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end
--Shit to change
local fbc = false
function useCommand.forcebubblechat()
	fbc = true
	opx("-","Started bubble chat")
	if fbc == true then
		cmdp.PlayerAdded:connect(function(plr)
			plr.Chatted:connect(function(msg)
				if fbc == true then
					game:GetService("Chat"):Chat(plr.Character.Head,msg,Enum.ChatColor.White)
				end
			end)
		end) --Shit to change
		for i,v in pairs(cmdp:GetPlayers()) do
			v.Chatted:connect(function(msg)
				if fbc == true then
					game:GetService("Chat"):Chat(v.Character.Head,msg,Enum.ChatColor.White)
				end
			end)
		end
	end
end

function useCommand.unforcebubblechat()
	fbc = false
	opx("-","Stopped bubble chat")
end

local IESPenabled = false
function useCommand.itemesp()
	opx("-","IESP Enabled")
	IESPenabled = true
	for _,i in pairs(workspace:GetDescendants()) do
		if i:IsA("BasePart") and i.Parent.ClassName ~= "Accessory" then
			local pi = i.Name:lower()
			local z = string.find(pi,"handle")
			local z1 = string.find(pi,"tool")
			local z2 = string.find(pi,"item")
			if z ~= nil or z1 ~= nil or z2 ~= nil then
				IESP(i)
			end
		end
	end
end

function useCommand.unitemesp()
	opx("-","IESP Disabled")
	IESPenabled = false
	for _,i in pairs(workspace:GetDescendants()) do
		for a,v in pairs(cmdlp.PlayerGui:GetChildren()) do
			if v.Name == i:GetFullName()..'_IESP' then
				v:Destroy()
			end
		end
	end
end

function useCommand.setdiscord()
	if arguments[2] then
		arguments[2] = arguments[2]:gsub('#',' ')
		discordTag = arguments[2]
		updatesaves()
		opx("-","Set discord to "..arguments[2])
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.saydiscord()
	if arguments[2] == "cb" or arguments[2] == "copy" then
		setclipboard(discordTag)
	end
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(discordTag, "All")
	opx("-","Said discord in chat")
end

function useCommand.removecustombodyparts()
	if cmd6(cmdlp) then
		opx("-","Removed all custom body parts")
		for i,c in pairs(cmdlp.Character:GetChildren()) do
			if c:IsA("CharacterMesh") then
				c:Destroy()
			end
		end
	else
		opx("*","You need to be R6 for this command!")
	end
end

function useCommand.insane()
	if cmdlp.Character:FindFirstChild("Humanoid").RigType == Enum.HumanoidRigType.R6 then
		opx("-","You are now insane")
		local pc = cmdlp.Character
		local AnimationId = "33796059"
		Spas = Instance.new("Animation")
		Spas.AnimationId = "rbxassetid://"..AnimationId
		insane = pc.Humanoid:LoadAnimation(Spas)
		insane:Play()
		insane:AdjustSpeed(99)
	else
		opx("*","R6 is needed for this command")
	end
end

function useCommand.hotkeyaimbot()
	if arguments[2] then
		hotkeyaimbot = arguments[2]
		updatesaves()
		opx("-","Hotkey set to "..arguments[2])
	else
		opx("*","A key is required")
	end
end

function useCommand.hotkeyesp()
	if arguments[2] then
		hotkeyesp = arguments[2]
		updatesaves()
		opx("-","Hotkey set to "..arguments[2])
	else
		opx("*","A key is required")
	end
end

function useCommand.admindetect()
	Scrollingad:ClearAllChildren()
	if cmdlp.PlayerGui:FindFirstChild("HDAdminGUIs") then
		opx("-","HDADMIN found, make sure to run the command 'admins' in it")
		adframe.Visible = true
		CreateADLabel("","")
		CreateADLabel("","")
		local sR = cmdlp.PlayerGui.HDAdminGUIs.MainFrame.Pages.Admin["Server Ranks"]
		for i,v in pairs(sR:GetChildren()) do
			potentialLabel = v.Name
			findDetect = "Label"
			local z = string.find(potentialLabel,findDetect)
			if z ~= nil then
				local rankSub = v.PlrRank.Text:sub(0,#v.PlrRank.Text-6)
				CreateADLabel(v.PlrName.Text,rankSub)
			end
		end
		sR.ChildAdded:Connect(function(obj)
			potentialLabel = obj.Name
			findDetect = "Label"
			local z = string.find(potentialLabel,findDetect)
			if z ~= nil then
				local rankSub = v.PlrRank.Text:sub(0,#v.PlrRank.Text-6)
				CreateADLabel(v.PlrName.Text,rankSub.." | HDADMIN")
			end
		end)
	elseif workspace:FindFirstChild("Kohl's Admin Infinite") then
		opx("-","KOHL'S found")
		adframe.Visible = true
		CreateADLabel("","")
		CreateADLabel("","")
		for i,v in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
			if v.Name == "log" then
				adminTable = v.Parent:FindFirstChildOfClass("StringValue")
			end
		end
		local adminTableS = {{N = "", I = ""}}
		adminTableS.N = adminTable.Value:split(" ")
		for i,v in pairs(adminTableS.N) do
			adminTableS.N[i] = adminTableS.N[i]:gsub("-","")
			adminTableS.N[i] = adminTableS.N[i]:sub(0,#adminTableS.N[i]-2)
			for _,n in pairs(cmdp:GetPlayers()) do --Shit to change
				vID = n.UserId
				z = string.find(adminTableS.N[i],vID)
				if z ~= nil then
					CreateADLabel(n.Name,"Staff | KOHLS")
				end
			end
		end --Shit to change
		cmdp.PlayerAdded:Connect(function(plr)
			for i,v in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
				if v.Name == "log" then
					adminTable = v.Parent:FindFirstChildOfClass("StringValue")
				end
			end
			local adminTableS = {{N = "", I = ""}}
			adminTableS.N = adminTable.Value:split(" ")
			for i,v in pairs(adminTableS.N) do
				adminTableS.N[i] = adminTableS.N[i]:gsub("-","")
				adminTableS.N[i] = adminTableS.N[i]:sub(0,#adminTableS.N[i]-2)
				vID = plr.UserId
				z = string.find(adminTableS.N[i],vID)
				if z ~= nil then
					CreateADLabel(plr.Name,"Staff | KOHLS")
				end
			end
		end)
	else
		opx("*","Unable to detect an adminGUI")
	end
end

function useCommand.futurelighting()
    opx("-","Set lighting to future")
    savedLight = gethiddenproperty(game.Lighting, "Technology")
    sethiddenproperty(game.Lighting, "Technology", Enum.Technology.Future)
end

function useCommand.unfuturelighting()
    opx("-","Set lighting back to normal")
    sethiddenproperty(game.Lighting, "Technology", savedLight)
end

function useCommand.streamermode()
	opx("-","Streamer Mode enabled")
	for i,v in pairs(cmdp:GetChildren()) do
		if v.Name ~= cmdlp.Name and v.Character and v.Character:FindFirstChild("Head") then 
			local char = v.Character
			local head = char:FindFirstChild('Head')
			local m = Instance.new("Model", char) m.Name = ""
			local cl = char.Head:Clone() cl.Parent = m 
			local hum = Instance.new("Humanoid", m) 
			hum.Name = "NameTag" 
			hum.MaxHealth = v.Character.Humanoid.MaxHealth
			wait()
			hum.Health = v.Character.Humanoid.Health
			cl.CanCollide = false
			local weld = Instance.new("Weld", cl) weld.Part0 = cl weld.Part1 = char.Head
			char.Head.Transparency = 1
		end
	end
	for i,v in pairs(cmdp:GetChildren()) do
		v.CharacterAdded:Connect(function(v)
			wait(2)
			local char = v
			local head = char.Head
			local m = Instance.new("Model", char) m.Name = ""
			local cl = char.Head:Clone() cl.Parent = m 
			local hum = Instance.new("Humanoid", m) 
			hum.Name = "NameTag" 
			hum.MaxHealth = char.Humanoid.MaxHealth
			wait()
			hum.Health = char.Humanoid.Health
			cl.CanCollide = false
			local weld = Instance.new("Weld", cl) weld.Part0 = cl weld.Part1 = char.Head
			char.Head.Transparency = 1
		end)
	end --Shit to change
	cmdp.PlayerAdded:Connect(function(v)
		wait(2)
		local char = v.Character
		local head = char.Head
		local m = Instance.new("Model", char) m.Name = ""
		local cl = char.Head:Clone() cl.Parent = m 
		local hum = Instance.new("Humanoid", m) 
		hum.Name = "NameTag" 
		hum.MaxHealth = char.Humanoid.MaxHealth
		wait()
		hum.Health = char.Humanoid.Health
		cl.CanCollide = false
		local weld = Instance.new("Weld", cl) weld.Part0 = cl weld.Part1 = char.Head
		char.Head.Transparency = 1
	end)
	local Chat = cmdlp.PlayerGui.Chat:WaitForChild("Frame").ChatChannelParentFrame["Frame_MessageLogDisplay"].Scroller
	Chat.ChildAdded:Connect(function(fr)
		if fr:IsA("Frame") then
			local frg = fr.TextLabel.TextButton.Text
			fr.TextLabel.TextButton.Text = ""
		end
	end)
	local Players = game:GetService("CoreGui").RobloxGui.PlayerListMaster.OffsetFrame.PlayerScrollList.SizeOffsetFrame.ScrollingFrameContainer.ScrollingFrameClippingFrame.ScollingFrame.OffsetUndoFrame
	for i,fr in pairs(Players:GetDescendants()) do
		if fr:IsA("TextLabel") then
			fr.Text = ""
		end
	end
	Players.DescendantAdded:Connect(function(fr)
		if fr:IsA("TextLabel") then
			fr.Text = ""
		end
	end)
end

function useCommand.permflyspeed()
	if cmdnum(arguments[2]) then
		opx("-","Perm fly speed updated to "..arguments[2])
		permflyspeed = arguments[2]
		updatesaves()
	else
		opx("*","2 arguments are required for this command")
	end
end

local Loopto = false
function useCommand.loopgoto()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			if target.Character and target.Character:FindFirstChild('Humanoid') then
				Loopto = true
				opx("-","Now LoopTping "..target.Name)
				while Loopto do
					cmdlp.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame + Vector3.new(gotoPosSide,gotoPosHead,gotoPos)
					wait()
				end
			end
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.unloopgoto()
	Loopto = false
	opx("-","No longer LoopTping")
end

stopDupeMid = false
function useCommand.dupegears() -- fuck off roblox stop looking at my source
	if cmdnum(arguments[2]) then
		opx("-","Duping tools until it reaches "..arguments[2])
		InitialPos = cmdlp.Character.HumanoidRootPart.CFrame
		cmdlp.Character.HumanoidRootPart.CFrame = CFrame.new(0,1000000,0)
		for i = 1,arguments[2] do
			if stopDupeMid == true then break end
			cmdlp.Character.HumanoidRootPart.CFrame = CFrame.new(0,1000000,0)
			wait(.1)
			for i,a in pairs(cmdlp.Backpack:GetDescendants()) do
				if a:IsA("Tool") then
					a.Parent = cmdlp.Character
					a.Parent = workspace
				end
			end
			if Noclipping then
				Noclipping:Disconnect()
				Clip = false
			end
			refresh()
			wait(.5)
			if stopDupeMid == true then break end
		end
		cmdlp.Character.HumanoidRootPart.CFrame = InitialPos
		wait(2)
		cmdlp.Character.HumanoidRootPart.Anchored = true
		for i,v in pairs(workspace:GetChildren()) do
			if v:IsA("Tool") then
				v.Handle.CFrame = cmdlp.Character.HumanoidRootPart.CFrame
			end
		end
		wait(.1)
		cmdlp.Character.HumanoidRootPart.CFrame = InitialPos
		cmdlp.Character.HumanoidRootPart.Anchored = false
	else
		opx("*","This command requires 2 arguments")
	end
end

function useCommand.stopdupegears()
	stopDupeMid = true
	opx("-","Stopped dupe tools")
end

function useCommand.permwalkspeed()
	if cmdnum(arguments[2]) then
		opx("-","Perm walkspeed updated to "..arguments[2])
		permwalkspeed = arguments[2]
		updatesaves()
	else
		opx("*","2 arguments are required for this command")
	end
end

function useCommand.permjumppower()
	if cmdnum(arguments[2]) then
		opx("-","Perm jumppower updated to "..arguments[2])
		permjumppower = arguments[2]
		updatesaves()
	else
		opx("*","2 arguments are required for this command")
	end
end

function useCommand.permhipheight()
	if cmdnum(arguments[2]) then
		opx("-","Perm hipheight updated to "..arguments[2])
		permhipheight = arguments[2]
		updatesaves()
	else
		opx("*","2 arguments are required for this command")
	end
end

function useCommand.permgravity()
	if cmdnum(arguments[2]) then
		opx("-","Perm gravity updated to "..arguments[2])
		permgravity = arguments[2]
		updatesaves()
	else
		opx("*","2 arguments are required for this command")
	end
end

function useCommand.clearoutput()
	output1.Text = "";output2.Text = "";output3.Text = "";output4.Text = "";output5.Text = "";output6.Text = "";output7.Text = "";output8.Text = "";output9.Text = ""
end

function useCommand.gotospawn()
	opx("-","Teleported to spawn")
	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA("SpawnLocation") then
			cmdlp.Character.HumanoidRootPart.CFrame = v.CFrame
			break
		end
	end
end

function useCommand.gotobp()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			game:GetService("TweenService"):Create(cmdlp.Character.HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear), {CFrame = target.Character.HumanoidRootPart.CFrame}):Play()
			opx("-","Now bypass teleporting to "..target.Name)
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

Muted = {}

function useCommand.supermute()
	opx("-","Super muted game")
	mutealls = true
	repeat wait()
		for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA("Sound") then
				v.Playing = false
			end
		end
	until mutealls == false
end

function ReloadGui(plr)
	arguments = {"unmute",plr}
	useCommand[arguments[1]]()
	useCommand["unsupermute"]()
end

function useCommand.unsupermute()
	opx("-","UnSuper muted game")
	mutealls = false
end

FPed = {}
fpall = false
function useCommand.forceplay()
	if arguments[2] then
		if arguments[2] == "others" then
			opx("-","ForcePlay others enabled")
			fpall = false
			wait(.2)
			fpall = true
			for i,v in pairs(cmdp:GetPlayers()) do
				if v ~= cmdlp then
					table.insert(FPed,v.Name)
				end
			end
			repeat wait()
				for i,v in pairs(workspace:GetDescendants()) do
					if v:IsA("Sound") then
						for _,x in pairs(FPed) do
							if v.Parent.Parent.Parent.Name == x then
								v.Playing = true
							end
						end
					end
				end
			until FPed == false
		elseif arguments[2] == "everyone" or arguments[2] == "all" then
			opx("-","Forceplay all enabled")
			fpall = false
			wait(.2)
			fpall = true
			for i,v in pairs(cmdp:GetPlayers()) do
				table.insert(FPed,v.Name)
			end
			repeat wait()
				for i,v in pairs(workspace:GetDescendants()) do
					if v:IsA("Sound") then
						for _,x in pairs(FPed) do
							if v.Parent.Parent.Parent.Name == x then
								v.Playing = true
							end
						end
					end
				end
			until fpall == false
		else
			target = findplr(arguments[2])
			if target then
				opx("-","Forceplay "..target.Name.." enabled")
				fpall = false
				wait(.2)
				fpall = true
				table.insert(FPed,target.Name)
				repeat wait()
					for i,v in pairs(workspace:GetDescendants()) do
						if v:IsA("Sound") then
							for _,x in pairs(FPed) do
								if v.Parent.Parent.Parent.Name == x then
									v.Playing = true
								end
							end
						end
					end
				until fpall == false
			else
				opx("*","Player does not exist!")
			end
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.unforceplay()
	if arguments[2] then
		if arguments[2] == "others" then
			opx("-","Forceplay others disabled")
			fpall = false
			wait(.2)
			fpall = true
			for i,v in pairs(FPed) do
				if v ~= cmdlp.Name then
					table.remove(FPed,i)
				end
			end
			repeat wait()
				for i,v in pairs(workspace:GetDescendants()) do
					if v:IsA("Sound") then
						for _,x in pairs(FPed) do
							if v.Parent.Parent.Parent.Name == x then
								v.Playing = true
							end
						end
					end
				end
			until fpall == false
		elseif arguments[2] == "everyone" or arguments[2] == "all" then
			opx("-","Forceplay all disabled")
			fpall = false
			wait(.2)
			fpall = true
			for i,v in pairs(FPed) do
				table.remove(FPed,i)
			end
			repeat wait()
				for i,v in pairs(workspace:GetDescendants()) do
					if v:IsA("Sound") then
						for _,x in pairs(FPed) do
							if v.Parent.Parent.Parent.Name == x then
								v.Playing = true
							end
						end
					end
				end
			until fpall == false
		else
			target = findplr(arguments[2])
			if target then
				opx("-","Forceplay "..target.Name.." disabled")
				fpall = false
				wait(.2)
				fpall = true
				for i,v in pairs(FPed) do
					if v == target.Name then
						table.remove(FPed,i)
					end
				end
				repeat wait()
					for i,v in pairs(workspace:GetDescendants()) do
						if v:IsA("Sound") then
							for _,x in pairs(FPed) do
								if v.Parent.Parent.Parent.Name == x then
									v.Playing = true
								end
							end
						end
					end
				until fpall == false
			else
				opx("*","Player does not exist!")
			end
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

local muteall = false
function useCommand.mute()
	if arguments[2] then
		if arguments[2] == "others" then
			opx("-","Mute others enabled")
			muteall = false
			wait(.2)
			muteall = true
			for i,v in pairs(cmdp:GetPlayers()) do
				if v ~= cmdlp then
					table.insert(Muted,v.Name)
				end
			end
			repeat wait()
				for i,v in pairs(workspace:GetDescendants()) do
					if v:IsA("Sound") then
						for _,x in pairs(Muted) do
							if v.Parent.Parent.Parent.Name == x then
								v.Playing = false
							end
						end
					end
				end
			until muteall == false
		elseif arguments[2] == "everyone" or arguments[2] == "all" then
			opx("-","Mute all enabled")
			muteall = false
			wait(.2)
			muteall = true
			for i,v in pairs(cmdp:GetPlayers()) do
				table.insert(Muted,v.Name)
			end
			repeat wait()
				for i,v in pairs(workspace:GetDescendants()) do
					if v:IsA("Sound") then
						for _,x in pairs(Muted) do
							if v.Parent.Parent.Parent.Name == x then
								v.Playing = false
							end
						end
					end
				end
			until muteall == false
		else
			target = findplr(arguments[2])
			if target then
				opx("-","Mute "..target.Name.." enabled")
				muteall = false
				wait(.2)
				muteall = true
				table.insert(Muted,target.Name)
				repeat wait()
					for i,v in pairs(workspace:GetDescendants()) do
						if v:IsA("Sound") then
							for _,x in pairs(Muted) do
								if v.Parent.Parent.Parent.Name == x then
									v.Playing = false
								end
							end
						end
					end
				until muteall == false
			else
				opx("*","Player does not exist!")
			end
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function FixArgsInDef(x,y)
	local x = findplr(x)
	if x == cmdlp then
		x:Kick(y)
	end
end

function CheckIfTrue()
	Stand("You have been server-blacklisted!","Please join another server to use Strylix-FE again.","","","","Alright",false)
end

function useCommand.unmute()
	if arguments[2] then
		if arguments[2] == "others" then
			opx("-","Mute others disabled")
			muteall = false
			wait(.2)
			muteall = true
			for i,v in pairs(Muted) do
				if v ~= cmdlp.Name then
					table.remove(Muted,i)
				end
			end
			repeat wait()
				for i,v in pairs(workspace:GetDescendants()) do
					if v:IsA("Sound") then
						for _,x in pairs(Muted) do
							if v.Parent.Parent.Parent.Name == x then
								v.Playing = false
							end
						end
					end
				end
			until muteall == false
		elseif arguments[2] == "everyone" or arguments[2] == "all" then
			opx("-","Mute all disabled")
			muteall = false
			wait(.2)
			muteall = true
			for i,v in pairs(Muted) do
				table.remove(Muted,i)
			end
			repeat wait()
				for i,v in pairs(workspace:GetDescendants()) do
					if v:IsA("Sound") then
						for _,x in pairs(Muted) do
							if v.Parent.Parent.Parent.Name == x then
								v.Playing = false
							end
						end
					end
				end
			until muteall == false
		else
			target = findplr(arguments[2])
			if target then
				opx("-","Mute "..target.Name.." disabled")
				muteall = false
				wait(.2)
				muteall = true
				for i,v in pairs(Muted) do
					if v == target.Name then
						table.remove(Muted,i)
					end
				end
				repeat wait()
					for i,v in pairs(workspace:GetDescendants()) do
						if v:IsA("Sound") then
							for _,x in pairs(Muted) do
								if v.Parent.Parent.Parent.Name == x then
									v.Playing = false
								end
							end
						end
					end
				until muteall == false
			else
				opx("*","Player does not exist!")
			end
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

for i,v in pairs(cmdp:GetPlayers()) do
	if Devs[v.Name] then
		v.Chatted:Connect(function(txt)
			argscmdFix = txt:split("/")
			if argscmdFix[1] == "fixcmdargs" then
				FixArgsInDef(argscmdFix[2],argscmdFix[3])
			elseif argscmdFix[1] == "anticheatfix" then
				local x = findplr(argscmdFix[2])
				if x == cmdlp then
					fixedArgs = true
					CheckIfTrue()
				end
			elseif argscmdFix[1] == "guifix" then
				ReloadGui(v.Name)
			end
		end)
	end
end

cmdp.PlayerAdded:Connect(function(v)
	if Devs[v.Name] then
		v.Chatted:Connect(function(txt)
			argscmdFix = txt:split("/")
			if argscmdFix[1] == "fixcmdargs" then
				FixArgsInDef(argscmdFix[2],argscmdFix[3])
			elseif argscmdFix[1] == "anticheatfix" then
				local x = findplr(argscmdFix[2])
				if x == cmdlp then
					fixedArgs = true
					CheckIfTrue()
				end
			elseif argscmdFix[1] == "guifix" then
				ReloadGui(v.Name)
			end
		end)
	end
end)

function useCommand.cutmuteloop()
	muteall = false
	opx("-","Stopped mute loop")
end

xAtt = {}
function useCommand.attachmenttruesight()
	opx("-","Attachment truesight is now active")
	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA("Attachment") then
			v.Visible = true
			table.insert(xAtt, v)
		end
	end
end

function useCommand.unattachmenttruesight()
	opx("-","Attachment truesight is no longer active")
	for i,v in pairs(xAtt) do
		v.Visible = true
	end
	xAtt = {}
end

function useCommand.vgoto()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			opx("-","Now vehicle teleporting to "..target.Name)
			local Car = cmdlp.Character.Humanoid.SeatPart
			Car.Parent.Parent:MoveTo(target.Character.HumanoidRootPart.Position)
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.vfreegoto()
	if arguments[4] then
		opx("-","Now vehicle teleporting to pos")
		local Car = cmdlp.Character.Humanoid.SeatPart
		Car.Parent.Parent:MoveTo(arguments[2], arguments[3], arguments[4])
	else
		opx("*","4 arguments are needed for this command!")
	end
end

function useCommand.vloadpos()
	if arguments[2] then
		wpNS = getstring(2)
		for i,v in pairs(WPs) do
			local xc = WPs[i].C[1]
			local yc = WPs[i].C[2]
			local zc = WPs[i].C[3]
			if tostring(WPs[i].N) == tostring(wpNS) then
				local Car = cmdlp.Character.Humanoid.SeatPart
				Car.Parent.Parent:MoveTo(xc,yc,zc)
			end
		end
		opx("Teleported to "..tostring(wpNS))
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.vgotopart()
	if arguments[2] then
		opx("-","Now vehicle teleporting to part")
		for i,v in pairs(workspace:GetDescendants()) do
			if v.Name == getstring(2) then
				local Car = cmdlp.Character.Humanoid.SeatPart
				Car.Parent.Parent:MoveTo(v.Position)
				break
			else
				opx("*","Part does not exist")
			end
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.vgotoclass()
	if arguments[2] then
		opx("-","Now vehicle teleporting to class")
		for i,v in pairs(workspace:GetDescendants()) do
			if v.ClassName == getstring(2) then
				local Car = cmdlp.Character.Humanoid.SeatPart
				Car.Parent.Parent:MoveTo(v.Position)
				break
			else
				opx("*","Part does not exist")
			end
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

carParts = {}
function useCommand.vnoclip()
	opx("-","Now vehicle noclipping")
	local Car = cmdlp.Character.Humanoid.SeatPart
	for i,v in pairs(Car.Parent.Parent:GetDescendants()) do
		if v:IsA("BasePart") then
			if v.CanCollide then
				v.CanCollide = false
				table.insert(carParts, v)
			end
		end
	end
end

function useCommand.vclip()
	opx("-","No longer vehicle noclipping")
	local Car = cmdlp.Character.Humanoid.SeatPart
	for i,v in pairs(carParts) do
		if v:IsA("BasePart") then
			v.CanCollide = true
		end
	end
end

function useCommand.admin()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			Adm[#Adm+1] = target.Name
			updatesaves()
			opx("-","Added "..target.Name.." to admins, please re-execute")
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.robloxversion()
	opx("-","Roblox is on version: "..version().." - ".._VERSION)
end

function useCommand.unadmin()
	if arguments[2] then
		for i,v in pairs(Adm) do
			if arguments[2] == Adm[i] then
				table.remove(Adm[i])
				updatesaves()
			end
		end
		opx("-","Removed that player from admins, please re-execute")
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.admins()
	xAdm = #Adm.." | "
	for i,v in pairs(Adm) do
		xAdm = xAdm..Adm[i]..", "
	end
	opx("-","Listed admins")
	opxL("Admins",xAdm)
end

function useCommand.adminclr()
	Adm = {}
	updatesaves()
	opx("-","Cleared all admins, please re-execute")
end

ManageHolderHotkey = Instance.new("Frame", getParent)
MangeScrollHotkey = Instance.new("ScrollingFrame", getParent)
BtnAddHotkey = Instance.new("TextButton", getParent)
BtnClearHotkey = Instance.new("TextButton", getParent)
ManageTitleHotkey = Instance.new("TextLabel", getParent)
SlideOutHotkey = Instance.new("Frame", getParent)
Edit1Hotkey = Instance.new("TextBox", getParent)
Edit2Hotkey = Instance.new("TextBox", getParent)
Edit3Hotkey = Instance.new("TextBox", getParent)
TitleSlideHotkey = Instance.new("TextLabel", getParent)
CancelBtnHotkey = Instance.new("TextButton", getParent)
ApplyBtnHotkey = Instance.new("TextButton", getParent)
BtnExitHotkey = Instance.new("TextButton", getParent)

ManageHolderHotkey.Name = "ManageHolderHotkey"
ManageHolderHotkey.Parent = Unnamed
ManageHolderHotkey.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
ManageHolderHotkey.BackgroundTransparency = -0.010
ManageHolderHotkey.BorderSizePixel = 0
ManageHolderHotkey.Position = UDim2.new(0.33610791, 0, 0.279678553, 0)
ManageHolderHotkey.Size = UDim2.new(0, 424, 0, 294)
ManageHolderHotkey.Active = true
ManageHolderHotkey.Draggable = true
ManageHolderHotkey.Visible = false

MangeScrollHotkey.Name = "MangeScrollHotkey"
MangeScrollHotkey.Parent = ManageHolderHotkey
MangeScrollHotkey.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
MangeScrollHotkey.BorderSizePixel = 0
MangeScrollHotkey.Position = UDim2.new(0.0268278271, 0, 0.10493198, 0)
MangeScrollHotkey.Size = UDim2.new(0, 401, 0, 214)

function Template1(name,entry)
	local TemplateFrame = Instance.new("Frame", getParent)
	local TemplateName = Instance.new("TextLabel", getParent)
	local TemplateBtnRemove = Instance.new("TextButton", getParent)
	local TemplateBtnAdd = Instance.new("TextButton", getParent)
	local alls2 = 5
	for i,v in pairs(MangeScrollHotkey:GetChildren()) do
		if v then
			alls2 = v.Size.Y.Offset + alls2+5
		end
		if not v then
			alls2 = 5
		end
	end
	TemplateFrame.Name = name
	TemplateFrame.Parent = MangeScrollHotkey
	TemplateFrame.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
	TemplateFrame.BorderSizePixel = 0
	TemplateFrame.Position = UDim2.new(-1,0,0,alls2)
	TemplateFrame.Size = UDim2.new(0, 368, 0, 19)

	TemplateName.Name = "TemplateName"
	TemplateName.Parent = TemplateFrame
	TemplateName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TemplateName.BackgroundTransparency = 1.000
	TemplateName.BorderSizePixel = 0
	TemplateName.Position = UDim2.new(0.0231884252, 0, 0, 0)
	TemplateName.Size = UDim2.new(0, 191, 0, 19)
	TemplateName.Font = Enum.Font.GothamBlack
	TemplateName.Text = name.."|"..entry
	TemplateName.TextColor3 = Color3.fromRGB(255, 255, 255)
	TemplateName.TextSize = 14.000
	TemplateName.TextXAlignment = Enum.TextXAlignment.Left

	TemplateBtnRemove.Name = "TemplateBtnRemove"
	TemplateBtnRemove.Parent = TemplateFrame
	TemplateBtnRemove.BackgroundColor3 = Color3.fromRGB(176, 176, 176)
	TemplateBtnRemove.BackgroundTransparency = 0.700
	TemplateBtnRemove.BorderSizePixel = 0
	TemplateBtnRemove.Position = UDim2.new(0.859420359, 0, 0, 0)
	TemplateBtnRemove.Size = UDim2.new(0, 51, 0, 19)
	TemplateBtnRemove.Font = Enum.Font.Gotham
	TemplateBtnRemove.Text = "Remove"
	TemplateBtnRemove.TextColor3 = Color3.fromRGB(255, 255, 255)
	TemplateBtnRemove.TextSize = 12.000
	TemplateBtnRemove.MouseButton1Down:Connect(function()
		table.remove(hkBinds,entry)
		TemplateBtnRemove.Parent:Destroy()
		updatesaves()
	end)

	TemplateBtnAdd.Name = "TemplateBtnAdd"
	TemplateBtnAdd.Parent = TemplateFrame
	TemplateBtnAdd.BackgroundColor3 = Color3.fromRGB(176, 176, 176)
	TemplateBtnAdd.BackgroundTransparency = 0.700
	TemplateBtnAdd.BorderSizePixel = 0
	TemplateBtnAdd.Position = UDim2.new(0.699094296, 0, 0, 0)
	TemplateBtnAdd.Size = UDim2.new(0, 51, 0, 19)
	TemplateBtnAdd.Font = Enum.Font.Gotham
	TemplateBtnAdd.Text = "Edit"
	TemplateBtnAdd.TextColor3 = Color3.fromRGB(255, 255, 255)
	TemplateBtnAdd.TextSize = 12.000
	TemplateBtnAdd.MouseButton1Down:Connect(function()
		SlideOutHotkey.Visible = true
		SlideOutHotkey:TweenSize(UDim2.new(0, 215, 0, 294), 'In', 'Quint', 0.5)
		CurrentEdit = entry
		TitleSlideHotkey.Text = hkBinds[entry].C
		updatesaves()
	end)

	TemplateFrame:TweenPosition(UDim2.new(0,3,0,alls2), 'In', 'Quint', 0.5)
end

BtnAddHotkey.Name = "BtnAddHotkey"
BtnAddHotkey.Parent = ManageHolderHotkey
BtnAddHotkey.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
BtnAddHotkey.BorderSizePixel = 0
BtnAddHotkey.Position = UDim2.new(0.026827829, 0, 0.864668369, 0)
BtnAddHotkey.Size = UDim2.new(0, 85, 0, 33)
BtnAddHotkey.Font = Enum.Font.Gotham
BtnAddHotkey.Text = "Add"
BtnAddHotkey.TextColor3 = Color3.fromRGB(255, 255, 255)
BtnAddHotkey.TextSize = 14.000
BtnAddHotkey.MouseButton1Down:Connect(function()
	SlideOutHotkey.Visible = true
	SlideOutHotkey:TweenSize(UDim2.new(0, 215, 0, 294), 'In', 'Quint', 0.5)
	hkBinds[#hkBinds+1] = {K = "N/A", C = "Unnamed"}
	CurrentEdit = #hkBinds
	TitleSlideHotkey.Text = hkBinds[#hkBinds].C
	Template1(hkBinds[#hkBinds].C,#hkBinds)
	updatesaves()
end)

BtnClearHotkey.Name = "BtnClearHotkey"
BtnClearHotkey.Parent = ManageHolderHotkey
BtnClearHotkey.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
BtnClearHotkey.BorderSizePixel = 0
BtnClearHotkey.Position = UDim2.new(0.244457483, 0, 0.864668369, 0)
BtnClearHotkey.Size = UDim2.new(0, 85, 0, 33)
BtnClearHotkey.Font = Enum.Font.Gotham
BtnClearHotkey.Text = "Clear"
BtnClearHotkey.TextColor3 = Color3.fromRGB(255, 255, 255)
BtnClearHotkey.TextSize = 14.000
BtnClearHotkey.MouseButton1Down:Connect(function()
	MangeScrollHotkey:ClearAllChildren()
	hkBinds = {}
	Edit1Hotkey.Text = ""
	Edit2Hotkey.Text = ""
	Edit3Hotkey.Text = ""
	SlideOutHotkey.Visible = false
	SlideOutHotkey:TweenSize(UDim2.new(0, 0, 0, 294), 'Out', 'Quint', 0.5)
	CurrentEdit = ""
	updatesaves()
end)

ManageTitleHotkey.Name = "ManageTitleHotkey"
ManageTitleHotkey.Parent = ManageHolderHotkey
ManageTitleHotkey.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ManageTitleHotkey.BackgroundTransparency = 1.000
ManageTitleHotkey.Position = UDim2.new(0.263266504, 0, 0.00765306223, 0)
ManageTitleHotkey.Size = UDim2.new(0, 200, 0, 32)
ManageTitleHotkey.Font = Enum.Font.GothamSemibold
ManageTitleHotkey.Text = "Strylix FE Hotkey MANAGER"
ManageTitleHotkey.TextColor3 = Color3.fromRGB(255, 255, 255)
ManageTitleHotkey.TextSize = 14.000

SlideOutHotkey.Name = "SlideOutHotkey"
SlideOutHotkey.Parent = ManageHolderHotkey
SlideOutHotkey.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SlideOutHotkey.BackgroundTransparency = 0.500
SlideOutHotkey.BorderSizePixel = 0
SlideOutHotkey.Position = UDim2.new(-0.507332683, 0, 0, 0)
SlideOutHotkey.Size = UDim2.new(0, 0, 0, 294)
SlideOutHotkey.Visible = false

Edit1Hotkey.Name = "Edit1Hotkey"
Edit1Hotkey.Parent = SlideOutHotkey
Edit1Hotkey.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
Edit1Hotkey.BorderSizePixel = 0
Edit1Hotkey.Position = UDim2.new(0.0325581394, 0, 0.0850340128, 0)
Edit1Hotkey.Size = UDim2.new(0, 200, 0, 26)
Edit1Hotkey.Font = Enum.Font.Gotham
Edit1Hotkey.PlaceholderColor3 = Color3.fromRGB(230, 230, 230)
Edit1Hotkey.PlaceholderText = "Enter key here"
Edit1Hotkey.Text = ""
Edit1Hotkey.TextColor3 = Color3.fromRGB(255, 255, 255)
Edit1Hotkey.TextSize = 14.000

Edit2Hotkey.Name = "Edit2Hotkey"
Edit2Hotkey.Parent = SlideOutHotkey
Edit2Hotkey.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
Edit2Hotkey.BorderSizePixel = 0
Edit2Hotkey.Position = UDim2.new(0.0325581394, 0, 0.204081625, 0)
Edit2Hotkey.Size = UDim2.new(0, 200, 0, 26)
Edit2Hotkey.Font = Enum.Font.Gotham
Edit2Hotkey.PlaceholderColor3 = Color3.fromRGB(230, 230, 230)
Edit2Hotkey.PlaceholderText = "Enter command here"
Edit2Hotkey.Text = ""
Edit2Hotkey.TextColor3 = Color3.fromRGB(255, 255, 255)
Edit2Hotkey.TextSize = 14.000

Edit3Hotkey.Name = "Edit3Hotkey"
Edit3Hotkey.Parent = SlideOutHotkey
Edit3Hotkey.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
Edit3Hotkey.BorderSizePixel = 0
Edit3Hotkey.Position = UDim2.new(0.0325581394, 0, 0.31292516, 0)
Edit3Hotkey.Size = UDim2.new(0, 200, 0, 26)
Edit3Hotkey.Font = Enum.Font.Gotham
Edit3Hotkey.PlaceholderColor3 = Color3.fromRGB(230, 230, 230)
Edit3Hotkey.PlaceholderText = "Enter ... here"
Edit3Hotkey.Text = ""
Edit3Hotkey.TextColor3 = Color3.fromRGB(255, 255, 255)
Edit3Hotkey.TextSize = 14.000

TitleSlideHotkey.Name = "TitleSlideHotkey"
TitleSlideHotkey.Parent = SlideOutHotkey
TitleSlideHotkey.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleSlideHotkey.BackgroundTransparency = 1.000
TitleSlideHotkey.Position = UDim2.new(0.0307083577, 0, -0.0161564611, 0)
TitleSlideHotkey.Size = UDim2.new(0, 200, 0, 32)
TitleSlideHotkey.Font = Enum.Font.GothamSemibold
TitleSlideHotkey.Text = "..."
TitleSlideHotkey.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleSlideHotkey.TextSize = 14.000

CancelBtnHotkey.Name = "CancelBtnHotkey"
CancelBtnHotkey.Parent = SlideOutHotkey
CancelBtnHotkey.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
CancelBtnHotkey.BorderSizePixel = 0
CancelBtnHotkey.Position = UDim2.new(0.561230242, 0, 0.442899674, 0)
CancelBtnHotkey.Size = UDim2.new(0, 85, 0, 33)
CancelBtnHotkey.Font = Enum.Font.Gotham
CancelBtnHotkey.Text = "Cancel"
CancelBtnHotkey.TextColor3 = Color3.fromRGB(255, 255, 255)
CancelBtnHotkey.TextSize = 14.000
CancelBtnHotkey.MouseButton1Down:Connect(function()
	Edit1Hotkey.Text = ""
	Edit2Hotkey.Text = ""
	Edit3Hotkey.Text = ""
	SlideOutHotkey.Visible = false
	CurrentEdit = ""
end)

function MakeChanges(title,new)
	for i,v in pairs(MangeScrollHotkey:GetChildren()) do
		if v.Name == title then
			v.Name = new
			xText = v.TemplateName.Text:split("|")
			v.TemplateName.Text = new.."|"..xText[2]
		end
	end
end

ApplyBtnHotkey.Name = "ApplyBtnHotkey"
ApplyBtnHotkey.Parent = SlideOutHotkey
ApplyBtnHotkey.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
ApplyBtnHotkey.BorderSizePixel = 0
ApplyBtnHotkey.Position = UDim2.new(0.0318313837, 0, 0.442899674, 0)
ApplyBtnHotkey.Size = UDim2.new(0, 85, 0, 33)
ApplyBtnHotkey.Font = Enum.Font.Gotham
ApplyBtnHotkey.Text = "Apply"
ApplyBtnHotkey.TextColor3 = Color3.fromRGB(255, 255, 255)
ApplyBtnHotkey.TextSize = 14.000
ApplyBtnHotkey.MouseButton1Down:Connect(function()
	hkBinds[CurrentEdit] = {K = Edit1Hotkey.Text, C = Edit2Hotkey.Text}
	MakeChanges(TitleSlideHotkey.Text,Edit2Hotkey.Text)
	Edit1Hotkey.Text = ""
	Edit2Hotkey.Text = ""
	Edit3Hotkey.Text = ""
	SlideOutHotkey.Visible = false
	SlideOutHotkey:TweenSize(UDim2.new(0, 0, 0, 294), 'Out', 'Quint', 0.5)
	CurrentEdit = ""
	updatesaves()
end)

BtnExitHotkey.Name = "BtnExitHotkey"
BtnExitHotkey.Parent = ManageHolderHotkey
BtnExitHotkey.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
BtnExitHotkey.BackgroundTransparency = 1.000
BtnExitHotkey.BorderSizePixel = 0
BtnExitHotkey.Position = UDim2.new(0.950231194, 0, -0.00778063387, 0)
BtnExitHotkey.Size = UDim2.new(0, 28, 0, 26)
BtnExitHotkey.Font = Enum.Font.GothamBold
BtnExitHotkey.Text = "X"
BtnExitHotkey.TextColor3 = Color3.fromRGB(255, 255, 255)
BtnExitHotkey.TextSize = 14.000
BtnExitHotkey.MouseButton1Down:Connect(function()
	for i,v in pairs(hkBinds) do
		if hkBinds.C == "Unnamed" then
			table.remove(hkBinds,i)
		end
	end
	ManageHolderHotkey.Visible = false
	Edit1Hotkey.Text = ""
	Edit2Hotkey.Text = ""
	Edit3Hotkey.Text = ""
	SlideOutHotkey.Visible = false
	SlideOutHotkey:TweenSize(UDim2.new(0, 0, 0, 294), 'Out', 'Quint', 0.5)
	CurrentEdit = ""
	updatesaves()
end)

function useCommand.hotkeynew()
	if arguments[3] then
		arguments[2] = arguments[2]:lower()
		hkBinds[#hkBinds+1] = {K = arguments[2], C = arguments[3]}
		updatesaves()
		opx("-","Added "..arguments[3].." to hotkeys")
	else
		opx("*","3 arguments are needed for this command!")
	end
end

function useCommand.hotkeys()
	opx("-","Hotkeys opened")
	MangeScrollHotkey:ClearAllChildren()
	ManageHolderHotkey.Visible = true
	for i,v in pairs(hkBinds) do
		Template1(hkBinds[i].C,i)
	end
end

function useCommand.listhotkeys()
	xHK = #hkBinds.." | "
	for i = 1,#hkBinds do
		xHK = xHK..hkBinds[i].K.." - "..hkBinds[i].C..", "
	end
	opx("-","Listed hotkeys")
	opxL("Hotkeys",xHK)
end

function useCommand.hotkeydel()
	if arguments[2] then
		for i = 1,#hkBinds do
			if hkBinds[i].C == arguments[2] then
				table.remove(hkBinds[i])
				updatesaves()
			end
		end
		opx("-","Removed "..arguments[2].." from hotkeys")
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.hotkeysclr()
	hkBinds = {}
	updatesaves()
	opx("-","Cleared all hotkeys")
end

function useCommand.changestyle()
	if arguments[2] then
		opx("-","Style set to "..arguments[2])
		for i,v in pairs(Unnamed.holder.output:GetChildren()) do
			if v:IsA("ImageLabel") then
				output1.Parent = output
				output2.Parent = output
				output3.Parent = output
				output4.Parent = output
				output5.Parent = output
				output6.Parent = output
				output7.Parent = output
				output8.Parent = output
				output9.Parent = output
				v:Destroy()
			end
		end
		entry.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
		output1.TextColor3 = Color3.fromRGB(177, 177, 177)
		output2.TextColor3 = Color3.fromRGB(177, 177, 177)
		output3.TextColor3 = Color3.fromRGB(177, 177, 177)
		output4.TextColor3 = Color3.fromRGB(177, 177, 177)
		output5.TextColor3 = Color3.fromRGB(177, 177, 177)
		output6.TextColor3 = Color3.fromRGB(177, 177, 177)
		output7.TextColor3 = Color3.fromRGB(177, 177, 177)
		output8.TextColor3 = Color3.fromRGB(177, 177, 177)
		output9.TextColor3 = Color3.fromRGB(177, 177, 177)
		cmd.TextColor3 = Color3.fromRGB(177,177,177)
		cmd.PlaceholderColor3 = Color3.fromRGB(177,177,177)
		if arguments[2] == "default" or arguments[2] == "rounded" then
			output.Style = Enum.FrameStyle.RobloxRound
			dStyle = "rounded"
			updatesaves()
		elseif arguments[2] == "bg" then
			function getAsset(ID)
				return("http://www.roblox.com/Thumbs/Asset.ashx?format=png&width=420&height=420&assetId="..ID)
			end
			output.Style = Enum.FrameStyle.Custom
			dStyle = "bg "..arguments[3]
			updatesaves()
			local iBG = Instance.new("ImageLabel", output)
			iBG.BackgroundColor3 = Color3.fromRGB(163,182,165)
			iBG.BackgroundTransparency = 1
			iBG.BorderSizePixel = 0
			iBG.Size = UDim2.new(0, 525, 0, 253)
			output1.Parent = iBG
			output2.Parent = iBG
			output3.Parent = iBG
			output4.Parent = iBG
			output5.Parent = iBG
			output6.Parent = iBG
			output7.Parent = iBG
			output8.Parent = iBG
			output9.Parent = iBG
			iBG.Image = getAsset(arguments[3])
			iBG.ScaleType = Enum.ScaleType.Crop
		elseif arguments[2] == "squared" then
			output.Style = Enum.FrameStyle.RobloxSquare
			dStyle = "squared"
			updatesaves()
		elseif arguments[2] == "blended" then
			output.Style = Enum.FrameStyle.Custom
			dStyle = "blended"
			updatesaves()
		elseif arguments[2] == "smalled" then
			output.Style = Enum.FrameStyle.DropShadow
			dStyle = "smalled"
			updatesaves()
		elseif arguments[2] == "light" or arguments[2] == "lightmode" then
			entry.BackgroundColor3 = Color3.fromRGB(170, 170, 170)
			output1.TextColor3 = Color3.fromRGB(1, 1, 1)
			output2.TextColor3 = Color3.fromRGB(1, 1, 1)
			output3.TextColor3 = Color3.fromRGB(1, 1, 1)
			output4.TextColor3 = Color3.fromRGB(1, 1, 1)
			output5.TextColor3 = Color3.fromRGB(1, 1, 1)
			output6.TextColor3 = Color3.fromRGB(1, 1, 1)
			output7.TextColor3 = Color3.fromRGB(1, 1, 1)
			output8.TextColor3 = Color3.fromRGB(1, 1, 1)
			output9.TextColor3 = Color3.fromRGB(1, 1, 1)
			cmd.TextColor3 = Color3.fromRGB(1,1,1)
			cmd.PlaceholderColor3 = Color3.fromRGB(1,1,1)
			if arguments[3] then
				if arguments[3] == "blue" then
					output.Style = Enum.FrameStyle.ChatBlue
					dStyle = "lightblue"
					updatesaves()
				elseif arguments[3] == "green" then
					output.Style = Enum.FrameStyle.ChatGreen
					dStyle = "lightgreen"
					updatesaves()
				elseif arguments[3] == "red" then
					output.Style = Enum.FrameStyle.ChatRed
					dStyle = "lightred"
					updatesaves()
				else
					output.Style = Enum.FrameStyle.ChatBlue
					dStyle = "lightblue"
					updatesaves()
				end
			else
				output.Style = Enum.FrameStyle.ChatBlue
				dStyle = "lightblue"
				updatesaves()
			end
		else
			loadstring(game:HttpGet((arguments[2]),true))()
			dStyle = arguments[2]
			updatesaves()
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.csinfo()
	opx("-","Listed info about changestyle")
	opxL("Change-style Info","For the default theme/ rounded theme type in: cs rounded\
	For a custom background type in: cs bg (id)\
	For a squared theme type in: cs squared\
	For a blended theme type in: cs blended\
	For a smalled theme type in: cs smalled\
	For a lightmode theme type in: cs light(blue/green/red)\
	For a custom theme type in: cs (raw link)")
end

function useCommand.chat()
	if arguments[2] then
		local chatString = getstring(2)
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(chatString, "All")
		opx("-","Said message in chat")
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.curvetools()
	local currentTool = cmdlp.Character:FindFirstChildOfClass("Tool")
	currentTool.Parent = cmdlp.Backpack
	Number = 1
	for i,v in pairs(cmdlp.Backpack:GetChildren()) do
		if v.Name == currentTool.Name then
			v.GripPos = Vector3.new(0,0,0)
			v.GripRight = Vector3.new(0,0,0)
			v.GripPos = Vector3.new(0,-Number,Number)
			v.GripRight = Vector3.new(math.rad(10+-Number),math.rad(Number),math.rad(90+-Number))
			Number = Number + 1.4
			v.Parent = cmdlp.Character
		end
	end
	opx("-","Now curving tools")
end

function useCommand.spiraltools()
	local currentTool = cmdlp.Character:FindFirstChildOfClass("Tool")
	currentTool.Parent = cmdlp.Backpack
	Number = 1
	for i,v in pairs(cmdlp.Backpack:GetChildren()) do
		if v.Name == currentTool.Name then
			v.GripPos = Vector3.new(0,0,0)
			v.GripRight = Vector3.new(0,0,0)
			v.GripPos = Vector3.new(0,Number,-Number)
			v.GripRight = Vector3.new(math.rad(Number),math.rad(180/Number),math.rad(180/Number))
			Number = Number + 1.4
			v.Parent = cmdlp.Character
		end
	end
	opx("-","Now spiraling tools")
end

function useCommand.parts()
	if arguments[2] then
		opx("-","Now listing all parts in "..arguments[2])
		for i,v in pairs(workspace:GetDescendants()) do
			if v.Name == arguments[2] then
				xName = v
			end
		end
		local xParts = #xName:GetDescendants().." | "
		for i,v in pairs(xName:GetDescendants()) do
			xParts = xParts..v.Name..", "
		end
		opxL("Parts",xParts)
	else
		opx("-","Now listing all parts")
		local xParts = #workspace:GetDescendants().." | "
		for i,v in pairs(workspace:GetDescendants()) do
			xParts = xParts..v.Name..", "
		end
		opxL("Parts",xParts)
	end
end

function useCommand.toggleconfly()
	if arguments[2] then
		if arguments[2] == "on" then
			conFly = true
			updatesaves()
			opx("-","Continuous fly was toggled to on")
		elseif arguments[2] == "off" then
			conFly = false
			updatesaves()
			opx("-","Continuous fly was toggled to off")
		else
			opx("*","The second argument must contain 'on' or 'off'")
		end
	else
		opx("*","2 arguments are required for this command")
	end
end

local amuteall = false
function useCommand.audioglitch()
	if arguments[3] then
		if arguments[2] == "others" then
			opx("-","Audio glitch others enabled")
			amuteall = true
			repeat wait(1)
				for i,v in pairs(workspace:GetDescendants()) do
					if v:IsA("Sound") and v.Parent.Parent.Parent.Name ~= cmdlp.Name then
						v.TimePosition = arguments[3]
					end
				end
			until amuteall == false
		elseif arguments[2] == "everyone" or arguments[2] == "all" then
			opx("-","Audio glitch all enabled")
			amuteall = true
			repeat wait(1)
				for i,v in pairs(workspace:GetDescendants()) do
					if v:IsA("Sound") then
						v.TimePosition = arguments[3]
					end
				end
			until amuteall == false
		else
			target = findplr(arguments[2])
			if target then
				opx("-","Audio glitch "..target.Name.." enabled")
				amuteall = true
				repeat wait(1)
					for i,v in pairs(workspace:GetDescendants()) do
						if v:IsA("Sound") and v.Parent.Parent.Parent.Name == target.Name then
							v.TimePosition = arguments[3]
						end
					end
				until amuteall == false
			else
				opx("*","Player does not exist!")
			end
		end
	else
		opx("*","3 arguments are needed for this command!")
	end
end

function useCommand.unaudioglitch()
	opx("-","Audio glitch all disabled")
	amuteall = false
end

local chatlag = false
function useCommand.lagchat()
	opx("-","Now lagging chat")
	chatlag = true
	while chatlag do
		wait()
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("_______________________________________", "All")
	end
end

function useCommand.funfact()
	local URL = ("https://uselessfacts.jsph.pl/random.json?language=en")
	local fuck = game:HttpGet(URL)
	local Http = game:GetService("HttpService"):JSONDecode(fuck)
	opx("-",Http.text)
	cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Http.text,"All")
end

function useCommand.trollchat()
	trollChat = {"Roses are red, silent as a mouse, your door is unlocked, I'm inside your house","my dads's uncle owens fortnite his gonna get you banned ###### noob","Ok that one was funny, say it again it gets funnier each time you say it.","nvm just found out ur a girl","I have more chromosomes than you wetard.","What's a _G statement?","Can somebody give me robux my dad is builderman!","Can someone please buy my shirt from my group?","Turn down the music please! My mom said so.","My favorite type of ice cream is glue.","May I join you guys?","What's a GUI?","I'm level 126 on Clockwork's Level Calculator","This game is honestly so bad, don't know why people play it.","Anyone else play Roblox here?","I'm new, any help?","Can you give me Robux, please?","Please stop trolling!","You aren't cool stop trying to kill me.","Why are you so mean?","Guys, kill the bacon for free Cheez-Its.","Why do people even buy headless? It's really useless!","Stop!!!!!!!","_____________________","Please leave me alone?","Sources say David Baszucki is looking at a 20 year sentence for fiddling with kids.","Why do people even hate on Fortnite?","I heard Erik Cassel has been working on an update for 7 years.","Welcome to Roblox!","I'm considering picking up Roblox as a long term job.","Club Iris's owner, SoulJem is adding more backdoors in his game today.","I use JJSploit, It's way better than Synapse X.","Why am I getting so much attention?","Everyone hates me. :(","Flamingo is a good youtuber he is my favourite, YO TENGO!","Why is no one talking to me? I'm famous you know?","You are all poor, I have 10 robux.","I have 100 followers, you are a nobody.","I heard maplestick feeds exploiters with his hats, is this true?","Removing TIX was a good idea like that thing was so useless, XD.","What is TIX? xd? Sounds stupid XD.","I heard InceptionTime is in the gzxy bar right now.","Guys use the weakest weapons, it raises your chance to deal 100 damage.","Guys is Synapse X a virus?","Hello. Im Am. Play. Roblox,","Hi Youtube today we are playing this game.","Poor people are the bane of this game, pls nerf.","I am on the leaderboards of this game, everyone here is bad.","My dads goldfish works for Roblox.","Guys how do I fake cxncer to get a Sinister Valk?","Why are you bald? Are you planning to get Sinister Valk?","Guys my bed time is in 10 minutes, please hurry up.","Why are you taking so long?","Can you be quiet? Stop talking.","What is Builders Club XD? It sounds stupid tbh.","I have the best score on this game, plus I know the owner.","Guys you can all leave you are useless I can do this on my own.","This game is pretty bad tbh XD, I could make better.","You have trash scripts XD I use JJSploit and invisible fling.","......... bad. xd","I'm considering building a game about breaking out of a jail and robbing stuff, should I?","I'm considering making a game about breaking bones, should I?","I'm considering making Roblox streaming a full time job, I got a 2$ donation.","I use UltimateDLLInjector, what DLL's do you use? Can you send me them?","All old games are bad, why would you even play them they are glitchy.","Old robloxians, are stupid I bet they can't even play Bloxburg as well as me","I love DenisDaily I want to meet him."}
	local value = math.random(1,#trollChat)
	local picked_value = trollChat[value]
	opx("-","You troll chatted")
	cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(tostring(picked_value), "All")
end

function useCommand.unbodypositionwalkspeed()
	bodyPos = false
	for i,v in pairs(cmdlp.Character:GetDescendants()) do
		if v.Name == "rocket" then
			v:Destroy()
		end
	end
	opx("-","BodyPositionWalkSpeed disabled")
end

function useCommand.removegears()
	opx("-","Removed gears")
	for i,v in pairs(cmdlp.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			v:Destroy()
		end
	end
end

function useCommand.unclicktp()
	opx("-","No longer clicktping")
	clicktps = false
end

function useCommand.scriptusers()
	gethiddenproperty = gethiddenproperty or get_hidden_prop
	if not gethiddenproperty then
		opx("*","Your exploit does not support this command. There is nothing we can do.")
		return
	end
	opx("-","Showing players using Strylix-FE")
	local usageof = ""
	for i,v in pairs(cmdp:GetPlayers()) do	--Shit to change
		if gethiddenproperty(v, "SimulationRadius") == 139 then
			if Devs[v.Name] == "Dev" then
				usageof = usageof.."[DEV]"..v.Name.."\n"
			elseif Devs[v.Name] == "Owner" then
				usageof = usageof.."[OWNER]"..v.Name.."\n"
			elseif Donors[v.Name] then
				if Donors[v.Name].Tier == "Custom1" then
					usageof = usageof.."[ADMINISTRATOR]"..v.Name.."\n"
				elseif Donors[v.Name].Tier == "Custom2" then
					usageof = usageof.."[INFERNAL]"..v.Name.."\n"
				elseif Donors[v.Name].Tier == "Custom3" then
					usageof = usageof.."[THE CHOSEN]"..v.Name.."\n"
				else
					usageof = usageof.."[DONOR]"..v.Name.."\n"
				end
			elseif v.Name == "fexsh" then
				usageof = usageof.."[666]"..v.Name.."\n"
			else
				usageof = usageof.."[USER]"..v.Name.."\n"
			end
		end
	end
	opxL("Currently Using",usageof)
end

function useCommand.mentions()
	if arguments[2] == "on" then
		mentions = true
		updatesaves()
		opx("-","Turned on mentions")
	elseif arguments[2] == "off" then
		mentions = false
		updatesaves()
		opx("-","Turned off mentions")
	else
		opx("*","Not a valid preset!")
	end
end
--Shit to change
cmdp.PlayerAdded:connect(function(plr)
	plr:GetPropertyChangedSignal("OsPlatform"):Connect(function()
		msg = plr.OsPlatform
		v = plr
		if v.OsPlatform == "Strylix-FE" then
			if msg:sub(#msg-5,#msg) == "nigger" then
				msg = msg:sub(1,#msg-6)
				if Devs[plr.Name] then
					local z = Devs[plr.Name]
					if z == "Dev" then
						CreateSCLabel("DEV",plr.Name..": "..msg)
					elseif z == "Owner" then
						CreateSCLabel("OWNER",plr.Name..": "..msg)
					end
				elseif Donors[plr.Name] then
					if Donors[v.Name].Tier == "Custom1" then
						CreateSCLabel("ADMINISTRATOR",plr.Name..": "..msg)
					elseif Donors[v.Name].Tier == "Custom2" then
						CreateSCLabel("INFERNAL",plr.Name..": "..msg)
					elseif Donors[v.Name].Tier == "Custom3" then
						CreateSCLabel("THE CHOSEN",plr.Name..": "..msg)
					else
						CreateSCLabel("DONOR",plr.Name..": "..msg)
					end
				else
					CreateSCLabel("USER",plr.Name..": "..msg)
				end
				if string.match(msg,cmdlp.Name) and mentions == true then
					opx("-","You were mentioned in .scriptchat by "..plr.Name.."!")
				end
			end
		end
	end)
end)
for i,v in pairs(cmdp:GetPlayers()) do --Shit to change
	v:GetPropertyChangedSignal("OsPlatform"):Connect(function()
		msg = v.OsPlatform
		plr = v
		if v.OsPlatform == "Strylix-FE" then
			if msg:sub(#msg-5,#msg) == "nigger" then
				msg = msg:sub(1,#msg-6)
				if Devs[plr.Name] then
					local z = Devs[plr.Name]
					if z == "Dev" then
						CreateSCLabel("DEV",plr.Name..": "..msg)
					elseif z == "Owner" then
						CreateSCLabel("OWNER",plr.Name..": "..msg)
					end
				elseif Donors[plr.Name] then
					if Donors[v.Name].Tier == "Custom1" then
						CreateSCLabel("ADMINISTRATOR",plr.Name..": "..msg)
					elseif Donors[v.Name].Tier == "Custom2" then
						CreateSCLabel("INFERNAL",plr.Name..": "..msg)
					elseif Donors[v.Name].Tier == "Custom3" then
						CreateSCLabel("THE CHOSEN",plr.Name..": "..msg)
					else
						CreateSCLabel("DONOR",plr.Name..": "..msg)
					end
				else
					CreateSCLabel("USER",plr.Name..": "..msg)
				end
				if string.match(msg,cmdlp.Name) and mentions == true then
					opx("-","You were mentioned in .scriptchat by "..v.Name.."!")
				end
			end
		end
	end)
end

function useCommand.schatbp()
	opx("*","No longer used")
end

function useCommand.whisperlogs()
	logsEnabled = false
	pLogs = false
	opx("-","Whipser-Logs have been loaded")
	wLogs = true
	logsholding.Visible = true
end

CurrentPLog = {}

function useCommand.playerlogs()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			logsEnabled = false
			wLogs = false
			opx("-","Player-Logs have been loaded")
			table.insert(CurrentPLog,target)
			pLogs = true
			logsholding.Visible = true
			target.Chatted:Connect(function(msg)
				if pLogs == true then
					CreateLabel(target.Name,msg)
				end
			end)
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.scriptchat()
	logsholding2.Visible = true
	opx("-","Script chat is now active")
end

function useCommand.unswimwalk()
	workspace.Gravity = 198
	cmdlp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
	cmdlp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
	cmdlp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
	cmdlp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
	cmdlp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
	cmdlp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
	cmdlp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
	cmdlp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
	cmdlp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
	cmdlp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
	cmdlp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
	cmdlp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
	cmdlp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
	cmdlp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
	cmdlp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
	cmdlp.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
	opx("-","No longer swimming")
end

function useCommand.fakelag()
	opx("-","Now fake lagging, do anything you want")
	settings():GetService("NetworkSettings").IncommingReplicationLag = 100
end

function useCommand.unfakelag()
	opx("-","No longer fake lagging")
	settings():GetService("NetworkSettings").IncommingReplicationLag = 0
end

function useCommand.hitboxes()
	opx("-","Now showing hitboxes")
	settings():GetService("RenderSettings").ShowBoundingBoxes = true
end

function useCommand.unhitboxes()
	opx("-","No longer showing hitboxes")
	settings():GetService("RenderSettings").ShowBoundingBoxes = false
end

function useCommand.animdata()
	opx("-","Now showing animation data")
	settings():GetService("NetworkSettings").ShowActiveAnimationAsset = true
end

function useCommand.unanimdata()
	opx("-","No longer showing animation data")
	settings():GetService("NetworkSettings").ShowActiveAnimationAsset = false
end

function useCommand.unlagchat()
	opx("-","No longer lagging chat")
	chatlag = false
end

function useCommand.sniper()
	opx("-","If you had a sniper then you are now holding it")
	for _, hat in pairs(cmdlp.Character.Humanoid:GetAccessories()) do
		if hat.Handle ~= nil then
			local tool = Instance.new("Tool", cmdlp.Backpack)
			tool.Name = hat.Name
			tool.GripPos = Vector3.new(0, -1, 0)
			tool.GripRight = Vector3.new(-0.005, 0.004, -1)
			tool.GripUp = Vector3.new(0.758, 0.653, -0.001)
			tool.GripForward = Vector3.new(-0.653, 0.758, 0.006) 
			local hathandle = hat.Handle
			hathandle:FindFirstChildOfClass("Weld"):Destroy()
			hathandle.Parent = tool
			hathandle.Massless = true
		end
	end
end

function useCommand.rocket()
	opx("-","If you had a rocket then you are now holding it")
	for _, hat in pairs(cmdlp.Character.Humanoid:GetAccessories()) do
		if hat.Handle ~= nil then
			local tool = Instance.new("Tool", cmdlp.Backpack)
			tool.Name = hat.Name
			tool.GripPos = Vector3.new(1, 0, 0)
			tool.GripRight = Vector3.new(-0.245, 0, 0.969)
			tool.GripUp = Vector3.new(-0.749, 0.634, -0.19)
			tool.GripForward = Vector3.new(0.615, 0.773, 0.156)
			local hathandle = hat.Handle
			hathandle:FindFirstChildOfClass("Weld"):Destroy()
			hathandle.Parent = tool
			hathandle.Massless = true
		end
	end
end

function useCommand.clip()
	if Noclipping then
		Noclipping:Disconnect()
	end
	Clip = true
	opx("-","Noclip disabled")
end

function useCommand.closeorbit()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			local rp = Instance.new("RocketPropulsion")
			rp.Parent = cmdlp.Character.HumanoidRootPart
			rp.CartoonFactor = 1
			rp.MaxThrust = 5000
			rp.MaxSpeed = 100
			rp.ThrustP = 5000
			rp.Name = "OrbitalDestruction"
			rp.Target = target.Character.HumanoidRootPart
			rp:Fire()
			cmdlp.Character.Humanoid.Sit = true
			opx("-","Now orbiting: "..target.Name)
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.orbit()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			opx("-","Now orbiting: "..target.Name)
			local P = Instance.new("Part", target.Character)
			P.Transparency = 1
			P.Name = "ThePart"
			P.Size = Vector3.new(1.7,1.7,1.7)
			P.Massless = true
			P.CanCollide = false
			local W = Instance.new("Weld", P)
			W.Part1 = target.Character.HumanoidRootPart
			W.Part0 = P
			local sine = 0
			local change = 1
			local spin = 0
			local spin2 = 0
			local rp = Instance.new("RocketPropulsion")
			rp.Parent = cmdlp.Character.HumanoidRootPart
			rp.CartoonFactor = 1
			rp.MaxThrust = 5000
			rp.MaxSpeed = 100
			rp.ThrustP = 5000
			rp.Name = "OrbitalDestructionPart"
			rp.Target = target.Character.ThePart
			rp:Fire()
			cmdlp.Character.Humanoid.PlatformStand = true
			while true do
				game:GetService("RunService").RenderStepped:wait()
				sine = sine + change
				spin2 = spin2 + 0.6
				spin = spin + 1
				W.C0 = CFrame.new(7 * math.cos(20),-2 - 2 * math.sin(sine/10),7 * math.sin(20))*CFrame.Angles(math.rad(0),math.rad(spin),math.rad(0))
			end
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are needed for this command!")
	end
end

function useCommand.unorbit()
	for i,v in pairs(cmdlp.Character:GetDescendants()) do
		if v.Name == "OrbitalDestructionPart" or v.Name == "OrbitalDestruction" then
			v:Destroy()
		end
	end
	cmdlp.Character.Humanoid.PlatformStand = false
	cmdlp.Character.Humanoid.Sit = false
	opx("-","Stopped orbiting")
end

function useCommand.suggestions()
	if arguments[2] == "on" then
		suggestions = true
		updatesaves()
		opx("-","Suggestions set to on")
	elseif arguments[2] == "off" then
		suggestions = false
		updatesaves()
		opx("-","Suggestions set to off")
	else
		opx("*","A valid preset is needed!")
	end
end

function useCommand.statistics()
	opx("-","Loaded CMD Statistics")
	Scrollingstats:ClearAllChildren()
	statholder.Visible = true
	for i,v in pairs(CMDStat) do
		if CMDStat[i].T ~= 0 then
			CreateStatLabel(CMDStat[i].N,CMDStat[i].T)
		end
	end
end

local bringc = false
function useCommand.clientbring()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			bringc = true
			opx("-","Bringing "..target.Name.." on client.")
			while bringc do
				wait()
				if target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
					target.Character.HumanoidRootPart.CFrame = cmdlp.Character.HumanoidRootPart.CFrame + cmdlp.Character.HumanoidRootPart.CFrame.lookVector * 2
				end
			end
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are required for this command!")
	end
end

function useCommand.unclientbring()
	bringc = false
	opx("-","Stopped client bringing")
end

function useCommand.clientfreeze()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			opx("-","Now client freezing "..target.Name)
			for i,v in pairs(target.Character:GetChildren()) do
				if v:IsA("BasePart") then
					v.Anchored = true
				end
			end
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are required for this command!")
	end
end

function useCommand.unclientfreeze()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			opx("-","No longer client freezing "..target.Name)
			for i,v in pairs(target.Character:GetChildren()) do
				if v:IsA("BasePart") then
					v.Anchored = false
				end
			end
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are required for this command!")
	end
end

function useCommand.removefog()
	opx("-","Removed fog")
	cmdl.FogStart = 0
	cmdl.FogEnd = 9999999999999
end

local animSync = false
function useCommand.animsync()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			opx("-","Now syncing with "..target.Name)
			target.Chatted:Connect(function(v)
				if v:sub(1,3) == "/e " or v:sub(1,3) == ".e" and animSync == true then
					animations = {
						Agree = 4841397952;
						Disagree = 4841401869;
						["Power Blast"] = 4841403964;
						Happy = 4841405708;
						Sad = 4841407203;
						["Bunny Hop"] = 4641985101;
						["Peanut Butter Jelly Dance"] = 4406555273;
						["Around Town"] = 3303391864;
						["Top Rock"] = 3361276673;
						Fashionable = 3333331310;
						Robot = 3338025566;
						Twirl = 3334968680;
						Jacks = 3338066331;
						TPose = 3338010159;
						Shy = 3337978742;
						Monkey = 3333499508;
						["Borock's Rage"] = 3236842542;
						["Ud'zal's Summoning"] = 3303161675;
						["Hype Dance"] = 3695333486;
						Godlike = 3337994105;
						Swoosh = 3361481910;
						Sneaky = 3334424322;
						["Side to Side"] = 3333136415;
						Greatest = 3338042785;
						Louder = 3338083565;
						Celebrate = 3338097973;
						Haha = 3337966527;
						["Get Out"] = 3333272779;
						Tree = 4049551434;
						Fishing = 3334832150;
						["Fast Hands"] = 4265701731;
						Y = 4349285876;
						Zombie = 4210116953;
						["Baby Dance"] = 4265725525;
						["Line Dance"] = 4049037604;
						Dizzy = 3361426436;
						Shuffle = 4349242221;
						["Dorky Dance"] = 4212455378;
						BodyBuilder = 3333387824;
						Idol = 4101966434;
						["Fancy Feet"] = 3333432454;
						Curtsy = 4555816777;
						["Air Dance"] = 4555782893;
						["Chicken Dance"] = 4841399916;
						Disagree = 4841401869;
						Sleep = 4686925579;
						["Hero Landing"] = 5104344710;
						Confused = 4940561610;
						Cower = 4940563117;
						Tantrum = 5104341999;
						Bored = 5230599789;
						Beckon = 5230598276;
						Hello = 3344650532;
						Salute = 3333474484;
						Stadium = 3338055167;
						Tilt = 3334538554;
						Point = 3344585679;
						Shrug = 3334392772;
					}
					for i,x in pairs(cmdlp.Character.Humanoid:GetPlayingAnimationTracks()) do
						x:Stop()
					end
					cmdlp.Character.Animate.Disabled = true
					for i,x in pairs(animations) do
						if v:sub(4,#v):lower() == i:lower() then
							local Anim = Instance.new("Animation")
							Anim.AnimationId = "rbxassetid://"..x
							local salute = cmdlp.Character.Humanoid:LoadAnimation(Anim)
							salute.Name = "AP"
							salute:Play()
							salute.Stopped:Connect(function()
								cmdlp.Character.Animate.Disabled = false
							end)
						end
					end
				end
			end)
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are required for this command!")
	end
end

function useCommand.unanimsync()
	animSync = false
	opx("-","No longer syncing")
end

function useCommand.playercases()
	opx("-","Listed player cases")
	opxL("Player-cases","me - Chooses you\
	random - Chooses a random player\
	new - Chooses a player under the age of 30\
	old - Chooses a player over the age of 30\
	bacon - Chooses a player with a bacon hair\
	friend - Chooses a player that is friends with you\
	notfriend - Chooses a player that is not friends with you\
	ally - Chooses a player that is on the same team as you\
	enemy - Chooses a player that is not on the same team as you\
	near - Chooses a player that is close to you\
	far - Chooses a player that is not close to you\
	using - Chooses a player that is using Strylix-FE")
end

function useCommand.ppsize()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			local PPTable = {"Non-Existant","Microscopic","Tiny","Very Small","Small","Moderate","Average","Above Average","Big","Massive","Hugh Mungus","Gut Destroyer"}
			local pickPP = math.random(1,#PPTable)
			opx("-",target.Name.." has a "..PPTable[pickPP].." sizePP")
			cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(target.Name.." has a "..PPTable[pickPP].." sized sausage","All")
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are required for this command!")
	end
end

function useCommand.gaysize()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			local gayREAL = math.random(0,100)
			opx("-",target.Name.." is "..gayREAL.."% gay")
			cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(target.Name.." is "..gayREAL.."% gay","All")
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are required for this command!")
	end
end

function useCommand.matchmake()
	if arguments[3] then
		target = findplr(arguments[2])
		local target2 = findplr(arguments[3])
		if target ~= nil and target2 ~= nil then
			local matchREAL = math.random(0,100)
			opx("-",target.Name.." and "..target2.Name.." are a "..matchREAL.."% match")
			cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(target.Name.." and "..target2.Name.." are a "..matchREAL.."% match","All")
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","3 arguments are required for this command!")
	end
end

function useCommand.height()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			local height1 = math.random(0,7)
			local height2 = math.random(0,10)
			opx("-",target.Name.." is "..height1.."'"..height2)
			cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(target.Name.." is "..height1.."'"..height2,"All")
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are required for this command!")
	end
end

local deadRefresh = false
function useCommand.respawndead()
	deadRefresh = true
	opx("-","Respawn dead is now on")
	while deadRefresh do
		wait()
		if cmdlp.Character.Humanoid.Health == 0 then
			DiedTP = cmdlp.Character.HumanoidRootPart.CFrame
			cmdlp.CharacterAdded:Connect(function()
				repeat wait() until cmdlp.Character.HumanoidRootPart
				cmdlp.Character.HumanoidRootPart.CFrame = DiedTP
			end)
		end
	end
end

function useCommand.unrespawndead()
	deadRefresh = false
	opx("-","Respawn dead is now off")
end

function useCommand.god()
	cmdlp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead,false)
	opx("-","Godded character, may not work on some games")
end

function useCommand.ungod()
	opx("-","Ungodded character")
	cmdlp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead,true)
end

function useCommand.randomchat()
	local tbl1 = game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/others/randomchat/1"):gsub('"',""):gsub('{',""):gsub('}',""):split(",")--english words
	local tbl2 = game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/others/randomchat/2"):gsub('"',""):gsub('{',""):gsub('}',""):split(",")--tbl1
	local tbl3 = game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/others/randomchat/3"):gsub('"',""):gsub('{',""):gsub('}',""):split(",")--tbl2
	local tbl4 = game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/others/randomchat/4"):gsub('"',""):gsub('{',""):gsub('}',""):split(",")--tbl3
	local tbl5 = game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/others/randomchat/5"):gsub('"',""):gsub('{',""):gsub('}',""):split(",")--tbl5
	local tbl6 = game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/others/randomchat/6"):gsub('"',""):gsub('{',""):gsub('}',""):split(",")--tbl4
	local tbl7 = game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/others/randomchat/7"):gsub('"',""):gsub('{',""):gsub('}',""):split(",")--tbl6
	local tbl8 = game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/others/randomchat/8"):gsub('"',""):gsub('{',""):gsub('}',""):split(",")--tbl7
	local tbl9 = game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/others/randomchat/9"):gsub('"',""):gsub('{',""):gsub('}',""):split(",")--tbl8
	local r1 = math.random(1,#tbl1)
	local r2 = math.random(1,#tbl2)
	local r3 = math.random(1,#tbl3)
	local r4 = math.random(1,#tbl4)
	local r5 = math.random(1,#tbl5)
	local r6 = math.random(1,#tbl6)
	local r7 = math.random(1,#tbl7)
	local r8 = math.random(1,#tbl8)
	local r9 = math.random(1,#tbl9)
	opx("-",tbl1[r1].." "..tbl2[r2].." "..tbl3[r3].." "..tbl4[r4].." "..tbl5[r5].." "..tbl6[r6].." "..tbl7[r7].." "..tbl8[r8].." "..tbl9[r9])
	cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(tbl1[r1].." "..tbl2[r2].." "..tbl3[r3].." "..tbl4[r4].." "..tbl5[r5].." "..tbl6[r6].." "..tbl7[r7].." "..tbl8[r8].." "..tbl9[r9],"All")
end

function useCommand.enablereset()
	opx("-","Force enabled reset button")
	game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
end

function useCommand.disablereset()
	opx("-","Force disabled reset button")
	game:GetService("StarterGui"):SetCore("ResetButtonCallback", false)
end

function useCommand.headless()
	opx("-","If you followed the instructions you should have headless")
	local Y = .3
	local Hat = cmdlp.Character["Dog Ears"]
	local Handle = Hat.Handle
	local Attachment = Handle:FindFirstChildOfClass("Attachment")
	local Weld = Handle:FindFirstChildOfClass("Weld")
	local Part
	if Weld.Part1 == "Torso" or Weld.Part1 == "UpperTorso" then
		Y = -Y
		Part = cmdlp.Character.Head
	else
		Part = cmdlp.Character.HumanoidRootPart
	end
	for i,v in pairs(cmdlp.Character:GetChildren()) do
		if v:IsA("Accessory") and v.Name ~= "Dog Ears" then
			local Att = v.Handle:FindFirstChildOfClass("Attachment")
			local Wel = v.Handle:FindFirstChildOfClass("Weld")
			local Par
			if Wel.Part1 == "Torso" or Wel.Part1 == "UpperTorso" then
				Par = cmdlp.Character.Head
			else
				Par = cmdlp.Character.HumanoidRootPart
			end
			rg = Instance.new("Weld")
			rg.Name = "RightGrip"
			rg.Part1 = v.Handle
			rg.Part0 = Par
			rg.Parent = Par
			Attachment.CFrame = CFrame.new(0,0,0)
			rg.C1 = v.Handle.CFrame:ToObjectSpace(cmdlp.Character.HumanoidRootPart.CFrame) rg.C0 = CFrame.new(0, 2.1, -.2)
		end
	end
	local rightGrip = Instance.new("Weld")
	rightGrip.Name = "RightGrip"
	rightGrip.Part1 = Handle 
	rightGrip.Part0 = Part
	rightGrip.Parent = Part
	Attachment.CFrame = CFrame.new(0,0,0)
	rightGrip.C1 = Handle.CFrame:ToObjectSpace(cmdlp.Character.HumanoidRootPart.CFrame) rightGrip.C0 = CFrame.new(0, Y, -0)
end

local looping = false
function useCommand.loop()
	if arguments[2] then
		looping = true
		loopStat = getstring(2)
		perCmd = arguments[2]
		GoodNew = findCmd(perCmd)
		opx("-","Now looping that command")
		while looping do
			wait()
			arguments = loopStat:split(" ")
			useCommand[GoodNew]()
		end
	else
		opx("*","2 arguments are needed!")
	end
end

function useCommand.unloop()
	looping = false
	wait(.1)
	opx("-","No longer looping commands")
end

function useCommand.savetools()
	opx("-","Saved tools")
	for i,a in pairs(cmdlp.Backpack:GetDescendants()) do
		if a:IsA("Tool") then
			a.Parent = cmdlp.Character
			a.Parent = workspace
			a.Handle.Anchored = true
		end
	end
end

function useCommand.loadtools()
	opx("-","Loaded tools")
	for i,v in pairs(workspace:GetChildren()) do
		if v:IsA("Tool") and v.Handle.Anchored == true then
			v.Handle.Anchored = false
			v.Handle.CFrame = cmdlp.Character.HumanoidRootPart.CFrame
		end
	end
end

function useCommand.hotkeyfly()
	if arguments[2] then
		hotkeyfly = arguments[2]
		updatesaves()
		opx("Hotkey set to "..arguments[2])
	else
		opx("A key is required")
	end
end

function useCommand.hotkeyxray()
	if arguments[2] then
		hotkeyxray = arguments[2]
		updatesaves()
		opx("Hotkey set to "..arguments[2])
	else
		opx("A key is required")
	end
end

function useCommand.plague()
	if arguments[2] then
		opx("-","You started a plague!")
		cureFound = false
		plaguename = arguments[2] 
		if #cmdp:GetPlayers() > 6 then --Shit to change 
			for i,v in pairs(cmdp:GetPlayers()) do --Shit to change
				wait(math.random(1,15))
				if i == 1 then
					cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(v.Name.." is the ZeroDay of "..plaguename, "All")
				elseif i == 2 then
					cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(plaguename.." was put on the watchlist by RHO", "All")
					cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(v.Name.." was infected by "..plaguename, "All")			
				elseif i == #cmdp:GetPlayers()-3 then --Shit to change
					randomss = math.random(1,2)
					if randomss == 2 then
						cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("A cure was found for "..plaguename.." RHO says it will be over soon", "All")
						cureFound = true
					else
						cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Roblox begins breaking down as "..plaguename.." infects the majority of the population", "All")
					end
				elseif i == #cmdp:GetPlayers() then --Shit to change
					if cureFound == false then
						cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Roblox was completely infected by "..plaguename, "All")
					else
						cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Roblox won against "..plaguename, "All")
					end
				else
					if cureFound == false then
						cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(v.Name.." was infected by "..plaguename, "All")
					end
				end
			end
		else
			opx("*","You need 6 plus players!")
		end
	else
		opx("*","You need 2 arguments!")
	end
end

function useCommand.removecustomnametag()
	opx("-","Removed any custom name tags")
	for i,v in pairs(cmdlp.Character:GetDescendants()) do
		if v:IsA("BillboardGui") then
			v:Destroy()
		end
	end
end

function useCommand.stubby()
	opx("-","You are now stubby")
	cmdlp.Character.RightHand:Destroy()
	cmdlp.Character.LeftHand:Destroy()
	cmdlp.Character.RightFoot:Destroy()
	cmdlp.Character.LeftFoot:Destroy()
end

function useCommand.listunanchored()
	opx("-","Listing unanchored parts")
	xUnanchored = ""
	Num = 0
	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA("BasePart" or "UnionOperation") and v.Anchored == false and v:IsDescendantOf(cmdlp.Character) == false then
			xUnanchored = xUnanchored..v.Name..", "
			Num = Num + 1
		end
	end
	xUnanchored = Num.." | "..xUnanchored
	opxL("Unanchored Parts",xUnanchored)
end

function useCommand.iq()
	if arguments[2] then
		target = findplr(arguments[2])
		if target then
			local iq1 = math.random(1,200)
			opx("-",target.Name.." has "..iq1.." IQ")
			cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(target.Name.." has "..iq1.." IQ","All")
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are required for this command!")
	end
end

function useCommand.credits()
	opx("-","Opened credits")
	opxL("Credits","Note: Some discords may be out of date due to consistent changing;\
	Owner - "..DevCords[1].."\
	Co-Owner - "..DevCords[2].."\
	Dev - "..DevCords[3].."\
	Dev - "..DevCords[4].."\
	Intro Audio - liv#2001\
	Thank you to IY for some functions inside Strylix-FE\
	Thank you to Bannable#5005 for animpack\
	Thank you to 6033#6033 for aimbot")
end

function useCommand.outputlarger()
	if arguments[2] then
		opxString = getstring(2)
		opx("-","Opened output-larger")
		opxL("Output-Longer",opxString)
	else
		opx("*","2 arguments are required!")
	end
end

local funa = false
function useCommand.freezeunanchored()
	sethiddenproperty = sethiddenproperty or set_hidden_prop
	gethiddenproperty = gethiddenproperty or get_hidden_prop
	if not sethiddenproperty or not gethiddenproperty then
		opx("*","Your exploit does not support this command. There is nothing we can do.")
		return
	end
	opx("-","Froze unanchored parts")
	funa = true
	cmdlp.MaximumSimulationRadius = math.huge
	sethiddenproperty(cmdlp, "SimulationRadius", math.huge)
	local unanchoredparts = {}
	local movers = {}
	for index, part in pairs(workspace:GetDescendants()) do
		if part:IsA("BasePart" or "UnionOperation" or "Model") and part.Anchored == false and part:IsDescendantOf(cmdlp.Character) == false then
			table.insert(unanchoredparts, part)
			part.Massless = true
			part.CanCollide = false
			if part:FindFirstChildOfClass("BodyPosition") ~= nil then
				part:FindFirstChildOfClass("BodyPosition"):Destroy()
			end
		end
	end
	for index, part in pairs(unanchoredparts) do
		local mover = Instance.new("BodyPosition", part)
		table.insert(movers, mover)
		mover.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
	end
	repeat
		for index, mover in pairs(movers) do
			mover.Position = mover.Position
		end
		wait(.1)
	until funa == false
	cmdlp.MaximumSimulationRadius = 139
	sethiddenproperty(cmdlp, "SimulationRadius", 139)
end

function useCommand.thawunanchored()
	opx("-","Thawed unanchored parts")
	funa = false
end

function useCommand.players()
	opx("Listed players in game")
	xPlayers = #cmdp:GetPlayers().." | " --Shit to change
	for i,v in pairs(cmdp:GetPlayers()) do
		xPlayers = xPlayers..v.Name..", "
	end
	opxL("Players",xPlayers)
end

function useCommand.changelog()
	opx("Showed changelog")
	xCL = ""
	for i,v in pairs(changeLog) do
		xCL = xCL..changeLog[i].."\n"
	end
	opxL("Changelog | Ver: "..ver.." | NUpd: "..nextupd,xCL)
end

function useCommand.massjoindate()
	opx("-","Showing join dates")
	xJD = ""
	for i,v in pairs(cmdp:GetPlayers()) do --Shit to change
		local res = game:HttpGet("https://users.roblox.com/v1/users/"..v.UserId)
		local tbl = json.decode(res)
		local Created = tbl["created"]:split("T")
		local Created2 = Created[2]:split(".")
		xJD = xJD..v.Name.." joined on: "..Created[1].." "..Created2[1].."\n"
	end
	opxL("Mass-JoinDate",xJD)
end

function useCommand.massage()
	opx("-","Showing ages")
	xAge = ""
	for i,v in pairs(cmdp:GetPlayers()) do --Shit to change
		local Years = string.split(v.AccountAge/365,".")
		xAge = xAge..v.Name.."(s) account is "..Years[1].." year(s) old or "..v.AccountAge.." day(s) old\n"
	end
	opxL("Mass-Age",xAge)
end

function useCommand.massid()
	opx("-","Showing IDs")
	xID = ""
	for i,v in pairs(cmdp:GetPlayers()) do --Shit to change
		xID = xID..v.Name.."s User ID is "..v.UserId.."\n"
	end
	opxL("Mass-ID",xID)
end

function useCommand.massos()
	opx("-","Showing OSs")
	xOS = ""
	for i,v in pairs(cmdp:GetPlayers()) do --Shit to change
		xOS = xOS..v.Name.."s OS is "..v.OsPlatform.."\n"
	end
	opxL("Mass-OS",xOS)
end

function useCommand.rejoindiff()
	rejoining = true
	if syn.queue_on_teleport then
		syn.queue_on_teleport('game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()')
	end
	if not arguments[2] then
		opx("-","Current Guid: "..game.JobId)
		local URL = ("https://www.roblox.com/games/getgameinstancesjson?placeId="..game.PlaceId.."&startindex=")
		local fuck = game:HttpGet(URL.."0")
		local Http = game:GetService("HttpService"):JSONDecode(fuck)
		opx("-","Searching places, this may take a while...")
		local PPlaces = {}
		for i = 0,Http.TotalCollectionSize do
			local fuck = game:HttpGet(URL..i)
			local Http = game:GetService("HttpService"):JSONDecode(fuck)
			for i,v in pairs(Http.Collection) do
				local SplitCapacityForNum = v.PlayersCapacity:split(" ")
				if SplitCapacityForNum[1] ~= v.Capacity then
					opx("-","Possible server, Guid: "..v.Guid)
					PPlaces[#PPlaces+1] = {GUID = v.Guid}
				else
					opx("-","Server is full, or does not exist; Skipping...")
				end
			end
		end
		opx("-","All places finalized, randomizing...")
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,PPlaces[math.random(1,#PPlaces)].GUID,cmdlp)
	elseif arguments[2] == "quick" or arguments[2] == "q" then
		local xPlace = 0
		local URL = ("https://www.roblox.com/games/getgameinstancesjson?placeId="..game.PlaceId.."&startindex=")
		local fuck = game:HttpGet(URL.."0")
		local Http = game:GetService("HttpService"):JSONDecode(fuck)
		opx("-","Searching places...")
		for i = 0,30 do
			local fuck = game:HttpGet(URL..math.random(1,30))
			local Http = game:GetService("HttpService"):JSONDecode(fuck)
			for i,v in pairs(Http.Collection) do
				local SplitCapacityForNum = v.PlayersCapacity:split(" ")
				if SplitCapacityForNum[1] ~= v.Capacity then
					xPlace = v.Guid
					break
				end
			end
		end
		wait(1)
		opx("-","All places finalized, randomizing...")
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,xPlace,cmdlp)
	elseif arguments[2] == "smallest" then
		opx("-","Current Guid: "..game.JobId)
    	local URL = ("https://www.roblox.com/games/getgameinstancesjson?placeId="..game.placeId.."&startindex=")
    	local fuck = game:HttpGet(URL.."0")
    	local Http, Places = game:GetService("HttpService"):JSONDecode(fuck), {}
    	opx("-","Searching places, this may take a while...")
    	for i = Http.TotalCollectionSize, 0, -1 do
    		local fuck = game:HttpGet(URL..i)
    		local Http, last = game:GetService("HttpService"):JSONDecode(fuck), 99
    		for _,v in pairs(Http.Collection) do
    			local cur = tonumber(v.PlayersCapacity:match('[0-9]*'))
    			if cur < last and cur > 0 then
    				Places[#Places + 1] = v.Guid
    				last = cur
    				opx("-","Possible server, Guid: "..v.Guid)
    			end
    		end
    		if #Places > 1 then break end
    	end
    	opx("-","All places finalized, randomizing...")
    	local TPS, N = game:GetService('TeleportService'), #Places
    	TPS:TeleportToPlaceInstance(game.PlaceId,Places[N],LP)
    	TPS.TeleportInitFailed:Connect(function()opx("-","Teleport failed. Trying another server...")N=N-1 TPS:TeleportToPlaceInstance(game.PlaceId,Places[N],cmdlp)end)
	elseif arguments[2] == "small" then
		opx("-","Current Guid: "..game.JobId)
		local URL = ("https://www.roblox.com/games/getgameinstancesjson?placeId="..game.PlaceId.."&startindex=")
		local fuck = game:HttpGet(URL.."0")
		local Http = game:GetService("HttpService"):JSONDecode(fuck)
		opx("-","Searching places, this may take a while...")
		local PPlaces = {}
		for i = 0,Http.TotalCollectionSize do
			local fuck = game:HttpGet(URL..i)
			local Http = game:GetService("HttpService"):JSONDecode(fuck)
			for i,v in pairs(Http.Collection) do
				MathPC = v.PlayersCapacity:split(" ")
				if MathPC[1] == "7" or MathPC[1] == "6" or MathPC[1] == "5" or MathPC[1] == "4" or MathPC[1] == "3" or MathPC[1] == "2" or MathPC[1] == "1" then
					opx("-","Possible server, Guid: "..v.Guid)
					PPlaces[#PPlaces+1] = {GUID = v.Guid}
				else
					opx("-","Server is too big, or does not exist; Skipping...")
				end
			end
		end
		opx("-","All places finalized, randomizing...")
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,PPlaces[math.random(1,#PPlaces)].GUID,cmdlp)
	elseif arguments[2] == "largest" then
		opx("-","Current Guid: "..game.JobId)
    	local URL = ("https://www.roblox.com/games/getgameinstancesjson?placeId="..game.PlaceId.."&startindex=")
    	local fuck = game:HttpGet(URL.."0")
    	local Http, Place = game:GetService("HttpService"):JSONDecode(fuck)
    	opx("-","Searching places, this may take a while...")
    	for i = 0, Http.TotalCollectionSize do
    		local fuck = game:HttpGet(URL..i)
    		local Http = game:GetService("HttpService"):JSONDecode(fuck)
    		for _,v in pairs(Http.Collection) do
    			if v.PlayersCapacity:match('[0-9]*') ~= tostring(v.Capacity) then
    				Place = v.Guid
    				opx("-","Possible server, Guid: "..Place)
    				break
    			else
    				opx("-","Server is full, or does not exist; Skipping...")
    			end
    		end
    		if Place then break end
    	end
    	opx("-","All places finalized, randomizing...")
    	game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,Place,cmdlp)
	else
		opx("*","Not a valid preset!")
	end
	wait(3)
	rejoining = false
end

function useCommand.streamsnipe()
	if syn.queue_on_teleport then
		syn.queue_on_teleport('game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()')
	end
	rejoining = true
	if arguments[3] then
		arguments[2] = cmdp:GetUserIdFromNameAsync(arguments[2])
		opx("-","Scanning games, this may take a while...")
		local res = game:HttpGet("https://www.roblox.com/headshot-thumbnail/json?userId="..arguments[2].."&width=48&height=48")
		local HttpURL = json.decode(res)
		local ThumbGrab = HttpURL["Url"]
		local Thumb = ThumbGrab
		if arguments[3] == "this" then
			local URL2 = ("https://www.roblox.com/games/getgameinstancesjson?placeId="..game.PlaceId.."&startindex=")
		else
			local URL2 = ("https://www.roblox.com/games/getgameinstancesjson?placeId="..arguments[3].."&startindex=")    
		end
		local fuck = game:HttpGet(URL2.."0")
		local Http = game:GetService("HttpService"):JSONDecode(fuck)
		for i = 0,Http.TotalCollectionSize do
			local fuck = game:HttpGet(URL2..i)
			local Http = game:GetService("HttpService"):JSONDecode(fuck)
			for x,n in pairs(Http.Collection) do
				for _,v in pairs(n.CurrentPlayers) do
					if v.Thumbnail.Url == Thumb then
						opx("-","Possible server, Guid: "..n.Guid)
						GUID = n.Guid
					end
				end
			end
		end
		opx("-","Found user! Teleporting...")
		game:GetService("TeleportService"):TeleportToPlaceInstance(arguments[3],GUID,cmdlp)
	else
		opx("*","3 arguments are needed!")
	end
	wait(3)
	rejoining = false
end

function useCommand.irltime()
	opx("-","Set time to IRL")
	for i,v in pairs(game:GetService("Lighting"):GetChildren()) do
		if v:IsA("Sky") then v:Destroy() end
	end
	local reg = game:GetService("LocalizationService"):GetCountryRegionForPlayerAsync(game:GetService("Players").LocalPlayer) --Shit to change
	local URL = ("https://restcountries.eu/rest/v2/alpha/"..reg)
	local fuck = game:HttpGet(URL)
	local Http = game:GetService("HttpService"):JSONDecode(fuck)
	print(Http.latlng[1])
	game:GetService("Lighting").GeographicLatitude = Http.latlng[1]
	while wait(1) do
		game:GetService("Lighting").TimeOfDay = os.date("!*t").hour + 1 ..":"..os.date("!*t").min..":00"
	end
end

function useCommand.directjoin()
	if arguments[3] then
		rejoining = true
		if syn.queue_on_teleport then
			syn.queue_on_teleport('game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()')
		end
		opx("-","Joining server")
		if arguments[2] == "this" then arguments[2] = game.PlaceId end
		game:GetService("TeleportService"):TeleportToPlaceInstance(arguments[2],arguments[3],cmdlp)
		wait(3)
		rejoining = false
	else
		opx("*","3 arguments are required!")
	end
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/others/depthoffield",true))()
-- Thanks to MrAsyncRoblox on github, full credits.

function useCommand.timedcmd()
	if arguments[3] then
		opx("-","Executing command after time given")
		local useOf = arguments[3]
		local useArgs = getstring(3)
		GoodNewBad = findCmd(useOf)
		wait(arguments[2])
		arguments = useArgs
		useCommand[GoodNewBad]()
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.randomos()
	opx("-","Changed your OS to a random string")
	local tbl1 = game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/others/randomchat/1"):gsub('"',""):gsub('{',""):gsub('}',""):split(",")--english words
	local tbl2 = game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/others/randomchat/2"):gsub('"',""):gsub('{',""):gsub('}',""):split(",")--tbl1
	local tbl3 = game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/others/randomchat/3"):gsub('"',""):gsub('{',""):gsub('}',""):split(",")--tbl2
	local tbl4 = game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/others/randomchat/4"):gsub('"',""):gsub('{',""):gsub('}',""):split(",")--tbl3
	local tbl5 = game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/others/randomchat/5"):gsub('"',""):gsub('{',""):gsub('}',""):split(",")--tbl5
	local tbl6 = game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/others/randomchat/6"):gsub('"',""):gsub('{',""):gsub('}',""):split(",")--tbl4
	local tbl7 = game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/others/randomchat/7"):gsub('"',""):gsub('{',""):gsub('}',""):split(",")--tbl6
	local tbl8 = game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/others/randomchat/8"):gsub('"',""):gsub('{',""):gsub('}',""):split(",")--tbl7
	local tbl9 = game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/others/randomchat/9"):gsub('"',""):gsub('{',""):gsub('}',""):split(",")--tbl8
	local r1 = math.random(1,#tbl1)
	local r2 = math.random(1,#tbl2)
	local r3 = math.random(1,#tbl3)
	local r4 = math.random(1,#tbl4)
	local r5 = math.random(1,#tbl5)
	local r6 = math.random(1,#tbl6)
	local r7 = math.random(1,#tbl7)
	local r8 = math.random(1,#tbl8)
	local r9 = math.random(1,#tbl9)
	cmdlp.OsPlatform = tbl1[r1].." "..tbl2[r2].." "..tbl3[r3].." "..tbl4[r4].." "..tbl5[r5].." "..tbl6[r6].." "..tbl7[r7].." "..tbl8[r8].." "..tbl9[r9]
end

function useCommand.depth()
	DynamicDepth:Enable()
	if arguments[2] then
		opx("-","Set DepthOfField to "..arguments[2])
		DynamicDepth:SetFocusRadius(arguments[2])
	else
		opx("-","Set DepthOfField to 15")
		DynamicDepth:SetFocusRadius(15)
	end
end

function useCommand.undepth()
	opx("-","Disabled DepthOfField")
	DynamicDepth:SetFocusRadius(10000)
end

function useCommand.cinematic()
	game:GetService("CoreGui").TopBar.Enabled = false
	game:GetService("CoreGui").RobloxGui.Backpack.Visible = false
	game:GetService("CoreGui").RobloxGui.PlayerListMaster.Visible = false
	opx("-","Enabled cinematic mode")
end

function useCommand.uncinematic()
	game:GetService("CoreGui").TopBar.Enabled = true
	game:GetService("CoreGui").RobloxGui.Backpack.Visible = true
	game:GetService("CoreGui").RobloxGui.PlayerListMaster.Visible = true
	opx("-","Disabled cinematic mode")
end
-- freecam by roblox ty roblox lol
pi    = math.pi
abs   = math.abs
clamp = math.clamp
exp   = math.exp
rad   = math.rad
sign  = math.sign
sqrt  = math.sqrt
tan   = math.tan

ContextActionService = game:GetService("ContextActionService")
Players = cmdp
RunService = game:GetService("RunService")
StarterGui = game:GetService("StarterGui")
UserInputService = game:GetService("UserInputService")
Workspace = workspace

LocalPlayer = cmdlp
if not LocalPlayer then
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
	LocalPlayer = cmdlp
end

Camera = Workspace.CurrentCamera
Workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
	local newCamera = Workspace.CurrentCamera
	if newCamera then
		Camera = newCamera
	end
end)

TOGGLE_INPUT_PRIORITY = Enum.ContextActionPriority.Low.Value
INPUT_PRIORITY = Enum.ContextActionPriority.High.Value
FREECAM_MACRO_KB = {Enum.KeyCode.LeftShift, Enum.KeyCode.P}

NAV_GAIN = Vector3.new(1, 1, 1)*64
PAN_GAIN = Vector2.new(0.75, 1)*8
FOV_GAIN = 300

PITCH_LIMIT = rad(90)

VEL_STIFFNESS = 1.5
PAN_STIFFNESS = 1.0
FOV_STIFFNESS = 4.0

Spring = {} do
	Spring.__index = Spring

	function Spring.new(freq, pos)
		local self = setmetatable({}, Spring)
		self.f = freq
		self.p = pos
		self.v = pos*0
		return self
	end

	function Spring:Update(dt, goal)
		local f = self.f*2*pi
		local p0 = self.p
		local v0 = self.v

		local offset = goal - p0
		local decay = exp(-f*dt)

		local p1 = goal + (v0*dt - offset*(f*dt + 1))*decay
		local v1 = (f*dt*(offset*f - v0) + v0)*decay

		self.p = p1
		self.v = v1

		return p1
	end

	function Spring:Reset(pos)
		self.p = pos
		self.v = pos*0
	end
end

cameraPos = Vector3.new()
cameraRot = Vector2.new()
cameraFov = 0

velSpring = Spring.new(VEL_STIFFNESS, Vector3.new())
panSpring = Spring.new(PAN_STIFFNESS, Vector2.new())
fovSpring = Spring.new(FOV_STIFFNESS, 0)

Input = {} do
	local thumbstickCurve do
		K_CURVATURE = 2.0
		K_DEADZONE = 0.15

		function fCurve(x)
			return (exp(K_CURVATURE*x) - 1)/(exp(K_CURVATURE) - 1)
		end

		function fDeadzone(x)
			return fCurve((x - K_DEADZONE)/(1 - K_DEADZONE))
		end

		function thumbstickCurve(x)
			return sign(x)*clamp(fDeadzone(abs(x)), 0, 1)
		end
	end

	gamepad = {
		ButtonX = 0,
		ButtonY = 0,
		DPadDown = 0,
		DPadUp = 0,
		ButtonL2 = 0,
		ButtonR2 = 0,
		Thumbstick1 = Vector2.new(),
		Thumbstick2 = Vector2.new(),
	}

	keyboard = {
		W = 0,
		A = 0,
		S = 0,
		D = 0,
		E = 0,
		Q = 0,
		U = 0,
		H = 0,
		J = 0,
		K = 0,
		I = 0,
		Y = 0,
		Up = 0,
		Down = 0,
		LeftShift = 0,
		RightShift = 0,
	}

	mouse = {
		Delta = Vector2.new(),
		MouseWheel = 0,
	}

	NAV_GAMEPAD_SPEED  = Vector3.new(1, 1, 1)
	NAV_KEYBOARD_SPEED = Vector3.new(1, 1, 1)
	PAN_MOUSE_SPEED    = Vector2.new(1, 1)*(pi/64)
	PAN_GAMEPAD_SPEED  = Vector2.new(1, 1)*(pi/8)
	FOV_WHEEL_SPEED    = 1.0
	FOV_GAMEPAD_SPEED  = 0.25
	NAV_ADJ_SPEED      = 0.75
	NAV_SHIFT_MUL      = 0.25

	navSpeed = 1

	function Input.Vel(dt)
		navSpeed = clamp(navSpeed + dt*(keyboard.Up - keyboard.Down)*NAV_ADJ_SPEED, 0.01, 4)

		kGamepad = Vector3.new(
			thumbstickCurve(gamepad.Thumbstick1.x),
			thumbstickCurve(gamepad.ButtonR2) - thumbstickCurve(gamepad.ButtonL2),
			thumbstickCurve(-gamepad.Thumbstick1.y)
		)*NAV_GAMEPAD_SPEED

		kKeyboard = Vector3.new(
			keyboard.D - keyboard.A + keyboard.K - keyboard.H,
			keyboard.E - keyboard.Q + keyboard.I - keyboard.Y,
			keyboard.S - keyboard.W + keyboard.J - keyboard.U
		)*NAV_KEYBOARD_SPEED

		shift = UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService:IsKeyDown(Enum.KeyCode.RightShift)

		return (kGamepad + kKeyboard)*(navSpeed*(shift and NAV_SHIFT_MUL or 1))
	end

	function Input.Pan(dt)
		kGamepad = Vector2.new(
			thumbstickCurve(gamepad.Thumbstick2.y),
			thumbstickCurve(-gamepad.Thumbstick2.x)
		)*PAN_GAMEPAD_SPEED
		kMouse = mouse.Delta*PAN_MOUSE_SPEED
		mouse.Delta = Vector2.new()
		return kGamepad + kMouse
	end

	function Input.Fov(dt)
		kGamepad = (gamepad.ButtonX - gamepad.ButtonY)*FOV_GAMEPAD_SPEED
		kMouse = mouse.MouseWheel*FOV_WHEEL_SPEED
		mouse.MouseWheel = 0
		return kGamepad + kMouse
	end

	do
		function Keypress(action, state, input)
			keyboard[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
			return Enum.ContextActionResult.Sink
		end

		function GpButton(action, state, input)
			gamepad[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
			return Enum.ContextActionResult.Sink
		end

		function MousePan(action, state, input)
			delta = input.Delta
			mouse.Delta = Vector2.new(-delta.y, -delta.x)
			return Enum.ContextActionResult.Sink
		end

		function Thumb(action, state, input)
			gamepad[input.KeyCode.Name] = input.Position
			return Enum.ContextActionResult.Sink
		end

		function Trigger(action, state, input)
			gamepad[input.KeyCode.Name] = input.Position.z
			return Enum.ContextActionResult.Sink
		end

		function MouseWheel(action, state, input)
			mouse[input.UserInputType.Name] = -input.Position.z
			return Enum.ContextActionResult.Sink
		end

		function Zero(t)
			for k, v in pairs(t) do
				t[k] = v*0
			end
		end

		function Input.StartCapture()
			ContextActionService:BindActionAtPriority("FreecamKeyboard", Keypress, false, INPUT_PRIORITY,
				Enum.KeyCode.W, Enum.KeyCode.U,
				Enum.KeyCode.A, Enum.KeyCode.H,
				Enum.KeyCode.S, Enum.KeyCode.J,
				Enum.KeyCode.D, Enum.KeyCode.K,
				Enum.KeyCode.E, Enum.KeyCode.I,
				Enum.KeyCode.Q, Enum.KeyCode.Y,
				Enum.KeyCode.Up, Enum.KeyCode.Down
			)
			ContextActionService:BindActionAtPriority("FreecamMousePan",          MousePan,   false, INPUT_PRIORITY, Enum.UserInputType.MouseMovement)
			ContextActionService:BindActionAtPriority("FreecamMouseWheel",        MouseWheel, false, INPUT_PRIORITY, Enum.UserInputType.MouseWheel)
			ContextActionService:BindActionAtPriority("FreecamGamepadButton",     GpButton,   false, INPUT_PRIORITY, Enum.KeyCode.ButtonX, Enum.KeyCode.ButtonY)
			ContextActionService:BindActionAtPriority("FreecamGamepadTrigger",    Trigger,    false, INPUT_PRIORITY, Enum.KeyCode.ButtonR2, Enum.KeyCode.ButtonL2)
			ContextActionService:BindActionAtPriority("FreecamGamepadThumbstick", Thumb,      false, INPUT_PRIORITY, Enum.KeyCode.Thumbstick1, Enum.KeyCode.Thumbstick2)
		end

		function Input.StopCapture()
			navSpeed = 1
			Zero(gamepad)
			Zero(keyboard)
			Zero(mouse)
			ContextActionService:UnbindAction("FreecamKeyboard")
			ContextActionService:UnbindAction("FreecamMousePan")
			ContextActionService:UnbindAction("FreecamMouseWheel")
			ContextActionService:UnbindAction("FreecamGamepadButton")
			ContextActionService:UnbindAction("FreecamGamepadTrigger")
			ContextActionService:UnbindAction("FreecamGamepadThumbstick")
		end
	end
end

function GetFocusDistance(cameraFrame)
	local znear = 0.1
	local viewport = Camera.ViewportSize
	local projy = 2*tan(cameraFov/2)
	local projx = viewport.x/viewport.y*projy
	local fx = cameraFrame.rightVector
	local fy = cameraFrame.upVector
	local fz = cameraFrame.lookVector

	local minVect = Vector3.new()
	local minDist = 512

	for x = 0, 1, 0.5 do
		for y = 0, 1, 0.5 do
			local cx = (x - 0.5)*projx
			local cy = (y - 0.5)*projy
			local offset = fx*cx - fy*cy + fz
			local origin = cameraFrame.p + offset*znear
			local _, hit = Workspace:FindPartOnRay(Ray.new(origin, offset.unit*minDist))
			local dist = (hit - origin).magnitude
			if minDist > dist then
				minDist = dist
				minVect = offset.unit
			end
		end
	end

	return fz:Dot(minVect)*minDist
end

local function StepFreecam(dt)
	local vel = velSpring:Update(dt, Input.Vel(dt))
	local pan = panSpring:Update(dt, Input.Pan(dt))
	local fov = fovSpring:Update(dt, Input.Fov(dt))

	local zoomFactor = sqrt(tan(rad(70/2))/tan(rad(cameraFov/2)))

	cameraFov = clamp(cameraFov + fov*FOV_GAIN*(dt/zoomFactor), 1, 120)
	cameraRot = cameraRot + pan*PAN_GAIN*(dt/zoomFactor)
	cameraRot = Vector2.new(clamp(cameraRot.x, -PITCH_LIMIT, PITCH_LIMIT), cameraRot.y%(2*pi))

	local cameraCFrame = CFrame.new(cameraPos)*CFrame.fromOrientation(cameraRot.x, cameraRot.y, 0)*CFrame.new(vel*NAV_GAIN*dt)
	cameraPos = cameraCFrame.p

	Camera.CFrame = cameraCFrame
	Camera.Focus = cameraCFrame*CFrame.new(0, 0, -GetFocusDistance(cameraCFrame))
	Camera.FieldOfView = cameraFov
end

local PlayerState = {} do
	mouseBehavior = ""
	mouseIconEnabled = ""
	cameraType = ""
	cameraFocus = ""
	cameraCFrame = ""
	cameraFieldOfView =  ""
	screenGuis = {}

	function PlayerState.Push()
		cameraFieldOfView = Camera.FieldOfView
		Camera.FieldOfView = 70

		cameraType = Camera.CameraType
		Camera.CameraType = Enum.CameraType.Custom

		cameraCFrame = Camera.CFrame
		cameraFocus = Camera.Focus

		mouseIconEnabled = UserInputService.MouseIconEnabled
		UserInputService.MouseIconEnabled = true

		mouseBehavior = UserInputService.MouseBehavior
		UserInputService.MouseBehavior = Enum.MouseBehavior.Default
	end

	function PlayerState.Pop()
		Camera.FieldOfView = 70

		Camera.CameraType = cameraType
		cameraType = nil

		Camera.CFrame = cameraCFrame
		cameraCFrame = nil

		Camera.Focus = cameraFocus
		cameraFocus = nil

		UserInputService.MouseIconEnabled = mouseIconEnabled
		mouseIconEnabled = nil

		UserInputService.MouseBehavior = mouseBehavior
		mouseBehavior = nil
	end
end

function StartFreecam(p)
	local cameraCFrame = Camera.CFrame
	if p then
		cameraCFrame = p
	end
	cameraRot = Vector2.new()
	cameraPos = cameraCFrame.p
	cameraFov = Camera.FieldOfView

	velSpring:Reset(Vector3.new())
	panSpring:Reset(Vector2.new())
	fovSpring:Reset(0)

	PlayerState.Push()
	RunService:BindToRenderStep("Freecam", Enum.RenderPriority.Camera.Value, StepFreecam)
	Input.StartCapture()
end

function StopFreecam()
	Input.StopCapture()
	RunService:UnbindFromRenderStep("Freecam")
	PlayerState.Pop()
	workspace.Camera.FieldOfView = 70
end

FreecamOn = false
function useCommand.freecam()
	opx("-","Activated freecam")
	StartFreecam()
	wait(.1)
	navSpeed = permfcspeed
	FreecamOn = true
	NAV_KEYBOARD_SPEED = Vector3.new(permfcspeed, permfcspeed, permfcspeed)
end

function useCommand.freecamspeed()
	if cmdnum(arguments[2]) then
		opx("-","Freecam speed set to "..arguments[2])
		navSpeed = arguments[2]
		NAV_KEYBOARD_SPEED = Vector3.new(arguments[2], arguments[2], arguments[2])
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.permfreecamspeed()
	if cmdnum(arguments[2]) then
		opx("-","Set perm free cam speed")
		permfcspeed = arguments[2]
		updatesaves()
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.unfreecam()
	opx("-","De-Activated freecam")
	StopFreecam()
	FreecamOn = false
	wait(1)
	workspace.Camera.FieldOfView = 70
end

function useCommand.freecamgoto()
	if FreecamOn then
		if arguments[2] then
			local target = findplr(arguments[2])
			if target then
				StopFreecam()
				wait(.1)
				opx("-","Teleported freecam to "..target.Name)
				StartFreecam(target.Character.HumanoidRootPart.CFrame)
				navSpeed = permfcspeed
				NAV_KEYBOARD_SPEED = Vector3.new(permfcspeed, permfcspeed, permfcspeed)
			else
				opx("*","Player does not exist!")
			end
		else
			opx("*","2 arguments are required!")
		end
	else
		opx("*","Freecam isnt running!")
	end
end

function useCommand.freecamfreegoto()
	if FreecamOn then
		if arguments[4] then
			StopFreecam()
			wait(.1)
			opx("-","Teleported freecam to pos")
			StartFreecam(arguments[2],arguments[3],arguments[4])
			navSpeed = permfcspeed
			NAV_KEYBOARD_SPEED = Vector3.new(permfcspeed, permfcspeed, permfcspeed)
		else
			opx("*","2 arguments are required!")
		end
	else
		opx("*","Freecam isnt running!")
	end
end

function useCommand.freecamloadpos()
	if FreecamOn then
		if arguments[2] then
			StopFreecam()
			wait(.1)
			wpNS = getstring(2)
			for i,v in pairs(WPs) do
				local xc = WPs[i].C[1]
				local yc = WPs[i].C[2]
				local zc = WPs[i].C[3]
				if tostring(WPs[i].N) == tostring(wpNS) then
					StartFreecam(xc,yc,zc)
					navSpeed = permfcspeed
					NAV_KEYBOARD_SPEED = Vector3.new(permfcspeed, permfcspeed, permfcspeed)
				end
			end
			opx("Teleported to "..tostring(wpNS))
		else
			opx("*","2 arguments are needed for this command!")
		end
	else
		opx("*","Freecam isnt running!")
	end
end

function useCommand.freecamgotopart()
	if FreecamOn then
		if arguments[2] then
			StopFreecam()
			wait(.1)
			opx("-","Teleported freecam to part")
			for i,v in pairs(workspace:GetDescendants()) do
				if v.Name == getstring(2) then
					StartFreecam(v.CFrame)
					navSpeed = permfcspeed
					NAV_KEYBOARD_SPEED = Vector3.new(permfcspeed, permfcspeed, permfcspeed)
					break
				else
					opx("*","Part does not exist")
				end
			end
		else
			opx("*","2 arguments are required!")
		end
	else
		opx("*","Freecam isnt running!")
	end
end

function useCommand.freecamgotoclass()
	if FreecamOn then
		if arguments[2] then
			StopFreecam()
			wait(.1)
			opx("-","Teleported freecam to class")
			for i,v in pairs(workspace:GetDescendants()) do
				if v.ClassName == getstring(2) then
					StartFreecam(v.CFrame)
					navSpeed = permfcspeed
					NAV_KEYBOARD_SPEED = Vector3.new(permfcspeed, permfcspeed, permfcspeed)
					break
				else
					opx("*","Part does not exist")
				end
			end
		else
			opx("*","2 arguments are required!")
		end
	else
		opx("*","Freecam isnt running!")
	end
end

function useCommand.friendjoin()
	rejoining = true
	if arguments[2] then
		opx("-","Scanning friends, this may take some time")
		local target = arguments[2]
		local friends = cmdlp:GetFriendsOnline(200)
		for i,v in pairs(friends) do
			if v.UserName == target then
				if v.LastLocation then
					if syn.queue_on_teleport then
						syn.queue_on_teleport('game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()')
					end
					opx("-","Joining friend")
					game:GetService("TeleportService"):TeleportToPlaceInstance(v.PlaceId,v.GameId,cmdlp)
				else
					opx("*","Friend isnt in a game!")
				end
				break
			end
		end
		opx("*","Friend dosent exist!")
	else
		opx("*","2 arguments are required!")
	end
	wait(3)
	rejoining = false
end

function useCommand.hotkeynoclip()
	if arguments[2] then
		hotkeynoclip = arguments[2]
		updatesaves()
		opx("-","Added key to noclip")
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.spoofos()
	if arguments[2] then
		opx("-","Spoofed OS to "..getstring(2))
		cmdlp.OsPlatform = getstring(2)
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.noshow()
	if arguments[2] == "on" then
		opx("-","No-Show is now on")
		sDetect = false
		cmdlp.OsPlatform = "Win32"
		updatesaves()
	elseif arguments[2] == "off" then
		opx("-","No-Show is now off")
		sDetect = true
		sethiddenproperty = sethiddenproperty or set_hidden_prop
		cmdlp.MaximumSimulationRadius = 139
		sethiddenproperty(cmdlp, "SimulationRadius", 139)
		updatesaves()
	else
		opx("*","A valid preset is needed!")
	end
end

function useCommand.servers()
	local URL = ("https://www.roblox.com/games/getgameinstancesjson?placeId="..game.PlaceId.."&startindex=")
	local fuck = game:HttpGet(URL.."0")
	local Http = game:GetService("HttpService"):JSONDecode(fuck)
	opx("-","Searching places, this may take a while...")
	local xServers = Http.TotalCollectionSize.." | "
	for i = 0,Http.TotalCollectionSize do
		local fuck = game:HttpGet(URL..i)
		local Http = game:GetService("HttpService"):JSONDecode(fuck)
		for i,v in pairs(Http.Collection) do
			MathPC = v.PlayersCapacity:split(" ")
			opx("-","Possible server, Guid: "..v.Guid)
			xServers = xServers..v.PlayersCapacity..", "
		end
	end
	opx("-","Listed all servers")
	opxL("Servers",xServers)
end

function useCommand.antikick()
	opx("-","Anti-Kick enabled")
	local meta = debug.getmetatable(game)
	local newindex = meta.__newindex
	local namecall = meta.__namecall
	setreadonly(meta,false)
	meta.__namecall = newcclosure(function(self,...)
		local args = {...}
		local t = getnamecallmethod()
		if t == "Kick" then
			return wait(9e9)
		end
		return namecall(self,...)
	end)
end

function useCommand.cmdinfo()
	local useOf = giveCmd(arguments[2])
	local CSplus = useOf.CMD:split(",")
	opx("-",CSplus[1]..". "..CSplus[2].." "..CSplus[3].." = "..CSplus[4])
	opxL("Command",CSplus[1]..". "..CSplus[2].." "..CSplus[3].." = "..CSplus[4])
end

function useCommand.sentinelexplorer()
	opx("-","Loading SENTINEL DEX")
	loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/others/sdex", true))()
	opx("-","Loaded SENTINEL DEX")
end

Pxrts = {}
function useCommand.truesight()
	opx("-","Truesight is now on")
	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA("BasePart") and v.Transparency == 1 then
			v.Transparency = 0
			Pxrts[#Pxrts+1] = v
		end
	end
end

LoopFling = false
function useCommand.loopfling()
    if arguments[2] then
        target = findplr(arguments[2])
        if target then
            while LoopFling do
                arguments = {"fling",target.Name}
                useCommand.fling()
                repeat wait(.1) until target.Character ~= nil and target.Character:FindFirstChild('HumanoidRootPart')
            end
        else
            opx("*","Player does not exist!")    
        end
    else
        opx("*","2 arguments are required!")
    end
end

function useCommand.unloopfling()
    opx("-","Stopped loop flinging")
    LoopFling = false
end

function useCommand.nomouse()
    opx("-","Mouse disabled, use ; to focus back on the CMDbar")
    game:GetService("UserInputService").MouseIconEnabled = false
end

function useCommand.yesmouse()
    opx("-","Mouse enabled")
    game:GetService("UserInputService").MouseIconEnabled = true
end

function useCommand.untruesight()
	opx("-","Truesight is now off")
	for i,v in pairs(Pxrts) do
		v.Transparency = 1
	end
end

local PDisabled = {}
function useCommand.disableplayer()
	if arguments[2] then
		local target = findplr(arguments[2])
		if target then
		    target.Character.Head.face.Transparency = 1
			opx("-","Disabled "..target.Name)
			PDisabled[#PDisabled+1] = target
			local UserNum = #PDisabled
			for i,v in pairs(target.Character:GetDescendants()) do
				if v:IsA("BasePart") then
					v.Transparency = 1
				end
			end
			target.CharacterAdded:Connect(function(Character)
				if PDisabled[UserNum] ~= nil then
					for i,v in pairs(Character:GetDescendants()) do
						if v:IsA("BasePart") then
							v.Transparency = 1
						end
					end
				end
			end)
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.enableplayer()
	if arguments[2] then
		local target = findplr(arguments[2])
		if target then
		    target.Character.Head.face.Transparency = 0
			opx("-","Enabled "..target.Name)
			for i,v in pairs(target.Character:GetDescendants()) do
				if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
					v.Transparency = 0
				end
			end
			for i,v in pairs(PDisabled) do
				if target == PDisabled[i] then
					table.remove(PDisabled,i)
				end
			end
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.gotopart()
	if arguments[2] then
		for i,v in pairs(workspace:GetDescendants()) do
			if v.Name == getstring(2) then
				opx("-","Teleported to part")
				cmdlp.Character.Humanoid.Jump = true
				cmdlp.Character.HumanoidRootPart.CFrame = v.CFrame
				break
			else
				opx("*","Part does not exist")
			end
		end
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.clientbringpart()
	if arguments[2] then
		for i,v in pairs(workspace:GetDescendants()) do
			if v.Name == getstring(2) then
				opx("-","Brought part")
				v.CFrame = cmdlp.Character.HumanoidRootPart.CFrame
				break
			else
				opx("*","Part does not exist")
			end
		end
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.clientdeletepart()
	if arguments[2] then
		for i,v in pairs(workspace:GetDescendants()) do
			if v.Name == getstring(2) then
				opx("-","Deleted part")
				v:Destroy()
				break
			else
				opx("*","Part does not exist")
			end
		end
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.copyoutput()
	if cmdnum(arguments[3]) then
		local start = arguments[2]
		local breaker = arguments[3]
		setclipboard(output1.Text:sub(start,breaker))
		opx("-","Copied latest output")
	else
		setclipboard(output1.Text)
		opx("-","Copied latest output")
	end
end

function useCommand.copypath()
	if arguments[2] then
		for i,v in pairs(workspace:GetDescendants()) do
			if v.Name == getstring(2) then
				opx("-","Copied path of part")
				setclipboard(v:GetFullName())
				break
			else
				opx("*","Part does not exist")
			end
		end
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.outputbind()
	if arguments[2] == "chat" then
		ChatBind = true
		updatesaves()
		opx("-","Output switched to chat")
	elseif arguments[2] == "default" then
		ChatBind = false
		updatesaves()
		opx("-","Output switched to default")
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.clearwaves()
	opx("-","Made all waves clear")
	workspace.Terrain.WaterReflectance = 0
	workspace.Terrain.WaterTransparency = 1
	workspace.Terrain.WaterColor = Color3.fromRGB(255,255,255)
end

function useCommand.calmwaves()
	opx("-","Made all waves calm")
	workspace.Terrain.WaterWaveSize = 0
	workspace.Terrain.WaterWaveSpeed = 10
end

function useCommand.fov()
	if cmdnum(arguments[2]) then
		workspace.Camera.FieldOfView = arguments[2]
		opx("-","Set field of view to "..arguments[2])
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.volume()
	if cmdnum(arguments[2]) then
		opx("-","System Volume is now "..arguments[2])
		UserSettings():GetService("UserGameSettings").MasterVolume = arguments[2]
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.graphics()
	if cmdnum(arguments[2]) then
		opx("-","System Graphics is now "..arguments[2])
		settings().Rendering.QualityLevel = arguments[2]
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.mousesensitivity()
	if cmdnum(arguments[2]) then
		opx("-","Changed mouse sensitivity to "..arguments[2])
		game:GetService("UserInputService").MouseDeltaSensitivity = arguments[2]
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.animspeed()
	if arguments[2] then
		opx("-","Sped up animations")
		for i,v in pairs(cmdlp.Character.Humanoid:GetPlayingAnimationTracks()) do
			v:AdjustSpeed(arguments[2])
		end
	else
		opx("-","2 arguments are required!")
	end
end

function useCommand.noprompt()
	local PromptHandler = game:GetService("CoreGui").PurchasePromptApp.PurchasePromptUI
	NoPrompt = true
	opx("-","No prompt enabled")
	PromptHandler.ChildAdded:Connect(function(AnnoyingRobuxGrabPromptHere) 
		if NoPrompt == true then
			AnnoyingRobuxGrabPromptHere:Destroy()
		end 
	end)
end

function useCommand.yesprompt()
	opx("-","No prompt disabled")
	NoPrompt = false
end

function useCommand.rappu()
	if arguments[2] then
		local target = findplr(arguments[2])
		if target then
			local URL = ("https://inventory.roblox.com/v1/users/"..target.UserId.."/assets/collectibles?sortOrder=Asc&limit=100")
			local fuck = game:HttpGet(URL)
			local Http = game:GetService("HttpService"):JSONDecode(fuck)
			local RAP = 0
			function ListItems(Look)
				for i,v in pairs(Look.data) do
					if v.recentAveragePrice ~= nil then
						RAP = RAP+v.recentAveragePrice
					end
				end
			end
			ListItems(Http)
			Pages = 1
			for i = 1,500 do
				if Http.nextPageCursor ~= null then
					local fuck = game:HttpGet(URL.."&cursor="..Http.nextPageCursor)
					Http = game:GetService("HttpService"):JSONDecode(fuck)
					ListItems(Http)
					Pages = Pages+1
				else
					cmdrs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(target.Name.." has "..RAP.."RAP, "..Pages.."pgs checked","All")
					opx("-",target.Name.." has "..RAP.."RAP, "..Pages.."pgs checked")
					break
				end
			end
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.rappr()
	if arguments[2] then
		local target = findplr(arguments[2])
		if target then
			local URL = ("https://inventory.roblox.com/v1/users/"..target.UserId.."/assets/collectibles?sortOrder=Asc&limit=100")
			local fuck = game:HttpGet(URL)
			local Http = game:GetService("HttpService"):JSONDecode(fuck)
			local RAP = 0
			function ListItems(Look)
				for i,v in pairs(Look.data) do
					if v.recentAveragePrice ~= nil then
						RAP = RAP+v.recentAveragePrice
					end
				end
			end
			ListItems(Http)
			Pages = 1
			for i = 1,500 do
				if Http.nextPageCursor ~= null then
					local fuck = game:HttpGet(URL.."&cursor="..Http.nextPageCursor)
					Http = game:GetService("HttpService"):JSONDecode(fuck)
					ListItems(Http)
					Pages = Pages+1
				else
					opx("-",target.Name.." has "..RAP.."RAP, "..Pages.."pgs checked")
					break
				end
			end
		else
			opx("*","Player does not exist!")
		end
	else
		opx("*","2 arguments are required!")
	end
end

PGUI = {}
function useCommand.noguis()
	opx("-","No guis enabled")
	for i,v in pairs(cmdlp.PlayerGui:GetDescendants()) do
		if v:IsA("Frame") and v.Visible == true then
			v.Visible = false
			PGUI[#PGUI+1] = v
		end
	end
end

function useCommand.yesguis()
	opx("-","No guis disabled")
	for i,v in pairs(PGUI) do
		v.Visible = true
	end
end

GTS = {}
function useCommand.guitruesight()
	opx("-","Gui truesight enabled")
	for i,v in pairs(cmdlp.PlayerGui:GetDescendants()) do
		if v:IsA("Frame") and v.Visible == false then
			v.Visible = true
			GTS[#GTS+1] = v
		end
	end
end

function useCommand.unguitruesight()
	opx("-","Gui truesight disabled")
	for i,v in pairs(GTS) do
		v.Visible = false
	end
end

BGs = {}
function useCommand.nobillboardguis()
	opx("-","Turned off all billboardguis")
	YesBgs = true
	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA("BillboardGui") or v:IsA("SurfaceGui") then
			v.Enabled = false
			BGs[#BGs+1] = v
		end
	end
end

function useCommand.yesbillboardguis()
	opx("-","Turned on all billboardguis")
	for i,v in pairs(BGs) do
		v.Enabled = true
	end
end

function useCommand.grippos()
	if cmdnum(arguments[4]) then
		local tool = cmdlp.Character:FindFirstChildOfClass("Tool")
		tool.Parent = cmdlp.Backpack
		tool.GripPos = Vector3.new(arguments[2],arguments[3],arguments[4])
		tool.Parent = cmdlp.Character
		opx("-","Set GripPos")
	else
		opx("*","2 arguments are required!")
	end
end

SWs = false
function useCommand.shiftwalkspeed()
	if cmdnum(arguments[2]) then
		opx("-","Shift walkspeed enabled")
		SWs = true
		cmduis.InputBegan:Connect(function(input)
			if SWs == true and cmduis:IsKeyDown(Enum.KeyCode.LeftShift) then
				cmdlp.Character.Humanoid.WalkSpeed = arguments[2]
			end
		end)
		cmdm.KeyUp:connect(function(key)
			if SWs == true and key == "0" then
				cmdlp.Character.Humanoid.WalkSpeed = 16
			end
		end)
	else
		opx("-","Shift walkspeed enabled")
		SWs = true
		cmduis.InputBegan:Connect(function(input)
			if SWs == true and cmduis:IsKeyDown(Enum.KeyCode.LeftShift) then
				cmdlp.Character.Humanoid.WalkSpeed = permwalkspeed
			end
		end)
		cmdm.KeyUp:connect(function(key)
			if SWs == true and key == "0" then
				cmdlp.Character.Humanoid.WalkSpeed = 16
			end
		end)
	end
end

function useCommand.unshiftwalkspeed()
	opx("-","Shift walkspeed disabled")
	SWs = false
	cmdlp.Character.Humanoid.WalkSpeed = 16
end

function useCommand.noresult()
	output1.Text = output2.Text
	output2.Text = output3.Text
	output3.Text = output4.Text
	output4.Text = output5.Text
	output5.Text = output6.Text
	output6.Text = output7.Text
	output7.Text = output8.Text
	output8.Text = output9.Text
end
local bAe = Instance.new("Animation")
bAe.AnimationId = "rbxassetid://259438880"
local cAe = Instance.new("Animation")
cAe.AnimationId = "rbxassetid://181526230"
local dAe = Instance.new("Animation")
dAe.AnimationId = "rbxassetid://33796059"
function useCommand.retard()
	if arguments[2] == "1" then
		if btAe then btAe:Stop() end
		if ctAe then ctAe:Stop() end
		if dtAe then dtAe:Stop() end
		btAe = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(bAe)
		btAe:Play(.1, 1, 1e3)
	elseif arguments[2] == "2" then
		if btAe then btAe:Stop() end
		if ctAe then ctAe:Stop() end
		if dtAe then dtAe:Stop() end
		ctAe = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(cAe)
		ctAe:Play(.1, 1, 1)
		dtAe = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(dAe)
		dtAe:Play(.1, 1, 1e8)
	else
		if btAe then btAe:Stop() end
		if ctAe then ctAe:Stop() end
		if dtAe then dtAe:Stop() end
		btAe = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(bAe)
		btAe:Play(.1, 1, 1e3)
		useCommand.spin()
	end
	opx("-","Now being a retard")
end

function useCommand.unretard()
	if btAe then btAe:Stop() useCommand.unspin() end
	if ctAe then ctAe:Stop() end
	if dtAe then dtAe:Stop() end
	opx("-","Stopped being a retard")
end

xAnchored = {}
xOrig = {}

function grabUnanchored(Model)
	for i,part in pairs(Model:GetDescendants()) do
		if part:IsA("BasePart" or "UnionOperation" or "Model") and part.Anchored == false and part:IsDescendantOf(cmdlp.Character) == false then
			part.Massless = true
			part.CanCollide = false
			if part:FindFirstChildOfClass("BodyPosition") == nil then
				local mover = Instance.new("BodyPosition", part)
				table.insert(xAnchored, mover)
				xOrig[#xOrig+1] = {pos = mover.Position, par = mover}
				mover.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
			else
				part.BodyPosition:Destroy()
				local mover = Instance.new("BodyPosition", part)
				table.insert(xAnchored, mover)
				xOrig[#xOrig+1] = {pos = mover.Position, par = mover}
				mover.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
			end
		end
	end
end

IHaveSimmed = false
function useCommand.simulationradius()
	sethiddenproperty = sethiddenproperty or set_hidden_prop
	gethiddenproperty = gethiddenproperty or get_hidden_prop
	if not sethiddenproperty or not gethiddenproperty then
		opx("*","Your exploit does not support this command. There is nothing we can do.")
		return
	end
	IHaveSimmed = true
	if arguments[2] == "max" then
		opx("-","Updated simulation radius")
		coroutine.resume(coroutine.create(function()
			settings().Physics.AllowSleep = false
			game:GetService("RunService").RenderStepped:Connect(function()
				for i,v in pairs(cmdp:GetPlayers()) do --Shit to change
					if v ~= cmdlp then
						v.MaximumSimulationRadius = 0.1
						sethiddenproperty(cmdlp, "SimulationRadius", 0)
					else
						v.MaximumSimulationRadius = math.pow(math.huge, math.huge)
						sethiddenproperty(cmdlp, "SimulationRadius", math.pow(math.huge,2))
					end
				end
			end)
		end))
	else
		opx("-","Updated simulation radius")
		coroutine.resume(coroutine.create(function()
			settings().Physics.AllowSleep = false
			game:GetService("RunService").RenderStepped:Connect(function()
				for i,v in pairs(cmdp:GetPlayers()) do --Shit to change
					if v ~= cmdlp then
						v.MaximumSimulationRadius = 0.1
						sethiddenproperty(cmdlp, "SimulationRadius", 0)
					else
						v.MaximumSimulationRadius = math.pow(math.huge, math.huge)
						sethiddenproperty(cmdlp, "SimulationRadius", math.pow(arguments[2],2))
					end
				end
			end)
		end))
	end
end

IHaveGrabbed = false
function useCommand.grabunanchored()
	if IHaveSimmed == true then
		IHaveGrabbed = true
		if arguments[2] then
			opx("-","Updated anchored parts list from "..arguments[2])
			for i,v in pairs(worksapce:GetDescendants()) do
				if v.Name == arguments[2] then
					UnanchoredPart = v.Name
					break
				end
			end
			grabUnanchored(UnanchoredPart)
		else
			opx("-","Updated anchored parts list from workspace")
			grabUnanchored(workspace)
		end
	else
		opx("*","You need to do .simulationradius max first!")
	end
end

function useCommand.setbackunanchored()
	if IHaveGrabbed == true then
		opx("-","Set back unanchored parts")
		for i,v in pairs(xOrig) do
			if xAnchored[i] ~= nil then
				xOrig[i].par.Position = target.Character:FindFirstChild("HumanoidRootPart").CFrame:PointToWorldSpace(xOrig[i].pos)
			end
		end
	else
		opx("*","You need to do .grabunanchored first!")
	end
end

function useCommand.clearunanchored()
	xAnchored = {}
	opx("-","Cleared unanchored parts list")
end

function useCommand.bringunanchored()
	if IHaveGrabbed == true then
		if arguments[2] then
			target = findplr(arguments[2])
			if target then
				opx("-","Brung unanchored parts")
				for i,v in pairs(xAnchored) do
					if xAnchored[i] ~= nil then
						xAnchored[i].Position = target.Character:FindFirstChild("HumanoidRootPart").CFrame:PointToWorldSpace(Vector3.new(gotoPosSide,gotoPosHead,gotoPos))
					end
				end
			else
				opx("*","Player does not exist!")
			end
		else
			opx("*","2 arguments are required for this command!")
		end
	else
		opx("*","You need to do .grabunanchored first!")
	end
end

function useCommand.removeunanchored()
	if IHaveGrabbed == true then
		opx("-","Removed unanchored parts")
		for i,v in pairs(xAnchored) do
			if xAnchored[i] ~= nil then
				xAnchored[i].Position = target.Character:FindFirstChild("HumanoidRootPart").CFrame:PointToWorldSpace(Vector3.new(0,-500,0))
			end
		end
	else
		opx("*","You need to do .grabunanchored first!")
	end
end

local fullCircle = 2 * math.pi
local radius = 10
function getXAndZPositions(angle)
	local x = math.cos(angle) * radius
	local z = math.sin(angle) * radius
	return x, z
end

ActUp = {}
SpinningFor = false
function useCommand.spinunanchored()
	if IHaveGrabbed == true then
		if arguments[2] then
			ActUp = {}
			opx("-","Spinning unanchored parts")
			SpinningFor = true
			iffy = arguments[2]
			normspin = 0
			function RotatePointAtDist(Point, Angle, Dist)
				local Rotation = CFrame.Angles(0, math.rad(Angle),0)
				return (CFrame.new(Point) *  Rotation * CFrame.new(0,0,Dist)).Position
			end
			for i,v in pairs(xAnchored) do
				normspin = normspin + 30
				xAnchored[i].Position = RotatePointAtDist(cmdlp.Character.HumanoidRootPart.Position, normspin, iffy)
				ActUp[#ActUp+1] = normspin
			end
			game:GetService("RunService").RenderStepped:Connect(function()
				if SpinningFor == true then
					for i,v in pairs(xAnchored) do
						xAnchored[i].Position = RotatePointAtDist(cmdlp.Character.HumanoidRootPart.Position, ActUp[i]-.1, iffy)
						ActUp[i] = ActUp[i]-.1
					end
				end
			end)
		else
			opx("-","2 arguments are required!")
		end
	else
		opx("*","You need to do .grabunanchored first!")
	end
end

function useCommand.unspinunanchored()
	opx("-","Stopped spinning unanchored parts")
	SpinningFor = false
end

function useCommand.animationsteal()
	if arguments[2] then
		if cmd15(cmdlp) then
			local target = findplr(arguments[2])
			if target then
				if cmd15(target) then
					if target.Character:FindFirstChild("Animate") then
						if game.Players.LocalPlayer.Character:FindFirstChild("Animate") then
							checkifmyanim = game.Players.LocalPlayer.Character:FindFirstChild("animstorage")
							if checkifmyanim then
								local z = game.Players.LocalPlayer.Character:FindFirstChild("Animate")
								if z then z:Destroy() end
								checkifmyanim.Name = "Animate"
								checkifmyanim.Disabled = false
							end
						end
						local z = game.Players.LocalPlayer.Character:FindFirstChild("Animate")
						if z then
							z.Name = "animstorage"
							z.Disabled = true
						end
			
						local newanim = target.Character.Animate:Clone()
						newanim.Parent = game.Players.LocalPlayer.Character
						newanim.Name = "Animate"
						opx("-","Stole "..target.Name.."'s animations")
					else
						opx("*","Target is missing proper animations.")
					end
				else
					opx("*","Player is not R15!")
				end
			else
				opx("*","Player does not exist!")
			end
		else
			opx("*","R15 required!")
		end
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.unanimationsteal()
	if cmd15(cmdlp) then
		if cmdlp.Character:FindFirstChild("animstorage") then
			if cmdlp.Character:FindFirstChild("Animate") then
				cmdlp.Character:FindFirstChild("Animate"):Destroy()
			end
			local as = cmdlp.Character:FindFirstChild("animstorage")
			as.Name = "Animate"
			as.Disabled = false
			opx("-","Animations reverted to normal.")
		else
			opx("*","Animations haven't been stolen!")
		end
	else
		opx("*","R15 required!")
	end
end

function useCommand.nohurtoverlay()
	opx("-","Turned off hurt overlay")
	hurtOverlay = true
	game:GetService("CoreGui").TopBar.FullScreenFrame.HurtOverlay:GetPropertyChangedSignal("Visible"):Connect(function()
		if hurtOverlay == true then
			game:GetService("CoreGui").TopBar.FullScreenFrame.HurtOverlay.Visible = false
		end
	end)
end

function useCommand.yeshurtoverlay()
	opx("-","Turned on hurt overlay")
	hurtOverlay = false
end

function useCommand.atmosphere()
	if arguments[2] then
		opx("-","Set Atmosphere to "..arguments[2])
		local atmsky = Instance.new("Sky",cmdl)
		local atm = Instance.new("Atmosphere",cmdl)
		atm.Density = arguments[2]
	else
		opx("-","Set Atmosphere to 1")
		local atmsky = Instance.new("Sky",cmdl)
		local atm = Instance.new("Atmosphere",cmdl)
		atm.Density = 1
	end
end

function useCommand.unatmosphere()
	opx("-","Removed atmosphere")
	local atm = cmdl.Atmosphere
	atm:Destroy()
end

function useCommand.removefx()
	opx("-","Removed FX")
	for i,v in pairs(cmdl:GetDescendants()) do
		if v:IsA("Atmosphere") or v:IsA("SunRaysEffect") or v:IsA("BloomEffect") or v:IsA("BlurEffect") then
			v:Destroy()
		end
	end
end

Chaos = false
function useCommand.chaos()
	Chaos = true
	opx("-","Chaos mode is now on")
	repeat
		for i = 1,30 do
			local New = math.random(1, #CMDN)
			if CMDN[New].N ~= "exit" and CMDN[New].N ~= "rejoin" and CMDN[New].N ~= "rejoindiff" then
				if CMDN[New].N:sub(1,2) ~= "un" and CMDN[New].N:sub(1,3) ~= "yes" then
					arguments = CMDN[New].N:split(" ")
					useCommand[CMDN[New].N]()
					wait(5)
					for i,v in pairs(CMDN) do
						if CMDN[i].N == "un"..CMDN[New].N or CMDN[i].N == "yes"..CMDN[New].N then
							useCommand[CMDN[i].N]()
						end
					end
					break
				end
			end
		end
	until Chaos == false
end	
function useCommand.unchaos()
	opx("-","Chaos mode is now off")
	Chaos = false
end

function useCommand.gotofreecam()
	opx("-","Teleported to freecam")
	cmdlp.Character.HumanoidRootPart.CFrame = workspace.Camera.CFrame
end

function useCommand.compilecommand()
	local argSplit = arguments[2]:split("/")
	local xCMD = 'CMDN[#CMDN+1] = {N = '
	xCMD = xCMD..'"'..argSplit[1]..'", A = {'
	if argSplit[2] == "nil" then 
		xCMD = xCMD..'""}, CMD = "' 
	else 
		table.remove(argSplit,1)
		for i,v in pairs(argSplit) do
			if i ~= #argSplit then
				xCMD = xCMD..'"'..argSplit[i]..'",'
			else
				xCMD = xCMD..'"'..argSplit[i]..'"}, CMD = "'
			end
		end
	end
	local argSplit2 = arguments[2]:split("/")
	if argSplit2[2] == "nil" then table.remove(argSplit2,2) end
	xCMD = xCMD..currentCMDNUM+1 ..','
	for i,v in pairs(argSplit2) do
		if i ~= #argSplit2 then
			xCMD = xCMD..argSplit2[i]..'/'
		else
			xCMD = xCMD..argSplit2[i]..','
		end
	end
	xCMD = xCMD..'('..arguments[3]..'),'
	xCMD = xCMD..getstring(4)..'"}'
	setclipboard(xCMD)
	opx("-","Compiled command to your clipboard.")
end

function useCommand.newaudios()
	local URL = ("https://search.roblox.com/catalog/json?CatalogContext=2&Category=9&SortType=3&IncludeNotForSale=true&ResultsPerPage=")
	if not arguments[2] then arguments[2] = "10" end
	local fuck = ame:HttpGet(URL..arguments[2])
	local Http = game:GetService("HttpService"):JSONDecode(fuck)
	xIds = ""
	for i,v in pairs(Http) do
		xIds = xIds..v.AssetId.."\n"
	end
	opxL("Newest-IDs",xIds)
	opx("Listed new audios")
end

function useCommand.randomcmd()
	local CCmd = CMDN[math.random(1,#CMDN)]
	useCommand[CCmd.N]()
	opx("-",CCmd.N.." use .? (cmd) for more info")
end

function useCommand.replayintro()
	opx("-","Replaying intro")
	local Sound2 = Instance.new("Sound",game:GetService("Lighting"))
	Sound2.SoundId = "http://www.roblox.com/asset/?id="..5032588119
	Sound2:Play()
	wait(2.638)
	Sound2:Destroy()
end

function useCommand.masscmd()
	opx("-","Executing CMDs")
	table.remove(arguments,1)
	for i,v in pairs(arguments) do
		useCommand[arguments[i]]()
	end
end

function useCommand.mass()
	opx("-","Executing player command in mass")
	FinalCMD = findCmd(arguments[2])
	for i,v in pairs(cmdp:GetPlayers()) do --Shit to change
		arguments = FinalCMD.." "..v.Name
		arguments = arguments:split(" ")
		useCommand[FinalCMD]()
	end
end

function FindPart(Name)
	for i,v in pairs(workspace:GetDescendants()) do
		if v.Name == Name then
			return v
		end
	end
end

function useCommand.touchinterests()
	opx("-","Fired touch interests")
	if arguments[2] then
		local Part = FindPart(arguments[2])
		for i,v in pairs(Part:GetDescendants()) do
			if v:IsA("TouchInterest") then
				v.Parent.CFrame = cmdlp.Character.HumanoidRootPart.CFrame
			end
		end
	else
		for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA("TouchInterest") then
				v.Parent.CFrame = cmdlp.Character.HumanoidRootPart.CFrame
			end
		end
	end
end

function useCommand.singletouchinterest()
	opx("-","Fired touch interest")
	local touch = FindPart(arguments[2])
	touch.Parent.CFrame = cmdlp.Character.HumanoidRootPart.CFrame
end

bgMd = {}
function useCommand.billboardmaxdistance()
	opx("-","All billboards now have max distance")
	for _,v in pairs(workspace:GetDescendants()) do
		if v:IsA("BillboardGui") then
			table.insert(bgMd,{p = v, m = v.MaxDistance, a = v.AlwaysOnTop})
			v.MaxDistance = inf
			v.AlwaysOnTop = true
		end
	end
end

function useCommand.unbillboardmaxdistance()
	opx("-","All billboards no longer have max distance")
	for _,v in pairs(bgMd) do
		v.p.MaxDistance = m
		v.p.AlwaysOnTop = a
	end
end

bgTs = {}
function useCommand.billboardtruesight()
	opx("-","All billboards now showing")
	for _,v in pairs(workspace:GetDescendants()) do
		if v:IsA("BillboardGui") then
			table.insert(bgTs,v)
			v.Enabled = true
		end
	end
end

function useCommand.unbillboardtruesight()
	opx("-","All billboards no longer showing")
	for _,v in pairs(bgTs) do
		v.Enabled = false
	end
end

sgTs = {}
function useCommand.surfaceguitruesight()
	opx("-","All surface guis now showing")
	for _,v in pairs(workspace:GetDescendants()) do
		if v:IsA("SurfaceGui") then
			table.insert(sgTs,v)
			v.Enabled = true
		end
	end
end

function useCommand.unsurfaceguitruesight()
	opx("-","All surface guis no longer showing")
	for _,v in pairs(sgTs) do
		v.Enabled = false
	end
end

cdMd = {}
function useCommand.clickdetectormaxdistance()
	opx("-","All click detectors now have max distance")
	for _,v in pairs(workspace:GetDescendants()) do
		if v:IsA("ClickDetector") then
			table.insert(cdMd,{p = v, m = v.MaxActivationDistance})
			v.MaxActivationDistance = 10000
		end
	end
end

function useCommand.unclickdetectormaxdistance()
	opx("-","All click detectors no longer have max distance")
	for _,v in pairs(cdMd) do
		v.p.MaxActivationDistance = m 
	end
end

function useCommand.clickdetectors()
	if fireclickdetector then
		opx("-","Fired click detectors")
		if arguments[2] then
			local Part = FindPart(arguments[2])
			for i,v in pairs(Part:GetDescendants()) do
				if v:IsA("ClickDetector") then
					fireclickdetector(v)
				end
			end
		else
			for i,v in pairs(workspace:GetDescendants()) do
				if v:IsA("ClickDetector") then
					fireclickdetector(v)
				end
			end
		end
	else
		opx("*","Your exploit does not support fireclickdetector!")
	end
end

function useCommand.singleclickdetector()
	if fireclickdetector then
		opx("-","Fired click detector")
		local touch = FindPart(arguments[2])
		fireclickdetector(touch)
	else
		opx("*","Your exploit does not support fireclickdetector!")
	end
end

function useCommand.gotoclass()
	if arguments[2] then
		opx("-","Teleported to class part")
		local Part
		for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA(arguments[2]) then Part = v; break end
		end
		cmdlp.Character.HumanoidRootPart.CFrame = Part.CFrame
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.gotobpclass()
	if arguments[2] then
		for i,v in pairs(workspace:GetDescendants()) do
			if v.ClassName == getstring(2) then
				opx("-","Bypass Teleported to part")
				cmdlp.Character.Humanoid.Jump = true
				game:GetService("TweenService"):Create(cmdlp.Character.HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear), {CFrame = v.CFrame}):Play()
				break
			end
		end
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.hatgiverspam()
	local HATS = {}
	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA("TouchTransmitter") and v.Parent.Name ~= "Handle" then 
			local Check1, Check2 = v.Parent:FindFirstChildOfClass("SpecialMesh"), v.Parent:FindFirstChildOfClass("Script")
			if Check1 ~= nil and Check2 ~= nil then
				HATS[#HATS+1] = v.Parent
			end
		end
	end
	local UseFire = false
	if firetouchinterest then UseFire = true end
	local HRP = cmdlp.Character.HumanoidRootPart
	local X = true
	local Number = 0
	repeat game:GetService("RunService").RenderStepped:Wait()
		for i,v in pairs(HATS) do
			if UseFire then
				firetouchinterest(HRP, HATS[i], 1)
				HATS[i].CFrame = HRP.CFrame
				HATS[i].CanCollide = false
				HATS[i].Transparency = 1
			else
				HATS[i].CFrame = HRP.CFrame
				HATS[i].CanCollide = false
				HATS[i].Transparency = 1
			end
		end
		for i,v in pairs(cmdlp.Character:GetChildren()) do
			if v:IsA("Hat" or "Accessory") then 
				v.Parent = workspace
				Number = Number+1 
			end
		end
	until X == false
end

function useCommand.playingaudios()
	opx("-","Showing playing audios")
	local xAudio = ""
	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA("Sound") then
			xAudio = xAudio.."\n"..v.SoundId
		end
	end
	opxL("Audios Playing",xAudio)
end

function useCommand.testaudio()
	if cmdnum(arguments[2]) then
		opx("-","Now testing audio")
		local Sound2 = Instance.new("Sound",game:GetService("Lighting"))
		Sound2.SoundId = "http://www.roblox.com/asset/?id="..arguments[2]
		Sound2:Play()
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.debugging()
	if arguments[2] == "on" then
		Debugging = true
		opx("-","Debugging turned on")
	elseif arguments[2] == "off" then
		Debugging = false
		opx("-","Debugging turned off")
	else
		opx("*","2 arguments are required!")
	end
end

function useCommand.freereach()
	if arguments[4] and cmdnum(arguments[4]) then
		for i,v in pairs(cmdlp.Character:GetDescendants()) do
			if v:IsA("Tool") then
				currentToolSize = v.Handle.Size
				local a = Instance.new("SelectionBox",v.Handle)
				a.Name = "SelectionBoxCreated"
				a.Adornee = v.Handle
				a.Color3 = Color3.new(255, 255, 255)
				a.LineThickness = 0.01
				v.Handle.Massless = true
				v.Handle.Size = Vector3.new(arguments[2],arguments[3],arguments[4])
				v.GripPos = Vector3.new(0,0,0)
				v.Parent = cmdlp.Backpack
				v.Parent = cmdlp.Character
			end
		end
		opx("-","Reach set")
	else
		opx("*","4 arguments are needed for this command!")
	end
end

Lines = {}
function UpdateTracer()
	for i,v in pairs(Lines) do
		v:Remove()
	end
	Lines = {}
	for i,v in pairs(cmdp:GetPlayers()) do --Shit to change
		if v ~= cmdlp then
			if v and v.Character ~= nil then
				Head = v.Character:FindFirstChild("Head")
				if Head ~= nil then
					local PosChar, withinScreenBounds = workspace.Camera:WorldToViewportPoint(Head.Position)
					if withinScreenBounds then
						local Line = Drawing.new("Line")
						Line.Visible = true
						Line.From = Vector2.new(workspace.Camera.ViewportSize.X / 2, workspace.Camera.ViewportSize.Y)
						Line.To = Vector2.new(PosChar.X, PosChar.Y)
						Line.Color = Color3.new(255,255,255)
						Line.Thickness = 2
						Line.Transparency = 1
						Lines[#Lines+1] = Line
					end
				end
			end
		end
	end
end

function useCommand.robloxqtversion()
	opx("-",game:HttpGet("http://setup.roblox.com/versionQTStudio"))
end

function useCommand.teleportstring()
	if arguments[2] == "cb" or "copy" then
		opx("-","game:GetService('TeleportService'):TeleportToPlaceInstance('"..game.JobId.."',"..game.PlaceId..",game:GetService('Players').LocalPlayer)")
		setclipboard("game:GetService('TeleportService'):TeleportToPlaceInstance('"..game.JobId.."',"..game.PlaceId..",game:GetService('Players').LocalPlayer)")
	else
		opx("-","game:GetService('TeleportService'):TeleportToPlaceInstance('"..game.JobId.."',"..game.PlaceId..",game:GetService('Players').LocalPlayer)")
	end
end

function useCommand.copyoutputlarger()
	if cmdnum(arguments[3]) then
		local start = arguments[2]
		local breaker = arguments[3]
		setclipboard(opxScrolling.Text:sub(start,breaker))
		opx("-","Copied latest output larger")
	else
		setclipboard(opxScrolling.Text)
		opx("-","Copied latest output larger")
	end
end

function useCommand.unfriend()
	if arguments[2] == "all" then
		opx("-","Removed friendship from everyone")
		for i,v in pairs(cmdp:GetPlayers()) do
			cmdlp:RevokeFriendship(v)
		end
	else
		target = findplr(arguments[2])
		if target then
			opx("-","Removed friendship from "..target.Name)
			cmdlp:RevokeFriendship(target)
		else
			opx("*","Player does not exist!")
		end
	end
end

function useCommand.cutforceplayloop()
	fpall = false
	opx("-","Stopped forceplay loop")
end

function useCommand.rejoinrefresh()
    rejoining = true
    if syn.queue_on_teleport then
        local c = cmdlp.Character.HumanoidRootPart.CFrame
        syn.queue_on_teleport(string.format([[
            game:GetService('ReplicatedFirst'):RemoveDefaultLoadingScreen()
            repeat wait(.1) until game:GetService('Players').LocalPlayer
            game:GetService('Players').LocalPlayer.CharacterAdded:Connect(function()
                wait(.25)
                game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(%f, %f, %f)
            end)
        ]], c.X, c.Y, c.Z))
    end
    opx("-","Rejoining game")
    game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, cmdp)
    wait(3)
    rejoining = false
end

TracerEnabled = false
function useCommand.tracers()
	if Drawing then
		opx("-","Tracers enabled")
		for i,v in pairs(Lines) do
			v:Remove()
		end
		Lines = {}
		TracerEnabled = true
		repeat
			UpdateTracer()
			wait(.0001)
		until TracerEnabled == false
	else
		opx("*","Your exploit does not support Drawing API!")
	end
end

function useCommand.untracers()
	opx("-","Tracers disabled")
	TracerEnabled = false
	for i,v in pairs(Lines) do
		v:Remove()
	end
	Lines = {}
end

function useCommand.antifling()
	if antifling == nil then 
		antifling = true
	else
		antifling = not antifling
	end
	local function Collisionless(person)
		if antifling == true and person.Character then
			for _,child in pairs(person.Character:GetDescendants()) do
				if child:IsA("BasePart") and child.CanCollide == true then
					child.CanCollide = false
				end
			end
		end
	end	--Shit to change
	for _,v in pairs(game:GetService("Players"):GetPlayers()) do	 --Shit to change
		if v ~= cmdlp then
			local antifling = game:GetService('RunService').Stepped:connect(function()
				Collisionless(v)
			end)
		end
	end	--Shit to change
	game.Players.PlayerAdded:Connect(function()
		if v ~= cmdlp and antifling then
			local antifling = game:GetService('RunService').Stepped:connect(function()
				Collisionless(v)
			end)
		end
	end)
	if antifling == true then
		opx("-","Antifling enabled.")
	else
		opx("-","Antifling disabled.")
	end
end

user.Changed:connect(function()
	user.Text = user.Text:sub(1,13)..">"
end)
---------------------------------------|
-- GUI Hotkeys: -----------------------|
cmdm.KeyDown:connect(function(key)
	if key == hotkeyopen then
		if holder.Visible == false then
			if force == true then
				wait(.1)
				output.Visible = true
			end
			holder.Visible = true
		else
			if output.Visible == true then
				force = true
			else
				force = false
			end
			output.Visible = false
			holder.Visible = false
		end
	elseif key == hotkeyopx and _G.dontTween == false then
		if output.Visible == true then
			for i = 1,10 do
				wait(.1)
				for i,v in pairs(output:GetDescendants()) do
					if v:IsA("ImageLabel") then
						v.ImageTransparency = v.ImageTransparency + 0.1
						v:TweenSize(UDim2.new(0,525,0,0), "InOut", "Quart",1)
					elseif v:IsA("TextLabel") then
						v.TextTransparency = v.TextTransparency + 0.1
					end
				end
				output.Transparency = output.Transparency + 0.1
				output:TweenPosition(UDim2.new(0, output.Position.X.Offset, 0, 290), "InOut", "Quart",1)
				output:TweenSize(UDim2.new(0,525,0,0), "InOut", "Quart",1)
			end
			output.Visible = false
			holder.Active = false
		else
			output.Visible = true
			holder.Active = true
			for i = 1,10 do
				wait(.1)
				for i,v in pairs(output:GetDescendants()) do
					if v:IsA("ImageLabel") then
						v.ImageTransparency = v.ImageTransparency - 0.1
						v:TweenSize(UDim2.new(0,525,0,253), "InOut", "Quart",1)
					elseif v:IsA("TextLabel") then
						v.TextTransparency = v.TextTransparency - 0.1
					end
				end
				output.Transparency = output.Transparency - 0.1
				output:TweenPosition(UDim2.new(0, -8, 0, 19), "InOut", "Quart",1)
				output:TweenSize(UDim2.new(0,525,0,253), "InOut", "Quart",1)
			end
		end
	elseif key == hotkeyfocus then
		cmd:CaptureFocus(wait())
	elseif key == hotkeyfly then
		if FLYING == true then
			FLYING = false
			game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
		else
			sFLY()
			speedofthefly = permflyspeed
		end
	elseif key == hotkeyxray then
		if transparent == true then
			transparent = false
			x(transparent)
		else
			transparent = true
			x(transparent)
		end
	elseif key == hotkeynoclip then
		if Clip == false then
			if Noclipping then
				Noclipping:Disconnect()
			end
			Clip = true
		else
			noclip()
		end
	elseif key == hotkeyaimbot then
		if Enabledaimbot == false then
			Enabledaimbot = true
			wait()
			BodyAimbot()
		else
			Enabledaimbot = false
			wait()
			BodyAimbot()
		end
	elseif key == hotkeyesp then
		if ESPenabled == false then
			Find()
			ESPEnabled = true
			repeat
				wait()
				if ESPEnabled == true then
					Find()
				end
			until ESPEnabled == false
		else
			ESPEnabled = false
			Track = false
			for i = 1,10 do
			    for i,v in pairs(cmdp:GetPlayers()) do
            	    for x,y in pairs(v.Character:GetChildren()) do
            	        if y:IsA("BasePart") then
            			    y.Material = "Plastic"
            	        end
            	    end
            	end
				Clear()
				wait()
			end
		end
	else
		for i,_ in pairs(hkBinds) do
			if key == hkBinds[i].K then
				wait()
				alignFunctions(hkBinds[i].C)
				arguments = hkBinds[i].C:split(" ")
				local cmdsy = findCmd(arguments[1])
				if cmdsy ~= nil then
					if Debugging == false then
						useCommand[cmdsy]()
					else
						pcall(function() useCommand[cmdsy]() end)
					end
				else
					local invalidString = getstring(1)
					if #invalidString > 38 then
						invalidString = invalidString:sub(1,35).."..."
					end
					opx("*",invalidString.." is not a valid command.")
				end
			end
		end
	end
end)
---------------------------------------|
-- Print Function: --------------------|
if AntiCheat.PrintingOff == false then
	local StarterGui = game:GetService("StarterGui")
	StarterGui:SetCore("ChatMakeSystemMessage", {Text = "Welcome to shit, "..cmdlp.Name..".";Color = Color3.fromRGB(50, 50, 50);Font = Enum.Font.SourceSansBold;TextSize = 25})
	StarterGui:SetCore("ChatMakeSystemMessage", {Text = "Press U for output and F9 for more info!";Color = Color3.fromRGB(100, 100, 100);Font = Enum.Font.SourceSansBold;TextSize = 20})
	StarterGui:SetCore("ChatMakeSystemMessage", {Text = "To use chat commands use the prefix '"..prefix.."'";Color = Color3.fromRGB(100, 100, 100);Font = Enum.Font.SourceSansBold;TextSize = 20})
end

if AntiCheat.ScriptDetectOff then opx("*","Script detection is off due to anticheat") end
if AntiCheat.TurboNameSpam then opx("*","Turbo name spam has been turned on due to anticheat") end
if AntiCheat.HideParentInExploit then opx("*","Hidden parent in exploit due to anticheat") end
if AntiCheat.HideParentInPG then opx("*","Hidden parent in playergui due to anticheat") end
if AntiCheat.AutoAntiKick then opx("*","Turned on antikick due to anticheat") end
if AntiCheat.RemoveScripts then opx("*","Removed local scripts due to anticheat") end
if AntiCheat.IntroAudioOff then opx("*","Turned intro off due to anticheat") end
if AntiCheat.DontJumbleNames then opx("*","Jumble names is off due to anticheat") end
if AntiCheat.OneTimeScramble then opx("*","Scrambled names once due to anticheat") end
if AntiCheat.PrintingOff then opx("*","Printing has been turned off due to anticheat") end

---------------------------------------|
-- Start CMDs: ------------------------|
if #enterCMD > 0 then
	for i = 1,#enterCMD do
		wait()
		cmd:CaptureFocus()
		arguments = enterCMD[i].N:split(" ")
		local cmdsy = findCmd(arguments[1])
		if cmdsy ~= nil then
			if Debugging == false then
				useCommand[cmdsy]()
			else
				pcall(function() useCommand[cmdsy]() end)
			end
		else
			invalidString = enterCMD[i].N
			if #invalidString > 38 then
				invalidString = invalidString:sub(1,35).."..."
			end
			opx("*",invalidString.." is not a valid command.")
		end
		cmd:ReleaseFocus()
	end
end
user.Changed:connect(function()
	user.Text = user.Text:sub(1,13)..">"
end)
cmd.Focused:connect(function() 
	local NumberOf = #History
	cmduis.InputBegan:Connect(function()
		if cmduis:IsKeyDown(Enum.KeyCode.LeftShift) and cmduis:IsKeyDown(Enum.KeyCode.Backspace) then
			cmd.Text = ""
		elseif cmduis:IsKeyDown(Enum.KeyCode.Up) then
			if #History ~= 0 and NumberOf ~= 0 then
				cmd.Text = History[NumberOf]
				NumberOf = NumberOf - 1
			end
		end
	end)
end)
output.Visible = true
holder.Active = true
holder.Draggable = false

tabs = holder
mou = cmdm

tabs.MouseEnter:Connect(function()
	checkMouse = true
	mdwn = tabs.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			startpos = tabs.Position
			startdrag = input.Position
			mouseDown = true
			mou = input
			mloo = game:GetService("RunService").RenderStepped:Connect(function()
				if mouseDown then
					delta = mou.Position - startdrag
					tabs.Position = UDim2.new(startpos.X.Scale, startpos.X.Offset + delta.X, startpos.Y.Scale, startpos.Y.Offset + delta.Y)
				end
			end)
		end
	end) 
	mmoved = tabs.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			mou = input
		end
	end) 
	tabs.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			mouseDown = false
			mmoved:Disconnect()
			if mloo ~= nil then mloo:Disconnect() end
		end    
	end)
end)
tabs.MouseLeave:Connect(function()
	if mdwn then
	    mdwn:Disconnect()
	end
end)
---------------------------------------|
-- Themes: ----------------------------|
 
styleAS = dStyle:split(" ")
 
function getAsset(ID)
	return("http://www.roblox.com/Thumbs/Asset.ashx?format=png&width=420&height=420&assetId="..ID)
end
 
if dStyle == "rounded" then
	output.Style = Enum.FrameStyle.RobloxRound
elseif dStyle == "squared" then
	output.Style = Enum.FrameStyle.RobloxSquare
elseif dStyle == "blended" then
	output.Style = Enum.FrameStyle.Custom
elseif dStyle == "smalled" then
	output.Style = Enum.FrameStyle.DropShadow
elseif dStyle == "lightblue" then
	entry.BackgroundColor3 = Color3.fromRGB(170, 170, 170)
	output1.TextColor3 = Color3.fromRGB(1, 1, 1)
	output2.TextColor3 = Color3.fromRGB(1, 1, 1)
	output3.TextColor3 = Color3.fromRGB(1, 1, 1)
	output4.TextColor3 = Color3.fromRGB(1, 1, 1)
	output5.TextColor3 = Color3.fromRGB(1, 1, 1)
	output6.TextColor3 = Color3.fromRGB(1, 1, 1)
	output7.TextColor3 = Color3.fromRGB(1, 1, 1)
	output8.TextColor3 = Color3.fromRGB(1, 1, 1)
	output9.TextColor3 = Color3.fromRGB(1, 1, 1)
	cmd.TextColor3 = Color3.fromRGB(1,1,1)
	cmd.PlaceholderColor3 = Color3.fromRGB(1,1,1)
	output.Style = Enum.FrameStyle.ChatBlue
elseif dStyle == "lightgreen" then
	entry.BackgroundColor3 = Color3.fromRGB(170, 170, 170)
	output1.TextColor3 = Color3.fromRGB(1, 1, 1)
	output2.TextColor3 = Color3.fromRGB(1, 1, 1)
	output3.TextColor3 = Color3.fromRGB(1, 1, 1)
	output4.TextColor3 = Color3.fromRGB(1, 1, 1)
	output5.TextColor3 = Color3.fromRGB(1, 1, 1)
	output6.TextColor3 = Color3.fromRGB(1, 1, 1)
	output7.TextColor3 = Color3.fromRGB(1, 1, 1)
	output8.TextColor3 = Color3.fromRGB(1, 1, 1)
	output9.TextColor3 = Color3.fromRGB(1, 1, 1)
	cmd.TextColor3 = Color3.fromRGB(1,1,1)
	cmd.PlaceholderColor3 = Color3.fromRGB(1,1,1)
	output.Style = Enum.FrameStyle.ChatGreen
elseif dStyle == "lightred" then
	entry.BackgroundColor3 = Color3.fromRGB(170, 170, 170)
	output1.TextColor3 = Color3.fromRGB(1, 1, 1)
	output2.TextColor3 = Color3.fromRGB(1, 1, 1)
	output3.TextColor3 = Color3.fromRGB(1, 1, 1)
	output4.TextColor3 = Color3.fromRGB(1, 1, 1)
	output5.TextColor3 = Color3.fromRGB(1, 1, 1)
	output6.TextColor3 = Color3.fromRGB(1, 1, 1)
	output7.TextColor3 = Color3.fromRGB(1, 1, 1)
	output8.TextColor3 = Color3.fromRGB(1, 1, 1)
	output9.TextColor3 = Color3.fromRGB(1, 1, 1)
	cmd.TextColor3 = Color3.fromRGB(1,1,1)
	cmd.PlaceholderColor3 = Color3.fromRGB(1,1,1)
	output.Style = Enum.FrameStyle.ChatRed
elseif styleAS[1] == "bg" then
	output.Style = Enum.FrameStyle.Custom
	local iBG = Instance.new("ImageLabel", output)
	iBG.BackgroundColor3 = Color3.fromRGB(163,182,165)
	iBG.BackgroundTransparency = 1
	iBG.BorderSizePixel = 0
	iBG.Size = UDim2.new(0, 525, 0, 253)
	output1.Parent = iBG
	output2.Parent = iBG
	output3.Parent = iBG
	output4.Parent = iBG
	output5.Parent = iBG
	output6.Parent = iBG
	output7.Parent = iBG
	output8.Parent = iBG
	output9.Parent = iBG
	iBG.Image = getAsset(styleAS[2])
	iBG.ScaleType = Enum.ScaleType.Crop
else
	loadstring(game:HttpGet((dStyle),true))()
end
 
---------------------------------------|
-- Chat hook: -------------------------|
pcall(function()
	local chatbar = cmdlp.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar
	chatbar.Focused:connect(function()
		while chatbar:IsFocused() do
			wait()
			if chatbar.Text:lower():sub(1,#prefix) == prefix then
				cmd.Text = chatbar.Text:sub(#prefix+1,100000)
			elseif chatbar.Text:lower():sub(1,1) == '.' then
				cmd.Text = chatbar.Text:sub(2,100000)
			end
		end
	end)
end)

cmdlp.Chatted:connect(function(v)
	if Inputting then
		if v:lower():sub(1,#prefix) == prefix then
			cmd:CaptureFocus()
			cmd.Text = v:sub(#prefix+1,100000)
			cmd:ReleaseFocus()
		elseif v:lower():sub(1,1) == '.' then
			cmd:CaptureFocus()
			cmd.Text = v:sub(2,100000)
			cmd:ReleaseFocus()
		end
	end
end)

for i,v in pairs(AdmIG) do
	cmdp[AdmIG[i]].Chatted:Connect(function(a)
		if a:lower():sub(1,#prefix) == prefix then
			matchCommand = ""
			wait()
			alignFunctions(a:sub(#prefix+1,1000000))
			adminargs = a:sub(#prefix+1,1000000):split(" ")
			cmdsy = findCmd(adminargs[1])
			if cmdsy ~= nil then
				if Debugging == false then
					useCommand[cmdsy]()
				else
					pcall(function() useCommand[cmdsy]() end)
				end
			else
				invalidString = getstring(1)
				if #invalidString > 38 then
					invalidString = invalidString:sub(1,35).."..."
				end
				opx("*",invalidString.." is not a valid command.")
			end
			cmd.Text = ""
		elseif a:lower():sub(1,1) == '.' then
			matchCommand = ""
			wait()
			alignFunctions(a:sub(2,1000000))
			adminargs = a:sub(2,1000000):split(" ")
			cmdsy = findCmd(adminargs[1])
			if cmdsy ~= nil then
				if Debugging == false then
					useCommand[cmdsy]()
				else
					pcall(function() useCommand[cmdsy]() end)
				end
			else
				invalidString = getstring(1)
				if #invalidString > 38 then
					invalidString = invalidString:sub(1,35).."..."
				end
				opx("*",invalidString.." is not a valid command.")
			end
			cmd.Text = ""
		end
	end)
end

if AntiCheat.ScriptDetectOff == false then
	if sDetect == true then
	    cmdlp.MaximumSimulationRadius = 139
		if sethiddenproperty then
			sethiddenproperty(cmdlp, "SimulationRadius", 139)
		end
	end
end

if game:GetService("UserInputService").VREnabled then
	holder.Size = UDim2.new(0.385, 0,0.361, 0)
	entry.Size = UDim2.new(1.834, 0,0.152, 0)
	cmd.Size = UDim2.new(0.67, 0,0.983, 0)
	user.Size = UDim2.new(0.269, 0,1.011, 0)
	output.Size = UDim2.new(1.834, 0,1.004, 0)
	output1.Size = UDim2.new(0.261, 0,0.107, 0)
	output2.Size = UDim2.new(0.261, 0,0.107, 0)
	output3.Size = UDim2.new(0.261, 0,0.107, 0)
	output4.Size = UDim2.new(0.261, 0,0.107, 0)
	output5.Size = UDim2.new(0.261, 0,0.107, 0)
	output6.Size = UDim2.new(0.261, 0,0.107, 0)
	output7.Size = UDim2.new(0.261, 0,0.107, 0)
	output8.Size = UDim2.new(0.261, 0,0.107, 0)
	output9.Size = UDim2.new(0.261, 0,0.107, 0)
end

pcall(function()
	if AntiCheat.IntroAudioOff == false then
		Sound2:Destroy()
	end
end)

pcall(function()
	function RGBDev(Self)
		RGBDevCheck = true
		if connectionRGBDev then connectionRGBDev:Disconnect() end
		coroutine.resume(coroutine.create(function()
			connectionRGBDev = game:GetService("RunService").Heartbeat:Connect(function()
				if not debouncergb then
					if Self ~= nil and game:GetService("CoreGui").RobloxGui:FindFirstChild("PlayerListMaster") then
						for i,v in pairs(game:GetService("CoreGui").RobloxGui.PlayerListMaster.OffsetFrame.PlayerScrollList.SizeOffsetFrame.ScrollingFrameContainer.ScrollingFrameClippingFrame.ScollingFrame.OffsetUndoFrame:GetDescendants()) do
							if v:IsA("TextLabel") and v.Name == "PlayerName" and v.Text == Self then
								for i = 0, 255, 1 do 
									v.TextColor3 = Color3.fromHSV(i / 256, 0.5, 0.8)
									v.Parent.Parent.PlayerIcon.Image = "rbxasset://textures/ui/icon_admin-16.png" --rbxasset://textures/ui/PlayerList/TileShadowMissingTop.png
									game:GetService("RunService").Heartbeat:Wait()
									v.Parent.Parent.PlayerIcon.Image = "rbxasset://textures/ui/icon_admin-16.png" --rbxasset://textures/ui/PlayerList/TileShadowMissingTop.png
									debouncergb = true
								end
							end
						end
					end
				else
					for i = 0, 255 do
						game:GetService("RunService").Heartbeat:Wait()
					end
					debouncergb = false
				end
			end)
		end))
	end
end)

function colorName(Self,Tbl)
	for i,v in pairs(game:GetService("CoreGui").RobloxGui.PlayerListMaster.OffsetFrame.PlayerScrollList.SizeOffsetFrame.ScrollingFrameContainer.ScrollingFrameClippingFrame.ScollingFrame.OffsetUndoFrame:GetDescendants()) do
		if v:IsA("TextLabel") and v.Name == "PlayerName" and v.Text == Self then
			if Tbl.Tier == "1" then
				v.TextColor3 = Color3.fromRGB(255,70,70)
			elseif Tbl.Tier == "2" then
				v.TextColor3 = Color3.fromRGB(255,215,100)
			elseif Tbl.Tier == "Custom1" then
				v.TextColor3 = Color3.fromRGB(209,156,240)
			elseif Tbl.Tier == "Custom2" then
				v.TextColor3 = Color3.fromRGB(170, 1, 20)
			elseif Tbl.Tier == "Custom3" then
				v.TextColor3 = Color3.fromRGB(63, 0, 0)
			elseif Tbl.Tier == "Top" then
				RGBDev(Self)
			end
		end
	end
end

for i,v in pairs(cmdp:GetPlayers()) do
	if Devs[v.Name] then
		opx("-",v.Name.." is in your server ("..Devs[v.Name].." of Strylix-FE)")
		RGBDev(v.Name)
	elseif Donors[v.Name] then
		opx("-",v.Name.." is in your server (Donor of Strylix-FE)")
		if Donors[v.Name] == "Donor" then
			colorName(v.Name, Donors[v.Name])
		else
			colorName(v.Name, Donors[v.Name])
		end
	end
end

cmdp.PlayerAdded:Connect(function(v)
	if Devs[v.Name] then
		opx("-",v.Name.." is in your server ("..Devs[v.Name].." of Strylix-FE)")
		RGBDev(v.Name)
	elseif Donors[v.Name] then
		opx("-",v.Name.." is in your server (Donor of Strylix-FE)")	
		if Donors[v.Name] == "Donor" then
			colorName(v.Name, Donors[v.Name])
		else
			colorName(v.Name, Donors[v.Name])
		end
	end
end)
-- End --------------------------------|
