# UT99DInput
a fork of [dpjudas/UT99Dinput](https://github.com/dpjudas/UT99DInput) mouse-acceleration fix

This project builds a small `dinput.dll` shim that disables ingame mouse-acceleration, described [here](http://donewmouseaccel.blogspot.com/2010/03/markc-windows-7-mouse-acceleration-fix.html), which supposedly crept in and affects every Windows release after/including Windows7.

This fork adds a fix for a crosshair-cursor, that would appear after ALT+TABing out/in of/to the game and would not leave until restarted or resolution would be changed.

## Usage
Drop the `dinput.dll` (which you can get by either building yourself or [downloading a prebuilt](https://github.com/Vorschreibung/UT99DInput/releases/download/v2/UT99DInput-v2.zip)) next to `UnrealTournament.exe` (in the `\System` directory) and turn on **Direct Input** in the Input menu of the game.