\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ITLR}[2020/11/16 V 1.0 ITLR Template]
\LoadClass[12pt,oneside,a4paper,fleqn]{scrbook}
\pdfminorversion=7  										% PDF version 1.7 minimum

\DeclareOption{print}{\def\ITLR@print{true}}
\DeclareOption{colorlinks}{\def\ITLR@colorlinks{true}}
\ExecuteOptions{colorlinks} % Default: farbige Links
\ProcessOptions\relax

\usepackage[utf8]{inputenc}									% für Umlauten
\usepackage[T1]{fontenc}									% Zeichensatz (256) für West-EU Zeichen
\usepackage{lmodern}										% Schrift: "Latin modern"
\usepackage[ngerman]{babel}									% Sprache: deutsch
\usepackage[centertags]{amsmath}\allowdisplaybreaks			% Erweiterung Mathe-Satz
\usepackage{amsfonts}										% Für Formeln etc.
\usepackage{amstext}										% Für Texte in Formeln
\usepackage{amssymb}										% Für Symbole
\usepackage{etoolbox,ragged2e,siunitx}  					% Für Symbolverzeichnis
\usepackage{graphicx}										% Um Abbildungen einzubauen
\usepackage{float}											% Für Verschieben von Grafiken, Tabellen,...
\usepackage{geometry}										% Für Positionierung von Bildern etc.
\usepackage{bigdelim}										% Für grosse geschweifte Klammern in Tabellen
\usepackage{setspace}										% Für Zeilenabstand
\usepackage[font={small}]{caption}							% Verkleinerte Abbildungsbeschreibungen
\usepackage{titleps}										% Section & Subsection in headers
\usepackage{scrhack}										% use deprecated \float@addtolist interface with KOMA
\usepackage{pgfplots}\pgfplotsset{compat=1.17}				% create normal or logarithmic plots in two and three dimensions
\usepackage{wrapfig}										% produces figures which text can flow around
\usepackage{listings}  \lstset{language=Matlab} 			% enable showing Code in a defined style
\usepackage{lipsum}   										% generation of some blind text
\usepackage{array}											% extention of array and tabular environment
\usepackage{multirow}										% enabling multirows in table
\usepackage{textgreek}										% upgright greek letters in text
\usepackage{rotating}										% enable rotating tables and figures
\usepackage{grffile}										% extended file name support for graphics
\usepackage{psfrag}											% replace strings in encapsulated post-script figures
\usepackage{supertabular}									% extention to the normal tabular environment
\usepackage{microtype}										% subliminal refinements towards topographical perfection
\usepackage{csquotes}										% package provides advanced facilities for inline and display quotations
\usepackage{svg}											% include svg-graphics
\usepackage{calc}											% enables simple arithmetic in arguments of LaTex
\usepackage{lscape}											% place selected parts of a document in landscape
\usepackage{tabularx}										% additional functions and column type in table
\usepackage{siunitx}										% package for writing numbers with units
\usepackage{epstopdf}										% including eps graphics

%Tikz
\usepackage{tikz}
\usetikzlibrary{shapes.geometric,shapes.arrows,decorations.pathmorphing}
\usetikzlibrary{matrix,positioning,chains, calc}
\newcommand\circlearound[1]{%
  \tikz[baseline]\node[draw,shape=circle,anchor=base, inner sep =1pt] {#1} ;}

%----------- hyperref Setup --------------------
\usepackage[pagebackref,breaklinks,colorlinks,citecolor=red,linkcolor=blue,urlcolor=blue]{hyperref}  % set colors to black for printing

%----------- Kopfnoten-Layout --------------------
\newpagestyle{main}{%
	\setheadrule{0pt}%
	\sethead{\chaptertitle}%\sethead{\sectiontitle}                     % header links
	{}                                                      			% header Mitte
{\thesection~\sectiontitle} %{\thesubsection~\subsectiontitle}% 		% header rechts
	\headrule%
	\setfoot{}{\thepage}{}												% Seitenzahl Mitte/unten
}
\newpagestyle{OnlySection}{%							    
	\setheadrule{0pt}%
	\sethead{\sectiontitle}{}{}%										% Nur linker header
	\headrule%
	\setfoot{}{\thepage}{}												% Seitenzahl Mitte/unten
}
\newpagestyle{Appendix}{%
	\setheadrule{0pt}%
	\sethead{Anhang}{}{}%												% Anhang
	\headrule%
	\setfoot{}{\thepage}{}												% Seitenzahl Mitte/unten
}
\newpagestyle{Abstract}{%
	\setheadrule{0pt}%
	\sethead{}{}{}%														% gar kein header
	\headrule%
	\setfoot{}{\thepage}{}												% Seitenzahl Mitte/unten
}
\newpagestyle{VerzeichnisseNomenklatur}{%
	\setheadrule{0pt}%
	\sethead{Verzeichnisse \& Nomenklatur}{}{}%							% Verzeichnisse & Nomenklatur
	\headrule%
	\setfoot{}{\thepage}{}												% Seitenzahl Mitte/unten
}

%----------- Font-Definitionen in Koma-Script --------------------
\setkomafont{pageheadfoot}{\scshape\footnotesize}
\setkomafont{pagenumber}{\scshape\footnotesize}
\setkomafont{sectioning}{\normalcolor\bfseries}

%-------------- Verschiedenes -------------------------------------------------
\geometry{a4paper,left=25mm,right=35mm, top=25mm, bottom=30mm} 			% Ränder
\newcommand{\norm}[1]{\left\lVert#1\right\rVert}						% Betrag
\numberwithin{equation}{chapter}										% Kapitelnummer in Gleichungen
\numberwithin{table}{chapter}											% Kapitelnummer in Tabellen
\numberwithin{figure}{chapter}											% Kapitelnummer in Abbildungen
\setcounter{tocdepth}{4}												% max. Kapiteltiefe (z.B. 3.1.2.4)
\setcounter{secnumdepth}{4}		
\pagestyle{main}			

%-------------- Title Page Definition ----------------------------------------
% \definecolor{ITLR_Blue}{rgb}{0.0,0.0,1.0}
% \newcommand{\BRule}{\textcolor{ITLR_Blue}{\rule{\linewidth}{1pt}}}

\definecolor{ITLR_Blue}{rgb}{0.0,0.0,1.0}
\newcommand{\BRule}{\textcolor{ITLR_Blue}{\rule{\linewidth}{1pt}}}

%-------------- Bibliography ----------------------------------------
\usepackage[numbers,sort&compress]{natbib}
