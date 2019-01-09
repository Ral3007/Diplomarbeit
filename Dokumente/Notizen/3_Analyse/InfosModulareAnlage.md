# Informationen über die modulare Anlage

## Literatur

###Zustandbasierte Führung modularer Prozessanlagen

+ Kapselung von verfahrenstechnischen Funktionen in Services innerhalb der Module
+ Services werden in PFE orchestriert
+ es kann kein direkter Einfluss auf einzelne Aktoren im Automatikbetrieb genommen werden
+ aus PFE Service Commands an Services der Module schicken
+ Services folgen dem Zustandautomaten
+ innerhalb jedes Zustands werden Programme aufgerufen
+ über Rückmeldung in welchem Zustand sich der Service befindet (Service State) wird in der PFE die Orchestrierung durchgeführt
+ Operator hat nur lesenden Zugriff auf die Feldebene

### Orchestration of Services in Modular Process Plants

+ service commands sind nach priorität entsprechend dem zustandmodell sortiert
  + prioriät 1: abort
  + 2: stop
  + 3: hold
  + 4: start, pause, reset, unholding
+ es ist möglich, dass nicht vorkommende Events für das auslösen von Transitionen existieren
  + Controller des Moduls muss die Zweit des aktiven Service Zustand erfassen und eine Fehlermeldung zum SCS senden, wenn die Zeit ein bestimmtes Limit überschreitet 
+ alle Zustanände aller aktiven Services von allen Modulen sind im HMI der SCS erkennbar
+ der operation Mode kann verändert werden
  + automatic: services folgen den Instruktionen der implementierten Orchestrierung
  + manual central
  + manual local

### State-based control

+ Services sollten möglichst unabhängig sein
+ in zwei Fällen können Serviceabhängigkeiten vorhanden sein
  + services verwendet das gleiche physikalische equipment im modul
  + geordnete prozess steps
+ 2 verschiedene Servicetypen
  + self-completing: endet, wenn ein gesetzter parameter oder prozesswert erreicht ist
  + continuos service: endet, wenn er einen stop oder abort Kommando erhält
+ Modul muss in sicheren Zustand gesetzt werden ohne einschränkungen zu den anderen Modulen
+ wechseln der Zustandmodells in definierten Zuständen nur möglichen zwischen Wartezuständen
+ In transienten Zuständen ist der Zustand des Feldgeräts und dem Modul nicht deutlich
+ bei aktivierung einer Veränderung der Betriebsart wenn Service in einem transienten Zustand ist, der Service verweigert die änderungsanfrage und gibt eine Rückmeldung: Nachricht über Zurückweisung und aktuellen Zustand des Service
+ 



## Übersicht

### Allgemeine Modulinformationen

+ Name
+ HMI
+ Hersteller
+ 

###Informationen über die Services

+ aktueller Zustand
+ Mögliche Zustandübergänge (allgemein nach Zustandsmodell? oder können bestimmte Services bestimmte Zustände gar nicht annehmen?)
+ Parameter
  + range, einheit, default value
+ Betriebsart
  + automatic: services folgen den Instruktionen der implementierten Orchestrierung
  + manual central: services und feldgeräte wurden für manuelle kontrolle durch den modullieferant ausgewählt. Können mittels HMI kontrolliert werden
  + manual local: services und feldgeräte können durch ein Locales Panel am Modul gesteuert werden. Notwendig für Maintenance oder Kommissionierung eines einzelnen Moduls
+ 