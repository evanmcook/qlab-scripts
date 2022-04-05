--script by evancook.audio. more scripts? bug reports? suggestions? https://github.com/evanmcook/qlab-scripts.
-- tested  in QLab 4.6.11, ymmv.
-- colors discovered by alec sparks

tell application id "com.figure53.QLab.4" to tell front workspace
	try
		set colorOptions to {"Avocado", "Bastardamber", "Bisque", "Blue", "Celadon", "Cerulean", "Chartreuse", "Coral", "Ecru", "EdgecombeGray", "Fuchsia", "Fulvous", "Glaucous", "Green", "Grey", "Indigo", "Lilac", "Maize", "Mauve", "Ochre", "Olive", "Orange", "Puce", "Purple", "Red", "Rufous", "Sage", "Scarlet", "Seafoamgreen", "Skyblue", "Taupe", "Verdigris", "Vermilion", "Violet", "Viridian", "Wenge", "Yellow", "Zaffre", "none"}
		
		set colorChoice to choose from list colorOptions with title "Choose a color" with prompt "Please choose a color:" without multiple selections allowed and empty selection allowed
		
		repeat with eachCue in (selected as list)
			set q color of eachCue to colorChoice
		end repeat
		
	end try
	
	
end tell

