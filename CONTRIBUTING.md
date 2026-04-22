# Contributing

Thanks for taking the time to improve this repository. These notes keep
contributions flowing smoothly through review.

## Ways to contribute

- **Fix typos, broken references, or formatting glitches** — small PRs are
  the easiest to review and get merged quickly.
- **Add or refine content** in `HowToThesis`, `ThesisTemplate`,
  `ThesisRoadmap`, or the three artifact templates.
- **Improve shared infrastructure** — `sharedAssets/tufte.cls`,
  `sharedAssets/meta.tex`, CI, or repository tooling.
- **Open an issue** instead of a PR if you want to discuss an idea before
  writing it up — see the issue templates.

## Repository layout

| Path | Purpose |
| --- | --- |
| `HowToThesis/` | Guide on how to write a thesis |
| `ThesisTemplate/` | Minimal thesis skeleton to fork for your own work |
| `ThesisRoadmap/` | Process roadmap: milestones, registration, defense |
| `1_Artifact/` | Research Proposal template (literature, problem statement) |
| `2_Artifact/` | Midterm template (overview, proof of concept) |
| `3_Artifact/` | Submission Ready template (guidelines, checklists) |
| `sharedAssets/` | `tufte.cls` and `meta.tex` shared by `HowToThesis` and `ThesisRoadmap` |
| `EmailTemplates/` | Boilerplate email drafts |

Each buildable document lives in its own directory and compiles from a
`notes.tex` entry point. The four artifact/template directories carry their
own copy of `tufte.cls` and `meta.tex`; `HowToThesis` and `ThesisRoadmap`
pull from `sharedAssets/` via `\documentclass{../sharedAssets/tufte}`.

## Building locally

You need a recent TeX Live (or MacTeX) installation with `latexmk`.

```
cd HowToThesis          # or any other doc directory
latexmk -pdf notes.tex
```

The generated `notes.pdf` should land next to the `.tex` file. To clean
auxiliary files without touching the PDF:

```
latexmk -c
```

## PR workflow

1. **Fork** the repo and create a branch off `main` with a descriptive name
   (e.g. `fix-typos-howtothesis`, `add-figure-tufte-line`).
2. **Make focused commits** — small, self-contained changes are easier to
   review than sweeping rewrites.
3. **Build the affected document locally** to confirm it compiles and the
   change renders as intended. Commit the regenerated `notes.pdf` alongside
   your source changes so the hosted PDFs stay in sync.
4. **Open a PR** using the provided template. Fill in the affected documents
   and the checklist.
5. **Review** — the maintainer reviews, may request changes, and merges. Only
   the maintainer pushes to `main`.

## Style notes

- Keep marginnote, `\newthought{...}`, and `\section{...}` usage consistent
  with the surrounding chapter — the Tufte layout relies on this rhythm.
- Add citations to the relevant `.bib` file (`references.bib` or
  `howtothesis_references.bib`) rather than inlining them.
- For new figures, drop source files in the document's `figures/` directory
  and reference them via `\includegraphics`.
- Prefer short, concrete sentences. The guide itself advocates brevity
  (see `HowToThesis/notes.tex`, chapter *Writing*).

## Continuous integration

Every PR runs a LaTeX syntax check on all six documents (`pdflatex
-draftmode`, no bibtex, no PDF output). The PR cannot merge until the
check is green. This catches undefined macros, missing packages, and
brace mismatches without the overhead of a full build.

Regenerating `notes.pdf` is your responsibility: build locally with
`latexmk -pdf notes.tex` and commit the updated PDF alongside the source
change. The hosted PDFs on `pages.schutera.com` are served straight from
`main`.

## License

By contributing you agree that your contributions are licensed under the
same terms as the rest of the repository (CC BY-NC 4.0 — see `LICENSE`).
