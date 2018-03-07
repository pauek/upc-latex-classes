\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{test-fi} [2007/09/06 v0.1 Examen de Test de FI]
\LoadClass{eseiaat}

\RequirePackage{enumerate}

%% Marges
%% \setmarginsrb{left}{top}{right}{bottom}%
%%              {headheight}{headsep}{footheight}{footskip}
\setmarginsrb{1.0cm}{1.0cm}{1.0cm}{1.0cm}
             {3cm}{.3cm}{1cm}{.8cm}

%% Separació paràgrafs
\setlength{\parskip}{0.2mm}

%% Capçaleres
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}
\rhead{{\bf \Esp}}
\chead{{\bf Punts: }bé +1; malament -1/3; en blanc 0.}
\lhead{{\bf \Assig}}
\rfoot{Permutació \textbf{\Permut}}
%\lfoot{\Dia}
\lfoot{\Temps}

%% Dues columnes
\RequirePackage{multicol}
\setlength{\columnsep}{1.5pc}
\setlength{\columnseprule}{.4pt}

%% Opcions (tipus A, B, C, i D)
\newcounter{opcio}
\setcounter{opcio}{1}

\newcommand{\opcio}
{%
  \par%
  \hspace{4mm}%
  \Alph{opcio}.%
  \addtocounter{opcio}{1}%
  \hspace{2mm}%
}

\newenvironment{opcions}
{\vspace{2mm}}
{\par\vspace{2mm}}

%% Resposta
\newcounter{resposta}
\setcounter{resposta}{1}

\newcommand{\resposta}[1]
{%
  \hspace{4mm}%
  \emph{\alph{resposta})}\hspace{2mm}{#1}%
  \addtocounter{resposta}{1}\par%
}

\newcommand{\falsa}[1]{\resposta{#1}}
\newcommand{\vertadera}[1]{\resposta{#1}}

%% Pregunta
\newcounter{pregunta}
\setcounter{pregunta}{1}

\newenvironment{pregunta}
{
  \pagebreak[2]%
  \setcounter{resposta}{1}%
  \setcounter{opcio}{1}%
  \ifthenelse{\equal{\arabic{pregunta}}{1}}{}{\vspace{4mm}}%
  % \makebox[0mm][r]{
  {
    \fboxsep 2.5pt
    \fbox{\textbf{\arabic{pregunta}.}}\hspace{.5mm}
  }
  % }
}
{\addtocounter{pregunta}{1}\par\vspace{1mm}}


%% Dades
\newcommand{\Exam}{\Tit\ (permutació\quad\Permut)}

\newcommand{\NumPreg}{1}
\newcommand{\NumPreguntes}[1]{\renewcommand{\NumPreg}{#1}}

\newcommand{\Permut}{{\color{red} PERMUT}}
\newcommand{\Permutacio}[1]{\renewcommand{\Permut}{#1}}

\newcommand{\Tit}{Exàmen tipus test}
\newcommand{\Titol}[1]{\renewcommand{\Tit}{#1}}

\newcommand{\Esp}{\color{red}{\bf FALTA POSAR L'ESPECIALITAT!!}}
\newcommand{\Especialitat}[1]{\renewcommand{\Esp}{#1}}

\newcommand{\Assig}{Fonaments d'Informàtica} % Default: FI...
\newcommand{\Assignatura}[1]{\renewcommand{\Assig}{#1}}

\newcommand{\Temps}{\color{red}{\bf FALTA POSAR EL TEMPS M\`AXIM!!}}
\newcommand{\TempsMaxim}[1]{\renewcommand{\Temps}{Temps m\`axim: #1}}

\newcommand{\Dia}{}
\newcommand{\Data}[1]{\renewcommand{\Dia}{#1}}

%% Capçalera
\newcommand{\caixa}[1]
{
  \begin{center}
    \fboxsep 10pt%
    \fboxrule .3mm%
    \fbox{
      \begin{minipage}{17cm}
        {#1}
      \end{minipage}
    } \\
  \end{center}
} 


\newcommand{\res}
{ {\fboxrule .1mm\fboxsep 7pt\fbox{\hspace{1mm}}\hspace{.4mm}} }

\newcommand{\capsalera}
{ 
  \setlength{\unitlength}{1mm}%
  \begin{picture}(0,0)(0,-17)
    \put(0, 1.5){\linethickness{.1mm}\framebox(190,18.5){}}
    
    \put(3,12.8){\textbf{DNI}}
    \multiput(21,11)(5.5,0){8}{\dashbox{1}(5,7)}
    \put(65,14.5){\linethickness{.3mm}\line(1,0){2.0}}
    \put(67.5,11){\dashbox{1}(5,7)}

    \put(3,4.9) {\textbf{Respostes}}
    \multiput(21,3)(7,0){\NumPreg}{\dashbox{2}(6,6){}}

    \put(168.5,15) {Permutació\enskip\textbf{\Permut}}
  \end{picture}%
  \vspace{-8.5mm}%
}
