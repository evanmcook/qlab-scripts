tell application id "com.figure53.QLab.4" to tell front workspace
	
	set selectedCue to last item of (selected as list)
	if q type of selectedCue is "Group" then
		
		display dialog "Enter a cue number:" default answer "" with title "Set LX Target" buttons {"Cancel", "OK"} default button "OK" cancel button "Cancel"
		set theCue to text returned of result
		--set theRoom to result's first character
		
		make type "Network"
		set newCue to last item of (selected as list)
		set newCueID to uniqueID of newCue
		move cue id newCueID of parent of newCue to end of selectedCue
		set patch of newCue to 7
		set custom message of newCue to "/eos/user/99/cue/" & "99" & "/" & theCue & "/fire"
		set q color of newCue to "Maize"
		
	end if
end tell