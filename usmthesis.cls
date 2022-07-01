%% usmthesis.cls 2016/12/08 version V1.7.
%% Copyright (c) 2005-2016 by Lim Lian Tze (OH MY GOODNESS HAS IT BEEN THAT LONG)
%% Current maintainer: Lim Lian Tze (liantze@gmail.com)
%
%% This is an unofficial USM thesis LaTeX class for postgraduate research
%% students of Universiti Sains Malaysia, Penang, Malaysia, formatted
%% according to the Guide to the Preparation, Submission and Examination
%% of Theses, published by IPS USM. It can be obtained at
%% http://liantze.penguinattack.org/latextypesetting.html#usmthesis (I will
%% likely withdraw it at any time if there continues to be frequent,
%% inconsistent and undocumented changes, until a formal, updated guidleines
%% is published.)
%%
%% IMPORTANT MESSAGE (Dec 2016)
%% Due to the recent numerous changes requested by IPS, USM to different
%% candidates -- often conflicting even within the same week -- without much
%% consistency nor in black in white, I have found it increasingly difficult
%% to maintain a coherent version. I have therefore decided to provide some
%% options that seem to be favored by IPS on different occasions; but will no
%% longer update the template until an updated formatting guidelines with clear
%% instructions and concrete samples is published.
%%
%% THERE WILL BE NO FURTHER UPDATES UNTIL IPS, USM PUBLISHES AN OFFICIAL
%% UPDATED FORMATTING GUIDELINES WITH CONCRETE, CLEAR INSTRUCTIONS.
%%
%% Individual requests for help to modify this version for your needs will be
%% handled on a case by case basis, depending on my mood, perhaps for a fee.
%% Requests for help to modify past versions will NOT be entertained.
%% Please read http://tex.my/how-to-ask-for-latex-related-help-effectively/.
%%
%% (Yes I'm that tired and frustrated. I know everyone just want to graduate,
%% but I am by now genuinely put off by the tone of some requests with rude
%% attitudes, unclear descriptions, flip-flopping conditions, etc for something
%% that was originally for my own use.)
%%
%% Submit a git pull request on https://github.com/liantze/usmthesis
%% if you wish to contribute your changes. No timeframe is set for approvals.
%% I cannot check through any edited usmthesis.cls of any version without
%% CVS.
%%
%% Usmthesis _was_ fun; but it has ceased to be so for me.
%%
%% Oh and if you'd like to adapt this template (the .cls and/or the .tex) for
%% your institution, that's perfectly fine, but at least keep the license
%% (LPPL 1.3) and the original author (me) won't you? It's just normal decency.
%% THANK you. :-)
%%
%%
%  BRIEF CHANGELOG
%  ===============
% v1.7  Dec 08 2016
%     - FINAL UPDATE BEFORE v2.0, which will only be possible when IPS
%       officially publishes the updated formatted guidelines and samples, and
%       if there is any real interest for a new version at all.
%     - Added a bunch of new document class options that you can mix and match
%       to appease IPS' various combinations of requirements. PLEASE READ THE
%       COMMENTS AT THE TOP AND THROUGHOUT usmthesis.tex.
%
% v1.67 Oct 05 2016
%     - Refactored code in .cls.
%     - Chapter heading spacing should be more consistent now.
%     - Multiline figure and table captions should now have page numbers aligned
%       with first line. (Not fixed for chapter/section headings; IMHO these
%       should be kept short.)
%     - Added some examples to usmthesis.tex to handle cases when IPS requests
%       for no page numbers/no ToC entries for appendices etc.
%
% v1.66 Apr 13 2016
%     - First pages of appendix chapters don't have footers now.
%
% v1.65 Mar 22 2016
%     - Titles on cover/title pages now double-spaced
%
% v1.64 Mar 20 2016
%     - First paragraphs after each sectional heading is
%       now indented
%
% v1.63 Mar 3 2016
%     - Moved List of Publications to after Appendices
%     - References heading has 5cm top margin
%
% v1.62 Feb 17 2016
%     - Turn off page numbering for appendices in the ToC
%     - Appendix chapters are un-bold in the ToC now
%
% v1.61 Sep 22 2015
%     - Abstract titles are now 12pt (irrespective of the font being used)
%     - Default bibliography style is now APA
%       (with \RequirePackage[natbibapa]{apacite})
%
% v1.6 Aug 21 2015
%     - (Based on feedback from Puan Nurul Hasyda of IPS)
%     - Chapters are now in bold in the TOC.
%     - Eliminated vertical spaces at the top and bottom of cover and
%       title page.
%     - Apparently if using Times, must be in 12pt. So no more 11pt,
%       12pt choices. But sans serif (Arial) is allowed again, but must
%       be at 11pt.
%     - Instead, the "times" option loads mathptmx 12pt as body font,
%       and "arial" option loads "helvet" 11pt as body font.
%
% v1.5 Apr 16 2015
%     - Thesis titles in abstracts are now double-spaced if >1 lines, and
%       are smaller than the "Abstract"/"Abstrak" keywords.
%
% v1.4 Apr 14 2015
%     - Now works with updated acronym package.
%     - Finally using bahasam babel option (and removed the french language,
%       couldn't remember why I didn't remove it after some personal tests).
%     - Page numbers in content lists are now unbold (requested by IPS).
%
% v1.3 May 12 2012
%     - Refined spacing in bibliography list and after chapter heading
%     - Fixed font size in cover (from 17pt to 18pt)
%     - User can now specify preferred document body font size (11pt or 12pt)
%        as a class option. The default is 11pt.
%     - Changed font sizes of section, subsection headings to \normalsize.
%
%  v1.2 Nov 15 2007
%     - New thesis format in force as of 16 November 2007!
%     - There is now no times, helvet or cm options. Body font is now
%       Times Roman for serif type, Helvetica for sans serif type, and
%       TX Typewriter for typewriter font.
%     - Bottom page margin increased to 4.0cm.
%     - Page number now placed 1.0cm from botom edge of paper.
%     - All text on title page are now in bold.
%     - Title of bibliography/references is now "REFERENCES".
%     - Introduced new "plate" float and "List of Plates".
%     - List of Publications is now moved to *after* appendices.
%     - Re-formatting of the table of contents:
%       * all text are unformatted (chapter headings are neither in bold nor
%         using larger font size)
%       * dotted leader between titles and page number
%       * larger separation between (sub)section numbers and titles to resemble
%         the sample in the guidelines more closely
%     - Fixed bug in definition of \chapter to honour short title in
%       \chapter[short title]{full title}
%
%  v1.1 May 20 2007
%     - re-definition of \chapter, therefore eliminating the need for \mychapter.
%       Various GUI LaTeX editors will now recognise the chapter divisions.
%     - added \RequirePackage[T1]{fontenc}.
%     - updated quickstart.tex: removed note about \mychapter.
%
%  v1.0 June 1 2006
%     - usmthesis is now provided as a document class (usmthesis.cls).
%     - introduced class options for:
%         * body font scheme (on suggestion by Dr Dhanesh)
%         * style of URLs
%         * whether figures are framed by default (on feedback from Anusha and
%           Seng Soon).
%     - updated usmthesis.tex to describe how to do common tasks in LaTeX
%     - new quickstart.tex to describe how to use usmthesis.cls and accompanying
%       template files.
%
%  v0.1 Nov 29 2005
%     - first stab at usmthesis as a package (usmthesis.sty).
%
%
% Available class options
% (e.g., \documentclass[urlsf,boxfig,txtt]{usmthesis}
%
%             *** choose only one from each category ***
%
% urlrm, urlsf, urltt
%   determines the font family to be used for typesetting URLs -- You may
%   want to select one that shows up URLs clearly with respect to the main
%   thesis font that you chose.  urlrm will cause URLs to be typeset with a
%   serif font (CM Roman or Times Roman); urlsf with a sans serif
%   font (CM Serif or Helvetica); and urltt with a typewriter font (CM
%   Typewriter or Courier).
%   The default is urltt.
%
% boxfig, noboxfig
%   determines if figures will have a visible bounding box.
%
%   The default is noboxfig.
%
% ....and a bunch of other options that I don't feel like documenting :-/
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{usmthesis}[2016/12/07 version 1.7]

\RequirePackage{silence}
\WarningFilter{float}{Can't redefine}

% switches for URL font
\newif\if@urltt
\newif\if@urlsf
\newif\if@urlrm

% switch for border around figures
\newif\if@boxfig

% Added August 2015: times or arial as thesisfont
\newif\if@timesthesis
\DeclareOption{times}{\@timesthesistrue}
\DeclareOption{arial}{\@timesthesisfalse}

% Added December 2016 to cater for IPS flip-flopping conditions
\newif\if@singlespacetitle
\newif\if@tocCAPSref
\newif\if@tocCAPSfront
\newif\if@tocCAPSapp
\newif\if@chapnumwords
\newif\if@tocchapnumwords
\newif\if@tocpage
\newif\if@lotpage
\newif\if@lofpage
\newif\if@loppage
\DeclareOption{tocCAPSref}{\@tocCAPSreftrue}
\DeclareOption{tocCAPSfront}{\@tocCAPSfronttrue}
\DeclareOption{tocCAPSapp}{\@tocCAPSapptrue}
\DeclareOption{chapnumwords}{\@chapnumwordstrue}
\DeclareOption{tocchapnumwords}{\@tocchapnumwordstrue}
\DeclareOption{tocpage}{\@tocpagetrue}
\DeclareOption{lotpage}{\@lotpagetrue}
\DeclareOption{lofpage}{\@lofpagetrue}
\DeclareOption{loppage}{\@loppagetrue}


\DeclareOption{urltt}{\@urltttrue\@urlrmfalse\@urlsffalse}
\DeclareOption{urlsf}{\@urlsftrue\@urlttfalse\@urlrmfalse}
\DeclareOption{urlrm}{\@urlrmtrue\@urlttfalse\@urlsffalse}

\DeclareOption{boxfig}{\@boxfigtrue}
\DeclareOption{noboxfig}{\@boxfigfalse}

%\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\DeclareOption{10pt}{\OptionNotUsed}
\DeclareOption{11pt}{\OptionNotUsed}
\DeclareOption{12pt}{\OptionNotUsed}
%\DeclareOption{11pt}{\PassOptionsToClass{\CurrentOption}{book}}
%\DeclareOption{12pt}{\PassOptionsToClass{\CurrentOption}{book}}

\ExecuteOptions{times,urltt,noboxfig}
\ProcessOptions

\RequirePackage{xpatch}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Sets up the fonts: Load the Times, Helvetica and
%% Courier (or TX Typewriter) fonts for serif, sans serif
%% and typewriter respectively.
%% (Helvetica is loaded in lieu of Arial, which is
%% commercial.)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% \RequirePackage{mathptmx}
\RequirePackage{helvet}
\RequirePackage{textcase}
\renewcommand{\ttdefault}{lmtt}

\if@timesthesis
  \LoadClass[a4paper,oneside,12pt]{book}
\else
  \LoadClass[a4paper,oneside,11pt]{book}
  \renewcommand\familydefault{\sfdefault}
\fi
\normalsize

\RequirePackage{ifpdf}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Page Boundaries and graphics
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{graphicx}
\RequirePackage[a4paper,top=30mm,bottom=35mm,left=35mm,right=20mm,footskip=15mm]{geometry}
% \RequirePackage[a4paper,top=20mm,bottom=20mm,left=30mm,right=25mm,footskip=15mm]{geometry}

\ifpdf\pdfcompresslevel=9\else\fi

\RequirePackage[listofformat=parens]{subfig}
%\RequirePackage{subfigure}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% When "bahasa" is specified last, all the sectioning
% commands become Malay e.g. "Bab",
% "Dafter Isi" etc.  "english" is the main language
% here. Babel now supports bahasam.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage[utf8]{vietnam}
\usepackage{setspace}
\RequirePackage[bahasam,english]{babel}

% \RequirePackage{scrlfile}                       % Prevent svg (<2.0) package 
% \PreventPackageFromLoading{subfig}              % from loading subfig.
                                                % See also iss. #13

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Default spacing is double.  In your actual content,
% whenever you need a paragraph to be single-spaced,
% do this:
%
% \begin{singlespace}
% This is your paragraph using single-spacing.
% \end{singlespace}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{caption}
\captionsetup{font={stretch=1.5}}
\captionsetup[table]{position=bottom} 
% \captionsetup{textfont={it},font={stretch=1.5}}

\RequirePackage{setspace}
\linespread{1.5}
\setlength{\parindent}{0em}
\setlength\parskip{0.6em}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% These packages will help you in typesetting
% mathematical symbols, formulae and equations.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{amsmath,amssymb,textcomp}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% My new define commands (NVTu)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% For including the TOC in the TOC.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{tocbibind}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% For formatting coutners/numbers as words.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{fmtcount}
\newcommand{\formatchapnum}[1]{\NUMBERstring{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Formatting of the various sectioning headings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{titlesec}
% chapters
%% Aug 2015: Chapter heading sizes must be FIXED at 14pt, according to IPS.
\titleformat{\chapter}[display]
{\filcenter\bfseries}
{\fontsize{14pt}{16pt}\selectfont\MakeTextUppercase{\chaptername{}\space%
 \if@chapnumwords\formatchapnum{chapter}%
 \else\thechapter\fi}}
{-1em}
{\begingroup\singlespacing\bfseries\fontsize{14pt}{16pt}\selectfont\MakeTextUppercase}
[\endgroup]

%\titlespacing*{\chapter}{0pt}{*-4.5}{*6}
\titlespacing*{\chapter}{0pt}{-50pt}{\baselineskip}
% section e.g. 4.1
\titleformat{\section}[hang]{\bfseries\normalsize}{\thesection}{6pt}{}
\titlespacing*{\section}{0pt}{*2}{*1}
% subsection e.g. 4.1.1
\titleformat{\subsection}[hang]{\bfseries\normalsize}{\thesubsection}{6pt}{}
\titlespacing*{\subsection}{0pt}{*2}{*1}
% subsubsection e.g. 4.1.1(a)
% \renewcommand\thesubsubsection{\thesubsection(\alph{subsubsection})}
\titleformat{\subsubsection}[hang]{\bfseries}{\thesubsubsection}{6pt}{}
\titlespacing*{\subsubsection}{0pt}{*2}{*1}
%% 20 Mar 2016: first paragraphs need to be indented
\RequirePackage{indentfirst}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Formatting of the TOC, LOF and LOT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[titles,subfigure]{tocloft}
\setcounter{lofdepth}{2}
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}

% Introducing: List of Plates
\newcommand{\listplatename}{List of Plates}
\newlistof[chapter]{plate}{lop}{\listplatename}
\newcommand\listofplates{\begingroup
\tocfile{\listplatename}{lop}
\endgroup}

\renewcommand\cftdotsep{1}
\cftsetrmarg{2.6pc plus1fil}
\cftsetpnumwidth{2pc}

\pretocmd{\@starttoc}{\begingroup\singlespacing}{}{}
\apptocmd{\@starttoc}{\endgroup}{}{}

\setlength\cftbeforepartskip{\baselineskip}
\setlength\cftbeforechapskip{\baselineskip}
\setlength\cftbeforesecskip{\baselineskip}
\setlength\cftbeforesubsecskip{\baselineskip}
\setlength\cftbeforesubsubsecskip{\baselineskip}
\setlength\cftbeforefigskip{\baselineskip}
\setlength\cftbeforesubfigskip{\baselineskip}
\setlength\cftbeforetabskip{\baselineskip}
\setlength\cftbeforeplateskip{\baselineskip}

\cftsetindents{sec}{0pt}{2.5pc}
\cftsetindents{subsec}{2.5pc}{3.05pc}
\cftsetindents{subsubsec}{5.45pc}{4.05pc}

\renewcommand\cftpartfont{}
\renewcommand\cftpartpagefont{\normalfont\normalsize}
\renewcommand\cftpartdotsep{1}
\renewcommand\cftpartleader{\normalfont\cftdotfill{\cftpartdotsep}}

\renewcommand\cftchapfont{}
\renewcommand\cftchappagefont{\normalfont\normalsize}
\renewcommand\cftchapdotsep{1}
\renewcommand\cftchapleader{\normalfont\cftdotfill{\cftchapdotsep}}
\renewcommand\cftchappresnum{\MakeTextUppercase{Chapter} }
\if@tocchapnumwords
\renewcommand\cftchapaftersnum{:\space}
\else
\renewcommand\cftchapaftersnum{\space\;--\;}
\fi
\newlength\tmplength

\renewcommand\cftfigpresnum{Figure }
\cftsetindents{fig}{0pt}{6.2pc}
\renewcommand\cftfigdotsep{\cftnodots}
%\renewcommand\cftfigpagefont{\bfseries}

\renewcommand\cftsubfigpresnum{Figure }
\cftsetindents{subfig}{0pt}{6.2pc}
\renewcommand\cftsubfigleader{\hfill}
%\renewcommand\cftsubfigpagefont{\bfseries}
%\renewcommand\cftfigfont{\mdseries\justifying}

\renewcommand\cfttabpresnum{Table }
\cftsetindents{tab}{0pt}{6.2pc}
\renewcommand\cfttabdotsep{\cftnodots}
%\renewcommand\cfttabpagefont{\bfseries}

\renewcommand\cftplatepresnum{Plate }
\cftsetindents{plate}{0pt}{6.2pc}
\renewcommand\cftplatedotsep{\cftnodots}
%\renewcommand\cftplatepagefont{\bfseries}

%% Oct '16: So in case of multiline entries in the content lists, it looks like IPS
%% might be wanting the page number to align with the _first_ line.
%%
\RequirePackage{varwidth}
\DeclareRobustCommand{\vw}[2]{%
  \begin{varwidth}[t]{#1\linewidth}\strut#2\unskip\nobreak\strut%
  \end{varwidth}%
}

%\renewcommand\cftfigfont{\singlespacing}
\renewcommand{\cftfigaftersnumb}{\vw{0.7}}
\renewcommand{\cftsubfigaftersnumb}{\vw{0.7}}
\renewcommand{\cfttabaftersnumb}{\vw{0.7}}
\renewcommand{\cftsubtabaftersnumb}{\vw{0.7}}
\renewcommand{\cftplateaftersnumb}{\vw{0.7}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Header and Footer formatting: empty header, and
% page number at the bottom center.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pagestyle{plain}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% For customising floats
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{rotfloat}
\floatstyle{plaintop}\restylefloat{table}
\if@boxfig\floatstyle{boxed}\else\floatstyle{plain}\fi
\restylefloat{figure}

\newfloat{plate}{htbp}{lop}[chapter]
\floatname{plate}{Plate}
\floatstyle{plain}\restylefloat{plate}
\def\theHplate{\arabic{plate}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% For customising lists
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{enumitem}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This package will help you in typesetting urls!
% If you just type a URL like
%    http://cs.usm.my/~abc/cgi/index.php?q=bye%20%bye
% something is going to get VERY wrong sooner or later.
% Typeset your URL like this instead:
% \url{http://cs.usm.my/~abc/cgi/index.php?q=bye%20%bye}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{url}
\if@urlrm\urlstyle{rm}\else\if@urltt\urlstyle{tt}\else\urlstyle{sf}\fi\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% For typesetting the list of abbreviations and maybe help
% control their expansion in the text.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{acronym}
\renewcommand*{\acfsfont}[1]{\rmfamily #1}
\renewcommand*{\acsfont}[1]{\rmfamily #1}
\renewcommand*{\acffont}[1]{\rmfamily #1}

%% Apr 14, 2015: cater for new acronym.sty
%% Sep 10, 2015: make everything backward compatible
\@ifpackagelater{acronym}{2014/08/01}
{%
  % New acronym.sty works with the following
  \renewcommand*{\aclabelfont}[1]{\textbf{\acsfont{#1}}}
}
{%
  \renewenvironment{AC@deflist}[1]%
    {\ifAC@nolist%
     \else%
        \raggedright\begin{list}{}%
            {\settowidth{\labelwidth}{\textbf{\textrm{#1}}}%
            \setlength{\leftmargin}{\labelwidth}%
            \addtolength{\leftmargin}{\labelsep}%
            \renewcommand{\makelabel}{\bflabel}}%
      \fi}%
    {\ifAC@nolist%
     \else%
        \end{list}%
     \fi}
}%

\patchcmd{\AC@deflist}{\setlength{\leftmargin}{\labelwidth}}
{\setlength{\leftmargin}{\labelwidth}\setlength\itemsep{0pt}}
{}{}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Table-related packages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{tabularx,colortbl,dcolumn}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 22 Sep 2015: Loads apacite by default
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[numbers]{natbib}
% \RequirePackage{natbib}
% \RequirePackage[natbibapa]{apacite}
% \setlength\bibsep{1em}
% \setlength\bibhang{1.5em}
% \renewcommand\bibfont{\singlespacing}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Multiple bibliographics, used to hack up a list of
% own publications
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[resetlabels]{multibib}

%% Title of the thesis in Malay
\def\titlems#1{\gdef\@titlems{#1}}
\def\@titlems{\@latex@warning@no@line{No \noexpand\titlems given}}

%professor
\def\lecturer#1{\gdef\@lecturer{#1}}
\def\@lecturer{\@latex@warning@no@line{No \noexpand\lecturer given}}

%% Degree type: MSc or PhD
\def\degreetype#1{\gdef\@degreetype{#1}}
\def\@degreetype{\@latex@warning@no@line{No \noexpand\degreetype given}}

%% Month and year in which thesis was submitted
\def\submitmonth#1{\gdef\@submitmonth{#1}}
\def\@submitmonth{\@latex@warning@no@line{No \noexpand\submitmonth given}}
\def\submityear#1{\gdef\@submityear{#1}}
\def\@submityear{\@latex@warning@no@line{No \noexpand\submityear given}}

%% Oct 2016: Use \xpatchcmd to do a cleaner job at capitalising the chapter titles
\let\old@chapter\@chapter
\if@tocchapnumwords%
\patchcmd{\l@chapter}% <cmd>
  {\leavevmode}% <search>
  {\leavevmode%
   \renewcommand{\numberline}[1]{\hbox{\@cftbsnum ##1\@cftasnum}\@cftasnumb}}% <replace>
  {}{}% <success><failure>
\xpatchcmd{\@chapter}{\numberline{\thechapter}#1}
  {\numberline{\texorpdfstring{\expandafter\formatchapnum{chapter}}{\thechapter}}\texorpdfstring{\MakeTextUppercase{#1}}{#1}}
  {}{\PackageWarning{usmthesis}{Couldn't patch chapter.}}
\else
\xpatchcmd{\@chapter}{\numberline{\thechapter}#1}
  {\numberline{\thechapter}\texorpdfstring{\MakeTextUppercase{#1}}{#1}}
  {}{\PackageWarning{usmthesis}{Couldn't patch chapter.}}
\fi

\xpatchcmd{\@chapter}{\addcontentsline{toc}{chapter}{#1}\fi\chaptermark{#1}}
  {\addcontentsline{toc}{chapter}{\texorpdfstring{\MakeTextUppercase{#1}}{#1}}\fi\chaptermark{#1}}
  {}{\PackageWarning{usmthesis}{Couldn't patch chapter.}}

\xpatchcmd{\@chapter}{\@makechapterhead{#2}}
  {\@makechapterhead{\texorpdfstring{\MakeTextUppercase{#2}}{#1}}}
  {}{\PackageWarning{usmthesis}{Couldn't patch chapter.}}

\xpatchcmd{\@chapter}{\addtocontents{lof}{\protect\addvspace{10\p@}}}
  {}{}{\PackageWarning{usmthesis}{Couldn't patch chapter.}}

\xpatchcmd{\@chapter}{\addtocontents{lot}{\protect\addvspace{10\p@}}}
  {}{}{\PackageWarning{usmthesis}{Couldn't patch chapter.}}


%% Creates the first two cover pages

%% Creates the first two cover pages
\newcommand\makecover{%
\begin{titlepage}
\begin{tikzpicture}[remember picture, overlay]
  \draw[line width = 1pt] ($(current page.north west) + (1.2in,-1in)$) rectangle ($(current page.south east) + (-0.7in,1in)$);
\end{tikzpicture}
\fontfamily{phv}\selectfont
\centering\fontsize{14pt}{16pt}\selectfont\bfseries%
%\vspace*{10mm}
%

UNIVERSITY OF SCIENCE \\
FACULTY OF INFORMATION TECHNOLOGY \\
HONORS PROGRAM \\
\vspace*{70pt}

\fontsize{14pt}{16pt}\selectfont
\MakeTextUppercase{PHẠM MINH KHÔI - NGUYỄN HỒ THĂNG LONG}

\vspace*{80pt}
\begingroup
\if@singlespacetitle\singlespacing\fi
\fontsize{20pt}{28pt}\selectfont%
\MakeTextUppercase{\@title}\par
\endgroup
%
\vspace*{70pt}

\begingroup
\fontsize{14pt}{16pt}\selectfont%
\MakeTextUppercase{\@degreetype}\par
\endgroup

\vspace*{160pt}
HO CHI MINH CITY, \@submityear\par
%
%\vspace*{20mm}
\end{titlepage}


\thispagestyle{empty}{
\begin{tikzpicture}[remember picture, overlay]
  \draw[line width = 1pt] ($(current page.north west) + (1.2in,-1in)$) rectangle ($(current page.south east) + (-0.7in,1in)$);
\end{tikzpicture}
\centering\bfseries
%\vspace*{15mm}
\fontfamily{phv}\selectfont
\begingroup
\fontsize{14pt}{16pt}\selectfont%
UNIVERSITY OF SCIENCE \\
FACULTY OF INFORMATION TECHNOLOGY \\
HONORS PROGRAM \\
\endgroup

\vspace*{70pt}

\renewcommand{\baselinestretch}{1} 
\begingroup
\fontsize{14pt}{26pt}\selectfont
{\setstretch{1}\@author} \par
\endgroup

\vspace*{80pt}

\begingroup
\if@singlespacetitle\singlespacing\fi
\fontsize{20pt}{28pt}\selectfont
\MakeTextUppercase{\@title}\par
\endgroup

\vspace*{70pt}

\begingroup
\fontsize{14pt}{16pt}\selectfont%
\MakeTextUppercase{\@degreetype}\par
\endgroup

\vspace*{100pt}

\begingroup
\fontsize{14pt}{16pt}\selectfont%
\begin{spacing}{1.5}
THESIS ADVISORS:\\ \@lecturer \par
\end{spacing}
\endgroup

\vspace*{50pt}

\begingroup
\fontsize{14pt}{16pt}\selectfont
ACADEMIC YEAR 2017-2021
\endgroup

\newpage
%\vspace*{20mm}
}

\clearpage}

% \newcommand\makecover{%
% \begin{titlepage} \centering\fontsize{18pt}{20pt}\selectfont\bfseries%
% %\vspace*{10mm}
% %
% \begingroup
% \if@singlespacetitle\singlespacing\fi
% \fontsize{18pt}{20pt}\selectfont%
% \MakeTextUppercase{\@title}\par
% \endgroup
% %
% \vspace*{\stretch{1}}

% \MakeTextUppercase{\@author}\par

% \vspace*{\stretch{1}}

% Đại học khoa học tự nhiên\par

% \@submityear\par
% %
% %\vspace*{20mm}
% \end{titlepage}


% \thispagestyle{empty}{\centering\bfseries
% %\vspace*{15mm}

% \begingroup
% \if@singlespacetitle\singlespacing\fi
% \fontsize{18pt}{20pt}\selectfont
% \MakeTextUppercase{\@title}\par
% \endgroup

% \vspace*{\stretch{2}}

% \begingroup
% \fontsize{12pt}{14pt}\selectfont%
% by\par
% \endgroup

% \vspace*{\stretch{2}}

% \begingroup
% \fontsize{18pt}{20pt}\selectfont%
% \MakeTextUppercase{\@author}\par
% \endgroup

% \vspace*{\stretch{2}}

% \begingroup
% \singlespacing\fontsize{12pt}{14pt}\selectfont%
% Thesis submitted in fulfilment of the requirements\\
% for the degree of\\
% \@degreetype\par
% \endgroup

% \vspace*{\stretch{2}}

% \begingroup
% \fontsize{18pt}{20pt}\selectfont\@submitmonth \ \@submityear\par
% \endgroup

% %\vspace*{20mm}
% }
% \clearpage}

\newenvironment{ChapAbstract}{
    \begin{center}
    \begin{quote}\itshape
    }{
    \end{quote}
    \end{center}
}

%% English environment
\newenvironment{EnAbstract}{%
  \titlespacing*{\chapter}{0pt}{-50pt}{0pt}
  \titleformat{\chapter}[display]{\filcenter\bfseries}{\fontsize{12pt}{14pt}\selectfont\MakeTextUppercase{\chaptername{} \thechapter}}{-1em}{\linespread{2}\bfseries\fontsize{12pt}{14pt}\selectfont\MakeTextUppercase}
  \chapter[\abstractname]{Abstract}%
  %{\centering\fontsize{12pt}{14pt}\bfseries\selectfont ABSTRACT\\}
}{%
  \ignorespacesafterend%
}

%% Malay abstract environment
\newenvironment{MsAbstract}{%
  \titlespacing*{\chapter}{0pt}{-50pt}{0pt}
  \titleformat{\chapter}[display]{\filcenter\bfseries}{\fontsize{12pt}{14pt}\selectfont\MakeTextUppercase{\chaptername{} \thechapter}}{-1em}{\linespread{2}\bfseries\fontsize{12pt}{14pt}\selectfont\MakeTextUppercase}
  \begin{otherlanguage}{bahasam}%
  \chapter[\abstractname]{\@titlems}%
  {\centering\fontsize{12pt}{14pt}\bfseries\selectfont ABSTRAK\\}
}{%
  \end{otherlanguage}\ignorespacesafterend
}

\apptocmd{\frontmatter}{%
  \addtocontents{toc}{\protect\raggedright\protect\sloppy}
  \if@tocpage
  \addtocontents{toc}{\protect\hfill{\protect\bfseries Page}\\}
  \fi
  \addtocontents{lof}{\protect\raggedright\protect\sloppy}
  \if@lofpage
  \addtocontents{lof}{\protect\hfill{\protect\bfseries Page}\\}
  \fi
  \addtocontents{lot}{\protect\raggedright\protect\sloppy}
  \if@lotpage
  \addtocontents{lot}{\protect\hfill{\protect\bfseries Page}\\}
  \fi
  \addtocontents{lop}{\protect\raggedright\protect\sloppy}
  \if@loppage
  \addtocontents{lop}{\protect\hfill{\protect\bfseries Page}\\}
  \fi

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Inserts a "Front Matter" bookmark if using pdfLaTeX
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \ifpdf
      \pdfbookmark[-1]{Front Matter}{front}
  \else\fi
  \renewcommand{\thechapter}{\arabic{chapter}}
  \titlespacing*{\chapter}{0pt}{-32pt}{\baselineskip}
}{}{}

\pretocmd{\mainmatter}{%
  \addtocontents{toc}{\protect\setlength{\protect\cftbeforechapskip}{2\baselineskip}}
  \addtocontents{toc}{\protect\cftpagenumbersoff{chap}}
  \addtocontents{toc}{\protect\renewcommand\protect\cftchapfont{\protect\bfseries}}
  \settowidth{\tmplength}{\bfseries\MakeTextUppercase{\chaptername\space N}\cftchapaftersnum}
  \if@tocchapnumwords
    \addtocontents{toc}{\protect\setlength{\cftchapnumwidth}{0pt}}
  \else
    \addtocontents{toc}{\protect\setlength{\cftchapnumwidth}{\the\tmplength}}
  \fi
  \titlespacing*{\chapter}{0pt}{-50pt}{\baselineskip}
}{}{}

\apptocmd{\mainmatter}{
\ifpdf\pdfbookmark[-1]{Main Chapters}{main}\else\fi
}{}{}


\newcommand{\appendixtocname}{Appendices}
\pretocmd{\appendix}{%
  \clearpage
  \addtocontents{toc}{\protect\cftpagenumbersoff{part}}
  \addtocontents{toc}{\protect\cftpagenumbersoff{chapter}}
  \addtocontents{toc}{\protect\setlength{\protect\cftbeforechapskip}{\baselineskip}}
  \addtocontents{toc}{\protect\renewcommand\protect\cftchapfont{\protect\mdseries}}
  \phantomsection\addcontentsline{toc}{part}{\texorpdfstring{\bfseries\appendixtocname}{\appendixtocname}}
  \thispagestyle{empty}
  \vspace*{\stretch{1}}
    \begin{center}
      {\Huge\bfseries\MakeTextUppercase{\appendixtocname}}
    \end{center}
  \vspace*{\stretch{2}}
  \let\@chapter\old@chapter % Oct '16: restore old chapter
%  \addtocontents{toc}{\protect\renewcommand{\protect\chaptername}{\appendixname}}
  %\settowidth{\tmplength}{\bfseries\MakeTextUppercase{\appendixname}\space N\cftchapaftersnum}
  \addtocontents{toc}{\protect\renewcommand{\protect\cftchappresnum}{\protect\appendixname\protect\space}}
  \settowidth{\tmplength}{\bfseries\appendixname\space N\cftchapaftersnum}
  \addtocontents{toc}{\protect\setlength{\cftchapnumwidth}{\the\tmplength}}
  \renewcommand\chaptername{\appendixname}
  \patchcmd{\formatchapnum}{\NUMBERstring}{\Alph}{}{}
}{}{}

\if@tocCAPSfront
\renewcommand{\cftchapfont}{\bfseries}
\xpatchcmd{\@chapter}{\addcontentsline{toc}{chapter}{#1}}
  {\addcontentsline{toc}{chapter}{\texorpdfstring{\MakeTextUppercase{#1}}{#1}}}
  {}{\PackageWarning{usmthesis}{Couldn't patch front matter chapters}}
\addto\captionsenglish{
  \
  {TABLE OF CONTENTS}{Table of Contents}}
  \renewcommand\listfigurename{\texorpdfstring{LIST OF FIGURES}{List of Figures}}
  \renewcommand\listtablename{\texorpdfstring{LIST OF TABLES}{List of Tables}}
  \renewcommand\listplatename{\texorpdfstring{LIST OF PLATES}{List of Plates}}
  \renewcommand\abstractname{\texorpdfstring{ABSTRACT}{Abstract}}
}
\addto\captionsbahasam{
  \renewcommand\abstractname{\texorpdfstring{ABSTRAK}{Abstrak}}
}
\else
\addto\captionsenglish{
  \renewcommand\contentsname{Table of Contents}
}
\fi

\if@tocCAPSref
\AtBeginDocument{
  \renewcommand\bibname{\texorpdfstring{References}{References}}
}
\else
\AtBeginDocument{
  \renewcommand{\bibname}{References}
}
\fi

\if@tocCAPSapp
\AtBeginDocument{
  \renewcommand\appendixtocname{\texorpdfstring{APPENDICES}{Appendices}}
}
\fi

\endinput
