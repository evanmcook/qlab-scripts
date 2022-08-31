tell application id "com.figure53.QLab.4" to tell front workspace
	
	--script by evancook.audio. more scripts? bug reports? suggestions? https://github.com/evanmcook/qlab-scripts.
	-- tested in QLab 4.6.11, ymmv.
	
	repeat with eachCue in (selected of front workspace as list)
		
		-- if the selected cue is a Network cue, get its current patch
		
		if q type of eachCue is "Network" then
			
			set currentPatch to patch of eachCue
			
			-- check if the current patch is the one we're expecting. If it is, change the patch to our specified replacement patch.
			
			if currentPatch of eachCue is 1 then
				
				set patch of eachCue to 2
				
			end if
			
		end if
	end repeat
end tell
