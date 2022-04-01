tell application id "com.figure53.QLab.4" to tell front workspace
	
	--script from evancook.audio andrewrover.com 03 23 2022
	
	--this script assumes you have selected a fade cue or several fade cues, because Palmer only does this indentation to fade cues.
	
	-- assign a default amount of indent. if you indent once, this is the amount you will indent by. usually 2 or 3 spaces. 
	set spaces to "   "
	-- store the selected cue(s) in a list. the script steps act on the selected cue(s) only.
	set theNumberOfCues to count of selected
	set theCue to first item of (selected as list)
	
	--outer loop does the action to each member of the list
	-- inner loop does the action to each member of list, i number of times.
	repeat with i from 1 to theNumberOfCues
		
		--check if the cue is a fade cue. if it is, run the following actions.
		if q type of theCue is "Fade" then
			
			--define a variable called oldName and store the cue's >display< name of the next cue in the selected list to oldName
			--q display name is vital Ğ using the q name will break the name of previously un-named cues.
			-- sometimes q name is empty. q display name is never empty.
			-- this is meant to retain the previous cue name, with its indents.
			set oldName to q display name of item i of (selected as list)
			-- then set the cue name of the selected cue to 3 spaces + the old name. 
			set q name of item i of (selected as list) to spaces & oldName
			
			--- next time the loop runs, add three more spaces because item i will be the next item in the list.
			set spaces to "   " & spaces
			
			
			
		end if
		
	end repeat
	
	
end tell