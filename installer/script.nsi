;
; Define constants
;
!define PRODUCT_PUBLISHER "Brightscout, Inc."
!define PRODUCT_WEB_SITE "https://github.com/Brightscout/mattermost-pidgin-client"

!ifndef PRODUCT_NAME
!define PRODUCT_NAME "Mattermost-Pidgin-Client"
!endif
!ifndef PRODUCT_VERSION
!define PRODUCT_VERSION "v1.1"
!endif
!ifndef INSTALLER_NAME
!define INSTALLER_NAME ${PRODUCT_NAME}-${PRODUCT_VERSION}
!endif

!define PIDGIN_VERSION "2.12.0"
!define PIDGIN_MM_VERSION "1.1"

;
; MUI 1.67 Compatible
;
!include "MUI.nsh"
;
; MUI Settings
;
!define MUI_ABORTWARNING
!define MUI_ICON "${NSISDIR}\Contrib\Graphics\Icons\modern-install.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"
;
; Welcome page
;
!insertmacro MUI_PAGE_WELCOME
;
; Select Components
;
!insertmacro MUI_PAGE_COMPONENTS
;
; Install Files
;
!insertmacro MUI_PAGE_INSTFILES
;
; Finish Page
;
!insertmacro MUI_PAGE_FINISH
;
; Language files
;
!insertmacro MUI_LANGUAGE "English"

;
; Main installer directives
;
Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "${INSTALLER_NAME}.exe"

Section "Pidgin v${PIDGIN_VERSION}" Pidgin
  SetOutPath "$TEMP\installers"
  File ".\installers\pidgin-${PIDGIN_VERSION}-offline.exe"
  ExecWait "$TEMP\installers\pidgin-${PIDGIN_VERSION}-offline.exe"
SectionEnd

Section "Pidgin Mattermost Plugin v${PIDGIN_MM_VERSION}" Mattermost
  SetOutPath "$TEMP\installers"
  File ".\installers\pidgin-mattermost-v${PIDGIN_MM_VERSION}.exe"
  ExecWait "$TEMP\installers\pidgin-mattermost-v${PIDGIN_MM_VERSION}.exe"
SectionEnd

;
; Section Descriptions
;
LangString DESC_Pidgin ${LANG_ENGLISH} "Pidgin is an easy to use chat client used by millions."
LangString DESC_Mattermost ${LANG_ENGLISH} "Connects Pidgin clients with Mattermost servers."
!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
  !insertmacro MUI_DESCRIPTION_TEXT ${Pidgin} $(DESC_Pidgin)
  !insertmacro MUI_DESCRIPTION_TEXT ${Mattermost} $(DESC_Mattermost)
!insertmacro MUI_FUNCTION_DESCRIPTION_END
