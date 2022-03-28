-- The Head Section --
local http		= require "http"
local stdnse	= require "stdnse"
local openssl	= require "openssl"
local string	= require "string"

description = [[
Retrieves information provided by the Lync or Skype for Business server.

The script works by looking at the HTML source of the Lync or Skype for Business server.
The HTML source leaks some handy information that is retrieved.

]]

---
-- @usage
-- nmap --script skype4b <target> [-p 443]
-- @output
-- Host script results:
-- | skype4b:
-- |  Title:    Skype for Business Web App
-- |  Verson:   lcs_se_w16_ship6.0.9319.534
-- |_ Hostname: SKYPE01


author = {"Michael Pattrick"}
license = "Same as Nmap--See https://nmap.org/book/man-legal.html"
categories = {"discovery", "external", "safe"}


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

			local whitelist 	= string.match(response.body,  "parentOriginWhitelist = \"%[([^<]*)%]\";")
			whitelist = whitelist:sub(1, -3)
			whitelist = string.gsub(whitelist, "\\\",\\\"", "\\\"")
			whitelist = string.gsub(whitelist, "\\\"", "\n\t   - ")
			
			local version	= string.match(response.body,  "%?([^<]*)&language")
			--local version	= string.match(response.body, "(onprem|ship)[^<]*^&language")
			if ( version == nil) then
				version = " "
				else
				return "\n Title:    " .. title .. "\n Verson:   " .. version .. "\n Hostname: " .. hostname .. "\n Whitelist: " .. whitelist
			end
        end
		
    end
end
