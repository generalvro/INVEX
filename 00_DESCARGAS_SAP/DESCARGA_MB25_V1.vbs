
' === Obtención de la fecha actual en formato YYYYMMDD ===
currentDate = Year(Date) & Right("0" & Month(Date), 2) & Right("0" & Day(Date), 2)


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
session.findById("wnd[0]/tbar[0]/okcd").text = "/NMB25"
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtMATNR-LOW").text = ""
session.findById("wnd[0]/usr/ctxtWERKS-LOW").text = ""
session.findById("wnd[0]/usr/ctxtWERKS-LOW").setFocus
session.findById("wnd[0]/usr/ctxtWERKS-LOW").caretPosition = 0
session.findById("wnd[0]/usr/btn%_WERKS_%_APP_%-VALU_PUSH").press
session.findById("wnd[1]/usr/tabsTAB_STRIP/tabpSIVA/ssubSCREEN_HEADER:SAPLALDB:3010/tblSAPLALDBSINGLE/ctxtRSCSEL_255-SLOW_I[1,0]").text = "1085"
session.findById("wnd[1]/usr/tabsTAB_STRIP/tabpSIVA/ssubSCREEN_HEADER:SAPLALDB:3010/tblSAPLALDBSINGLE/ctxtRSCSEL_255-SLOW_I[1,1]").text = "1086"
session.findById("wnd[1]/usr/tabsTAB_STRIP/tabpSIVA/ssubSCREEN_HEADER:SAPLALDB:3010/tblSAPLALDBSINGLE/ctxtRSCSEL_255-SLOW_I[1,2]").text = "1087"
session.findById("wnd[1]/usr/tabsTAB_STRIP/tabpSIVA/ssubSCREEN_HEADER:SAPLALDB:3010/tblSAPLALDBSINGLE/ctxtRSCSEL_255-SLOW_I[1,3]").text = "1088"
session.findById("wnd[1]/usr/tabsTAB_STRIP/tabpSIVA/ssubSCREEN_HEADER:SAPLALDB:3010/tblSAPLALDBSINGLE/ctxtRSCSEL_255-SLOW_I[1,4]").text = "5007"
session.findById("wnd[1]/usr/tabsTAB_STRIP/tabpSIVA/ssubSCREEN_HEADER:SAPLALDB:3010/tblSAPLALDBSINGLE/ctxtRSCSEL_255-SLOW_I[1,5]").text = "6005"
session.findById("wnd[1]/usr/tabsTAB_STRIP/tabpSIVA/ssubSCREEN_HEADER:SAPLALDB:3010/tblSAPLALDBSINGLE/ctxtRSCSEL_255-SLOW_I[1,6]").text = "6019"
session.findById("wnd[1]/usr/tabsTAB_STRIP/tabpSIVA/ssubSCREEN_HEADER:SAPLALDB:3010/tblSAPLALDBSINGLE/ctxtRSCSEL_255-SLOW_I[1,6]").setFocus
session.findById("wnd[1]/usr/tabsTAB_STRIP/tabpSIVA/ssubSCREEN_HEADER:SAPLALDB:3010/tblSAPLALDBSINGLE/ctxtRSCSEL_255-SLOW_I[1,6]").caretPosition = 4
session.findById("wnd[1]/tbar[0]/btn[8]").press
session.findById("wnd[0]/usr/chkP_OPEN").selected = true
session.findById("wnd[0]/usr/ctxtALV_DEF").text = "/MB25_SQL"
session.findById("wnd[0]/usr/chkP_OPEN").setFocus
session.findById("wnd[0]").sendVKey 2
session.findById("wnd[0]/usr/chkP_CANCEL").selected = true
session.findById("wnd[0]/usr/chkP_CANCEL").setFocus
session.findById("wnd[0]").sendVKey 2
session.findById("wnd[0]/usr/chkP_CLOSED").selected = true
session.findById("wnd[0]/usr/chkP_CLOSED").setFocus
session.findById("wnd[0]").sendVKey 2
session.findById("wnd[0]/usr/chkP_ISSUES").selected = true
session.findById("wnd[0]/usr/chkP_ISSUES").setFocus
session.findById("wnd[0]").sendVKey 2
session.findById("wnd[0]/usr/chkP_RECEIP").selected = true
session.findById("wnd[0]/usr/chkP_RECEIP").setFocus
session.findById("wnd[0]").sendVKey 2
session.findById("wnd[0]/tbar[1]/btn[8]").press
session.findById("wnd[0]/usr/cntlGRID1/shellcont/shell").setCurrentCell 6,"MAKTX"
session.findById("wnd[0]/usr/cntlGRID1/shellcont/shell").contextMenu
session.findById("wnd[0]/usr/cntlGRID1/shellcont/shell").selectContextMenuItem "&XXL"
session.findById("wnd[1]/tbar[0]/btn[0]").press

session.findById("wnd[1]").sendVKey 4
session.findById("wnd[2]/usr/ctxtDY_PATH").text = "C:\Users\angel.bravo\Documents\Ecopetrol S.A\INVEX - Documentos\LOGISTICA\01 REPORTES DIARIOS\02 MB25"
session.findById("wnd[2]/usr/ctxtDY_FILENAME").text = "MB25_" & currentDate & ".XLSX"
session.findById("wnd[2]/tbar[0]/btn[0]").press
session.findById("wnd[1]/tbar[0]/btn[12]").press


