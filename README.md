# Law School Outline Template

A clean LaTeX template for law-school course outlines and class notes. It is designed for fast editing during the semester while still producing a polished, readable PDF.

## Features

- Oversized chapter markers and a compact table of contents
- Numbered chapters, sections, and subsections
- Law-school callouts for rules, cases, statutes, holdings, analysis, policy, exam tips, questions, and to-dos
- Cross-references and hyperlinks
- A todo list generated from `\\todoitem{...}` entries
- A small, self-contained class file in `tex/lawoutline.cls`
- GitHub Actions workflow that compiles the example document

## Quick start

Compile the example with a TeX distribution such as TeX Live or MacTeX:

```bash
cd example
latexmk -pdf -interaction=nonstopmode -halt-on-error outline.tex
```

Or compile directly:

```bash
cd example
pdflatex -interaction=nonstopmode outline.tex
pdflatex -interaction=nonstopmode outline.tex
```

To start a new outline, copy `example/outline.tex`, change the metadata, and keep the class file in the same project (or add `tex/` to your TeX search path).

## Basic structure

```latex
\\documentclass[11pt]{../tex/lawoutline}

\\course{Legislation and Regulation}
\\student{Your Name}
\\semester{Fall 2026}

\\begin{document}
\\maketitle
\\tableofcontents

\\chapter{Administrative Law}
\\section{Judicial Review}

\\rulebox{Standard of Review}{Add the rule here.}
\\casebox{Case Name}{Court, year}{Facts, holding, reasoning, and significance.}
\\examtip{Connect the doctrine to the facts before moving to the conclusion.}

\\end{document}
```

## Callout commands

Each command takes a title and body unless noted otherwise:

| Command | Use |
|---|---|
| `\\rulebox{title}{body}` | Rule or doctrinal test |
| `\\casebox{name}{citation}{body}` | Case brief |
| `\\statutebox{title}{body}` | Statute or regulation |
| `\\holding{title}{body}` | Holding or takeaway |
| `\\analysisbox{title}{body}` | Analysis or synthesis |
| `\\policybox{title}{body}` | Policy argument |
| `\\examtip{body}` | Exam-oriented reminder |
| `\\question{title}{body}` | Open question |
| `\\todoitem{body}` | Adds an item to the todo list |

The class also provides `\\definition`, `\\example`, and `\\note` for general-purpose notes.

For recurring legal terms, use `\\mpc`, `\\commonlaw`, `\\constitutionalstandards`, `\\majorityjurisdictions`, and `\\minorityjurisdictions`.

## License

MIT. See `LICENSE`.
