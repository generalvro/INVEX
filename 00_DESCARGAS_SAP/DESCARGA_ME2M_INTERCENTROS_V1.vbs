
' === Obtención de la fecha actual en formato YYYYMMDD ===
currentDate = Year(Date) & Right("0" & Month(Date), 2) & Right("0" & Day(Date), 2)


' Confirmación de conexión


' === Descarga de reportes ===

If Not IsObject(application) Then
   Set SapGuiAuto  = GetObject("SAPGUI")
   Set application = SapGuiAuto.GetScriptingEngine
End If
If Not IsObject(connection) Then
   Set connection = application.Children(0)
End If
If Not IsObject(session) Then
   Set session    = connection.Children(0)
End If
If IsObject(WScript) Then
   WScript.ConnectObject session,     "on"
   WScript.ConnectObject application, "on"
End If
session.findById("wnd[0]").maximize
session.findById("wnd[0]/tbar[0]/okcd").text = "/NME2M"
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtEM_WERKS-LOW").text = ""

session.findById("wnd[0]/usr/ctxtS_BSART-LOW").text = "ZTRS"
session.findById("wnd[0]/usr/ctxtS_BSART-LOW").setFocus
session.findById("wnd[0]/usr/ctxtS_BSART-LOW").caretPosition = 4


session.findById("wnd[0]/usr/ctxtS_BEDAT-LOW").text = "01.01.2024"
session.findById("wnd[0]/usr/ctxtS_BEDAT-HIGH").text = "31.12.2025"
session.findById("wnd[0]/usr/ctxtS_BEDAT-HIGH").setFocus
session.findById("wnd[0]/usr/ctxtS_BEDAT-HIGH").caretPosition = 10

session.findById("wnd[0]/tbar[1]/btn[8]").press
session.findById("wnd[0]/tbar[1]/btn[43]").press
session.findById("wnd[1]/tbar[0]/btn[0]").press

session.findById("wnd[1]/usr/ctxtDY_PATH").setFocus
session.findById("wnd[1]/usr/ctxtDY_PATH").caretPosition = 0
session.findById("wnd[1]").sendVKey 4
session.findById("wnd[2]/usr/ctxtDY_PATH").text = "C:\Users\angel.bravo\Documents\Ecopetrol S.A\INVEX - Documentos\LOGISTICA\01 REPORTES DIARIOS\03 ME2M INTERCENTROS"
session.findById("wnd[2]/usr/ctxtDY_FILENAME").text = "ME2M_IC_" & currentDate & ".XLSX"
session.findById("wnd[2]/tbar[0]/btn[0]").press
session.findById("wnd[1]/tbar[0]/btn[12]").press
