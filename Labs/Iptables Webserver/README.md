# Lab: Iptables Webserver

-   Zeitaufwand:        ⏱️
-   Schwierigkeitsgrad: 🌶️🌶️
-   Beschreibung: In diesem Lab vertiefen Sie Ihr Iptables Wissen und erstellen ein einfaches Regelset für einen Webserver.

## Voraussetzung & Vorbereitung

-   Kali Linux mit Network Bridge Adapter Modus

## Aufgabe

1.  Öffnen Sie ein root-terminal und geben Sie den Befehl `iptables -L -n` ein.
    Sie sollten nun die drei Chains `INPUT`, `FORWARD` und `OUTPUT` sehen. `INPUT` und `OUTPUT` sollten keine Regeln beinhalten und die default policy sollte auf `ACCEPT` stehen.

2.  Starten Sie nun den Apache2 Webserver. Prüfen Sie zuerst, ob der Service `systemctl status apache2.service` schon aktiv ist. Ist dies nicht der Fall, starten Sie den Service mit dem Befehl `systemctl start apache2.service`. Vergewissern Sie sich nach dem Start mit dem ersten Befehl, ob der Service wirklich läuft.

3.  Prüfen Sie, ob Sie mit Firefox oder Chrome aus der virtuellen Kali-Instanz auf die Default-Seite von Apache2 zugreifen können: `http://localhost`.

4.  Prüfen Sie, ob Sie mit Firefox oder Chrome von Ihrem Hostsystem auf die Default-Seite von Apache2 zugreifen können: `http://<ip>`.

5.  Ändern Sie nun die `INPUT` Default-Policy auf `DROP` mit dem Befehl `iptables -P INPUT DROP`.

6.  Ist die Webseite aus Kali noch erreichbar?

7.  Ist die Webseite von Ihrem Hostsystem aus noch erreichbar?

8.  Erstellen Sie nun eine Regel, die es Ihrem Hostsystem wieder erlaubt, auf die Webseite zuzugreifen. Folgende Vorgaben müssen für diese Regel verwendet werden:
    Protokoll:        `TCP`
    Destination Port: `80`
    Source IP:        `any`
    Destination IP:   `ip des Gastsystems`

9.  Sie betreiben nun einen Webserver, der mit einer Firewall zusätzlich abgesichert ist. Jedoch stellen Sie nach kurzer Zeit fest, dass aus einem bestimmten IP-Adressbereich des Internets sehr viele Anfragen kommen und Ihr Webserver die Last dieser Anfragen nicht mehr bewältigen kann. Sie beschliessen, dieser Denial of Service (DoS) Attacke mit einer zusätzlichen Firewall-Regel entgegen zu wirken. Folgende Vorgaben müssen für diese Regel verwendet werden:
    Protokoll:        `TCP`
    Destination Port: `80`
    Source IP:        `13.13.13.13 bis 13.13.23.23`
    Destination IP:   `ip des Gastsystems`

10. Führen Sie am Ende die Befehle aus dem Unterkapitel _Clean-up_ aus.

## Fragen

Alle Antworten per [Mail](mailto:pascal.knecht@juventus.schule?subject=[Lab]%20Iptables%20Webserver) mit Betreff `[Lab] Iptables Webserver` an den Dozenten.

1.  Begründen Sie Ihre Antworten aus Aufgabe 6 und 7. Berücksichtigen Sie dabei auch den Faktor der zeitlichen Reaktion.

2.  Wie lautet der ganze Befehl, um Aufgabe 8 zu erfüllen?

3.  Wie lautet der ganze Befehl, um Aufgabe 9 zu erfüllen? Verwenden Sie als Action `DROP` oder `REJECT`? Begründen Sie.

## Bemerkungen

-   Webserver werden üblicherweise für Port 80/tcp für HTTP und 443/tcp für HTTPS konfiguriert. Wobei Port 80 lediglich zwecks Weiterleitung von HTTP auf HTTPS verwendet wird. Mangels TLS-Zertifikat beschränken wir uns in diesem Lab auf Port 80/tcp. Der Mechanismus ist aber übertragbar auf Port 443/tcp.

## Clean-up

Führen Sie im root-terminal das Skript `clean-up.sh` mit dem Befehl `./clean-up.sh` aus, um Ihre Umgebung zurückzusetzen.

Falls Sie die Fehlermeldung `bash: ./clean-up: Permission denied` erhalten, müssen Sie das Skript erst ausführbar machen: `chmod u+x clean-up.sh`.
