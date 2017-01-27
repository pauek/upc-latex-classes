\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{exam} [2007/06/07 v0.1 Examen de Fonaments d'Informàtica]
\LoadClass[11pt]{eseiaat}

%% Marges
\setmarginsrb{1.8cm}{1.8cm}{1.8cm}{1.8cm}{1cm}{1cm}{.75cm}{1cm}

%% Headers
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\chead{}
\rhead{{\bf \Esp} \\ \Temps}
\lhead{{\bf \Assig} \\ \Exam}
\fancyfoot[C]{\thepage}

%% Assignatura, Especialitat, Exàmen, TempsMàxim i Revisió.

\newcommand{\Assig}{\color{red}{\bf FALTA POSAR L'ASSIGNATURA!!}}
\newcommand{\Assignatura}[1]
{\renewcommand{\Assig}{#1}}

\newcommand{\Esp}{\color{red}{\bf FALTA POSAR L'ESPECIALITAT!!}}
\newcommand{\Especialitat}[1]
{\renewcommand{\Esp}{#1}}

\newcommand{\Exam}{\color{red}{\bf FALTA POSAR L'EXAMEN}}
\newcommand{\Examen}[1]
{\renewcommand{\Exam}{#1}}

\newcommand{\Temps}{\color{red}{\bf FALTA POSAR EL TEMPS M\`AXIM!!}}
\newcommand{\TempsMaxim}[1]
{\renewcommand{\Temps}{Temps m\`axim: #1}}

\newcommand{\Rev}{\color{red}{\bf FALTA POSAR LA REVISI\'O!!}}
\newcommand{\Revisio}[1]
{
  \ifthenelse{\equal{#1}{}}
  {\renewcommand{\Rev}{\vspace{1mm}}}
  {\renewcommand{\Rev}{{\bf Revisi\'o: }{#1}}}
}


%% Capçalera

\newcommand{\caixa}[1]
{
  \begin{center}
    \fboxsep 6pt%
    \fboxrule .4mm%
    \fbox{
      \begin{minipage}{14cm}
        \begin{center}
          {#1}
        \end{center}
      \end{minipage}
    } \\
  \end{center}
} 

\newcommand{\capsalera}
{
  \caixa{
    \large{\bf
      Feu \emph{un} problema per full, mai dos problemes en el mateix full. \\
      Poseu el vostre \emph{nom} i l'\emph{enginyeria} a tots els fulls. \\
      Entregueu \emph{tots els problemes}, encara que algun sigui un full en blanc.
    }
    
    \normalsize
    
    \vspace{.25cm}%
    \hrule
    \vspace{.15cm}%
    {\Rev}
    \vspace{.05cm}%
  }
}


%% Capçalera en castellà

\newcommand{\capsaleracast}
{
  \caixa{
    \large{\bf
      Haced \emph{un} problema por hoja, nunca dos problemas en la misma hoja. \\
      Poned vuestro \emph{nombre} y la \emph{especialidad} en todas las hojas. \\
      Entregad \emph{todos los problemas}, aunque alguno esté en blanco. 
    }
    
    \normalsize
    
    \vspace{.25cm}
    
    \hrule
    \vspace{.15cm}
    
    {\Rev}
  }
}

\newcommand{\informacio}[2] {
  \caixa{
    {\large\bf {#1}}
    \ifthenelse{\equal{#2}{}}{}{
      \vspace{.15cm}
      \hrule
      \vspace{.10cm}
      {\bf Revisió:} {#2}
    }
  }
}

%% Capçalera projecte

\newcommand{\form}[1] 
{{#1}~\hrulefill}

\newcommand{\capsaleraprojecte}
{
  \caixa{
    \large{\bf
      Comenceu a escriure en aquest mateix full i si necessiteu m\'es fulls els 
      adjunteu afegint la seg\"uent informaci\'o. \\

      \vspace{5mm}

      {\raggedright \normalsize
        \form{Nom:} \\
        \vspace{4mm}
        \form{Company de projecte:} \\
        \vspace{4mm}
        \form{Especialitat:} \\
        \vspace{4mm}
        \form{Professor de Laboratori:} \\
      }
    }
    \vspace{2mm}

    %% Es tracta de que responeu a les preguntes de la mateixa manera que heu fet el 
    %% vostre projecte.
  }
}

%% Problemes

\newcounter{problema}
\setcounter{problema}{1}

\newcounter{apartat}
\setcounter{apartat}{1}

\newcommand{\problema}[1]
{
  \pagebreak[3]%
  \setcounter{apartat}{1}
  \vspace{4mm}
  {\medium \textbf{Problema \arabic{problema}} 
    \ifthenelse{\equal{#1}{}}{}{\emph{[#1]}}}
  \nopagebreak
  \vspace{2mm}
  \nopagebreak
  \hrule
  \nopagebreak
  \vspace{2mm}
  \nopagebreak
  \addtocounter{problema}{1}
}

\newcommand{\apartat}[1]%
{%
\vspace{.2cm}%
\textbf{\alph{apartat}})%
\ifthenelse{\equal{#1}{}}%
{}%
{~\emph{[#1]}}%
\addtocounter{apartat}{1}%
}

%% Preguntes (per l'exàmen de projecte)

\newcounter{pregunta}
\setcounter{pregunta}{1}

\newcommand{\pregunta}
{
  \vspace{.5cm}
  {\medium \textbf{Pregunta \arabic{pregunta}} }
  \vspace{.5mm}
  \hrule
  \vspace{2mm}
  \addtocounter{pregunta}{1}
}
