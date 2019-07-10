; Rigs of Rods 0.4.8.0 Setup
; Created by Michael (CuriousMike)

; Download Plugin for content pack (https://mitrichsoftware.wordpress.com/inno-setup-tools/inno-download-plugin/)
#include <idp.iss>

#define MyAppName "Rigs of Rods"
#define MyAppVersion "0.4.8.0"
#define MyAppPublisher "Rigs of Rods"
#define MyAppURL "https://www.rigsofrods.org"
#define MyAppExeName "RoR.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{EF536888-919D-47C0-8675-2F7AFA52EE27}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
VersionInfoVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\Rigs of Rods
DefaultGroupName=Rigs of Rods
DisableProgramGroupPage=yes
LicenseFile=TextFiles\GNU General Public License v3.0.txt
InfoAfterFile=TextFiles\AfterInstall.txt
OutputDir=Build
OutputBaseFilename=RoR_0.4.8RC5_Setup
SetupIconFile=Icons\ror.ico
Compression=lzma
SolidCompression=yes
; "ArchitecturesInstallIn64BitMode=x64" requests that the install be
; done in "64-bit mode" on x64, meaning it should use the native
; 64-bit Program Files directory and the 64-bit view of the registry.
; On all other architectures it will install in "32-bit mode".
ArchitecturesInstallIn64BitMode=x64
DisableWelcomePage=no
; Custom images
; 64x64
WizardSmallImageFile=Icons\ror-64.bmp
; 164x314
WizardImageFile=Icons\RoRSetupLarge.bmp

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "corsican"; MessagesFile: "compiler:Languages\Corsican.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "greek"; MessagesFile: "compiler:Languages\Greek.isl"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "hungarian"; MessagesFile: "compiler:Languages\Hungarian.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "scottishgaelic"; MessagesFile: "compiler:Languages\ScottishGaelic.isl"
Name: "serbiancyrillic"; MessagesFile: "compiler:Languages\SerbianCyrillic.isl"
Name: "serbianlatin"; MessagesFile: "compiler:Languages\SerbianLatin.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

;[Dirs]
;Name: "{userdocs}\Rigs of Rods 0.4\mods"

[Files]
; Folders
Source: "GameFiles_0.4.8.0\languages\*"; DestDir: "{app}\languages"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "GameFiles_0.4.8.0\resources\*"; DestDir: "{app}\resources"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "GameFiles_0.4.8.0\content\*"; DestDir: "{app}\content"; Flags: ignoreversion recursesubdirs createallsubdirs
; Main files
Source: "GameFiles_0.4.8.0\x64\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: Is64BitInstallMode
Source: "GameFiles_0.4.8.0\x86\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: not Is64BitInstallMode
; DirectX
Source: "Dependencies\DirectX\*"; DestDir: "{tmp}"; Flags: nocompression createallsubdirs recursesubdirs deleteafterinstall overwritereadonly ignoreversion uninsremovereadonly
; VS redist
Source: "Dependencies\VSRedist\*"; DestDir: "{tmp}"; Flags: nocompression createallsubdirs recursesubdirs deleteafterinstall overwritereadonly ignoreversion uninsremovereadonly
; Unzip tool
Source: "Dependencies\7za.exe"; DestDir: "{tmp}"; Flags: ignoreversion deleteafterinstall
;Batch file to rename config folder
Source: "Dependencies\RenameConfigFolder.bat"; DestDir: "{tmp}"; Flags: ignoreversion deleteafterinstall
; Content packs, optional
Source: "{tmp}\ContentPack_HeavyEquipment.zip"; DestDir: "{tmp}"; Components: contentpack_trucks; Flags: external deleteafterinstall; ExternalSize: 904536285
Source: "{tmp}\ContentPack_LightVehicles.zip"; DestDir: "{tmp}"; Components: contentpack_cars; Flags: external deleteafterinstall; ExternalSize: 612010794
Source: "{tmp}\ContentPack_Loads.zip"; DestDir: "{tmp}"; Components: contentpack_loads; Flags: external deleteafterinstall; ExternalSize: 308874810
Source: "{tmp}\ContentPack_Trains.zip"; DestDir: "{tmp}"; Components: contentpack_trains; Flags: external deleteafterinstall; ExternalSize: 46559872
Source: "{tmp}\ContentPack_AirSea.zip"; DestDir: "{tmp}"; Components: contentpack_airsea; Flags: external deleteafterinstall; ExternalSize: 86989164
Source: "{tmp}\ContentPack_Terrains.zip"; DestDir: "{tmp}"; Components: contentpack_terrains; Flags: external deleteafterinstall; ExternalSize: 732822023
 
[Types]
Name: full; Description: Full Installation
Name: minimal; Description: Minimal Installation
Name: custom; Description: Custom Installation; Flags: iscustom

[Components]
Name: contentpack_trucks; Description: Content Pack - Trucks & Heavy Equipment; Types: custom full
Name: contentpack_cars; Description: Content Pack - Cars & Light Vehicles; Types: custom full
Name: contentpack_loads; Description: Content Pack - Trailers & Loads; Types: custom full
Name: contentpack_airsea; Description: Content Pack - Air & Sea; Types: custom full
Name: contentpack_trains; Description: Content Pack - Trains; Types: custom full
Name: contentpack_terrains; Description: Content Pack - Terrains; Types: custom full

[Code]
procedure InitializeWizard();
begin
        idpAddFileComp('http://forum.rigsofrods.org/resources/content-pack-trucks-heavy-equipment.490/download', ExpandConstant('{tmp}\ContentPack_HeavyEquipment.zip'), 'contentpack_trucks');
        idpAddFileComp('http://forum.rigsofrods.org/resources/content-pack-cars-light-vehicles.491/download', ExpandConstant('{tmp}\ContentPack_LightVehicles.zip'), 'contentpack_cars');
        idpAddFileComp('http://forum.rigsofrods.org/resources/content-pack-trailers-loads.492/download', ExpandConstant('{tmp}\ContentPack_Loads.zip'), 'contentpack_loads');
        idpAddFileComp('http://forum.rigsofrods.org/resources/content-pack-air-sea.495/download', ExpandConstant('{tmp}\ContentPack_AirSea.zip'), 'contentpack_airsea');
        idpAddFileComp('http://forum.rigsofrods.org/resources/content-pack-trains.494/download', ExpandConstant('{tmp}\ContentPack_Trains.zip'), 'contentpack_trains');
        idpAddFileComp('http://forum.rigsofrods.org/resources/content-pack-terrains.496/download', ExpandConstant('{tmp}\ContentPack_Terrains.zip'), 'contentpack_terrains');
       
        idpDownloadAfter(wpReady);
end;

function NextButtonClick(CurPageID: Integer): Boolean;
begin
  Result := True;
  if (CurPageID = wpSelectTasks) and DirExists(ExpandConstant('{userdocs}\Rigs of Rods 0.4')) then
  begin
    Result := MsgBox('Setup has detected that `Documents\Rigs of Rods 0.4` exists. Setup will rename the `config` folder to `config.old` to prevent conflicts with previous game versions. ' + 
    'If you have any extra configuration files (e.g. controller input maps) you will have to move them after installation. Your installed mods will be unaffected. Are you sure you want to continue?', mbConfirmation, MB_YESNO) = IDYES;
  end;
end;

[Icons]
; Start Menu
Name: "{group}\Rigs of Rods"; Filename: "{app}\RoR.exe"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
; Desktop
Name: "{commondesktop}\Rigs of Rods"; Filename: "{app}\RoR.exe"; Tasks: desktopicon

[Run]
;Content packs
Filename: "{tmp}\7za.exe"; Components: contentpack_trucks; Parameters: "x -aos -o""{userdocs}\Rigs of Rods 0.4\mods\"" ""{tmp}\ContentPack_HeavyEquipment.zip"""; Flags: runhidden runascurrentuser; StatusMsg: "Installing Trucks & Heavy Equipment Content Pack..."
Filename: "{tmp}\7za.exe"; Components: contentpack_cars; Parameters: "x -aos -o""{userdocs}\Rigs of Rods 0.4\mods\"" ""{tmp}\ContentPack_LightVehicles.zip"""; Flags: runhidden runascurrentuser; StatusMsg: "Installing Cars & Light Vehicles Content Pack..."
Filename: "{tmp}\7za.exe"; Components: contentpack_loads; Parameters: "x -aos -o""{userdocs}\Rigs of Rods 0.4\mods\"" ""{tmp}\ContentPack_Loads.zip"""; Flags: runhidden runascurrentuser; StatusMsg: "Installing Trailers & Loads Content Pack..."
Filename: "{tmp}\7za.exe"; Components: contentpack_airsea; Parameters: "x -aos -o""{userdocs}\Rigs of Rods 0.4\mods\"" ""{tmp}\ContentPack_AirSea.zip"""; Flags: runhidden runascurrentuser; StatusMsg: "Installing Air & Sea Content Pack..."
Filename: "{tmp}\7za.exe"; Components: contentpack_trains; Parameters: "x -aos -o""{userdocs}\Rigs of Rods 0.4\mods\"" ""{tmp}\ContentPack_Trains.zip"""; Flags: runhidden runascurrentuser; StatusMsg: "Installing Trains Content Pack..."
Filename: "{tmp}\7za.exe"; Components: contentpack_terrains; Parameters: "x -aos -o""{userdocs}\Rigs of Rods 0.4\mods\"" ""{tmp}\ContentPack_Terrains.zip"""; Flags: runhidden runascurrentuser; StatusMsg: "Installing Terrains Content Pack..."
;DirectX
Filename: "{tmp}\dxwebsetup.exe"; WorkingDir: "{tmp}"; Parameters: "/Q"; Flags: waituntilterminated skipifdoesntexist runascurrentuser; StatusMsg: "Installing DirectX..."
;VS redist
Filename: "{tmp}\vc_redist.x64.exe"; WorkingDir: "{tmp}"; Parameters: "/install /passive /norestart"; Flags: waituntilterminated skipifdoesntexist runascurrentuser; StatusMsg: "Installing Visual Studio Redistributable (x64)..."; Check: Is64BitInstallMode
Filename: "{tmp}\vc_redist.x86.exe"; WorkingDir: "{tmp}"; Parameters: "/install /passive /norestart"; Flags: waituntilterminated skipifdoesntexist runascurrentuser; StatusMsg: "Installing Visual Studio Redistributable (x86)..."; Check: not Is64BitInstallMode
;Batch file to rename config folder
Filename: "{tmp}\RenameConfigFolder.bat"; WorkingDir: "{tmp}"; Flags: runhidden runascurrentuser
; "Launch Rigs of Rods" button after install
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

