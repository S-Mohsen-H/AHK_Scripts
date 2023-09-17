#Requires AutoHotkey v2.0



if not (A_IsAdmin)
{
    try
    {
        if A_IsCompiled
            Run '*RunAs "' A_ScriptFullPath '" /restart'
        else
            Run '*RunAs "' A_AhkPath '" /restart "' A_ScriptFullPath '"'
    }
    ExitApp
}

^Space:: WinSetAlwaysOnTop -1, "A"
$^::^
Return