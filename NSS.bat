@echo init...
@echo Done!
@echo Making The Arc...
@mkdir Arc
@cd Arc
@mkdir Documents
@mkdir Images
@mkdir ProgramFiles
@mkdir Videos
@mkdir Code
@mkdir Misc
@mkdir Music
@mkdir ukn
@attrib +s +h "ukn"
@cd ProgramFiles


@REM This script upzip's files...

@ECHO '>j_unzip.vbs 
@ECHO ' UnZip a file script>>j_unzip.vbs 
@ECHO '>>j_unzip.vbs 
@ECHO ' It's a mess, I know!!!>>j_unzip.vbs 
@ECHO '>>j_unzip.vbs 
@ECHO.>>j_unzip.vbs 
@ECHO ' Dim ArgObj, var1, var2>>j_unzip.vbs 
@ECHO Set ArgObj = WScript.Arguments>>j_unzip.vbs 
@ECHO.>>j_unzip.vbs 
@ECHO If (Wscript.Arguments.Count ^> 0) Then>>j_unzip.vbs 
@ECHO. var1 = ArgObj(0)>>j_unzip.vbs 
@ECHO Else>>j_unzip.vbs 
@ECHO. var1 = "">>j_unzip.vbs 
@ECHO End if>>j_unzip.vbs 
@ECHO.>>j_unzip.vbs 
@ECHO If var1 = "" then>>j_unzip.vbs 
@ECHO. strFileZIP = "example.zip">>j_unzip.vbs 
@ECHO Else>>j_unzip.vbs 
@ECHO. strFileZIP = var1>>j_unzip.vbs 
@ECHO End if>>j_unzip.vbs 
@ECHO.>>j_unzip.vbs 
@ECHO 'The location of the zip file.>>j_unzip.vbs 
@ECHO REM Set WshShell = CreateObject("Wscript.Shell")>>j_unzip.vbs 
@ECHO REM CurDir = WshShell.ExpandEnvironmentStrings("%%cd%%")>>j_unzip.vbs 
@ECHO Dim sCurPath>>j_unzip.vbs 
@ECHO sCurPath = CreateObject("Scripting.FileSystemObject").GetAbsolutePathName(".")>>j_unzip.vbs 
@ECHO strZipFile = sCurPath ^& "\" ^& strFileZIP>>j_unzip.vbs 
@ECHO 'The folder the contents should be extracted to.>>j_unzip.vbs 
@ECHO outFolder = sCurPath ^& "\">>j_unzip.vbs 
@ECHO.>>j_unzip.vbs 
@ECHO. WScript.Echo ( "Extracting file " ^& strFileZIP)>>j_unzip.vbs 
@ECHO.>>j_unzip.vbs 
@ECHO Set objShell = CreateObject( "Shell.Application" )>>j_unzip.vbs 
@ECHO Set objSource = objShell.NameSpace(strZipFile).Items()>>j_unzip.vbs 
@ECHO Set objTarget = objShell.NameSpace(outFolder)>>j_unzip.vbs 
@ECHO intOptions = 256>>j_unzip.vbs 
@ECHO objTarget.CopyHere objSource, intOptions>>j_unzip.vbs 
@ECHO.>>j_unzip.vbs 
@ECHO. WScript.Echo ( "Extracted." )>>j_unzip.vbs 
@ECHO.>>j_unzip.vbs 


@echo ' Set your settings>>download.vbs
@ECHO Set ArgObj = WScript.Arguments>>download.vbs
@echo var1 = ArgObj(0)>>download.vbs
@echo     strFileURL = var1>>download.vbs
@echo     strHDLocation = "eclipse.zip">>download.vbs
@echo ' Fetch the file>>download.vbs
@echo     Set objXMLHTTP = CreateObject("MSXML2.XMLHTTP")>>download.vbs
@echo     objXMLHTTP.open "GET", strFileURL, false>>download.vbs
@echo     objXMLHTTP.send()>>download.vbs
@echo If objXMLHTTP.Status = 200 Then>>download.vbs
@echo Set objADOStream = CreateObject("ADODB.Stream")>>download.vbs
@echo objADOStream.Open>>download.vbs
@echo objADOStream.Type = 1 'adTypeBinary>>download.vbs
@echo objADOStream.Write objXMLHTTP.ResponseBody>>download.vbs
@echo objADOStream.Position = 0    'Set the stream position to the start>>download.vbs
@echo Set objFSO = Createobject("Scripting.FileSystemObject")>>download.vbs
@echo If objFSO.Fileexists(strHDLocation) Then objFSO.DeleteFile strHDLocation>>download.vbs
@echo Set objFSO = Nothing>>download.vbs
@echo objADOStream.SaveToFile strHDLocation>>download.vbs
@echo objADOStream.Close>>download.vbs
@echo Set objADOStream = Nothing>>download.vbs
@echo End if>>download.vbs
@echo Set objXMLHTTP = Nothing>>download.vbs
@cscript download.vbs "http://mirrors.xmission.com/eclipse/technology/epp/downloads/release/luna/SR1/eclipse-java-luna-SR1-win32-x86_64.zip"
@cscript /B j_unzip.vbs eclipse.zip

@echo Done!
@pause