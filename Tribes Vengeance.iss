#define MyAppName "Tribes Vengeance"
#define MyAppPublisher "The Tribes Community"
#define MyAppURL "http://tribesrevengeance.com/"
#define MyAppExeName "TV_CD_DVD.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{82D3C8E4-D428-4C9F-B53F-F9EEB3ADCCD1}
AppName={#MyAppName}
AppVerName={#MyAppName}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\VUGames
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
OutputBaseFilename=setup
SetupIconFile=vengeance.ico
Compression=lzma2/ultra64
DiskSpanning=yes
UninstallDisplayIcon={app}\Tribes Vengeance\Program\Bin\{#MyAppExeName}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "F:\Tribes\Installation\VUGames\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

;Uncomment the line below and comment the line above to create a test installation (only folder that exists and has stuff in it is VUGames\Tribes Vengeance\Program\Bin)
;Source: "F:\Tribes\Installation Test\VUGames\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\Tribes Vengeance\Program\Bin\{#MyAppExeName}";
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}";
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\Tribes Vengeance\Program\Bin\{#MyAppExeName}"; Parameters: "-console"; Tasks: desktopicon

[Run]
;Run the key installer silently (see https://github.com/sudeepsidhu/TVKeyGenerator)
Filename: "{app}\Tribes Vengeance\Program\Bin\TV Key Generator.exe"; Parameters: "/q";

;Fix the resolution setting in TV_CD_DVD.ini (see https://github.com/sudeepsidhu/TVResolutionFixer)
Filename: "{app}\Tribes Vengeance\Program\Bin\TV Resolution Fixer.exe"; Parameters: "/q";