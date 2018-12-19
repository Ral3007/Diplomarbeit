# Modulare Anlagen

## ZVEI - Modulbasierte Produktion

+ krüzer werdende Produkteinführungszeiten -> Entwicklung von Modularisierungskonzepten
+ Steigerung der Flexibilität
+ Modul sollte möglichst breit angelegt sein
+ Um die vorhandenen Anlagenkomponenten effizienter in Instandhaltungsmaßnahmen miteinzubeziehen, ist es für den Anlagenbetreiber unabdingbar, den Gesundheitszustand der Assets mithilfe der daraus resultierenden Diagnoseinformationen zu verwalten und zu bewerten.
+ Es ist darauf hinzuweisen, dass nur diejenigen Diagnoseinformationen im übergeordneten Leitsystem zur Verfügung stehen, die die Module bereitstellen!!!
+ zustandbasierte Steuerung
  + Zustandsmodell ist zugänglich
  + einzige Schnittstellen zur logischen Verbindung zwischen den Modulen
+ relevante Prozess-informationen
  + aktueller Zustand des Moduls
  + Zustandsüberwachung im Hinblick auf zustandsbasierte Instandhaltung
  + Fokus auf produktrelevanten Daten: Qualität, Fortschritt des Produktionsablaufs
  + Fokus auf betriebsrelevante Daten: Energieverbrauch, Auftragslage & Scheduling
+ 



## Urbas - Automatisierung von Prozessmodulen

+ Modularisierung und Standardisierung hat weitreichende Ausweirkungen auf das Engineering und den Betrieb der Anlage
+ beschleunigt: Konzeption, Engineering, Aufbau und Inbetriebnahe von Anlagen
+ Beim Anschließen der Module muss ein Plausibilitätcheck durchgeführt werden
+ Sicherheitsbetrachtung bleibt Einzelfallbetrachtung
  + Schutzeinrichtungen der Module müssen mit gehandhabten Stoffen kombiniert werden
+ besondere Herausforderungen: modulübergreifende Sicherheitskreise (ist nicht mehr relavent? Module sollen/müssen eigensicher sein!)
+ HMI-System und Archiv
  + Fließbilder mit dynamischen Anzeigen von Prozess- und Gerätezuständen
  + Darstellung von Verriegelungen
  + Trendkurven und Trendkurvengruppen
  + Alarm- / Meldesystem
+ geeigneter Zugang für Parameterierung und Diagnose des Moduls gehört zum Lieferumfang

> Aufgrund der gewollten Flexibilität in der Ausgestaltung der einzelnen Module besteht ein Risiko für unvorhersehbare Wechselwirkungen an den technischen Schnittstellen des Moduls zur übergeordneten Anlage

+ Standardisierung soll diese Problem beheben. Das muss in Tests geprüft werden
+ Funktionstest nach Anschließen des Moduls
  + Achten auf Beeinflussung weiterer Module und mögliche Rückwirkungen

>  Wartung der Module durch den Betreiber nur sehr eingeschränkt möglich

> Tritt beim Betrieb einer Anlage ein Problem auf, so wird der Hersteller zumindest an der Lösung beteiligt sein (wenn es sich um ein Problem im Verfahren handelt) oder die Lösung selbst entwickeln müssen (wenn das Problem innerhalb seines Moduls liegt und technischer Natur ist)



## Obst - Automatisierung im Life Cycle modularer Anlagen

+ Konzepte zur Standardisierung der Modularisierung
+ Modularisierung hat Auswirkung auf Engineering und Betrieb der Anlage
+ Verkürzung der Zeit zwischen Produktidee und Markteinführung
+ es entstehen neue Anlagenkonzepte
+ Modul: funktionale Einheit, die geschlossen eine technische Funktion ausführen kann

> Dies setzt ein großes Vertrauen in den Lieferanten voraus, da unter anderem sicherheitsrele- vante Funktionen vom Modulhersteller implementiert werden müssen, die sicherheitstechnische Verantwor- tung aber in der Hand des Anlagen- beziehungsweise Modulbetreibers bleibt.

+ klassische Produktionsanlage
  + Betriebserfahrung gewonnen -> wir berücksichtigt
  + durchgängige Bedienung und Nutzung einheitlicher Geräte in der Anlage
+ Modularisierung
  + unterschiedliche Ausrüstung der Module bei unterschiedlichen Herrstellern

> Um dem Bedien- und Wartungspersonal Eingriffsmöglichkeiten zu geben, muss der Bezug zwi- schen örtlicher Kennzeichnung, innerhalb des Moduls und der Kennzeichnung im übergeordneten Automa- tisierungssystem bekannt gemacht werden.

+ 

## Bernshausen - Namur Modul Type Package

+ Modularisierung: Möglichkeit zukünftige Anforderungen an Prozessindustrie zu bewältigen
+ Änderungen in der Prozessindustrie:
  + schwankende Beschaffungs- und absatzmärkte
  + kürzere Produktlebenszyklen
  + kürzere Innovationszyklen
  + kundenspezifische Spezialisierungen
+ aktuelle Prozessleitsysteme untersützen Engineeriung und Betrieb von modularen Anlagen nicht
+ es musste von bekannten Strukturen des Automatisierungssystems abgewichen werden
+ funktionsorientierte Modularisierung
+ Modul: verfahrenstechnische Grundfunktion als Dienst für PFE
+ Grundfunktionalitäten der PFE unterstützen
  + Mensch-Maschine-Schnittstelle
    + Daten zur Anzeige und Bedienung
  + Steuern und Überwachen
    + interne Zustände de moduls
