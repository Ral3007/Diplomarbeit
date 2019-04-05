%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Poster-Klasse für die Anfertigung von Postern für
%		Abschlussarbeiten am Institut für Automatisierungstechnik
%   Autor: Henning Hager auf Grundlagen von Jan Hegewald
%		Stand: November 2010
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage{ifaPoster}
\newif\if@ifaposter@sansmath\@ifaposter@sansmathtrue
\DeclareOption{serifmath}{\@ifaposter@sansmathfalse}
\ProcessOptions\relax
\LoadClass[landscape,a2]{a0poster}
\RequirePackage{pgf}
\RequirePackage[a2paper,landscape]{geometry}
\RequirePackage{calc}
\RequirePackage{textcomp}
\RequirePackage{array}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{flowfram}
\RequirePackage{microtype}
\RequirePackage[font={scriptsize, sf}, skip=2mm, bf]{caption} % setting caption font

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Definition der Variablen für den Dokumentenkopf
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand*\@ifaAuthor{}
\newcommand*\@ifaDayOfSubmission{}
\newcommand*\@ifaProfessor{}
\newcommand*\@ifaSupervisorA{}
\newcommand*\@ifaSupervisorB{}
\newcommand*\@ifaSupervisorC{}
\newcommand*\@ifaSupervisorD{}
\newcommand*\@ifaSupervisorE{}
\newcommand*\@ifaThesis{}
\newcommand*\@ifaTitle{}
\newcommand*\@ifaPhoto{Passbild_Platzhalter.pdf}


