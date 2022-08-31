--script by evancook.audio. more scripts? bug reports? suggestions? https://github.com/evanmcook/qlab-scripts.
-- tested  in QLab 4.6.11, ymmv.
-- colors discovered by alec sparks
-- eligible colors to toggle: "Avocado", "Bastardamber", "Bisque", "Blue", "Celadon", "Cerulean", "Chartreuse", "Coral", "Ecru", "EdgecombeGray", "Fuchsia", "Fulvous", "Glaucous", "Green", "Grey", "Indigo", "Lilac", "Maize", "Mauve", "Ochre", "Olive", "Orange", "Puce", "Purple", "Red", "Rufous", "Sage", "Scarlet", "Seafoamgreen", "Skyblue", "Taupe", "Verdigris", "Vermilion", "Violet", "Viridian", "Wenge", "Yellow", "Zaffre"

tell application id "com.figure53.QLab.4" to tell front workspace
	
	repeat with eachCue in (selected as list)
		
		--check to see if the color of the cue is the one you specify below
		--if it is, set the cue color to "none"
		if q color of eachCue is "Fuchsia" then
			set q color of eachCue to "none"
			
			-- if the color is not the one you specified, set it to a color of your choosing. 
			-- in this case, we're toggling between "none" and "Fuchsia", your usecase can vary 
		else
			set q color of eachCue to "Fuchsia"
			
		end if
		
	end repeat
	
end tell