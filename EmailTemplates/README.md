# Email- und Einladungs-Templates

Vorlagen für die individuelle Kommunikation mit einzelnen Studierenden während der 12-wöchigen Thesis-Phase (Mai–Juli). Jede Mail adressiert eine Person (Du-Form, ohne Namen), sodass sich die Templates pro Empfänger:in direkt kopieren lassen.

## Verwendung
Jede Datei enthält oben eine `Subject:`-Zeile, dann `---`, dann den Body. Betreff und Body lassen sich direkt in Gmail / Outlook / Apple Mail kopieren.

## Platzhalter (vor dem Versand ersetzen)
- `{{SURVEY_LINK}}` – Link zur Feedback-Umfrage
- `{{CALENDLY_LINK}}` – entsprechender Calendly-Link (Kickoff / Interim)
- `{{DEFENSE_DATE}}` – Datum der Verteidigung
- `{{DEFENSE_TIME}}` – Uhrzeit der Verteidigung
- `{{ROOM_OR_LINK}}` – Raum oder Videokonferenz-Link
- `{{THESIS_TITLE}}` – vorläufiger oder finaler Thesis-Titel

## Flow über die 12 Wochen
1. `artifacts/artefakt-01-research-proposal.md` – Auftakt: Artefakt 1 ankündigen
2. `meetings/kickoff-calendly.md` – Kickoff-Termin buchen
3. `artifacts/artefakt-02-midterm-report.md` – Halbzeit: Artefakt 2 ankündigen
4. `meetings/interim-calendly.md` – Interim-Termin buchen
5. `artifacts/artefakt-03-submission-ready.md` – Endspurt: Artefakt 3 ankündigen
6. `defense/kolloquium-tag.md` – Nachricht am Tag der Verteidigung

Parallel dazu:
- `weekly/check-in.md` – wöchentlicher Check-in mit Feedback-Link (jede Woche identisch)

## Struktur
- `artifacts/` – drei Artefakt-Ankündigungen (Proposal, Midterm, Submission Ready)
- `meetings/` – Kickoff- und Interim-Einladung mit Calendly-Link
- `defense/` – Nachricht am Tag des Kolloquiums
- `weekly/` – wöchentlicher Check-in mit Feedback-Umfrage
