# Lab: Passwort knacken

-   Zeitaufwand:        ⏱️
-   Schwierigkeitsgrad: 🌶️
-   Beschreibung: In diesem Lab sammeln Sie praktische Erfahrung mit dem Knacken von Passwörtern anhand verschiedener verschlüsselter Dateien.

## Voraussetzung & Vorbereitung

-   Kali Linux

## Aufgabe

1.  Führen Sie in einem non-root Terminal den Benchmark Modus des Tools `fcrackzip` mittels `fcrackzip -B` aus. Wie viele Cracks pro Sekunde schafft Ihr System für `zip2`?

2.  Cracken Sie das Passwort der Datei `res/Secret.zip` mittels `fcrackzip` und der Brute Force Methode. Sie können davon ausgehen, dass das Passwort nur aus Zahlen [0-9] und einer Länge von 8 Zeichen entspricht.

3.  Cracken Sie das Passwort der Datei `res/TopSecret.zip` mittels `fcrackzip`. Sie wissen in diesem Fall nicht, wie lange das Passwort ist und auch nicht welches Characterset verwendet wurde. Entsprechend würde sich eine Attacke anhand einer Wortliste eher anbieten. Kali Linux bietet eine Wortliste an. Sie können sie mittels `sudo gzip -d /usr/share/wordlists/rockyou.txt.gz` entpacken und entsprechend unter `/usr/share/wordlists/rockyou.txt` auffinden.

## Fragen

Alle Antworten per [Mail](mailto:pascal.knecht@juventus.schule?subject=[Lab]%20Passwort%20knacken) mit Betreff `[Lab] Passwort knacken` an den Dozenten.

1.  In Aufgabe 1 haben Sie ermittelt, wie viele cracks/s Ihr System schafft. Gehen Sie davon aus, Ihr Rechner schafft 11'693'718 cracks/s, wie lange würde es also maximal dauern, ein Passwort das nur aus Zahlen besteht und 7 Zeichen lang ist zu cracken? Geben Sie die Formel und das Ergebnis an.

2.  Wie lautet das Passwort der Datei `Secret.zip`? Geben Sie auch Ihren Befehl in Ihrem Lösungsvorschlag an.

3.  Wie lautet das Passwort der Datei `TopSecret.zip`? Geben Sie auch Ihren Befehl in Ihrem Lösungsvorschlag an.

## Bemerkungen

-   Die beiden verschlüsselten ZIP-Dateien wurden mit dem Befehl `zip --encrypt TopSecret.zip Top\ Secret.jpg` erstellt.

-   Empfehlenswerter Erfahrungsbericht zum Thema Festplattenverschlüsselung knacken [Heise: Festplattenverschlüsselung mit Brute-Force knacken](https://www.heise.de/ct/artikel/Festplattenverschluesselung-mit-Brute-Force-knacken-4769795.html).