+ Jedes Modul besitzt eine eigene Steuerung
+ Dienstorientierte Konzept
+ Modul ist/ sollte für verschiedene Einsatzarten ausgelegt sein
+ Zustandbasierte Prozessfürhung
  + modulübergreifende Dienstorchestrierung
    + Kenntnis der aktuellen Zustände und Zustandsübergänge notwendig
  + Definition der Zustände hersteller- und modulunabhängig
  + prozesstechnischen Dienste werden als Funktionen gekapselt
+ Modulspezifische Bedienbilder
+ MTP-Manifest
  + Zustandmodekk des Moduls bzw aller Dienste
  + Beschreibung der Kommunikationsschnittstelle
    + bei integriertem OPC-UA-Server: URL und IP-Adresse
  + alle Dienste, die das Modul der PFE zur Verfügung stellt
  + Beschreibung der Bedienerschnittstelle
    + Bedinebildhierchie
    + PLT_Stelleninformation

## Namur - NE 148

+ geschlossene funktionale Einheit
+ für die angeschlossenen Automatisierungssysteme der Module ist eine Diagnose zu realisieren
+ Systemzustände anzeigen, bei Abweichung von Sollzustand soll Alamierung möglich sein
+ Einzelsteuerebene (Sensoren, Aktoren) soll in Diagnosefunktion voll eingebunden sein

### Datenaustausch und Informationsschnittstellen

+ Übertragung der Daten sind zu unterscheiden
+ Strukturdaten
  + Prozessgrafiken
  + Verriegelung-, Steuerung- und Regelungsstrukturen
  + Modulproxis / Steuerungsfunktionen
  + statische Daten über Export- / Importfunktion nach Bedarf übertragen
+ Dynamische Daten
  + Prozesswerte
  + Sollwerte
  + Modi
  + Status
  + (Aktuelle) Leistungsdaten
  + Identifikation
  + Austausch in Echtzeit zyklisch oder ereignisgesteuert
+ Zugriff des Modullieferanten
  + Wartungszwecke
  + Zugriff auf hersteller- und modulspezifische Daten
+ Bezug zwischen örtlicher Kennzeichnung un der Kennzeichnung im übergeordneten Automatisierungssystem muss bekannt gemacht werden (für Bedin- und Wartungspersonal)

### Optimierung

+ Umbau/ Austausch von Feldgeräten nicht möglich
+ Steruerungssysteme: Verriegelungen und Reglerstrukturen kennt nur der Hersteller

### Wartung, Instandhaltung

+ Absprache bezüglich möglicher Wartungseingriffe muss mit Liferanten getroffen werden
+ Wartung muss durchgehend dokumentiert sein
+ Nachteilig, wenn Betreiber nicht mehr die Rechte zur eigenständigen Fehlerbehebung besitzt
+ 

## Urbas - Modularisierung und Prozessführung

+ ein Modul enthält alle für die Implementierung der Prozessfunktion notwendigen Equipments, alle Instrumente und Automatisierungsfunktionen

## Ladiges - Entwurf, Modellierung und Verifikaton von Serviceabhängigkeiten

+ Modulare Prozessanlagen bestehen aus Modulen mit definierten (Grund-) Funktionen
+ Funktionen wurden implementierut und werden der PFE zur Verfügung gestellt
+ MTP beinhaltet
  + Beschreibung der Modulfunktionalitäten
  + sämtliche Kommunikationkanäle und -variablen
  + alle notwendigen Infromationen zur automatisierten HMI-Generierung
+ die Funktionlitäten der Module werden in Dienste/Service gekapselt
+ Voraussetung für automatisierungstechnische Intergrationsengineering: Serviceorchestrierung und -parametrierung
+ zustandbasierte Steuerung von Services
+ Bedarf an verschiedenen Modul- und Service-Betriebsarten
+ verfahrenstechnische Services lönnen Abhängigkeiten aufweisen
+ Abhängigkeiten können modulintern, aber auch modulübergreifend bestehen
+ Informationen zur Deklarationen aller Services und Betriebsarten sind Modulspezifisch. Müssen vom Modulingenieur angegeben werden
+ aus Deklaration Rupf für Serviceabhängigkeitsmatrix
+ überfüung der Matrix in Petri-Netz
+ Quelle und Ziel kann Zustand oder Zustandsübergang sein
+ Art der Raltion
  + Allow:
    + hat Zustand eines Service als Quelle
    + Zustandsübergang eines anderen Service als Ziel
    + Ziel-Zustandübergang darf nur vorgenommen werden, wenn der Quell-Zustand aktiv ist
    + Service darf nur gestartet werden, wenn anderer Service in bestimmten Zustand
  + Prohibit
    + Quelle: Zustand eines Service
    + Ziel: Zustandübergang eines anderen Service
    + Ziel-Übergang darf nur stattfinden, wenn Quell-Zustand NICHT aktiv
  + Change
    + Betriebsrtenwechsl
    + Quelle: Service in einer Betriebsart mit Zustand
    + Ziel: Service n anderer Betrisbart mit Zustand
  + Sync
    + Synchronisation von Zustandswechseln zwischen Services
    + ein Service startet z.B. gleichzeitig einen aderen Service
+ Bedingungen für Zustandwechsel können von mehreren Quellen abhängen
+ 

## Obst - Beschreibung von Prozessmodulen

+ 

## Hohmann - Modules in process industry

+ 