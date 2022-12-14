--github.com/evanmcook/qlab-scripts
--https://evancook.audio
--verified on 2022 12 13, QLab5 v 5.0.11

tell application "System Events"
	
	-- x coordinate, y coordinate on screen
	set position of first window of application process "QLab" to {20, 0}
	
	-- {horizontal size, vertical size}, reaching the smallest possible size is only achieveable by hiding the inspector, active/cuelist, and go button	
	
	set size of first window of application process "QLab" to {1000, 2000}
	
end tell