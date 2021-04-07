# SQL Aufgabe Academy

## 1. Listen Sie alle Datensätze der Tabelle "Lehrgangsort" auf

```sql
SELECT * from Lehrgang
```

## 2. Alle Postleitzahlen aus der Tabelle "Teilnehmer" sollen angezeigt werden. Warum werden einige Postleitzahlen doppelt ausgegeben? Wie lassen sich diese doppelten Datensätze vermeiden?

Alle anzeigen:

```sql
SELECT fkOrt from Teilnehmer
```

Keine Doppelten:

```sql
SELECT DISTINCT fkOrt from Teilnehmer
```

## 3. Erstellen Sie eine Teilnehmerliste, die nach Namen sortiert ist. Erstellen Sie eine weitere Teilnehmerliste, die absteigend nach Postleitzahlen sortiert ist

```sql

```
