-- The Head Section --
local http		= require "http"
local stdnse	= require "stdnse"
local openssl	= require "openssl"
local string	= require "string"
-- The Rule Section --
portrule = function(host, port)
    return port.protocol == "tcp"
            and port.number == 443
            and port.state == "open"
end

-- The Action Section --
action = function(host, port)

    local uri = "/meet"
    local response = http.get(host, port, uri)

	local LyncCompareString	= "var reachClientProductName = \""
    if ( response.status == 200 ) then
        local LyncDetect = string.match(response.body, LyncCompareString)

        if ( LyncDetect == LyncCompareString ) then
            -- return "Lync / Skype for Business Web App"
			local title		= string.match(response.body, "<[Tt][Ii][Tt][Ll][Ee][^>]*>([^<]*)</[Tt][Ii][Tt][Ll][Ee]>")
			--local hostname	= string.match(response.body,  "Machine\\x3a([^<]*)(BrowserId|Join)")
			local hostname	= string.match(response.body,  "Machine\\x3a([^<]*)BrowserId")
			if (hostname == nil) then
				hostname	= string.match(response.body,  "Machine\\x3a([^<]*)(Join)")
			end
			
			local version	= string.match(response.body,  "%?([^<]*)&language")
			--local version	= string.match(response.body, "(onprem|ship)[^<]*^&language")
			if ( version == nil) then
				version = " "
				else
				return "Title: " .. title .. "; Verson: " .. version .. "; Hostname: " .. hostname
			end
        end
		
    end
end