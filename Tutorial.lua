--[[

Tutorial script made exclusively to show how to use the API on the channel https://youtube.com/@Cyber.Knights
Made by LivaiTRGR (Main leader)

]]

pcall(load(gg.makeRequest("https://ggapi.000webhostapp.com/").content))


message(api.font("Welcome to the Tutorial !", Big))

print(randomize(777, 999))

isEnabled = {
	"[Disabled] ",
	"[Disabled] "
}

function Main()
showGG(false)
ranges(Other) --My device is Other, yours might be Ca for wildcraft and A for most single player games
Menu = menu({
	isEnabled[1].."Eating EXP",
	isEnabled[2].."Surprise",
	"Minimize script",
	api.font("Exit", SquareFilled)
},0,api.font("Select a hack", Asian))

if Menu == nil or Menu == 3 then
api.mini()
end

if Menu == 1 then

if isEnabled[1] == "[Disabled] " then
api.search(Other, "50;20;10", "50", float, 10, "77777")-- You can copy paste if you don't want to learn entirely
isEnabled[1] = api.switch(isEnabled[1], true)
return Main()
end

if isEnabled[1] == "[Enabled] " then
api.search(Other, "77777;20;10", "77777", float, 10, "50")
isEnabled[1] = api.switch(isEnabled[1], false)
return Main() -- That's actually needed, it's only to end the entire if statement and return to function Main, the api.switch will do everything if you don't return it 
end


end

if Menu == 2 then

if isEnabled[2] == "[Disabled] " then
api.search(Xa, "255;128::17", "255", float, 10, "16")
isEnabled[1] = api.switch(isEnabled[1], true)
return Main()
end

if isEnabled[2] == "[Enabled] " then
api.search(Xa, "16;128::17", "255", float, 10, "255")
isEnabled[1] = api.switch(isEnabled[1], false)
return Main()
end

end

if Menu == 4 then
api.exit("Thanks for using the script !", BoldFraktur, "Made by Nuntius on @CyberKnights", RoundFilled, nil, nil, nil, nil, nil, nil, true)
end


end -- Main()

api.loop(Main)
