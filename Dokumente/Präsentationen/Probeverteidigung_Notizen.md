# UseCase

+ Stellen Sie sich vor: Sie arbeiten an einer modularen Anlage
+ Das System meldet: Modul Temper muss in spätestens 7 Tagen gewartet werden
+  Von ihrem Chef wissen Sie, dass  die Wartung 2 Tage dauert. Die Anlage darf aber aufgrund hoher Auftragslage nur 3 Stunden still stehen.
+   Jetzt fragen Sie sich sicher: Was für Möglichkeiten habe ich das Problem zu lösen?

# Motivation

+ Zunächst müssen wir den Mitarbeiter / Sie besser verstehen. Warum ist die Lösung so schwierig?

### Modulare Anlage

+ Warum überhaupt verwenden?
  + Möglichkeit schneller umzubauen
  + Reduktion Time-to-Market
+ Anlage besteht aus 3 Modulen (Dosierer, Reaktor und Temperierer)
+ Die Module werden durch Services gesteuert - diese können mit Parameter versehen werden
+ => Hohe Flexbilität

### Herausforderung

+ Viele Anpassungen möglich
+ Anlagenbediener ist in kritischen Situationen für Entscheidung verantwortlich
+ Mensch trifft Entscheidungen anhand von Beobachtungen und Erfahrungen
+ Anlagenbediener ist stärker in Veränderungen eingebunden
+ => Probleme können in modularen Anlagen nicht mehr auf Grundlage von umfangreichen Erfahrungen gelöst werden

# Agenda

Damit der Nutzer am Ende ein System in der Hand hält, das ihm hilft, müssen einige Sachen beachtet werden

+ Dazu schauen wir uns an, wie man dem Nutzer helfen könnte
+ Wir schauen, was der Nutzer für die Problemlösung wissen muss
+ Es wird einen ersten Vorschlag geben, wie eine entsprechende Hilfe aussehen kann
+ Zur Bewertung wird überprüft, ob ihm nun geholfen werden konnte
+ Zu guter Letzt gibt es noch einige Schritte, die getan werden müssen damit der Nutzer ein fertiges Assistenzsystem in den Händen hält

# Stand der Technik

Um zu wissen, wie man helfen kann schauen wir uns zunächst an, wie so ein Problemlöseprozess aussieht

### Problemlöseprozess

+ Ein Problemlöseprozess besteht aus 5 Phasen
+ Phase 1: Problemidentifikation
  + Problem ist identifiziert, wenn man Ziele setzt und dieses nicht ohne weiteres Nachdenken erreichen kann
  + in diesem Fall: Modul muss gewartet werden - dauert 2 Tage - Produktion darf aber nur 3 Stunden stell stehen
  + in dieser Phase muss auch klar sein, dass sich Probleme stark unterscheiden können
    + ...
+ Phase 2: Ziel- und Situationsanalyse
  + was soll überhaupt erreicht werden? -> Produktion aufrecht erhalten
  + Beschränkung: Ich habe nur 1 Mitarbeiter zur Verfügung um Modul zu tauschen
  + Situation: Wie komplex ist das Problem?
    + Komplexität: 
    + Vernetztheit: Wie stark hängen die Änderungsmöglichkeiten voneinander ab - Modul ändert sich, Services ändern sich -> Anpassungen im Rezept nötig
    + Dynamik: Verändert sich der Zustand der Situation (hier: Wartung rück immer näher - eine Lösungen sind dann vielleicht nicht mehr möglich)
    + Intransparenz
    + Projektile
+ Phase 3: Planerstellung
+ Phase 4: Planausführung
+ Phase 5: Ergebnisbewertung

### Assistenzsysteme

+ können Unterstützung leisten
+ Im Problemlöseprozess unter anderem bei
  + Problemidentifiktaion: mit Signalen auf Problem aufmerksam machen; Mit Signalen auf die Problembereiche aufmerksam machen
  + Ziel- und Situationsanalyse: Orientierung bieten bei Zieldefinition (Identifikation Randbedingungen)
  + Planerstellung: Lösungen und Informationen filtern
+ Individualisierung - Anpassen an



# Analyse

