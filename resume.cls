% Intro Options
\ProvidesClass{resume}[2017/04/03 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

\usepackage[export]{adjustbox}

% Package Imports
\usepackage[vmargin=0.75cm, left=0.6cm, right=1.25cm]{geometry}
\usepackage[hidelinks]{hyperref}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor}
\definecolor{date}{HTML}{666666}
\definecolor{primary}{HTML}{2b2b2b}
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}
\definecolor{sidecolor}{HTML}{E7E7E7}

% Set main fonts
\usepackage{fontspec}
\setmainfont[Color=primary, Path = fonts/lato/,BoldItalicFont=Lato-Italic,BoldFont=Lato-Regular,ItalicFont=Lato-LightItalic]{Lato-Light}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}

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

% Location command
\newcommand{\meta}[4]{
  % Description  
  {\color{subheadings}
  \raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}
  \fontsize{11pt}{13pt}\selectfont
  #1
  % Date
  \color{headings}
  \fontspec[Path = fonts/raleway/]{Raleway-Medium}
  \fontsize{10pt}{12pt}\selectfont
  #2 to #3 in
  % Location
  \color{subheadings}
  \fontspec[Path = fonts/raleway/]{Raleway-Medium}
  \fontsize{10pt}{12pt}\selectfont
  #4\\
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
    \color{headings}%
    \fontspec[Path = fonts/lato/]{Lato-Light}%
    \fontsize{16pt}{24pt}\selectfont%
    \raggedright\uppercase%
  }{}{0em}{}%
  % Subsection command
  \titleformat{\subsection}{%
    \color{subheadings}%
    \fontspec[Path = fonts/lato/]{Lato-Bold}%
    \fontsize{12pt}{12pt}\selectfont%
    \uppercase%
  }{}{0em}{}%
  % Control the text flow
  \begin{tikzpicture}[remember picture,overlay]
      \node [rectangle, fill=sidecolor, anchor=north, minimum width=9cm, minimum height=\paperheight+1cm] (box) at (1.5cm,1.5cm){};
  \end{tikzpicture}
  \noindent%
  \begin{minipage}[t]{0.28\textwidth}%
}{%
  \end{minipage}%
}

% Right column with a timeline of projects and graduations
\newenvironment{timeline}{%
  % Define heading commands
  % Headings command
  \titleformat{\section}{%
    \color{headings}%
    \fontspec[Path = fonts/lato/]{Lato-Light}%
    \fontsize{16pt}{24pt}\selectfont%
    \raggedright\uppercase%
  }{}{0em}{}%
  % Subsection command
  \titleformat{\subsection}{%
    \color{subheadings}%
    \fontspec[Path = fonts/lato/]{Lato-Bold}%
    \fontsize{12pt}{12pt}\selectfont%
    \uppercase%
  }{}{0em}{}%
  % Control the text flow
  \hfill%
  \noindent\begin{minipage}[t]{0.60\textwidth}%
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