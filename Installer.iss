; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Mica For Everyone"
#define MyAppVersion GetEnv('VERSION')
#define MyAppPublisher "Mica For Everyone"
#define MyAppURL "https://github.com/MicaForEveryone/MicaForEveryone"
#define MyAppExeName "MicaForEveryone.exe"
#define MyAppSource GetEnv('Source')
#define OutputBaseFileName GetEnv('INSTALLER_FILE_BASE_NAME')

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{5EA77447-2813-4D4B-AD09-BC46B97A57FE}}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
; PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputBaseFilename={#OutputBaseFileName}
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "{#MyAppSource}\*.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppSource}\*.json"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppSource}\*.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppSource}\*.pri"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppSource}\*.winmd"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppSource}\*.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppSource}\*.xbf"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppSource}\Controls\*.xbf"; DestDir: "{app}\Controls"; Flags: ignoreversion
Source: "{#MyAppSource}\Styles\*.xbf"; DestDir: "{app}\Styles"; Flags: ignoreversion
Source: "{#MyAppSource}\Themes\*.xbf"; DestDir: "{app}\Themes"; Flags: ignoreversion
Source: "{#MyAppSource}\runtimes\*"; DestDir: "{app}\runtimes"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#MyAppSource}\MicaForEveryone.conf"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#MyAppSource}\NoiseAsset_256x256_PNG.png"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

