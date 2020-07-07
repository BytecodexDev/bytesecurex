-- ByteSecure X

function BSX_create_secure_code(code, watermarkEnabled, copyToClipboard)
        local function randomStr()
      return  syn.crypt.hash(syn.crypt.random(10))
end
local key = randomStr()
       local a = syn.crypt.custom.encrypt('aes-cbc', data, key)
       local b = syn.crypt.custom.encrypt('aes-cfb' a, key)
       local c = syn.crypt.custom.encrypt('aes-ctr', b, key)
       local d = syn.crypt.custom.encrypt('aes-ofb', c, key)
       local e = syn.crypt.custom.encrypt('aes-gcm', d, key)
       local f = syn.crypt.custom.encrypt('aes-eax', e, key);
     if watermarkEnabled then
     writefile('output-bytesecurex.lua' , [[ --[[ ######                      #####                                        #     # 
 #     # #   # ##### ###### #     # ######  ####  #    # #####  ######     #   #  
 #     #  # #    #   #      #       #      #    # #    # #    # #           # #   
 ######    #     #   #####   #####  #####  #      #    # #    # #####        #    
 #     #   #     #   #            # #      #      #    # #####  #           # #   
 #     #   #     #   #      #     # #      #    # #    # #   #  #          #   #  
 ######    #     #   ######  #####  ######  ####   ####  #    # ######    #     # 
                                        
                                         
]] ]].."_G.Key = "..key".."\n local bytesecure = loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/BytecodexDev/bytesecure/master/init.lua'))()\n"..'bytesecure:BSX_run_secure_code("'..f..' , _G.Key)')
     elseif copyToClipboard then
syn.write_clipboard("_G.Key = "..key.."\n local bytesecure = loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/BytecodexDev/bytesecure/master/init.lua'))()\n"..'bytesecure:BSX_run_secure_code("'..f..' , _G.Key)')
                                        
                                      
      elseif copyToClipboard and watermarkEnabled then
syn.write_clipboard([[ --[[  ######                      #####                                        #     # 
	#     # #   # ##### ###### #     # ######  ####  #    # #####  ######     #   #  
 #     #  # #    #   #      #       #      #    # #    # #    # #           # #   
 ######    #     #   #####   #####  #####  #      #    # #    # #####        #    
 #     #   #     #   #            # #      #      #    # #####  #           # #   
 #     #   #     #   #      #     # #      #    # #    # #   #  #          #   #  
 ######    #     #   ######  #####  ######  ####   ####  #    # ######    #     #
--]] ]].."_G.Key = "..key".."\n local bytesecure = loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/BytecodexDev/bytesecure/master/init.lua'))()\n"..'bytesecure:BSX_run_secure_code("'..f..' , _G.Key)')
   else
     writefile('output-bytesecurex.lua', "_G.Key = "..ke:y.."\n".." local bytesecure = loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/BytecodexDev/bytesecure/master/init.lua'))()\n"..'bytesecure:BSX_run_secure_code("'..f..' , _G.Key)')
end
end

function BSX_run_secure_code(code, key)
    local a = syn.crypt.custom.decrypt('aes-cbc', data, key)
       local b = syn.crypt.custom.decrypt('aes-cfb' a, key)
       local c = syn.crypt.custom.decrypt('aes-ctr', b, key)
       local d = syn.crypt.custom.decrypt('aes-ofb', c, key)
       local e = syn.crypt.custom.decrypt('aes-gcm', d, key)
       local f = syn.crypt.custom.decrypt('aes-eax', e, key);
     loadstring(f)
end
