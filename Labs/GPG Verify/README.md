# Lab: GPG Verify

-   Zeitaufwand:        ⏱️⏱️⏱️
-   Schwierigkeitsgrad: 🌶️🌶️🌶️
-   Beschreibung: In diesem Lab wird das Verständnis vom Konzept der Signatur anhand vom OpenPGP Standard und dessen Implementation GPG praktisch vertieft. Sie verifizieren eine Datei, die digital signiert wurde.

## Voraussetzung & Vorbereitung

-   Kali Linux

## Aufgabe

1.  Alle importierten Keys anzeigen `gpg --fingerprint`. Die Warnung `gpg: WARNING: unsafe permissions on homedir '/home/hacker/.gnupg'` in Kali Linux kann in diesem Lab ignoriert werden oder mit dem Setzen von restriktiveren Verzeichnisrechten behoben werden: `chmod 700 -R /home/hacker/.gnupg`.

2.  Public Key `publickey.asc` mit dem Befehl `gpg --import publickey.asc` in den Key Store importieren. Die Ausgabe könnte wie folgt aussehen:


    gpg: key CCB3343BD574AA56: public key "Pascal K. (contact key via addere.ch) <web@addere.ch>" imported
    gpg: Total number processed: 1
    gpg:               imported: 1

Der Wert `CCB3343BD574AA56` entspricht der _Key ID_ und identifiziert diesen Public Key eindeutig.

3.  Verifizieren Sie, dass nun ein öffentlicher Schlüssel vorhanden ist mit dem Befehl aus Aufgabe 1. Der Wert `9711 2D17 C178 3C39 4312  BB29 CCB3 343B D574 AA56` entspricht dem _Fingerprint_ und identifiziert diesen Public Key eindeutig. Die letzten vier Viererblöcke entsprechen der _Key ID_.

4.  Öffnen Sie die Datei `Homer-Odyssee-Erster-Gesang.txt` in Ihrem bevorzugten Text-Editor. Diese Datei wurde mit dem privaten Key digital signiert. Die Signatur ist als separate Datei `Homer-Odyssee-Erster-Gesang.sig` im selben Verzeichnis. Sie können sich den Inhalt dieses Binärfiles mit dem Befehl `hd` anzeigen lassen:


    hd Homer-Odyssee-Erster-Gesang.sig
    00000000  89 02 33 04 00 01 0a 00  1d 16 21 04 97 11 2d 17  |..3.......!...-.|

    ---8< gekürzt 8<---

    00000220  de 9a a3 d5 61 7d 4d 42  0c 68 1f 26 5c 69 4e fc  |....a}MB.h.&\iN.|
    00000230  66 74 f4 68 0b 6a                                 |ft.h.j|
    00000236

5.  Nun möchten Sie die Signatur des Dokuments prüfen: `gpg --verify Homer-Odyssee-Erster-Gesang.sig Homer-Odyssee-Erster-Gesang.txt`. Die Ausgabe könnte wie folgt aussehen:


    1  gpg: Signature made Sat 06 Mar 2021 04:14:31 PM CET
    2  gpg:                using RSA key 97112D17C1783C394312BB29CCB3343BD574AA56
    3  gpg: Good signature from "Pascal K. (contact key via addere.ch) <web@addere.ch>" [unknown]
    4  gpg: WARNING: This key is not certified with a trusted signature!
    5  gpg:          There is no indication that the signature belongs to the owner.
    6  Primary key fingerprint: 9711 2D17 C178 3C39 4312  BB29 CCB3 343B D574 AA56

Die Ausgabe besteht aus zwei Teilen. Das Ergebnis der Signaturprüfung (Zeile 1 bis 3) und einer Warnmeldung (Zeile 4 bis 6). Fokussieren Sie sich zunächst auf den ersten Teil.

-   1) gibt den Zeitpunkt an, wann die SIgnatur erstellt wurde.
-   2) gibt den Fingerprint des verwendeten RSA private Key aus, mit welchem die Signatur erstellt wurde.
-   3) gibt das Resultat, in diesem Fall **Good signature** aus.

6.  Verändern Sie nun die Datei `Homer-Odyssee-Erster-Gesang.txt` minimal, indem Sie nur ein Zeichen löschen oder ergänzen und überprüfen Sie die Signatur erneut mit dem Befehl aus Aufgabe 5. Was sehen Sie jetzt?

