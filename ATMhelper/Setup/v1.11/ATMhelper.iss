; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{D9417596-A99D-403A-8818-2059BAE51872}
AppName=ATMhelper
AppVersion=1.11
;AppVerName=ATMhelper 1.11
AppPublisher=No_ball
AppPublisherURL=http://www.google.com/
AppSupportURL=http://www.google.com/
AppUpdatesURL=http://www.google.com/
DefaultDirName=C:\ATMhelper
DefaultGroupName=ATMhelper
AllowNoIcons=yes
LicenseFile=D:\Code\ATMhelper\v1.1\Licence.txt
InfoBeforeFile=D:\Code\ATMhelper\v1.1\ThankYou.txt
InfoAfterFile=D:\Code\ATMhelper\v1.1\ThankYou.txt
OutputDir=D:\Code\ATMhelper\Setup\v1.11\OUTPUT\
OutputBaseFilename=setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "D:\Code\ATMhelper\v1.11\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

