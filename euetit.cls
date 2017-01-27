\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{euetit} [2007/09/06 v0.1 Clase comú a les classes d'exàmen]
\DeclareOption{10pt}{\PassOptionsToClass{10pt}{article}}
\DeclareOption{11pt}{\PassOptionsToClass{11pt}{article}}
\DeclareOption{12pt}{\PassOptionsToClass{12pt}{article}}
\DeclareOption{twocolumn}{\PassOptionsToClass{twocolumn}{article}}
\ExecuteOptions{a4paper}
\ProcessOptions
\LoadClass{article}

% Input encoding (iso-8859-1 = latin1)
\RequirePackage{ucs}
\RequirePackage[utf8x]{inputenc}
% \RequirePackage[latin1]{inputenc}
\RequirePackage[defaultmono,scale=.8]{droidmono}

%% Boxes
\RequirePackage[pdftex]{color}
\newcommand{\wob}[1]{%
\fboxsep=3pt\fcolorbox{black}{black}{\textcolor{white}{\textbf{#1}}}}
\definecolor{gris}{gray}{0.5}
\newcommand{\wog}[1]{%
\fboxsep=3pt\fcolorbox{gris}{gris}{\textcolor{white}{\textbf{#1}}}}
\newcommand{\wox}[1]{%
\fboxsep=3pt\fbox{#1}}

%% Gràfics
\RequirePackage[pdftex]{graphicx}
\DeclareGraphicsExtensions{.png}
\DeclareGraphicsExtensions{.pdf}

%% Marges
\RequirePackage{vmargin}
\setpapersize{A4}

%% Font
\renewcommand{\sfdefault}{phv}
\renewcommand{\rmdefault}{ptm}
% \RequirePackage{times}

%% Per posar la font en "monospaced"
\newcommand{\T}[1]{{\texttt{#1}}}

% Paràgrafs
\RequirePackage{setspace}
% \setstretch{1.2}
\setlength{\parindent}{0cm}
\setlength{\parskip}{1.6mm}

%% Codi C++
\RequirePackage{relsize}
\RequirePackage{fancyvrb}
\fvset{commentchar=\%}
\fvset{xleftmargin=0mm}
% \fvset{fontfamily=tt,fontsize=\small,fontseries=b}

%% If-Then
\RequirePackage{ifthen}

%% Comandes específiques
\newcommand{\medium}{\fontsize{13}{16}\selectfont}
\newcommand{\mediumsmall}{\fontsize{12}{15}\selectfont}
