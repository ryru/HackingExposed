# Lab: SQL Injection

-   Zeitaufwand:        ⏱️⏱️
-   Schwierigkeitsgrad: 🌶🌶
-   Beschreibung: In diesem Lab festigen Sie Ihr Verständnis zum Thema SQL Injection anhand praktischer Übungen mit dem Projekt _WebGoat_, das Sie als Docker Container lokal starten.

WebGoat ist eine absichtlich unsichere Web Applikation, um praktische Erfahrungen mit Web Security sammeln zu können. Die Labs orientieren sich an den OWASP Top 10.

## Voraussetzung & Vorbereitung

-   Kali Linux
-   [WebGoat](https://github.com/WebGoat/WebGoat) als Docker Container

## Aufgabe

1.  Prüfen Sie, dass Docker installiert ist und als non-root User läuft. Der Befehl `docker ps` in einem non-root Terminal (Alt + Enter) sollte diese Ausgabe erzeugen:

    ```bash
    docker ps
    CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
    ```

2.  Starten Sie den WebGoat Docker Container: `docker run -p 8080:8080 -p 9090:9090 -e TZ=Europe/Zurich webgoat/goatandwolf`.

3.  Öffnen Sie mit dem Webbrowser Ihrer Wahl die URL `http://127.0.0.1:8080/WebGoat`. Sie sollten auf diese Anmeldemaske gelangen:

    ![WebGoat Loginpage](img/webgoat-login-page.png)

4.  Klicken Sie auf _Register new user_ und erstellen Sie für sich einen neuen User. Es handelt sich um einen lokalen User für WebGoat, mit dem Sie Ihren persönlichen Fortschritt in der Anwendung festhalten können.

5.  Nach erfolgreichem Login landen Sie auf der Übersichtsseite.

6.  Wechseln Sie nach [(A1) Injection > SQL Injection (Intro)](http://127.0.0.1:8080/WebGoat/start.mvc#lesson/SqlInjection.lesson). Hier finden Sie 13 Lektionen, wobei die rot hinterlegten Lektionen den Fragen dieses Labs entsprechen.

    Die übrigen Lektionen helfen Ihnen, den Inhalt und die Idee von SQL Injection Attacken zu verstehen. Lesen Sie diese aufmerksam durch.

## Fragen

Alle Antworten per [Mail](mailto:pascal.knecht@juventus.schule?subject=[Lab]%20SQL%20Injection) mit Betreff `[Lab] SQL Injection` an den Dozenten.

1.  [Lektion 2](http://127.0.0.1:8080/WebGoat/start.mvc#lesson/SqlInjection.lesson/1): Wie lautet ein gültiges SQL Statement um diese Augabe zu lösen?

2.  [Lektion 3](http://127.0.0.1:8080/WebGoat/start.mvc#lesson/SqlInjection.lesson/2): Wie lautet ein gültiges SQL Statement um diese Augabe zu lösen?

3.  [Lektion 4](http://127.0.0.1:8080/WebGoat/start.mvc#lesson/SqlInjection.lesson/3): Wie lautet ein gültiges SQL Statement um diese Augabe zu lösen?

4.  [Lektion 5](http://127.0.0.1:8080/WebGoat/start.mvc#lesson/SqlInjection.lesson/4): Wie lautet ein gültiges SQL Statement um diese Augabe zu lösen?

5.  [Lektion 9](http://127.0.0.1:8080/WebGoat/start.mvc#lesson/SqlInjection.lesson/8): Wie müssen die drei Parameter eingestellt werden und wie lautet die korrekte SQL Query?

6.  [Lektion 10](http://127.0.0.1:8080/WebGoat/start.mvc#lesson/SqlInjection.lesson/9): In welchem Feld (Login_Count oder User_Id) geben Sie welchen Input ein, um dieses Lab zu lösen?

7.  [Lektion 11](http://127.0.0.1:8080/WebGoat/start.mvc#lesson/SqlInjection.lesson/10): Mit welcher Eingabe lösen Sie diese Aufgabe?

8.  [Lektion 12](http://127.0.0.1:8080/WebGoat/start.mvc#lesson/SqlInjection.lesson/11): Mit welcher Eingabe lösen Sie diese Aufgabe?

9.  [Lektion 13](http://127.0.0.1:8080/WebGoat/start.mvc#lesson/SqlInjection.lesson/12): Mit welcher Eingabe lösen Sie diese Aufgabe?

    Schicken Sie in Ihrem Mail einen Screenshot des _Report card_, auf welchem ersichtlich ist, dass Sie das SQL Injection Lab erfolgreich abgeschlossen haben.

    Ein Beispiel Screenshot:

    ![sha256sum webgoat-sqli-solved.png 679c435d95340f44764c156eca3acf9d3dee83bda1dc1462af8153098e2d98d8](img/webgoat-sqli-solved.png)
