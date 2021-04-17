# SQL Aufgabe Academy

[W3Schools Link](https://www.w3schools.com/sql/default.asp)

## Abfragen aus einer Tabelle

### 1. Listen Sie alle Datensätze der Tabelle "Lehrgangsort" auf

```sql
SELECT * from Lehrgang
```

### 2. Alle Postleitzahlen aus der Tabelle "Teilnehmer" sollen angezeigt werden. Warum werden einige Postleitzahlen doppelt ausgegeben? Wie lassen sich diese doppelten Datensätze vermeiden?

Alle anzeigen:

```sql
SELECT fkOrt from Teilnehmer
```

Keine Doppelten:

```sql
SELECT DISTINCT fkOrt from Teilnehmer
```

### 3. Erstellen Sie eine Teilnehmerliste, die nach Namen sortiert ist. Erstellen Sie eine weitere Teilnehmerliste, die absteigend nach Postleitzahlen sortiert ist

Namen Sortiert:

```sql
SELECT Nachname from Teilnehmer ORDER BY Nachname 
SELECT * from Teilnehmer ORDER BY Nachname 
```

PLZ sortiert:

```sql
SELECT * from Teilnehmer ORDER BY fkOrt 
```

### 4. Ermitteln Sie in alphabetischer Reihenfolge alle Dozenten, deren Stundensatz über 60,00 € liegt

```sql
SELECT Dozent.Nachname FROM Dozent WHERE Dozent.Stundensatz > 60.0 ORDER BY Dozent.Nachname ASC 
```

### 5. Bei welchen Lehrgängen liegen die Gesamtkosten unter 250,00 €

```sql
SELECT Lehrgang.idLehrgang FROM Lehrgang RIGHT JOIN Inhalt ON Lehrgang.fkInhalt = Inhalt.idInhalt WHERE 250 > (Inhalt.Stundensatz*Inhalt.Dauer)
```

### 6. Geben Sie alle Teilnehmer aus, deren Namen mit "B" beginnen

```sql
SELECT Nachname From Teilnehmer WHERE Nachname LIKE "B%"
```

### 7. Listen Sie Inhalt und Dauer aller Lehrgänge auf, deren Dauer zwischen 16 und 32 Unterrichtseinheiten liegt

```sql
SELECT Beschreibung , Dauer From Inhalt where Dauer BETWEEN 16 and 32
```

### 8. Geben Sie alle Spalten der Tabelle "Ort" aus, deren Orte "Köln" oder "Bonn" sind

```sql
SELECT * From Ort where Ortsname LIKE "Bonn" OR Ortsname  LIKE "Köln"
```

### 9. Ermitteln Sie die Teilnehmer, die aus dem PLZ-Bereich 5xxxx kommen und deren Namen mit "A" oder "B" beginnen

```sql
SELECT Nachname , fkOrt FROM Teilnehmer WHERE fkOrt LIKE "5%" AND Nachname LIKE "A%" OR Nachname LIKE "B%"
```

### 10. Wie viele Teilnehmer kommen aus den jeweiligen Städten?

```sql
SELECT COUNT(*) as "anzahl", Ort.Ortsname from Teilnehmer JOIN Ort ON Teilnehmer.fkOrt = Ort.idOrt group by Teilnehmer.fkOrt 
```

### 11. Aus welcher Stadt kommen mehr als 2 Teilnehmer?

```sql
Kompliziert: SELECT COUNT(*) as "anzahl", Ort.Ortsname from Teilnehmer JOIN Ort ON Teilnehmer.fkOrt = Ort.idOrt group by Teilnehmer.fkOrt HAVING COUNT(*) > 2

Einfach: SELECT fkOrt, COUNT(*) FROM Teilnehmer GROUP BY fkORT HAVING COUNT(*) > 2;
```

## Abfragen über verknüpfte Tabellen

### 12. Erstellen Sie eine Liste aller Teilnehmer mit Ortsnamen

```sql
SELECT Nachname, Ortsname From Teilnehmer Join Ort on Teilnehmer.fkOrt = Ort.idOrt 
```

### 13. Ermitteln Sie den Kursbeginn der Kurse, die von Dozent "Hamblen" gehalten werden

```sql
SELECT Beginn, Nachname From Lehrgang Join Dozent ON Lehrgang.fkDozent = Dozent.idDozent HAVING Nachname = "Hamblen"
```

### 14. Ermitteln Sie alle Dozenten, deren Stundensatz über dem von Dozent "Schult" liegt

```sql
SELECT Nachname, Stundensatz FROM Dozent where Dozent.Stundensatz > 65
SELECT Nachname, Stundensatz FROM Dozent WHERE Stundensatz > (SELECT Stundensatz from Dozent WHERE Nachname LIKE 'Schult')
```

### 15. Listen Sie alle Teilnehmer mit Lehrgangsbeginn sowie dem jeweiligen Dozenten auf

```sql
SELECT Lehrgang.Beginn, Dozent.Nachname as "Dozent", th.Nachname FROM Lehrgang l RIGHT JOIN Dozent d ON Lehrgang.fkDozent = Dozent.idDozent RIGHT JOIN Teilnahme tn ON Lehrgang.idLehrgang = Teilnahme.fkLehrgang RIGHT JOIN Teilnehmer th ON Teilnahme.fkTeilnehmer = Teilnahme.idTeilnehmer

Andere Lösung: SELECT Teilnehmer.Nachname, Beginn, Dozent.Nachname FROM Teilnehmer JOIN Teilnahme ON Teilnehmer.idTeilnehmer=Teilnahme.fkTeilnehmer JOIN Lehrgang ON Teilnahme.fkLehrgang=Lehrgang.idLehrgang JOIN Dozent ON Lehrgang.fkDozent=Dozent.idDozent
```

### 16. Listen Sie alle Teilnehmer mit Name, PLZ und Ort auf, die einen Kurs bei "Schult" besuchen

```sql
SELECT t2.Nachname, t2.fkOrt as "PLZ", o.Ortsname, d.Nachname as "Dozent" FROM Lehrgang l RIGHT JOIN Dozent d ON l.fkDozent = d.idDozent RIGHT JOIN Teilnahme t ON l.idLehrgang = t.fkLehrgang RIGHT JOIN Teilnehmer t2 ON t.fkTeilnehmer = t2.idTeilnehmer RIGHT JOIN Ort o ON t2.fkOrt = o.idOrt WHERE  d.Nachname = "Schult"

SELECT Teilnehmer.Nachname, Teilnehmer.fkOrt, Ort.Ortsname FROM Ort JOIN Teilnehmer ON Ort.idOrt=Teilnehmer.fkOrt JOIN Teilnahme ON Teilnehmer.idTeilnehmer=Teilnahme.fkTeilnehmer JOIN Lehrgang ON Teilnahme.fkLehrgang=Lehrgang.idLehrgang JOIN Dozent ON Lehrgang.fkDozent=Dozent.idDozent WHERE Dozent.Nachname LIKE 'Schult' ORDER BY Teilnehmer.Nachname ASC 
```

### 17. Listen Sie für alle Dozenten den Lehrgangsbeginn ihrer Kurse auf. Dozenten, welche keine Lehrgänge anbieten, sollen auch ausgegeben werden

```sql
SELECT Dozent.idDozent, Dozent.Nachname ,Lehrgang.Beginn FROM academy.Dozent LEFT OUTER JOIN academy.Lehrgang ON Lehrgang.fkDozent = Dozent.idDozent

SELECT Dozent.Nachname, Lehrgang.Beginn FROM Dozent LEFT OUTER JOIN Lehrgang ON Lehrgang.fkDozent=Dozent.idDozent ORDER BY Dozent.Nachname ASC
```
