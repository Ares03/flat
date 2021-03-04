tell application "iTerm"
    set W to create window with default profile
    tell W's current session
        split vertically with default profile
    end tell
    set T to W's current tab
    set ProjectRoot to "$(dirname $(dirname " & (POSIX path of (path to me)) & "))"
    write T's session 1 text "yarn --cwd \"" & ProjectRoot & "/src/renderer-app\" start"
    write T's session 2 text "yarn --cwd \"" & ProjectRoot & "/src/main-app\" start"
end tell
