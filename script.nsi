Section -Prerequisites
  SetOutPath $TEMP\installers
  MessageBox MB_YESNO "Install Pidgin?" /SD IDYES IDNO endPidgin
    File ".\installers\pidgin-2.12.0.exe"
    ExecWait "$TEMP\installers\pidgin-2.12.0.exe"
    Goto endPidgin
  endPidgin:
  MessageBox MB_YESNO "Install Pidgin Mattermost Plugin?" /SD IDYES IDNO endPlugin
    File ".\installers\pidgin-mattermost-v1.1.exe"
    ExecWait "$TEMP\installers\pidgin-mattermost-v1.1.exe"
  endPlugin:
SectionEnd
