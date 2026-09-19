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
\definecolor{ruleblue}{HTML}{243B80}
\definecolor{casepurple}{HTML}{68428C}
\definecolor{statutegreen}{HTML}{287447}
\definecolor{holdingred}{HTML}{B33A2B}
\definecolor{analysisgold}{HTML}{A26B00}
\definecolor{policyteal}{HTML}{18747A}
\definecolor{examorange}{HTML}{D45B12}
\definecolor{papercream}{HTML}{FCF8EF}
\definecolor{paperblue}{HTML}{EEF2FF}
\definecolor{paperpurple}{HTML}{F5EEFA}
\definecolor{papergreen}{HTML}{EEF9F1}
\definecolor{paperred}{HTML}{FFF0ED}
\definecolor{paperyellow}{HTML}{FFF9DF}
\definecolor{paperteal}{HTML}{EDF9F8}

\hypersetup{colorlinks=true,linkcolor=ruleblue,urlcolor=policyteal,citecolor=casepurple,pdftitle={Law School Outline}}
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

\newcommand{\rulebox}[2]{\begin{lawbox}{Rule: #1}{ruleblue}{paperblue}{}#2\end{lawbox}}
\newcommand{\casebox}[3]{\begin{lawbox}{Case: #1}{casepurple}{paperpurple}{#2}#3\end{lawbox}}
\newcommand{\statutebox}[2]{\begin{lawbox}{Statute / Regulation: #1}{statutegreen}{papergreen}{}#2\end{lawbox}}
\newcommand{\holding}[2]{\begin{lawbox}{Holding}{holdingred}{paperred}{}#2\end{lawbox}}
\newcommand{\analysisbox}[2]{\begin{lawbox}{Analysis}{analysisgold}{paperyellow}{}#2\end{lawbox}}
\newcommand{\policybox}[2]{\begin{lawbox}{Policy}{policyteal}{paperteal}{}#2\end{lawbox}}
\newcommand{\definition}[2]{\begin{lawbox}{Definition: #1}{analysisgold}{papercream}{}#2\end{lawbox}}
\newcommand{\example}[2]{\begin{lawbox}{Example: #1}{casepurple}{paperpurple}{}#2\end{lawbox}}
\newcommand{\note}[2]{\begin{lawbox}{Note: #1}{muted}{papercream}{}#2\end{lawbox}}
\newcommand{\question}[2]{\begin{lawbox}{Question: #1}{examorange}{paperred}{}#2\end{lawbox}}
\newcommand{\examtip}[1]{\begin{lawbox}{Exam Tip}{examorange}{paperyellow}{}#1\end{lawbox}}

\newcommand{\todoitem}[1]{\begin{lawbox}{To-do}{examorange}{papercream}{}#1\end{lawbox}\addcontentsline{tdo}{section}{#1}}
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
      {\small LAW SCHOOL OUTLINE}\par
    \end{flushleft}
  \end{titlepage}
}

\endinput

