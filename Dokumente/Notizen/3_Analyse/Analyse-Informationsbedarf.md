# Informationsbedarf

## für Menschen

+ unterschiedliche Gruppen (Modulbetreiber)
  + Field Operator
  + Operator in Leitwarte
  + CEO
  + "Abteilungsleiter"
  + Fabrikplaner

## Was muss ich von der Technik wissen?

+ Aktuelle Verschaltung der modularen Anlage
+ Serviceabhängigkeiten
  + welche Teile des Moduls gehören zum Service
+ Prozessdaten
+ Aufbau des Moduls (PID)?
+ Wartunginformationen (Wann wurde das Modul zuletzt gewartet?)
+ Was passiert, wenn?



## Inhalt MTP

### HMI(Blatt2)

### Schnittstelle (Blatt3)

+ TagName: Name des Moduls (TIC111)
  + MOD -> PFE
+ TagDescription: Beschreibung der PLT-Stelle (Reactor Temperature Inside)
  + MOD -> PFE
+ WQC: verarbeitet zusammenfassender Qulity Code, enthält schlechtesten Quality Code
  + MOD -> PFE
+ ScaleSetting: Legt Anzeigegrenzen eines Analgwerts fest
  + SclMin: MOD -> PFE
  + SclMax: MOD -> PFE
+ UnitSetting: Beschreibung der Einheit nach IEC61158
  + Unit: MOD -> PFE
+ ValueLimitation: beschreibt Sollwertbegrenzung für Analogwerte
  + Min: MOD -> PFE
  + Max: MOD -> PFE
+ Operation Modes
  + BaseOperationMode: Legt fest, ob eine Datenstruktur im Online oder Offline Modus ist
    + StateOnAct: Current State is Online: MOD -> PFE
    + StateOffAct: CurrentState is Offline: MOD -> PFE
  + ExtendedOperationMode: Schnittstelle ist Offline, Manual oder Automatic Mode
    + Zustandswechsel nur zwischen Offline-Manual, Manual-Automatic
    + Nur, wenn BaseOperationMode nicht angewendet wird
    + StateLiOp: gibt an, ob operator switches oder internal switches verwendet werden sollen: MOD -> PFE
    + StateOffLi, StateManLi, StateAutLi: setzt Operation Mode durch internal interaction: MOD -> PFE
    + StateManAct, StateAutAct, StateOffAct: zeigt aktuellen operation mode: MOD -> PFE
  + SourceMode: Auswahl einer Quelle: Intern oder Extern
  + CollectiveSystemFault: zeigt an, dass ein interner Fehler aufgetreten ist
    + CSF: MOD -> PFE
  + OperationMode: Zusemmenfassung aller Modes
+ Interlocks
+ Feedback Monitoring: unterscheidet statische und dynamische Fehlfunktion
  + statisch: Ventilzustand ändernt sich ohne dass Ansteuersignal geändert wurde
  + dynamisch: Datenstruktur ändert Zustand nicht obwohl Ansteuerung erfolgte
+ Reset: Zurücksetzen von Fehlervariablen
  + ResetOp: Operater setzt Variable zurück: PFE -> MOD
  + ResetLi: Internal Link setzt Variable zurücke: MOD -> PFE
+ Limit Monitoring: Überwachung eines Analogwerts: Toleranz-, Warnung- und Alarmgrenzen
  + mit Enable Variablen kann Überwachung aktiviert oder deaktiviert werden
  + mit Limit Variablen kann Grenzwert festgelegt werden
+ DataAssebly: Root-Objekt jedes Datensatz-Elements
  + TagName: MOD -> PFE
  + TagDescription: MOD -> PFE
  + OSLevel: PFE -> MOD
  + WQC: MOD -> PFE
+ Analogwertanzeigen: gemessene Werte in PFE visualisieren, analoge Werte übertragen
  + AnaView: Anzeige eines analogen Werts
    + V: Aktueller Wert: MOD -> PFE
    + VSclMin: unteres Limit: MOD -> PFE
    + VSclMax: oberes Limit: MOD -> PFE
    + VUnit: Einheit: MOD -> PFE
  + AnaMod: Erweiterung von AnaView mit Limit Monitoring
+ Analogoperationen: Analoge Werte an Modulautomatisierung übertragen
  + ExtAnaOpt: Übertragen analoger Werte durch die PFE
    + zur Überprüfung werden alle Werte als Rückgabewert zur Verfügung gestellt
  + ExtIntAnaOpt: Vorgabe eines analgen Werts von externem System oder Modulautomatisierung
  + AdvAnaOp: 
+ Digitalwertanzeigen: Ganzzahlige Werte in PFE visualisieren, einfache digitale Werte von MOD -> PFE
  + DigView: Anzeige eines digitalen Wertes der Modulautomation
  + DigMon: Erweiterung von DigView um Limit Monitoring
  + ExtDigOp: Übertragen von ganzzahligen Werten von PFE -> MOD
  + ExtIntDigOp
  + AdvDigOp
+ Binäranzeigen: erfassten Wert in PFE visualisieren
  + BinView: Anzeige eines binären Werts
    + Statustexte
  + BinMod: überwachung eines flatternden Signals
+ Binäroperationen
  + ExtBinOp: binären Wert setzen oder rücksetzen
  + ExtIntBinOp
  + AdvBinOp

### Services (Blatt4)

+ 