# Grundbegriffe der Informatik - Tutoriumsfolien

## Übersicht über Struktur des Repo

### Tutorien-Ordner
* Für jedes Tutorium gibt es einen eigenen Ordner, der als Namen die Zahl des Tutoriums hat
* slides.tex ist die Haupt-Tex-Datei pro Tutorium
* In slides.tex werden per \input die Themen des Tutoriums eingebunden
* `make full` (Linux/MacOS/CygWin) bzw `.\make.bat` (Windows) baut die Folien vollständig (mit \pause, \only etc fürs eigentliche Tut)
* `make handout` (Linux/MacOS/CygWin) bzw `.\make-handout.bat` (Windows) baut die Folien ohne Unterbrechungen zum Hochladen für die Studierenden
* Der Tut-Ordner 00 gilt als Template

### Inhaltsfolien
* In topics liegen die TeX-Dateien mit Inhalt, nach Thema geordnet
* Die Dateien müssen in die slides.tex eines Tutorium eingebunden werden
* Die topics Dateien kann man natürlich auch einfach ausschlachten und anderweitig verwenden

### Tutor\*innen
* Jede\*r Tutor\*in gibt die Daten zur eigenen Person/Tut in config\_&lt;Name&gt;.tex an
* In modes.tex (von git ignoriert) wird ein Command \&lt;Name&gt;Mode für die aktuelle Person angelegt (siehe modes\_template.tex)
* In templates/praeambelTut.tex wird die Definition von \&lt;Name&gt;Mode zur Erkennung der/des Tutor\*in verwendet und die entsprechende config eingebunden

### Sonstiges
* In templates/gbi-makros.tex finden sich die Definitionen allerhand Commands, die verwendet werden

## Neue\*n Tutor\*in anlegen
1. config\_&lt;Name&gt;.tex erstellen und mit passenden Daten füllen (als Referenz kann man andere configs nehmen)
2. modes\_template.tex kopieren und in modes.tex umbenennen
3. In modes.tex Command \&lt;Name&gt;Mode anlegen (so wie bestehende)
4. In templates/praeambelTut.tex 
	`\ifdefined \<Name>Mode
	\input{../config_<Name>.tex}
	\fi` 
	einfügen
5. Testen, ob alles klappt, indem man ein Tut mit `make full` bzw make.bat baut
