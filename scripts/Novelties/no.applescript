--script by evancook.audio. more scripts? bug reports? suggestions? https://github.com/evanmcook/qlab-scripts.
-- tested  in QLab 4.6.11, ymmv.

tell application id "com.figure53.qlab.4" to tell front workspace
	
	set theDialogText to "no."
	display dialog theDialogText buttons {"ok", "ok "} default button "ok" cancel button "ok "
	
end tell