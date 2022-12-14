--colors discovered by alec sparks, read how it happened at alecsparks.com/blog
--many thanks to Figure 53 for an excellent applescript dictionary. <3

--github.com/evanmcook/qlab-scripts
--https://evancook.audio
--verified on 2022 12 13, QLab5 v 5.0.11


tell application id "com.figure53.QLab.5" to tell front workspace
	
	
	
	try
		set colorOptions to {"Avocado", "BastardAmber", "Bisque", "Blue", "Celadon", "Cerulean", "Chartreuse", "Chestnut", "Chocolate", "Coral", "Ecru", "EdgecombGray", "Fuchsia", "Fulvous", "Glaucous", "HotPink", "Gray", "Green", "Grey", "Indigo", "Lilac", "LucasBlue", "Maize", "Marigold", "Mauve", "Ochre", "Olive", "Orange", "Peach", "Periwinkle", "Plum", "Puce", "Purple", "Red", "Rufous", "Sage", "Scarlet", "SeafoamGreen", "SkyBlue", "Taupe", "Verdigris", "Vermilion", "Violet", "Viridian", "Wenge", "Yellow", "Zaffre", "none"}
		
		set colorChoice to choose from list colorOptions with title "Choose a color" with prompt "Please choose a color:" without multiple selections allowed and empty selection allowed
		
		repeat with eachCue in (selected as list)
			set q color of eachCue to colorChoice
			--set q name of eachCue to colorChoice
		end repeat
		
	end try
	
	
end tell

