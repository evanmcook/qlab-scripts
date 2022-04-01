--script by evancook.audio. more scripts? bug reports? suggestions? https://github.com/evanmcook/qlab-scripts.
-- tested  in QLab 4.6.11, ymmv.

tell application id "com.figure53.QLab.4" to tell front workspace
	
	--show the dialog, and ask for a page number	
	display dialog "Append a page number to the start of a cue name" default answer "" with title "Paginator" buttons {"Cancel", "OK"} default button "OK" cancel button "Cancel"
	set preNam to text returned of result
	
	
	repeat with eachCue in (selected as list)
		if q type of eachCue is "Group" then
			
			-- get the cue name of each group cue that is selected. store as qNam
			set qNam to q name of eachCue
			-- set the cue name of each group cue that is selected, adding the page number to the variable called preNam.
			set q name of eachCue to "pg. " & preNam & " - " & qNam
			
		end if
		
	end repeat
	
	
end tell