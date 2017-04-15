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

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor}
\definecolor{primary}{HTML}{2b2b2b}
\definecolor{heading}{HTML}{6A6A6A}
\definecolor{subheading}{HTML}{333333}
\definecolor{side}{HTML}{FFCD77}
\definecolor{description}{HTML}{E85D55}
\definecolor{date}{HTML}{E89491}
\definecolor{location}{HTML}{E89491}

% Set main fonts
\usepackage{fontspec}
%\setmainfont[Color=primary, Path=fonts/FiraSans/]{FiraSans-Regular}
\setmainfont[%
  Color=primary,%
  Path=fonts/lato/,%
  BoldItalicFont=Lato-Italic,%
  BoldFont=Lato-Regular,%
  ItalicFont=Lato-LightItalic%
]{Lato-Light}
\newfontfamily\headingfont[Path = fonts/lato/]{Lato-Light}
\newfontfamily\subheadingfont[Path = fonts/lato/]{Lato-Bold}
\newfontfamily\sidefont{Inconsolata}
\newfontfamily\descriptionfont[Path = fonts/raleway/]{Raleway-Medium}
\newfontfamily\datefont[Path = fonts/raleway/]{Raleway-Medium}
\newfontfamily\locationfont[Path = fonts/raleway/]{Raleway-Medium}

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

% Section separator command
\newcommand{\sectionsep}{\vspace{8pt}}

% Meta command
\newcommand{\meta}[4]{
  % Description  
  {\color{description}
  \raggedright\descriptionfont
  \fontsize{11pt}{13pt}\selectfont
  #1 
  % Date
  \color{date}
  \datefont
  \fontsize{10pt}{12pt}\selectfont
  #2
  \def\temp{#3}\ifx\temp\empty
  \else
    to #3 
  \fi
  % Location
  \color{location}
  \locationfont
  \fontsize{10pt}{12pt}\selectfont
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
    \fontsize{16pt}{24pt}\selectfont%
    \raggedright\uppercase%
  }{}{0em}{}%
  % Subsection command
  \titleformat{\subsection}{%
    \color{subheading}%
    \subheadingfont%
    \fontsize{12pt}{12pt}\selectfont%
    \uppercase%
  }{}{0em}{}%
  % Control the text flow
  \begin{tikzpicture}[remember picture,overlay]
      \node [rectangle, fill=side, anchor=north, minimum width=9cm, minimum height=\paperheight+1cm] (box) at (1.5cm,1.5cm){};
  \end{tikzpicture}
  \noindent%
  \begin{minipage}[t]{0.28\textwidth}%
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
    \fontsize{16pt}{24pt}\selectfont%
    \raggedright\uppercase%
  }{}{0em}{}%
  % Subsection command
  \titleformat{\subsection}{%
    \color{subheading}%
    \subheadingfont%
    \fontsize{12pt}{12pt}\selectfont%
    \uppercase%
  }{}{0em}{}%
  % Control the text flow
  \hfill%
  \noindent\begin{minipage}[t][0pt]{0.60\textwidth}%
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