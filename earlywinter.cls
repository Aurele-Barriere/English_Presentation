%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EarlyWinter by Sem Dyal
% Provides a style for cv
% Inspired by friggeri-cv
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ProvidesClass{earlywinter}[2016/12/06 Beamerclass]
\NeedsTeXFormat{LaTeX2e}

\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{beamer}%
}
\ProcessOptions\relax
\LoadClass{beamer}

%%%%%%%%%%%%
% Packages %
%%%%%%%%%%%%
\usepackage{graphicx, wrapfig, setspace, booktabs}
\usepackage{tikz}

%%%%%%%%%%
% Colors %
%%%%%%%%%%
\RequirePackage{xcolor}
\RequirePackage{colortbl}
\definecolor{white}{RGB}{255,255,255}
\definecolor{darkgray}{HTML}{333333}
\definecolor{gray}{HTML}{4D4D4D}
\definecolor{lightgray}{HTML}{999999}
\definecolor{green}{HTML}{C2E15F}
\definecolor{orange}{HTML}{FDA333}
\definecolor{purple}{HTML}{D3A4F9}
\definecolor{red}{HTML}{FB4485}
\definecolor{red2}{HTML}{C1392B}
\definecolor{blue}{HTML}{6CE0F1}
\definecolor{aquamarine}{HTML}{36AF90}
\definecolor{brown}{HTML}{885522}

\setbeamercolor{titlelike}{fg=gray}
\setbeamercolor{separation line}{fg=green}
\setbeamercolor{local structure}{fg=gray}
\setbeamercolor{section in toc}{fg=red}
\setbeamercolor{subsection in toc}{fg=gray}
\setbeamercolor{block title}{fg=orange!60!black, bg=orange!20}
\setbeamercolor{block body}{bg=orange!10}
\setbeamercolor{block title example}{fg=green!60!black, bg=green!40}
\setbeamercolor{block body example}{bg=green!20}
\setbeamercolor{block title alerted}{fg=red2!60!black, bg=red2!30}
\setbeamercolor{block body alerted}{bg=red2!10}
\setbeamercolor{normal text}{fg=gray}

%%%%%%%%%%
% Navbar %
%%%%%%%%%%
\beamertemplatenavigationsymbolsempty

%%%%%%%%%%
% Header %
%%%%%%%%%%

\newcommand{\HRule}[1]{\rule{\linewidth}{#1}}

\setbeamercolor{section in head/foot}{bg=gray, fg=white}
\setbeamertemplate{headline}{
  \begin{beamercolorbox}[ht=12pt]{section in head/foot}
    \insertsectionnavigationhorizontal{.5\textwidth}{\hskip5pt }{}
    \vspace{2pt}
  \end{beamercolorbox}%
}

%%%%%%%%%%
% Footer %
%%%%%%%%%%
\setbeamertemplate{footline}{
  \raisebox{0pt}[0pt][0pt]{%
    \hskip-2pt %
    \begin{tikzpicture}
      \draw[line width=4pt,line cap=butt,color=lightgray] (0,0)--(\textwidth,0);
      \draw[line width=4.2pt,line cap=butt,color=orange!80] (0,0)--({\insertframenumber * \textwidth / \inserttotalframenumber},0);
    \end{tikzpicture}
  }

	\hfill
	\makebox[20pt][c]{%
		\raisebox{7pt}[0pt][0pt] {%
			\insertframenumber / \inserttotalframenumber
		}
	}
}

%%%%%%%%%%
% Titles %
%%%%%%%%%%
\setbeamertemplate{frametitle}{

\raisebox{-6pt}[5pt][0pt]{%
  \hskip-10pt %
  \begin{tikzpicture}
    \draw[line width=8pt,line cap=butt,color=orange] (0,0.5)--(0,0);
    \draw[line width=4pt,line cap=butt,color=orange] (0.3,0.5)--(0.3,0);
    \draw[line width=2pt,line cap=butt,color=orange] (0.5,0.5)--(0.5,0);
  \end{tikzpicture}
}
\textbf{\hskip-5pt \insertframetitle}
\par
\vspace{1pt}\hskip15pt %
\insertframesubtitle
}

%%%%%%%%%%%%%%%
% Frame Title %
%%%%%%%%%%%%%%%

\setbeamertemplate{title page} {
\begin{center}
  {\color{orange}
  \HRule{0.5pt} \\
  \vspace{1pt}
  {\Large\textsc{\usebeamerfont{title}\usebeamercolor[fg]{title}
  \inserttitle}}
  \HRule{2pt} \\
  }

  {\large\color{gray}
  \textsc{\insertsubtitle}
  }
  \vspace{5pt}

  {\footnotesize
  \begin{minipage}[t]{0.3\textwidth}
  \begin{flushleft}
  \begin{center}
  Aurèle \textsc{Barrière}
  \end{center}
  \end{flushleft}
  \end{minipage}
  \begin{minipage}[t]{0.3\textwidth}
  \begin{flushright}
  \begin{center}
  Solène \textsc{Mirliaz}
  \end{center}
  \end{flushright}
  \end{minipage}\\
  }

  \vspace{40pt}
  {\color{gray}
  \insertdate%
  }
\end{center}
}
