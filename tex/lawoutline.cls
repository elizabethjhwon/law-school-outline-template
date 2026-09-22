\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lawoutline}[2026/09/16 Law school outline class]

\LoadClass[11pt,oneside]{book}

\RequirePackage[letterpaper,margin=0.82in,headheight=15pt]{geometry}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}
\RequirePackage{microtype}
\RequirePackage{xcolor}
\RequirePackage{tikz}
\RequirePackage[most]{tcolorbox}
\RequirePackage{enumitem}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{tocloft}
\RequirePackage{hyperref}
\RequirePackage{etoolbox}

\definecolor{ink}{HTML}{202020}
\definecolor{muted}{HTML}{777777}

\definecolor{ruleborder}{HTML}{1D3557}
\definecolor{rulepaper}{HTML}{EAF2F8}

\definecolor{caseborder}{HTML}{6A1B9A}
\definecolor{casepaper}{HTML}{F3E5F5}

\definecolor{statuteborder}{HTML}{2E7D32}
\definecolor{statutepaper}{HTML}{E8F5E9}

\definecolor{holdingborder}{HTML}{B71C1C}
\definecolor{holdingpaper}{HTML}{FFEBEE}

\definecolor{analysisborder}{HTML}{A05A00}
\definecolor{analysispaper}{HTML}{FFF8E1}

\definecolor{policyborder}{HTML}{00695C}
\definecolor{policypaper}{HTML}{E0F2F1}

\definecolor{doctrineborder}{HTML}{AD1457}
\definecolor{doctrinepaper}{HTML}{FCE4EC}

\definecolor{mpcborder}{HTML}{37474F}
\definecolor{mpcpaper}{HTML}{ECEFF1}

\definecolor{commonlawborder}{HTML}{795548}
\definecolor{commonlawpaper}{HTML}{EFEBE9}

\definecolor{constitutionborder}{HTML}{283593}
\definecolor{constitutionpaper}{HTML}{E8EAF6}

\definecolor{majorityborder}{HTML}{558B2F}
\definecolor{majoritypaper}{HTML}{F1F8E9}

\definecolor{minorityborder}{HTML}{EF6C00}
\definecolor{minoritypaper}{HTML}{FFF3E0}

\definecolor{lincanonborder}{HTML}{2F5D8C}
\definecolor{lincanonpaper}{HTML}{EAF2F8}

\definecolor{subcanonborder}{HTML}{7A4E2D}
\definecolor{subcanonpaper}{HTML}{F7EFE7}

\definecolor{definitionborder}{HTML}{00838F}
\definecolor{definitionpaper}{HTML}{E0F7FA}

\definecolor{exampleborder}{HTML}{8E24AA}
\definecolor{examplepaper}{HTML}{F9EAFB}

\definecolor{noteborder}{HTML}{616161}
\definecolor{notepaper}{HTML}{F5F5F5}

\definecolor{questionborder}{HTML}{4527A0}
\definecolor{questionpaper}{HTML}{EDE7F6}

\definecolor{examtipborder}{HTML}{D84315}
\definecolor{examtippaper}{HTML}{FBE9E7}

\definecolor{todoborder}{HTML}{455A64}
\definecolor{todopaper}{HTML}{FFFDE7}

\hypersetup{
  colorlinks=true,
  linkcolor=ruleborder,
  urlcolor=policyborder,
  citecolor=caseborder,
  pdftitle={Law School Outline}
}

\setlength{\parindent}{0pt}
\setlength{\parskip}{0.32em}
\setlist{nosep,leftmargin=*}
\setlist[itemize]{label=\textcolor{muted}{\small\textbullet}}

\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\small\textsc{\course@value}}
\fancyhead[R]{\small\textsc{\student@value}}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0.35pt}

