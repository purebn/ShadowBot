 -- By mohamed_devt { @MH_IQ19 }

-- only enable one of them 
local Kick = true;
local Warn = false;

do


local function run(msg, matches)
    
    if ( kick == true ) then
        Warn = false;
    elseif ( Warn == true ) then
        Kick = false;
    end


    -- check if the user is owner
    if (  is_realm(msg) and is_admin(msg)or is_sudo(msg) or is_momod(msg) )  then
        -- if he is a owner then exit out of the code
        return
    end

    -- load the data
    local data = load_data(_config.moderation.data)
    
    -- get the receiver and set the variable chat to it
    local chat = get_receiver(msg)

    -- get the sender id and set the variable user to it
    local user = "user#id"..msg.from.id

    -- check if the data 'LockLinks' from the table 'settings' is "yes"
    if ( data[tostring(msg.to.id)]['settings']['LockLinks'] == "yes" ) then
        -- send a message 
        send_large_msg(chat, "لاترسل اي اعلانات هنا كان عليك الالتزام بالقوانين ✋🏿😈")
        
        -- kick the user who sent the message
        if ( Kick == true ) then
            chat_del_user(chat, user, ok_cb, true)
        elseif ( Warn   == true ) then
            send_large_msg( get_receiver(msg), "Don't send links here @" .. msg.from.username )
        end

    end

end
 
return {
  patterns = {
    "telegram.me/joinchat/",
    "https://",
    "www.",
    ".com",
    ".org",
    ".io"
  },
  run = run
}

end