\newcommand*{\ifaAuthor}[1]{\renewcommand*{\@ifaAuthor}{#1}}
\newcommand*{\ifaProfessor}[1]{\renewcommand*{\@ifaProfessor}{#1}}
\newcommand*{\ifaDayOfSubmission}[1]{\renewcommand*{\@ifaDayOfSubmission}{#1}}
\newcommand*{\ifaSupervisorA}[1]{\renewcommand*{\@ifaSupervisorA}{#1}}
\newcommand*{\ifaSupervisorB}[1]{\renewcommand*{\@ifaSupervisorB}{#1}}
\newcommand*{\ifaSupervisorC}[1]{\renewcommand*{\@ifaSupervisorC}{#1}}
\newcommand*{\ifaSupervisorD}[1]{\renewcommand*{\@ifaSupervisorD}{#1}}
\newcommand*{\ifaSupervisorE}[1]{\renewcommand*{\@ifaSupervisorE}{#1}}
\newcommand*{\ifaTitle}[1]{\renewcommand*{\@ifaTitle}{#1}}
\newcommand*{\ifaThesis}[1]{\renewcommand*{\@ifaThesis}{#1}}
\newcommand*{\ifaPhoto}[1]{\renewcommand*{\@ifaPhoto}{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Farbdefinitionen (aus tudposter.cls)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\definecolor{HKS41-100}{cmyk}{1.00, 0.70, 0.10, 0.50}
\definecolor{HKS41-90}{cmyk}{0.9, 0.63, 0.09, 0.45}
\definecolor{HKS41-80}{cmyk}{0.8, 0.56, 0.08, 0.40}
\definecolor{HKS41-70}{cmyk}{0.7, 0.49, 0.07, 0.35}
\definecolor{HKS41-60}{cmyk}{0.6, 0.42, 0.06, 0.30}
\definecolor{HKS41-50}{cmyk}{0.5, 0.35, 0.05, 0.25}
\definecolor{HKS41-40}{cmyk}{0.4, 0.28, 0.04, 0.20}
\definecolor{HKS41-30}{cmyk}{0.3, 0.21, 0.03, 0.15}
\definecolor{HKS41-20}{cmyk}{0.2, 0.14, 0.02, 0.10}
\definecolor{HKS41-10}{cmyk}{0.1, 0.07, 0.01, 0.05}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Schriftart für Text (aus tudposter.cls)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {0.1ex}%
                                   {0.1ex}%
                                   {\sffamily\normalsize\bfseries\leavevmode\color{HKS41-100}}}	
% \leavevmode: sonst nach  Spaltenumbruch evtl. falsche section-Farbe
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
									{-0.5ex \@plus -0.3ex \@minus -.2ex}%
									{0.1ex plus .1ex}{\small\bfseries}}


\setlength\smallskipamount{6pt plus 2pt minus 2pt}
\setlength\medskipamount{12pt plus 4pt minus 4pt}
\setlength\bigskipamount{24pt plus 8pt minus 8pt}

\setlength\abovecaptionskip{10pt}
\setlength\belowcaptionskip{0pt}
\setlength\abovedisplayskip{25pt plus 6pt minus 15 pt}
\setlength\abovedisplayshortskip{0pt plus 6pt}
\setlength\belowdisplayshortskip{13pt plus 7pt minus 6pt}
\setlength\belowdisplayskip\abovedisplayskip

\setlength{\parindent}{0pt}
\setlength{\parskip}{1ex}
\setcounter{secnumdepth}{-1} % to remove (sub)section numbering

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Definition verschiedener Längen, die für das Layout nötig sind
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newlength{\ifaposter@margin}	% Außenabstand
\newlength{\ifaposter@titleblockheight}
\newlength{\ifaposter@titleblockwidth}
\newlength{\ifaposter@textcolumnsep}
\newlength{\ifaposter@borderwidth}
\newlength{\ifaposter@titleblocksep}
\newlength{\ifaposter@logowidth}
\newlength{\ifaposter@logoheight}
\newlength{\ifaposter@ifaPhotowidth}
\newlength{\ifaposter@ifaPhotoheight}
\newlength{\ifaposter@nameblocktablewidth}

\setlength{\ifaposter@margin}{10mm}%
\setlength{\ifaposter@titleblockheight}{102mm}%
\setlength{\ifaposter@titleblockwidth}{368mm}%
\setlength{\ifaposter@textcolumnsep}{10mm}%
\setlength{\ifaposter@borderwidth}{0.8mm}%
\setlength{\ifaposter@titleblocksep}{10mm}%
\setlength{\ifaposter@ifaPhotowidth}{35mm}%		Standard-Passbildmaß
\setlength{\ifaposter@ifaPhotoheight}{45mm}%		Standard-Passbildmaß
\setlength{\ifaposter@nameblocktablewidth}{140mm}%

\geometry{margin=\ifaposter@margin}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Definition des Layouts
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\ifaBorder}[1]{\setlength{\fboxsep}{\ifaposter@titleblocksep}\setlength{\fboxrule}{\ifaposter@borderwidth}\fbox{#1}}
\newcommand{\ifaBorderNoSep}[1]{\setlength{\fboxrule}{\ifaposter@borderwidth}\fbox{#1}}

\newlength{\ifaposter@height}
\newlength{\ifaposter@width}
\newlength{\ifaposter@xpos}
\newlength{\ifaposter@ypos}

\setlength{\ifaposter@xpos}{0.5\ifaposter@borderwidth}%
\setlength{\ifaposter@ypos}{\textheight - \ifaposter@titleblockheight + \ifaposter@titleblocksep + 0.5\ifaposter@borderwidth}%
\setlength{\ifaposter@height}{\ifaposter@titleblockheight-2\ifaposter@titleblocksep-0.5\ifaposter@borderwidth}%
\setlength{\ifaposter@width}{\ifaposter@titleblockwidth-2\ifaposter@titleblocksep-1.5\ifaposter@borderwidth}%

\newstaticframe[all]{\ifaposter@width}{\ifaposter@height}{\ifaposter@xpos}{\ifaposter@ypos}[title]
\setstaticframe*{title}{border=ifaBorder}
\setlength{\ifaposter@xpos}{\ifaposter@titleblockwidth + 0.0\ifaposter@borderwidth}%
\setlength{\ifaposter@width}{\textwidth - \ifaposter@titleblockwidth-2\ifaposter@titleblocksep +.5\ifaposter@borderwidth}%

\newstaticframe[all]{\ifaposter@width}{\ifaposter@height}{\ifaposter@xpos}{\ifaposter@ypos}[namebox]
\setstaticframe*{namebox}{border=ifaBorder}
\setlength{\ifaposter@xpos}{0.5\ifaposter@borderwidth}%
\setlength{\ifaposter@ypos}{\ifaposter@titleblocksep}%
\setlength{\ifaposter@height}{\textheight-\ifaposter@titleblockheight-2\ifaposter@titleblocksep-0.5\ifaposter@borderwidth}%
\setlength{\ifaposter@width}{\textwidth-2\ifaposter@titleblocksep}%

\newstaticframe[all]{\ifaposter@width}{\ifaposter@height}{\ifaposter@xpos}{\ifaposter@ypos}[rahmen]
\setstaticframe*{rahmen}{border=ifaBorder}
\setlength{\ifaposter@xpos}{\ifaposter@textcolumnsep}%
\setlength{\ifaposter@ypos}{\ifaposter@textcolumnsep}%
\setlength{\ifaposter@height}{\textheight-\ifaposter@titleblockheight-2\ifaposter@textcolumnsep - 0.5\ifaposter@borderwidth}%
\setlength{\ifaposter@width}{\textwidth-2\ifaposter@textcolumnsep}%
\setlength{\columnsep}{\ifaposter@textcolumnsep}
\Ncolumninarea[all]{3}{\ifaposter@width}{\ifaposter@height}{\ifaposter@xpos}{\ifaposter@ypos}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\AtBeginDocument{

	\setstaticcontents*{title}{
		\centering\huge\sffamily\color{HKS41-100}{\textbf{\@ifaTitle}}
	} 

	\setstaticcontents*{namebox}{
		
	\includegraphics[width=76mm]{TU_Logo_SW}%
	\hspace*{\ifaposter@textcolumnsep}%
	\parbox[b]{100mm}{\sffamily\small{Fakult\"{a}t f\"{u}r Elektrotechnik und\\ Informationstechnik}\vfill{Institut f\"{u}r} Automatisierungstechnik}%
	\vspace*{-3mm}
		{\begin{center}\Large\textsc\@ifaThesis\end{center}}
	\vspace*{3mm}
		\parbox[c][\ifaposter@ifaPhotoheight][c]{\ifaposter@nameblocktablewidth}{
		\setlength{\tabcolsep}{0mm}
		\footnotesize
			\begin{tabular}{b{6cm}b{\ifaposter@nameblocktablewidth-6cm}}
				Bearbeiter: & \@ifaAuthor \\
				Betreuer: \ifthenelse{\equal{\@ifaSupervisorA}{}}{}{&\@ifaSupervisorA\\\ifthenelse{\equal{\@ifaSupervisorB}{}}{}{&\@ifaSupervisorB\\\ifthenelse{\equal{\@ifaSupervisorC}{}}{}{&\@ifaSupervisorC\\\ifthenelse{\equal{\@ifaSupervisorD}{}}{}{&\@ifaSupervisorD\\\ifthenelse{\equal{\@ifaSupervisorE}{}}{}{&\@ifaSupervisorE\\}}}}}
				Verantwortlicher &\\
				Hochschullehrer: & \@ifaProfessor \\
				Tag der Einreichung: & \@ifaDayOfSubmission
			\end{tabular}
		 }\hfill
		\parbox[c][\ifaposter@ifaPhotoheight][c]{\ifaposter@ifaPhotowidth}{\includegraphics[width=\ifaposter@ifaPhotowidth]{\@ifaPhoto}}
	}

	\pagestyle{empty}
	\footnotesize
}
		