\newcommand{\course}[1]{\def\course@value{#1}}
\newcommand{\student}[1]{\def\student@value{#1}}
\newcommand{\semester}[1]{\def\semester@value{#1}}

\course{}
\student{}
\semester{}

\titleformat{\chapter}[display]
  {\normalfont\bfseries\raggedleft}
  {\fontsize{74}{76}\selectfont\color{muted}\thechapter}
  {0.2em}
  {\fontsize{25}{29}\selectfont\color{ink}}
\titlespacing*{\chapter}{0pt}{-20pt}{32pt}
\titleformat{\section}
  {\normalfont\Large\bfseries}
  {\thesection}
  {0.8em}
  {}
\titleformat{\subsection}
  {\normalfont\bfseries}
  {\thesubsection}
  {0.7em}
  {}
\titlespacing*{\section}{0pt}{1.3em}{0.4em}
\titlespacing*{\subsection}{0pt}{0.9em}{0.2em}

\renewcommand{\cftchapfont}{\bfseries}
\renewcommand{\cftchappagefont}{\bfseries}
\setlength{\cftbeforechapskip}{0.45em}
\setlength{\cftbeforesecskip}{0.08em}

\newtcolorbox{lawbox}[4]{
  enhanced,breakable,boxrule=0pt,frame hidden,
  colback=#3,colframe=#2,borderline west={2.5pt}{0pt}{#2},
  left=9pt,right=9pt,top=6pt,bottom=6pt,
  before skip=5pt,after skip=6pt,
  title={\textcolor{#2}{\bfseries #1\ifstrempty{#4}{}{\hspace{0.4em}\normalfont\small #4}}},
  fonttitle=\small
}

\newcommand{\rulebox}[2]{\begin{lawbox}{Rule: #1}{ruleborder}{rulepaper}{}#2\end{lawbox}}

\newcommand{\casebox}[3]{\begin{lawbox}{Case: #1}{caseborder}{casepaper}{#2}#3\end{lawbox}}

\newcommand{\statutebox}[2]{\begin{lawbox}{Statute / Regulation: #1}{statuteborder}{statutepaper}{}#2\end{lawbox}}

\newcommand{\holding}[2]{\begin{lawbox}{Holding: #1}{holdingborder}{holdingpaper}{}#2\end{lawbox}}

\newcommand{\analysisbox}[2]{\begin{lawbox}{Analysis: #1}{analysisborder}{analysispaper}{}#2\end{lawbox}}

\newcommand{\policybox}[2]{\begin{lawbox}{Policy: #1}{policyborder}{policypaper}{}#2\end{lawbox}}

\newcommand{\doctrine}[2]{\begin{lawbox}{Doctrine: #1}{doctrineborder}{doctrinepaper}{}#2\end{lawbox}}

\newcommand{\mpc}[2]{\begin{lawbox}{MPC: #1}{mpcborder}{mpcpaper}{}#2\end{lawbox}}

\newcommand{\commonlaw}[2]{\begin{lawbox}{Common Law: #1}{commonlawborder}{commonlawpaper}{}#2\end{lawbox}}

\newcommand{\constitutionalstandards}[2]{\begin{lawbox}{Constitutional Standards: #1}{constitutionborder}{constitutionpaper}{}#2\end{lawbox}}

\newcommand{\majorityjurisdictions}[2]{\begin{lawbox}{Majority Jurisdictions: #1}{majorityborder}{majoritypaper}{}#2\end{lawbox}}

\newcommand{\minorityjurisdictions}[2]{\begin{lawbox}{Minority Jurisdictions: #1}{minorityborder}{minoritypaper}{}#2\end{lawbox}}

\newcommand{\lincanon}[2]{
    \begin{lawbox}{Linguistic Canon: #1}{lincanonborder}{lincanonpaper}{}
        #2
    \end{lawbox}
}

\newcommand{\subcanon}[2]{
    \begin{lawbox}{Substantive Canon: #1}{subcanonborder}{subcanonpaper}{}%
        #2
    \end{lawbox}
}

\newcommand{\definition}[2]{\begin{lawbox}{Definition: #1}{definitionborder}{definitionpaper}{}#2\end{lawbox}}

\newcommand{\example}[2]{\begin{lawbox}{Example: #1}{exampleborder}{examplepaper}{}#2\end{lawbox}}

\newcommand{\note}[2]{\begin{lawbox}{Note: #1}{noteborder}{notepaper}{}#2\end{lawbox}}

\newcommand{\question}[2]{\begin{lawbox}{Question: #1}{questionborder}{questionpaper}{}#2\end{lawbox}}

\newcommand{\examtip}[1]{\begin{lawbox}{Exam Tip}{examtipborder}{examtippaper}{}#1\end{lawbox}}

\newcommand{\todoitem}[1]{\begin{lawbox}{To-do}{todoborder}{todopaper}{}#1\end{lawbox}\addcontentsline{tdo}{section}{#1}}

\newcommand{\listoftodos}{\chapter*{Todo list}\@starttoc{tdo}}

\renewcommand{\maketitle}{%
  \begin{titlepage}
    \thispagestyle{empty}
    \vspace*{0.12\textheight}
    \begin{flushright}
      {\fontsize{48}{52}\selectfont\color{muted}\textbf{\semester@value}\par}
      \vspace{0.35em}
      {\fontsize{28}{34}\selectfont\textbf{\course@value}\par}
      \vspace{0.8em}
      {\large \student@value\par}
    \end{flushright}
    \vfill
    \begin{flushleft}
      \color{muted}\rule{\textwidth}{1pt}\par
      \vspace{0.8em}
      {\small OUTLINE}\par
    \end{flushleft}
  \end{titlepage}
}

\endinput
