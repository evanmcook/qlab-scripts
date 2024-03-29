--certain other colors in QLab 4 discovered by alec sparks, this is the next part of the tradition.
--many thanks to Figure 53 for an excellent applescript dictionary. <3

--github.com/evanmcook/qlab-scripts
--https://evancook.audio
--edited 2023 12 09
--verified on 2023 12 09, QLab5 v 5.3.2


tell application id "com.figure53.QLab.5" to tell front workspace
	
	
	
	try
		set colorOptions to {"Avocado", "BastardAmber", "Bisque", "Blue","Canary", "Celadon", "Cerulean", "Chartreuse", "Chestnut", "Chocolate", "Coral", "Ecru", "EdgecombGray", "Fuchsia", "Fulvous", "Glaucous", "Gray", "Green", "Grey", "HotPink", "Indigo", "Lilac", "LucasBlue", "Maize", "Marigold", "Mauve", "Mustard", "Ochre", "Olive", "Orange", "Peach", "Periwinkle", "Plum", "Puce", "Purple", "Red", "Rufous", "Sage", "Scarlet", "SeafoamGreen", "SkyBlue", "Taupe", "Verdigris", "Vermilion", "Violet", "Viridian", "Wenge", "Yellow", "none"}
		
		set colorChoice to choose from list colorOptions with title "Choose a color" with prompt "Please choose a color:" without multiple selections allowed and empty selection allowed
		
		repeat with eachCue in (selected as list)
			set q color of eachCue to colorChoice
			--set q name of eachCue to colorChoice
		end repeat
		
	end try
	
	
end tell

