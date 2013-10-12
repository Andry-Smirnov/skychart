; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!
 
[Setup]
AppName=Cartes du Ciel
AppVerName=Cartes du Ciel V3
AppPublisherURL=http://www.ap-i.net/skychart
AppSupportURL=http://www.ap-i.net/skychart
AppUpdatesURL=http://www.ap-i.net/skychart
DefaultDirName={reg:HKCU\Software\Astro_PC\Ciel,Install_Dir|{pf}\Ciel}
UsePreviousAppDir=false
DefaultGroupName=Cartes du Ciel
AllowNoIcons=true
InfoBeforeFile=Presetup\readme.txt
OutputDir=.\
OutputBaseFilename=skychart-windows
Compression=lzma
SolidCompression=true
Uninstallable=true
UninstallLogMode=append
DirExistsWarning=no
ShowLanguageDialog=yes
AppID={{A261F28E-6053-4414-9B84-AA8FE5F47AD4}

[CustomMessages]
CreateStartupIcon=Launch Skychart Clock automatically on Windows startup

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}
Name: quicklaunchicon; Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked
Name: startupicon; Description: {cm:CreateStartupIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked

[InstallDelete]
Name: {app}\cdc.exe; Type: files; Components: ; Tasks:
Name: {app}\libFPlanetRender.dll; Type: files; Components: ; Tasks:
Name: {app}\plugins\bmptopnm.exe; Type: files; Components: ; Tasks:
Name: {app}\plugins\bmptops.bat; Type: files; Components: ; Tasks:
Name: {app}\plugins\celestrongps.exe; Type: files; Components: ; Tasks:
Name: {app}\plugins\cygwin1.dll; Type: files; Components: ; Tasks:
Name: {app}\plugins\indiserver.exe; Type: files; Components: ; Tasks:
Name: {app}\plugins\libnetpbm10.dll; Type: files; Components: ; Tasks:
Name: {app}\plugins\lx200generic.exe; Type: files; Components: ; Tasks:
Name: {app}\plugins\pnmtops.exe; Type: files; Components: ; Tasks:
Name: {app}\plugins\telescope\Ascom.tid; Type: files; Components: ; Tasks:
Name: {app}\plugins\telescope\encoder.tid; Type: files; Components: ; Tasks:
Name: {app}\plugins\telescope\Meade.tid; Type: files; Components: ; Tasks:
Name: {app}\plugins\telescope; Type: dirifempty; Components: ; Tasks:
Name: {app}\plugins; Type: dirifempty; Components: ; Tasks:
Name: {app}\data\Themes\default\*; Type: filesandordirs; Components: ; Tasks: 
Name: {app}\data\zoneinfo\*; Type: filesandordirs; Components: ; Tasks: 
Name: {app}\doc\wiki_doc\*; Type: filesandordirs; Components: ; Tasks: 

[Files]
Source: Data\*; DestDir: {app}; Flags: ignoreversion recursesubdirs createallsubdirs restartreplace
Source: PrivateFiles\*; DestDir: {localappdata}\skychart\; Flags: onlyifdoesntexist 
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
Root: HKCU; Subkey: Software\Astro_PC\Ciel; ValueType: string; ValueName: Install_Dir; ValueData: {app}; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Astro_PC\VarObs; ValueType: string; ValueName: Install_Dir; ValueData: {app}; Flags: uninsdeletekey

[Icons]
Name: {group}\Cartes du Ciel; Filename: {app}\skychart.exe; WorkingDir: {app}
Name: {group}\Variables Stars; Filename: {app}\varobs.exe; WorkingDir: {app}
Name: {group}\Cartes du Ciel Clock; Filename: {app}\cdcicon.exe; WorkingDir: {app}; 
Name: {userdesktop}\Cartes du Ciel; Filename: {app}\skychart.exe; WorkingDir: {app}; Tasks: desktopicon
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\Cartes du Ciel; Filename: {app}\skychart.exe; WorkingDir: {app}; Tasks: quicklaunchicon
Name: {userstartup}\Cartes du Ciel Clock; Filename: {app}\cdcicon.exe; WorkingDir: {app}; Tasks: startupicon
 
