local function run(msg)
if msg.text == "hi" then
	return "Hello"
end
if msg.text == "Hi" then
	return "Hello honey"
end
if msg.text == "Hello" then
	return "Hi"
end
if msg.text == "hello" then
	return "Hi honey"
end
if msg.text == "Salam" then
	return "Salam"
end
if msg.text == "salam" then
	return "salam:-!"
end
if msg.text == "mra" then
	return "software group"
end
if msg.text == "Mra" then
	return "softwaregroup"
end
if msg.text == "MRA" then
	return "softwaregroup"
end
if msg.text == "Teleking" then
	return "Yes?"
end
if msg.text == "Teleking" then
	return "What?"
end
if msg.text == "bot" then
	return "hum?"
end
if msg.text == "Bot" then
	return "Huuuum?"
end
if msg.text == "?" then
	return "bale??"
end
if msg.text == "Bye" then
	return "Bye"
end
if msg.text == "bye" then
	return "Bye Bye"
end
end

return {
	description = "Chat With Robot Server", 
	usage = "chat with robot",
	patterns = {
		"^[Hh]i$",
		"^[Hh]ello$",
		"^[Mm]ra$",
		"^MRA$",
		"^[Bb]ot$",
		"^[Tt]eleking$",
		"^[Bb]ye$",
		"^?$",
		"^[Ss]alam$",
		}, 
	run = run,
    --privileged = true,
	pre_process = pre_process
}
