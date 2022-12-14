\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{thesis}
              [2007/22/02 v1.0
   LaTeX document class]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}
\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}


\newcommand\copyrightnotice[1]{
\btypeout{Copyright notice}
\addtotoc{Copyright notice}
\thispagestyle{plain}
% \null\vfil
%\vskip 60\p@
{\bf{Copyright~notice}}
%\vskip 60\p@
{\normalsize #1}
\vfil\vfil\null
% \cleardoublepage
}


\newcommand\abstract[1]{
\btypeout{Abstract}
\addtotoc{Abstract}
\thispagestyle{plain}
% \null\vfil
%\vskip 60\p@
{\bf{Abstract}}
%\vskip 60\p@
{\normalsize #1}
\vfil\vfil\null
%\cleardoublepage
}

\newcommand\Declaration[1]{
\btypeout{Declaration}
\addtotoc{Declaration}
\thispagestyle{plain}
% \null\vfil
%\vskip 60\p@
{\bf{Declaration}}
%\vskip 60\p@
{\normalsize #1}
\vfil\vfil\null
%\cleardoublepage
}



\newcommand\Publicationslist[1]{
\btypeout{Publications during enrolment}
\addtotoc{Publications during enrolment}
\thispagestyle{plain}
% \null\vfil
%\vskip 60\p@
{\bf{Publications~during~enrolment}}
%\vskip 60\p@
{\normalsize #1}
\vfil\vfil\null
%\cleardoublepage
}

\newcommand\Declarationpublication[1]{
\btypeout{Thesis including published works declaration}
\addtotoc{Thesis including published works declaration}
\thispagestyle{plain}
% \null\vfil
%\vskip 60\p@
{\bf{Thesis~including~published~works~declaration}}
%\vskip 60\p@
{\normalsize #1}
\vfil\vfil\null
%\cleardoublepage
}
\newcommand\Preface[1]{
\btypeout{Preface}
\addtotoc{Preface}
\thispagestyle{plain}
\null\vfil
%\vskip 60\p@
{\bf{Preface}}
%\vskip 60\p@
{\normalsize #1}
\vfil\vfil\null
%\cleardoublepage
}




%%%% CUSTOM BIB

\usepackage{bibentry}
\nobibliography*


\newcommand{\makeauthorbold}[1]{%
  \DeclareNameFormat{author}{%
    \ifthenelse{\value{listcount}=1}
    {%
      {\expandafter\ifstrequal\expandafter{\namepartfamily}{#1}{\mkbibbold{\namepartfamily\addcomma\addspace \namepartgiveni}}{\namepartfamily\addcomma\addspace \namepartgiveni}}
      %
    }{\ifnumless{\value{listcount}}{\value{liststop}}
        {\expandafter\ifstrequal\expandafter{\namepartfamily}{#1}{\mkbibbold{\addcomma\addspace \namepartfamily\addcomma\addspace \namepartgiveni}}{\addcomma\addspace \namepartfamily\addcomma\addspace \namepartgiveni}}
        {\expandafter\ifstrequal\expandafter{\namepartfamily}{#1}{\mkbibbold{\addcomma\addspace \namepartfamily\addcomma\addspace \namepartgiveni\addcomma\isdot}}{\addcomma\addspace \namepartfamily\addcomma\addspace \namepartgiveni\addcomma\isdot}}%
      }
    \ifthenelse{\value{listcount}<\value{liststop}}
    {\addcomma\space}{}
  }
}



%%%% END CUSTOM BIB



% %%%%% Github 
\usepackage{fontawesome5}

\newcommand{\GhIcon}{\textcolor{gray}{\faGithubSquare}}
% \makeatletter
\newcommand{\github}[1]{%
  Source code on Github~\href{#1}{\GhIcon}.%
}
% \makeatother


%%% CUSTOM COMMANDS
\newif\ifdraft
\drafttrue % switch to false in non-draft version (thereby hiding the todos)
\draftfalse
\newcommand{\inDraftVersion}[1]{\ifdraft #1\fi} 

\newcommand{\commentcmd}[3]{\inDraftVersion{\color{#2}\emph{#1}: #3}}
\newcommand{\todo}[1]{\commentcmd{TODO}{orange}{#1}}
\newcommand{\citeme}{{\color{red}(citation needed)}}
\newcommand{\newtxt}[1]{\commentcmd{}{green}{#1}}



%%% QUOTE

\usepackage{csquotes}
\SetBlockThreshold{2}
\newcommand\myblockquote[2]{%
  \blockquote{\hspace*{2em}\emph{`#1'}\hfill(#2)}\par}


%%%%


%%% TABLE
\usepackage{nicematrix}
\usepackage{varwidth}
\usepackage{xcolor}
\usepackage{enumerate}


% % % planet symbols
\newcommand*{\mathabxbfamily}{\fontencoding{U}\fontfamily{mathb}\selectfont}
\DeclareFontFamily{U}{mathb}{\hyphenchar\font45}
\DeclareFontShape{U}{mathb}{m}{n}{
      <5> <6> <7> <8> <9> <10> gen * mathb
      <10.95> mathb10 <12> <14.4> <17.28> <20.74> <24.88> mathb12
      }{}
\newcommand*{\Sun}{{\text{\mathabxbfamily\char"40}}}
\newcommand*{\Mercury}{{\text{\mathabxbfamily\char"41}}}
\newcommand*{\Venus}{{\text{\mathabxbfamily\char"42}}}
\newcommand*{\Earth}{{\text{\mathabxbfamily\char"43}}}
\newcommand*{\Mars}{{\text{\mathabxbfamily\char"44}}}
\newcommand*{\Jupiter}{{\text{\mathabxbfamily\char"45}}}
\newcommand*{\Saturn}{{\text{\mathabxbfamily\char"46}}}
\newcommand*{\Uranus}{{\text{\mathabxbfamily\char"47}}}
\newcommand*{\Neptune}{{\text{\mathabxbfamily\char"48}}}
\newcommand*{\Pluto}{{\text{\mathabxbfamily\char"49}}}


%%% DATES

\usepackage[en-US]{datetime2}

%%% 

\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}
% \def\today{\ifcase\month\or
%   January\or February\or March\or April\or May\or June\or
%   July\or August\or September\or October\or November\or December\fi
%   \space \number\year}

\usepackage{pdfpages}
\usepackage{setspace}
\onehalfspacing
% \setlength{\parindent}{0pt}
\setlength{\parindent}{3.0ex}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}
\usepackage{vmargin}
\setmarginsrb           { 1.5in}  % left margin
                        { 0.6in}  % top margin
                        { 1.0in}  % right margin
                        { 0.8in}  % bottom margin
                        {  20pt}  % head height
                        {0.25in}  % head sep
                        {   9pt}  % foot height
                        { 0.3in}  % foot sep
\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never break footnotes.
\usepackage{fancyhdr}
\lhead[\rm\thepage]{\fancyplain{}{\sl{\rightmark}}}
\rhead[\fancyplain{}{\sl{\leftmark}}]{\rm\thepage}
\chead{}\lfoot{}\rfoot{}\cfoot{}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\btypeout{\thechapter\space #1}\markboth{\@chapapp\ \thechapter\ #1}{\@chapapp\ \thechapter\ #1}}
\renewcommand{\sectionmark}[1]{}
\renewcommand{\subsectionmark}[1]{}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace}
\theoremstyle{plain}
\newtheorem{example}{Example}[chapter]
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{axiom}[theorem]{Axiom}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}
\usepackage[centerlast,small,sc,singlelinecheck=false,justification=raggedright]{caption}
\setlength{\captionmargin}{20pt}
\captionsetup[figure]{labelfont=bf}
\newcommand{\fref}[1]{Figure~\ref{#1}}
\newcommand{\tref}[1]{Table~\ref{#1}}
\newcommand{\eref}[1]{Equation~\ref{#1}}
\newcommand{\cref}[1]{Chapter~\ref{#1}}
\newcommand{\sref}[1]{Section~\ref{#1}}
\newcommand{\aref}[1]{Appendix~\ref{#1}}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{.75}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}
\usepackage{graphicx}
\usepackage{epstopdf}
\usepackage[scriptsize]{subfigure}
\usepackage{booktabs}
\usepackage{rotating}
\usepackage{listings}
\usepackage{lstpatch}
\lstset{captionpos=b,
        frame=tb,
        basicstyle=\scriptsize\ttfamily,
        showstringspaces=false,
        keepspaces=true}
\lstdefinestyle{matlab} {
        language=Matlab,
        keywordstyle=\color{blue},
        commentstyle=\color[rgb]{0.13,0.55,0.13}\em,
        stringstyle=\color[rgb]{0.7,0,0} }
\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   colorlinks,linkcolor={NavyBlue},citecolor={NavyBlue},urlcolor={NavyBlue},
   pdfstartview={FitV},unicode,breaklinks=true]{hyperref}
\pdfstringdefDisableCommands{
   \let\\\space
}
\newcommand*{\supervisor}[1]{\def\supname{#1}}
\newcommand*{\examiner}[1]{\def\examname{#1}}
\newcommand*{\degree}[1]{\def\degreename{#1}}
\newcommand*{\authors}[1]{\def\authornames{#1}}
\newcommand*{\addresses}[1]{\def\addressnames{#1}}
\newcommand*{\university}[1]{\def\univname{#1}}
\newcommand*{\UNIVERSITY}[1]{\def\UNIVNAME{#1}}
\newcommand*{\school}[1]{\def\schoolname{#1}}
\newcommand*{\gradtime}[1]{\def\gradtime{#1}}
\newcommand*{\SCHOOL}[1]{\def\SCHOOLNAME{#1}}
\newcommand*{\group}[1]{\def\groupname{#1}}
\newcommand*{\GROUP}[1]{\def\GROUPNAME{#1}}
\newcommand*{\department}[1]{\def\deptname{#1}}
\newcommand*{\DEPARTMENT}[1]{\def\DEPTNAME{#1}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}
\supervisor  {Rory Smith}
\examiner    {}
\degree      {Doctor of Philosophy}
\authors     {Avi Vajpeyi}
\university  {\texorpdfstring{\href{https://www.monash.edu/}
                {Monash University}}
                {Monash University}}
\UNIVERSITY  {\texorpdfstring{\href{https://www.monash.edu/}
                {Monash University}}
                {Monash University}}
\school  {\texorpdfstring{\href{https://research.monash.edu/en/organisations/school-of-physics-and-astronomy}
                {School of Physics and Astronomy}}
                {School of Physics and Astronomy}}
\SCHOOL  {\texorpdfstring{\href{https://research.monash.edu/en/organisations/school-of-physics-and-astronomy}
                {School of Physics and Astronomy}}
                {School of Physics and Astronomy}}
\group       {\texorpdfstring{\href{Research Group Web Site URL Here (include http://)}
                {Research Group Name}}
                {Research Group Name}}
\GROUP       {\texorpdfstring{\href{Research Group Web Site URL Here (include http://)}
                {RESEARCH GROUP NAME (IN BLOCK CAPITALS)}}
                {RESEARCH GROUP NAME (IN BLOCK CAPITALS)}}
\department     {\texorpdfstring{\href{Department Web Site URL Here (include http://)}
                {Department Name}}
                {Department Name}}
\DEPARTMENT     {\texorpdfstring{\href{Department Web Site URL Here (include http://)}
                {DEPARTMENT NAME (IN BLOCK CAPITALS)}}
                {DEPARTMENT NAME (IN BLOCK CAPITALS)}}
\addresses   {}
\subject     {}
\keywords    {}

\renewcommand\maketitle{
  \btypeout{Title Page}
  \hypersetup{pdftitle={\@title}}
  \hypersetup{pdfsubject=\subjectname}
  \hypersetup{pdfauthor=\authornames}
  \hypersetup{pdfkeywords=\keywordnames}
  \thispagestyle{empty}
  \begin{titlepage}
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \setcounter{footnote}{0}
    \null\vfil
    \vskip 0\p@
    \begin{center}
      \setlength{\parskip}{0pt}
      %
      %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
      % Comment \includegraphics line out!!
      %
      {\includegraphics[width=1\textwidth]{figures/monash-logo.jpg} \par}
      %
      %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
      %
      \vfill
      {\huge \bf \@title \par}

      \smallskip
      {\LARGE \authornames \par}
      \smallskip
      Doctor of Philosophy
      \vfill
      \vfill
      {\large A Thesis Submitted for the Degree of Doctor of Philosophy at \par}
       {\large\textbf{\UNIVNAME} in \gradtime \par}
      {\large \schoolname \par}

      \bigskip
      \bigskip
      \bigskip
    %   {\Large \@date \par}
      \bigskip
    \end{center}
    \par
    \@thanks
    \vfil\null
  \end{titlepage}
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \cleardoublepage
}
% \newenvironment{abstractenv}
% {
%   \btypeout{Abstract Page}
%   \thispagestyle{empty}
% %   \null\vfil
% \textbf{Abstract}
%   \begin{center}
%     \setlength{\parskip}{0pt}
%     {\normalsize \UNIVNAME \par}
%     \bigskip
%     {\huge{\textit{Abstract}} \par}
%     \bigskip
%     {\normalsize \deptname \par}
%     {\normalsize \schoolname \par}
%     \bigskip
%     {\normalsize Doctor of Philosophy\par}
%     \bigskip
%     {\normalsize\bf \@title \par}
%     \medskip
%     {\normalsize by \authornames \par}
%     \bigskip
%   \end{center}
% }
% {
%   \vfil\vfil\vfil\null
%   \cleardoublepage
% }
\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{6}
\newcounter{dummy}
\newcommand\addtotoc[1]{
\refstepcounter{dummy}
\addcontentsline{toc}{chapter}{#1}}
\renewcommand\tableofcontents{
\btypeout{Table of Contents}
\begin{spacing}{0.9}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
    \@starttoc{toc}
    \if@restonecol\twocolumn\fi
   \cleardoublepage
}\end{spacing}
}
\renewcommand\listoffigures{
\btypeout{List of Figures}
\addtotoc{List of Figures}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}
              {\MakeUppercase\listfigurename}}
    \@starttoc{lof}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\renewcommand\listoftables{
\btypeout{List of Tables}
\addtotoc{List of Tables}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename
      \@mkboth{
          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}
    \@starttoc{lot}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\newcommand\listsymbolname{Abbreviations}
\usepackage{longtable}
\newcommand\listofsymbols[2]{
\btypeout{\listsymbolname}
\addtotoc{\listsymbolname}
    \chapter*{\listsymbolname
      \@mkboth{
          \MakeUppercase\listsymbolname}{\MakeUppercase\listsymbolname}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\listconstants{Constants}
\usepackage{longtable}
\newcommand\listofconstants[2]{
\btypeout{\listconstants}
\addtotoc{\listconstants}
    \chapter*{\listconstants
      \@mkboth{
          \MakeUppercase\listconstants}{\MakeUppercase\listconstants}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\listnomenclature{Symbols}
\usepackage{longtable}
\newcommand\listofnomenclature[2]{
\btypeout{\listnomenclature}
\addtotoc{\listnomenclature}
    \chapter*{\listnomenclature
      \@mkboth{
          \MakeUppercase\listnomenclature}{\MakeUppercase\listnomenclature}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}

\newcommand\ack[1]{
\btypeout{Acknowledgements}
\addtotoc{Acknowledgements}
\thispagestyle{plain}
% \null\vfil
%\vskip 60\p@
{\noindent \bf{Acknowledgements}}
%\vskip 60\p@
{\normalsize #1}
\vfil\vfil\null
%\cleardoublepage
}


\newcommand\dedicatory[1]{
\btypeout{Dedicatory}
\thispagestyle{plain}
\null\vfil
\vskip 60\p@
\begin{center}{\Large \sl #1}\end{center}
\vfil\null
\cleardoublepage
}
\renewcommand\backmatter{
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \addtotoc{\bibname}
  \btypeout{\bibname}
  \@mainmatterfalse}
\endinput
%%



%% End of file `Thesis.cls'.



