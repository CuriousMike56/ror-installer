; Rigs of Rods 0.4.7.0 Setup
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

; Download Plugin for content pack (https://mitrichsoftware.wordpress.com/inno-setup-tools/inno-download-plugin/)
;#include <idp.iss>

#define MyAppName "Rigs of Rods"
#define MyAppVersion "0.4.7.0"
#define MyAppPublisher "Rigs of Rods"
#define MyAppURL "https://www.rigsofrods.org"
#define MyAppExeName "RoRConfig.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{A69AF338-926B-4846-97A8-12B7F3FE064D}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\Rigs of Rods 0.4.7.0
DefaultGroupName=Rigs of Rods 0.4.7.0
DisableProgramGroupPage=yes
LicenseFile=TextFiles\GNU General Public License v3.0.txt
InfoAfterFile=TextFiles\AfterInstall.txt
OutputDir=Build
OutputBaseFilename=RoR_0.4.7.0_Setup
SetupIconFile=Icons\roriconfull.ico
Compression=lzma
SolidCompression=yes
DisableWelcomePage=no
; Custom images
; 58x58
WizardSmallImageFile=Icons\RoRSetupSmall.bmp
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

[Files]
; Main files
Source: "GameFiles_0.4.7.0\RoRConfig.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "GameFiles_0.4.7.0\Caelum.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "GameFiles_0.4.7.0\cg.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "GameFiles_0.4.7.0\crashrpt_lang.ini"; DestDir: "{app}"; Flags: ignoreversion
Source: "GameFiles_0.4.7.0\CrashRpt1403.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "GameFiles_0.4.7.0\CrashSender1403.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "GameFiles_0.4.7.0\dbghelp.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "GameFiles_0.4.7.0\input.map"; DestDir: "{app}"; Flags: ignoreversion
Source: "GameFiles_0.4.7.0\libcurl.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "GameFiles_0.4.7.0\OgreMain.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "GameFiles_0.4.7.0\OgreMeshUpgrader.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "GameFiles_0.4.7.0\OgreOverlay.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "GameFiles_0.4.7.0\OgrePaging.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "GameFiles_0.4.7.0\OgreRTShaderSystem.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "GameFiles_0.4.7.0\OgreTerrain.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "GameFiles_0.4.7.0\OgreVolume.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "GameFiles_0.4.7.0\OgreXMLConverter.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "GameFiles_0.4.7.0\OpenAL32.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "GameFiles_0.4.7.0\openal-info.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "GameFiles_0.4.7.0\Plugin_BSPSceneManager.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "GameFiles_0.4.7.0\Plugin_CgProgramManager.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "GameFiles_0.4.7.0\Plugin_OctreeSceneManager.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "GameFiles_0.4.7.0\Plugin_OctreeZone.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "GameFiles_0.4.7.0\Plugin_ParticleFX.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "GameFiles_0.4.7.0\Plugin_PCZSceneManager.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "GameFiles_0.4.7.0\plugins.cfg"; DestDir: "{app}"; Flags: ignoreversion
Source: "GameFiles_0.4.7.0\RenderSystem_Direct3D9.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "GameFiles_0.4.7.0\RenderSystem_GL.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "GameFiles_0.4.7.0\RoR.exe"; DestDir: "{app}"; Flags: ignoreversion
; Documents directory structure
Source: "GameFiles_0.4.7.0\skeleton.zip"; DestDir: "{app}"; Flags: ignoreversion
; Folders
Source: "GameFiles_0.4.7.0\languages\*"; DestDir: "{app}\languages"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "GameFiles_0.4.7.0\resources\*"; DestDir: "{app}\resources"; Flags: ignoreversion recursesubdirs createallsubdirs
; DirectX
Source: "Dependencies\DirectX\*"; DestDir: "{tmp}"; Flags: nocompression createallsubdirs recursesubdirs deleteafterinstall overwritereadonly ignoreversion uninsremovereadonly
; VS redist
Source: "Dependencies\VSRedist\*"; DestDir: "{tmp}"; Flags: nocompression createallsubdirs recursesubdirs deleteafterinstall overwritereadonly ignoreversion uninsremovereadonly
; Unzip tool
Source: "Dependencies\7za.exe"; DestDir: "{tmp}"; Flags: nocompression createallsubdirs recursesubdirs deleteafterinstall overwritereadonly ignoreversion uninsremovereadonly
; Content pack, optional
;Source: "{tmp}\RoR_ContentPack_04.exe"; DestDir: "{tmp}"; Components: contentpack; Flags: external deleteafterinstall; ExternalSize: 991267044
 
[Types]
Name: full; Description: Full Installation
Name: minimal; Description: Minimal Installation
Name: custom; Description: Custom Installation; Flags: iscustom

[Components]
;Name: defaultcontent; Description: Default vehicles & terrains; Types: minimal custom full;
;Name: contentpack; Description: Content pack; Types: custom full

;[Code]
;procedure InitializeWizard();
;begin
;        if IsComponentSelected('contentpack') then
;            
;        idpAddFile('http://archives.rigsofrods.net/contentpacks/RoR_ContentPack_04.exe', ExpandConstant('{tmp}\RoR_ContentPack_04.exe'));
;       
;        idpDownloadAfter(wpReady);
;end;

[Icons]
; Start Menu
Name: "{group}\Rigs of Rods"; Filename: "{app}\RoR.exe"
Name: "{group}\Rigs of Rods Configurator"; Filename: "{app}\RoRConfig.exe"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
; Desktop
Name: "{commondesktop}\Rigs of Rods"; Filename: "{app}\RoR.exe"; Tasks: desktopicon
Name: "{commondesktop}\Rigs of Rods Configurator"; Filename: "{app}\RoRConfig.exe"; Tasks: desktopicon

[Run]
; Create Documents directory structure
; Old installer only created the folder structure if the user installed the default content
Filename: "{tmp}\7za.exe"; Parameters: "x -aos -o""{userdocs}\Rigs of Rods 0.4"" ""{app}\skeleton.zip"""; Flags: runhidden; StatusMsg: "Creating Documents directory structure..."
;Content pack
;Filename: "{tmp}\RoR_ContentPack_04.exe"; Components: contentpack; Parameters: "/S"; WorkingDir: "{tmp}"; Flags: waituntilterminated skipifdoesntexist; StatusMsg: "Installing Content Pack..."
;DirectX
Filename: "{tmp}\dxwebsetup.exe"; WorkingDir: "{tmp}"; Parameters: "/Q"; Flags: waituntilterminated skipifdoesntexist; StatusMsg: "Installing DirectX..."
;VS redist
Filename: "{tmp}\vc_redist.x86.exe"; WorkingDir: "{tmp}"; Parameters: "/passive"; Flags: waituntilterminated skipifdoesntexist; StatusMsg: "Installing Visual Studio Redistributable..."
; "Launch Rigs of Rods" button after install
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

