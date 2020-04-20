; Rigs of Rods Setup
; Created by Michael (CuriousMike)

; Download Plugin for content pack (https://mitrichsoftware.wordpress.com/inno-setup-tools/inno-download-plugin/)
#pragma include __INCLUDE__ + ";" + ReadReg(HKLM, "Software\Mitrich Software\Inno Download Plugin", "InstallDir")
#include <idp.iss>

#define MyAppName "Rigs of Rods"
#define MyAppVersion "2020.01"
#define MyAppPublisher "Rigs of Rods"
#define MyAppURL "https://www.rigsofrods.org"
#define MyAppExeName "RoR.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{275D4777-35F4-4E9E-B0CC-99B4C69F1F0B}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
VersionInfoVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={commonpf}\Rigs of Rods
DefaultGroupName=Rigs of Rods
DisableProgramGroupPage=yes
LicenseFile=TextFiles\GNU General Public License v3.0.txt
InfoAfterFile=TextFiles\AfterInstall.txt
OutputDir=Build
OutputBaseFilename=RoR_2020.01_Setup
SetupIconFile=Icons\ror.ico
Compression=lzma
SolidCompression=yes
ArchitecturesInstallIn64BitMode=x64
ArchitecturesAllowed=x64
DisableWelcomePage=no
DisableDirPage=no
RestartIfNeededByRun=no
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
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
; Folders
Source: "GameFiles\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; DirectX
Source: "Dependencies\DirectX\*"; DestDir: "{tmp}"; Flags: nocompression createallsubdirs recursesubdirs deleteafterinstall overwritereadonly ignoreversion uninsremovereadonly
; VS redist
Source: "Dependencies\VSRedist\*"; DestDir: "{tmp}"; Flags: nocompression createallsubdirs recursesubdirs deleteafterinstall overwritereadonly ignoreversion uninsremovereadonly
; Unzip tool
Source: "Dependencies\7za.exe"; DestDir: "{tmp}"; Flags: ignoreversion deleteafterinstall
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
        idpAddFileComp('https://github.com/CuriousMike56/ContentPacks/releases/download/2020.01/ContentPack_HeavyEquipment.zip', ExpandConstant('{tmp}\ContentPack_HeavyEquipment.zip'), 'contentpack_trucks');
        idpAddFileComp('https://github.com/CuriousMike56/ContentPacks/releases/download/2020.01/ContentPack_LightVehicles.zip', ExpandConstant('{tmp}\ContentPack_LightVehicles.zip'), 'contentpack_cars');
        idpAddFileComp('https://github.com/CuriousMike56/ContentPacks/releases/download/2020.01/ContentPack_Loads.zip', ExpandConstant('{tmp}\ContentPack_Loads.zip'), 'contentpack_loads');
        idpAddFileComp('https://github.com/CuriousMike56/ContentPacks/releases/download/2020.01/ContentPack_AirSea.zip', ExpandConstant('{tmp}\ContentPack_AirSea.zip'), 'contentpack_airsea');
        idpAddFileComp('https://github.com/CuriousMike56/ContentPacks/releases/download/2020.01/ContentPack_Trains.zip', ExpandConstant('{tmp}\ContentPack_Trains.zip'), 'contentpack_trains');
        idpAddFileComp('https://github.com/CuriousMike56/ContentPacks/releases/download/2020.01/ContentPack_Terrains.zip', ExpandConstant('{tmp}\ContentPack_Terrains.zip'), 'contentpack_terrains');
       
        idpDownloadAfter(wpReady);
end;

function NextButtonClick(CurPageID: Integer): Boolean;
begin
  Result := True;
  if (CurPageID = wpSelectTasks) and DirExists(ExpandConstant('{userdocs}\Rigs of Rods 0.4')) then
  begin
    Result := MsgBox('Setup has detected that `Documents\Rigs of Rods 0.4` exists. Starting with version 2020.01, the user directory has been moved to `Documents\My Games\Rigs of Rods`. To continue using your mods, please move them to the new directory. Are you sure you want to continue?', mbConfirmation, MB_YESNO) = IDYES;
  end;
end;

[Icons]
; Start Menu
Name: "{group}\Rigs of Rods"; Filename: "{app}\RoR.exe"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
; Desktop
Name: "{commondesktop}\Rigs of Rods"; Filename: "{app}\RoR.exe"; Tasks: desktopicon

[UninstallDelete]
Type: dirifempty; Name: "{app}\resources\managed_materials"

[Run]
;Content packs
Filename: "{tmp}\7za.exe"; Components: contentpack_trucks; Parameters: "x -aos -o""{userdocs}\My Games\Rigs of Rods\mods\"" ""{tmp}\ContentPack_HeavyEquipment.zip"""; Flags: runhidden runasoriginaluser; StatusMsg: "Installing Trucks & Heavy Equipment Content Pack..."
Filename: "{tmp}\7za.exe"; Components: contentpack_cars; Parameters: "x -aos -o""{userdocs}\My Games\Rigs of Rods\mods\"" ""{tmp}\ContentPack_LightVehicles.zip"""; Flags: runhidden runasoriginaluser; StatusMsg: "Installing Cars & Light Vehicles Content Pack..."
Filename: "{tmp}\7za.exe"; Components: contentpack_loads; Parameters: "x -aos -o""{userdocs}\My Games\Rigs of Rods\mods\"" ""{tmp}\ContentPack_Loads.zip"""; Flags: runhidden runasoriginaluser; StatusMsg: "Installing Trailers & Loads Content Pack..."
Filename: "{tmp}\7za.exe"; Components: contentpack_airsea; Parameters: "x -aos -o""{userdocs}\My Games\Rigs of Rods\mods\"" ""{tmp}\ContentPack_AirSea.zip"""; Flags: runhidden runasoriginaluser; StatusMsg: "Installing Air & Sea Content Pack..."
Filename: "{tmp}\7za.exe"; Components: contentpack_trains; Parameters: "x -aos -o""{userdocs}\My Games\Rigs of Rods\mods\"" ""{tmp}\ContentPack_Trains.zip"""; Flags: runhidden runasoriginaluser; StatusMsg: "Installing Trains Content Pack..."
Filename: "{tmp}\7za.exe"; Components: contentpack_terrains; Parameters: "x -aos -o""{userdocs}\My Games\Rigs of Rods\mods\"" ""{tmp}\ContentPack_Terrains.zip"""; Flags: runhidden runasoriginaluser; StatusMsg: "Installing Terrains Content Pack..."
;DirectX
Filename: "{tmp}\dxwebsetup.exe"; WorkingDir: "{tmp}"; Parameters: "/Q"; Flags: waituntilterminated skipifdoesntexist runascurrentuser; StatusMsg: "Installing DirectX..."
;VS redist
Filename: "{tmp}\vc_redist.x64.exe"; WorkingDir: "{tmp}"; Parameters: "/install /passive /norestart"; Flags: waituntilterminated skipifdoesntexist runascurrentuser; StatusMsg: "Installing Visual Studio Redistributable..."
; "Launch Rigs of Rods" button after install
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

