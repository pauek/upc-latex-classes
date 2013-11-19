\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{test-fi-solucio} [2007/06/24 v0.1 Examen de Test de FI + Solució]
\LoadClass{test-fi}

\renewcommand{\vertadera}[1]
{%
  \makebox[0mm][c]{$\bullet$\hspace{-4mm}}%
  \resposta{#1}%
}