7.  In Ihrem GPG Key Store befindet sich nur dieser öffentliche Schlüssel _A<sub>publickey</sub>_. Welche der folgenden Operationen können Sie demnach durchführen? Nur eine Aussage ist korrekt.

    a. Dokumente verifizieren, die mit dem öffentlichen Schlüssel A<sub>publickey</sub> signiert wurden **und** Dokumente für die Person mit dem öffentlichen Schlüssel A<sub>publickey</sub> verschlüsseln.

    b. Dokumente verifizieren, die mit dem öffentlichen Schlüssel A<sub>publickey</sub> signiert wurden **und** Dokumente für die Person mit dem öffentlichen Schlüssel A<sub>publickey</sub> signieren.

    c. Dokumente verifizieren, die mit dem privaten Schlüssel A<sub>privatekey</sub> signiert wurden **und** Dokumente für die Person mit dem privaten Schlüssel A<sub>privatekey</sub> verschlüsseln.

    d. Dokumente verifizieren, die mit dem privaten Schlüssel A<sub>privatekey</sub> signiert wurden **und** Dokumente für die Person mit dem privaten Schlüssel A<sub>privatekey</sub> signieren.

8.  Erstellen Sie nun eine Datei mit dem Namen `secret-message.txt` und fügen Sie folgendes Zitat von [Marie Curie](https://de.wikiquote.org/wiki/Marie_Curie) ein:


    Sie müssen Ihr Talent entdecken und benutzen. Sie müssen herausfinden, wo Ihre Stärke liegt. Haben Sie den Mut, mit Ihrem Kopf zu denken. Das wird Ihr Selbstvertrauen und Ihre Kräfte verdoppeln.

Verschlüsseln Sie nun diese Nachricht mit dem Befehl: `gpg -e -r web@addere.ch secret-message.txt`. Bestätigen Sie die Warnung mit 'y'.

9.  Benennen Sie die neu erstellte Datei aus der letzten Aufgabe um und wiederholen den Schritt aus Aufgabe 8, sodass Sie nun zwei Dateien mit dem verschlüsselten Zitat von Marie Curie haben. Vergleichen Sie die Dateien, was stellen Sie fest?

## Fragen

Alle Antworten per [Mail](mailto:pascal.knecht@juventus.schule?subject=[Lab]%20GPG%20Verify) mit Betreff `[Lab] GPG Verify` an den Dozenten.

1.  Was ist das Resultat in Aufgabe 6? Wieso erhalten Sie dieses Resultat? Antworten Sie mit dem Resultat und Ihrer Begründung.

2.  Welche Aussage aus der Aufgabe 7 ist korrekt?

3.  Senden Sie die Datei `secret-message.txt.gpg` aus Aufgabe 8.

4.  In Aufgabe 9 haben Sie die beiden Dateien mit demselben verschlüsselten Zitat verglichen. Sind die Dateien identisch? Beschreiben Sie, wie Sie die beiden Dateien verglichen haben. Was schliessen Sie aus Ihrer Beobachtung beispielsweise im Bezug auf Hash-Funktionen?

5.  (optional/nicht bewertet) Wenn Sie für sich Mailverschlüsselung mit GPG einrichten und privat nutzen möchten, können Sie den öffentlichen Schlüssel `publickey.asc` gerne importieren und mir auf die darin enthaltene Mailadresse ein verschlüsseltes und signiertes Testmail schicken. Vergessen Sie nicht, Ihren eigenen öffentlichen Schlüssel anzuhängen.

## Bemerkungen

-   Die Software [GNU Privacy Guard (GPG)](https://de.wikipedia.org/wiki/GNU_Privacy_Guard) implementiert den OpenPGP-Standard aber auch [S/MIME](https://de.wikipedia.org/wiki/S/MIME). Die Software dient als Grundlage verschiedener Anwendungszwecke wie die sichere Übertragung von Email aber auch die Verifizierung von Software<sup>1</sup> und/oder Updates<sup>2</sup>.

-   Moderne verschlüsselte Messenger wie Threema oder Signal nutzen dasselbe Konzept. Implementation Details für bspw. Threema sind im [Cryptography Whitepaper](https://threema.ch/press-files/2_documentation/cryptography_whitepaper.pdf) zu finden.

<sup>1</sup> bspw. [Install from Debian, Ubuntu, or Mint using the command line and GnuPG](https://tails.boum.org/install/expert/usb/index.en.html)
<sup>2</sup> bspw. [Are repository lists secure? Is there an HTTPS version?](https://askubuntu.com/questions/352952/are-repository-lists-secure-is-there-an-https-version)
