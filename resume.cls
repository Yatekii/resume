%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% One Page Two Column Resume
%
% Author:
% Noah Huesser (yatekii@yatekii.ch)
% Version 1.2 (2016-04-15)
%
% IMPORTANT: THIS TEMPLATE NEEDS TO BE COMPILED WITH XeLaTeX
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Intro Options
\ProvidesClass{resume}[2017/04/03 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[vmargin=0.75cm, left=0.6cm, right=1.25cm]{geometry}
\usepackage[hidelinks]{hyperref}

% Set main fonts
\usepackage{fontspec}

% Colors
\usepackage[usenames,dvipsnames]{xcolor}

% Date command
\usepackage[absolute]{textpos}
\usepackage[english]{babel}
\usepackage[UKenglish,printdayoff,iso]{isodate}

% Fix linebreaks in section headings
\usepackage{polyglossia}
\setmainlanguage{english}

% General section commands
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\titlespacing{\subsubsection}{0pt}{0pt}{0pt}

% Section separator command
\newcommand{\sectionsep}{\vspace{8pt}}

% Meta command
\newcommand{\meta}[4]{
  % Description  
  {\color{description}
  \raggedright\descriptionfont
  \descriptionsize
  #1, 
  % Date
  \color{date}
  \datefont
  \datesize
  #2
  \def\temp{#3}\ifx\temp\empty
  \else
    to #3 
  \fi
  % Location
  \color{location}
  \locationfont
  \locationsize
  in #4\\
  \normalfont}
}

% Command to describe some fact
\newcommand{\describe}[1]{
  \textit{#1}
}

\RequirePackage{tikz}

% Left column with facts about the person
\newenvironment{facts}{%
  % Define heading commands
  % Section command
  \titleformat{\section}{%
    \color{heading}%
    \headingfont%
    \headingsize%
    \raggedright\uppercase%
  }{}{0em}{}%
  % Subsection command
  \titleformat{\subsection}{%
    \color{subheading}%
    \subheadingfont%
    \subheadingsize%
    \raggedright\uppercase%
  }{}{0em}{}%
  % Subsubsection command
  \titleformat{\subsubsection}{%
    \color{subsubheading}%
    \subsubheadingfont%
    \subsubheadingsize%
    \uppercase%
  }{}{0em}{}%
  % Control the text flow
  \begin{tikzpicture}[remember picture,overlay]
      \node [rectangle, fill=side, anchor=north, minimum width=9cm, minimum height=\paperheight+1cm] (box) at (1.5cm,1.5cm){};
  \end{tikzpicture}
  \noindent%
  \begin{minipage}[t][\textheight]{0.28\textwidth}%
  \sidesize
  \sidefont\selectfont%
}{%
  \end{minipage}%
}

% Right column with a timeline of projects and graduations
\newenvironment{timeline}{%
  % Define heading commands
  % Headings command
  \titleformat{\section}{%
    \color{heading}%
    \headingfont%
    \headingsize%
    \raggedright\uppercase%
  }{}{0em}{}%
  % Subsection command
  \titleformat{\subsection}{%
    \color{subheading}%
    \subheadingfont%
    \subheadingsize%
    \uppercase%
  }{}{0em}{}%
  % Subsubsection command
  \titleformat{\subsubsection}{%
    \color{subsubheading}%
    \subsubheadingfont%
    \subsubheadingsize%
    \uppercase%
  }{}{0em}{}%
  % Control the text flow
  \hfill%
  \noindent\begin{minipage}[t][\textheight]{0.62\textwidth}%
  \mainsize
}{%
  \end{minipage}%
}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
  \vspace{-\topsep}
  \begin{itemize}
  \itemsep1pt
  \parskip0pt
  \parsep0pt
}{
  \end{itemize}
  \vspace{-\topsep}
}

\AtBeginDocument{
}

\AtEndDocument{
}