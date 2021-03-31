# Lab: Nmap Service Detection

-   Zeitaufwand:        ⏱️
-   Schwierigkeitsgrad: 🌶️
-   Beschreibung: In diesem Lab vertiefen Sie Ihr Wissen zu Nmap, indem Sie die Service Detection einsetzen um herauszufinden, welche Software-Versionen von Serversoftware im Einsatz sind.

## Voraussetzung & Vorbereitung

-   Kali Linux

## Aufgabe

1.  Mit dem Parameter `-sV` lassen sich umfangreiche Scans starten um herauszufinden, welche Software Versionen einzelner Services im Einsatz sind. Öffnen Sie ein non-root Terminal (Alt + Enter) und führen Sie folgenden Befehl aus: `nmap scanme.nmap.org -sV`.

    Das Ergebnis könnte ungefähr so aussehen:

        nmap scanme.nmap.org -sV
        Starting Nmap 7.91 ( https://nmap.org ) at 2021-02-06 22:21 CET
        Nmap scan report for scanme.nmap.org (45.33.32.156)
        Host is up (0.20s latency).
        Other addresses for scanme.nmap.org (not scanned): 2600:3c01::f03c:91ff:fe18:bb2f
        Not shown: 995 closed ports
        PORT      STATE    SERVICE    VERSION
        22/tcp    open     ssh        OpenSSH 6.6.1p1 Ubuntu 2ubuntu2.13 (Ubuntu Linux; protocol 2.0)
        80/tcp    open     http       Apache httpd 2.4.7 ((Ubuntu))
        2288/tcp  filtered netml
        9929/tcp  open     nping-echo Nping echo
        31337/tcp open     tcpwrapped
        Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

        Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
        Nmap done: 1 IP address (1 host up) scanned in 28.40 seconds

2.  Wiederholen Sie obigen Befehl dieses Mal mit privilegierten Rechten: `sudo nmap scanme.nmap.org -sV`. Das Ergebnis könnte ungefähr so aussehen:

        sudo nmap scanme.nmap.org -sV
        Starting Nmap 7.91 ( <https://nmap.org> ) at 2021-02-06 22:20 CET
        Nmap scan report for scanme.nmap.org (45.33.32.156)
        Host is up (0.19s latency).
        Other addresses for scanme.nmap.org (not scanned): 2600:3c01::f03c:91ff:fe18:bb2f
        Not shown: 996 closed ports
        PORT      STATE SERVICE    VERSION
        22/tcp    open  ssh        OpenSSH 6.6.1p1 Ubuntu 2ubuntu2.13 (Ubuntu Linux; protocol 2.0)
        80/tcp    open  http       Apache httpd 2.4.7 ((Ubuntu))
        9929/tcp  open  nping-echo Nping echo
        31337/tcp open  tcpwrapped
        Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

        Service detection performed. Please report any incorrect results at <https://nmap.org/submit/> .
        Nmap done: 1 IP address (1 host up) scanned in 11.25 seconds

## Fragen

Alle Antworten per [Mail](mailto:pascal.knecht@juventus.schule?subject=[Lab]%20Nmap%20Service%20Detection) mit Betreff `[Lab] Nmap Service Detecion` an den Dozenten.

1.  Gibt es Unterschiede, wenn der _Service Detection Scan_ mit und ohne root Rechten ausgeführt wird? Falls ja, welche?
