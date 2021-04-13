# SQL Aufgabe Bluma

## Entwerfen Sie für folgende Aufgaben die geeignete SQL-Abfrage

### 1. Erstellen Sie eine Übersicht aller gespeicherten Bestelldaten

```sql

```

### 2. Geben Sie alle Lieferanteninformationen nach Namen aufsteigend sortiert aus

```sql

```

### 3. Listen Sie die verschiedenen Farben der Pflanzenblüten auf

```sql

```

### 4. Listen Sie die verschiedenen Farben der Pflanzenblüten sortiert auf. Allerdings sollen Nullwerte nicht ausgegeben werden

```sql

```

### 5. Welche Pflanzensorten bietet BLUMA den Kunden an? Diese Sorten sollen alphabetisch absteigend sortiert ausgegeben werden

```sql

```

### 6. Wie viele Pflanzen und Pflanzensorten hat BLUMA im Angebot?

```sql

```

### 7. Listen Sie alle Lieferanten (Lieferantennummer, Name) aus Karlsruhe auf

```sql

```

### 8. Ermitteln Sie alle Lieferanten (Lieferantennummer, Name), deren Angebote eine Lieferzeit von unter 14 Tagen haben

```sql

```

### 9. Aus der Tabelle Bestellungen sollen Lieferantennummer und Lieferdatum ausgegeben werden. Darüber hinaus soll das Zahlungsdatum (Lieferdatum + 30 Tage) errechnet und angezeigt werden

```sql

```

### 10. Die Preise sind noch als DM-Preise gespeichert. Die Preisangaben sollen in Euro umgewandelt werden (1 Euro = 1,95583 DM)

```sql

```

### 11. Den Bestellwert (brutto) in Euro für die Bestellung mit der Nummer 191 formatiert mit 2 Nachkommastellen ausgeben

```sql

```

### 12. Alle Angebote an die Firma BLUMA des Lieferanten mit der Lieferantennummer 35 ausgeben (alle Spalten) Hinweis: Datentyp der Lieferantennummer beachten

```sql

```

### 13. Welche Pflanzen mit der Blütenfarbe 'gemischt' werden max. 60 cm hoch?

```sql

```

### 14. Von welchen Pflanzen ist sowohl Farbe als auch Höhe bekannt?

```sql

```

### 15. Welche Pflanzen blühen im September?

```sql

```

### 16. Ein Kunde sucht eine Staude zwischen 1,70 Euro und 2,50 Euro

```sql

```

### 17. Alle Pflanzen mit 5 Buchstaben ausgeben

```sql

```

### 18. Wie viele Lieferanten hat das Gartenzentrum BLUMA in der Datenbank gespeichert?

```sql

```

### 19. Wie hoch ist der Durchschnittspreis aller Wasserpflanzen?

```sql

```

### 20. Welche Höhe hat die größte Pflanze?

```sql

```

### 21. Von dem Lieferanten mit der Lieferantennummer 13 ist der durchschnittliche, niedrigste und höchste Angebotspreis zu ermitteln

```sql

```

### 22. Es soll eine sortierte Übersicht der Sträucher ausgegeben werden. Die Ausgabe soll in einer weiteren Spalte den Bruttopreis in Euro enthalten

```sql

```

# Gruppieren

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

## Verknüpfung mehrerer Tabellen:

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
