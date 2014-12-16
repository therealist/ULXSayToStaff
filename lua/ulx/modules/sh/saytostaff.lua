function ulx.saytostaff( calling_ply, message  )
	
	for k,v in pairs( player.GetAll() ) do
		if v:IsUserGroup("superadmin") then
			ULib.tsayColor( v, false, Color(255,50,0), "[STAFF]: ", team.GetColor(calling_ply:Team()), calling_ply:Nick().. ": ", Color(225,225,225), message )
		else end
	end
	
	ULib.tsay( calling_ply, "You sent to staff: " .. message)
	
end
local saytostaff = ulx.command( "Prop Hunt", "ulx saytostaff", ulx.saytostaff, "@s", true, true )
saytostaff:addParam{ type=ULib.cmds.StringArg, hint="message", ULib.cmds.takeRestOfLine }
saytostaff:defaultAccess( ULib.ACCESS_ALL )
saytostaff:help( "Send a message to all staff players." )
