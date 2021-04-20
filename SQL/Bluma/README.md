# SQL Aufgabe Bluma

## Entwerfen Sie für folgende Aufgaben die geeignete SQL-Abfrage

### 1. Erstellen Sie eine Übersicht aller gespeicherten Bestelldaten

```sql
SELECT * FROM bestellungen
```

### 2. Geben Sie alle Lieferanteninformationen nach Namen aufsteigend sortiert aus

```sql
SELECT * FROM lieferanten ORDER BY LFR_NAME ASC 
```

### 3. Listen Sie die verschiedenen Farben der Pflanzenblüten auf

```sql
SELECT PFL_FARBE FROM pflanzen
```

### 4. Listen Sie die verschiedenen Farben der Pflanzenblüten sortiert auf. Allerdings sollen Nullwerte nicht ausgegeben werden

```sql
SELECT PFL_FARBE FROM pflanzen WHERE PFL_FARBE IS NOT NULL ORDER BY PFL_FARBE ASC
```

### 5. Welche Pflanzensorten bietet BLUMA den Kunden an? Diese Sorten sollen alphabetisch absteigend sortiert ausgegeben werden

```sql
SELECT PFL_SORTE FROM pflanzen ORDER BY PFL_SORTE ASC 
```

### 6. Wie viele Pflanzen und Pflanzensorten hat BLUMA im Angebot?

```sql
SELECT COUNT(PFL_NAME) as "Pflanzen", COUNT(PFL_SORTE) as "Sorten" FROM pflanzen
```

### 7. Listen Sie alle Lieferanten (Lieferantennummer, Name) aus Karlsruhe auf

```sql
SELECT LFR_NR, LFR_NAME, LFR_ORT FROM lieferanten WHERE LFR_ORT = "Karlsruhe"
```

### 8. Ermitteln Sie alle Lieferanten (Lieferantennummer, Name), deren Angebote eine Lieferzeit von unter 14 Tagen haben

```sql
SELECT LFR_NR, LFR_NAME, LFR_ORT FROM lieferanten RIGHT JOIN angebote ON LFR_NR = angebote.ANG_LFR_NR where ANG_L_ZEIT < 14 GROUP BY LFR_NAME 
```

### 9. Aus der Tabelle Bestellungen sollen Lieferantennummer und Lieferdatum ausgegeben werden. Darüber hinaus soll das Zahlungsdatum (Lieferdatum + 30 Tage) errechnet und angezeigt werden

```sql
SELECT BST_LFR_NR, BST_LFR_DAT, ?.? as "Zahlungsdatum" FROM bestellungen;
```

### 10. Die Preise sind noch als DM-Preise gespeichert. Die Preisangaben sollen in Euro umgewandelt werden (1 Euro = 1,95583 DM)

```sql
SELECT (PFL_PREIS * 1.95583) as "Preis in Euronen" FROM pflanzen;
```

### 11. Den Bestellwert (brutto) in Euro für die Bestellung mit der Nummer 191 formatiert mit 2 Nachkommastellen ausgeben

```sql
SELECT ROUND((bestpositionen.POS_BST_PREIS *1.95583), 2) as "Bestellwert" FROM bestpositionen WHERE bestpositionen.POS_BST_NR = 191
```

### 12. Alle Angebote an die Firma BLUMA des Lieferanten mit der Lieferantennummer 35 ausgeben (alle Spalten) Hinweis: Datentyp der Lieferantennummer beachten

```sql
SELECT * FROM angebote WHERE angebote.ANG_LFR_NR LIKE "35";
```

### 13. Welche Pflanzen mit der Blütenfarbe 'gemischt' werden max. 60 cm hoch?

```sql
SELECT PFL_NAME, PFL_FARBE, PFL_HOEHE FROM pflanzen where PFL_FARBE = "gemischt" AND PFL_HOEHE <= 60 GROUP BY PFL_NAME 
```

### 14. Von welchen Pflanzen ist sowohl Farbe als auch Höhe bekannt?

```sql
SELECT PFL_NAME, PFL_FARBE, PFL_HOEHE FROM pflanzen where PFL_FARBE IS NULL AND PFL_HOEHE IS NULL
```

### 15. Welche Pflanzen blühen im September?

```sql
SELECT PFL_NAME, PFL_BL_BEG FROM pflanzen WHERE PFL_BL_BEG = 9
```

### 16. Ein Kunde sucht eine Staude zwischen 1,70 Euro und 2,50 Euro

```sql
SELECT PFL_NAME FROM angebote JOIN pflanzen ON pflanzen.PFL_ART_NR = angebote.ANG_PFL_ART_NR WHERE pflanzen.PFL_SORTE = "Staude" AND (angebote.ANG_PREIS* 1.95583) BETWEEN 1.70 AND 2.50
```

### 17. Alle Pflanzen mit 5 Buchstaben ausgeben

```sql
SELECT pflanzen.PFL_NAME FROM pflanzen WHERE LENGTH(pflanzen.PFL_NAME) = 5
```

### 18. Wie viele Lieferanten hat das Gartenzentrum BLUMA in der Datenbank gespeichert?

```sql
SELECT COUNT(*) FROM lieferanten;
```

### 19. Wie hoch ist der Durchschnittspreis aller Wasserpflanzen?

```sql
SELECT AVG(pflanzen.PFL_PREIS) FROM pflanzen WHERE pflanzen.PFL_SORTE = "Wasser"
```

### 20. Welche Höhe hat die größte Pflanze?

```sql
SELECT pflanzen.PFL_NAME FROM pflanzen WHERE pflanzen.PFL_HOEHE = (SELECT MAX(pflanzen.PFL_HOEHE) FROM pflanzen)
```

### 21. Von dem Lieferanten mit der Lieferantennummer 13 ist der durchschnittliche, niedrigste und höchste Angebotspreis zu ermitteln

```sql
DURCH: MAX: SELECT AVG(angebote.ANG_PREIS) FROM angebote WHERE angebote.ANG_LFR_NR LIKE "_13"
MAX: SELECT MAX(angebote.ANG_PREIS) FROM angebote WHERE angebote.ANG_LFR_NR LIKE "_13"
MIN: SELECT MIN(angebote.ANG_PREIS) FROM angebote WHERE angebote.ANG_LFR_NR LIKE "_13"
```

### 22. Es soll eine sortierte Übersicht der Sträucher ausgegeben werden. Die Ausgabe soll in einer weiteren Spalte den Bruttopreis in Euro enthalten

```sql
SELECT pflanzen.PFL_NAME, (pflanzen.PFL_PREIS * 1.95583) as "Bruttopreis" FROM pflanzen WHERE pflanzen.PFL_SORTE = "Strauch" ORDER BY pflanzen.PFL_NAME ASC;
```

## Gruppieren

### 23. Alle Bestellungen (Bestellnummer) ausgeben, deren Bruttobestellwert über 511,-- Euro liegt. Die Ausgabe soll auf 2 Nachkommastellen formatiert werden

```sql

```

### 24. Die Anzahl der Pflanzen einer Pflanzensorte und der Pflanzensortenname sollen ausgegeben werden

```sql

```

### 25. Erstellen Sie eine Übersicht des Bestellbetrages (Menge*Preis) für jede Bestellung. Euro-Beträge sollen mit 2 Nachkommastellen gerundet ausgegeben werden

```sql

```

### 26. Die Anzahl der bestellten Artikel mit der Lieferanten-Artikelnummer 'B111' soll ausgegeben werden

```sql

```

### 27. Berechnen Sie den Durchschnittspreis für jene Pflanzensorten, die einen Bestand von mindestens 10 Exemplaren aufweisen

```sql

```

### 28. Geben Sie für jede Pflanzensorte den billigsten Pflanzenpreis aus

```sql

```

## Verknüpfung mehrerer Tabellen

### 29. Welche Pflanzen haben bei dem Lieferanten aus 'Freiburg' eine Lieferzeit von max. 10 Tagen? Es soll eine Übersicht mit Artikelnummer, Pflanzenname, Artikelnummer des Lieferanten und der Lieferzeit ausgegeben werden

```sql

```

### 30. Geben Sie eine Übersicht der angebotenen Sträucher aus, deren Pflanzenpreis mindestens 50% über dem Angebotspreis liegt

```sql

```

### 31. Erstellen Sie eine Übersicht aller roten Pflanzen, die von Lieferanten geliefert werden, die nicht in 'Karlsruhe' wohnen. Die Ausgabe (Artikelnummer, Pflanzenname, Sorte, Lieferantenname, Wohnort) soll sortiert nach Sorte und Pflanzenname erfolgen

```sql

```

### 32. Listen Sie das Pflanzensortiment bezogen auf die Farben 'weiß' und 'lila', zu denen es Bestellungen gibt, auf

```sql

```

### 33. Geben Sie Lieferanten und Angebotspreise aller Artikel mit der Nummer 123 aus

```sql

```

### 34. Geben Sie für alle Sträucher den Namen und Angebotspreis aus. Sträucher, die in keinem Angebot auftauchen, sollen ebenfalls aufgelistet werden

```sql

```

### 35. Welche Pflanzen (Namen) bietet der Lieferant mit der Nummer 13 dem Gartenzentrum gegenwärtig an?

```sql

```

### 36. Ermitteln Sie eingeschränkt für die Artikelnummer 1 bis 100 das niedrigste Angebot pro Artikel. Ausgabe (Artikelnummer, Artikelname, Lieferanten-Artikelnummer, Angebotspreis, Lieferantenname)

```sql

```

## Unterabfragen

### 37. Welche Sträucherpflanzen sind höher als die Durchschnittshöhe aller Sträucherpflanzen?

```sql

```

### 38. Welche Pflanzen sind niedriger als die niedrigste Staude?

```sql

```

### 39. Welche Pflanzen sind höher als die durchschnittliche Höhe der Staudenpflanzen und zugleich billiger als der durchschnittliche Preis der Stauden?

```sql

```

### 40. Berechnen Sie den durchschnittlichen Angebotspreis pro Artikel. Es sollen allerdings Artikel angezeigt werden, die niedriger als der oben berechnete Durchschnittspreis sind und deren Nummer zwischen 1 und 80 liegt. Die Ausgabe (Artikelnummer, Lieferantenname, Angebotspreis) ist nach Artikelnummer zu sortieren

```sql

```

### 41. Welches ist der niedrigste Angebotspreis für die Pflanze mit der Artikelnummer 123? Ausgabe (Preis, Lieferantenummer)

```sql

```
