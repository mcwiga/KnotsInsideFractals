% Corporate beamer-template for KU Leuven en Kulak
% Stijn Rebry - september 2012
% Andries Vansweevelt - 2018 - aanpassing aan nieuwe huisstijl KU Leuven
% Eef Temmerman - 2020 - aanpassing aan breedbeeld
% Stijn Rebry - oktober 2021 verbeteren titelpagina
% Tips en hints voor een beter resultaat altijd welkom

% Deze template is gebaseerd op de lay-out van de beamer style beamerthemekuleuven2. Deze is te downloaden op https://www.kuleuven.be/communicatie/marketing/templates/presentatiemateriaal/index.html
% Niet alle opties van de beamerstyle worden in deze classfile geïmplementeerd.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{kulakbeamer}[2021/10/05 Beamer class for KU Leuven]
\DeclareOption*{\PassOptionsToClass{\CurrentOption, aspectratio=169, t}{beamer}}
\ProcessOptions\relax
\LoadClass{beamer}

%Fonts en encoding
%\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}
\RequirePackage{tikz}		
\RequirePackage{ifthen}				
\usetikzlibrary{shapes,shadows,arrows,backgrounds,mindmap,decorations.pathreplacing,positioning,calc}
\usetikzlibrary{decorations.pathmorphing}
\usetikzlibrary{fit}
\usetikzlibrary{shadows}

%%Kleuren
% Definitie oude kleuren
\definecolor{kulblauw}{RGB}{0,64,122}
\colorlet{kulblauw10} {kulblauw!10!white}
\definecolor{kulappelblauwzeegroen}{RGB}{20,116,146}
\colorlet{kulappelblauwzeegroen10} {kulappelblauwzeegroen!10!white}
\definecolor{kuloranje}{RGB}{245,131,87}
\colorlet{kuloranje10} {kuloranje!10!white}
\definecolor{kulgroen}{RGB}{82,189,236}
\colorlet{kulgroen10} {kulgroen!10!white}

%New Textbox

\definecolor{KUL_blue}{rgb}{0.11,0.55,0.69}
\definecolor{KUL_dark_blue}{rgb}{0.067, 0.431, 0.541}
\definecolor{KUL_light_blue}{rgb}{0.86, 0.91, 0.94}

\usepackage{tcolorbox}
\newtcolorbox{kulblock}[1]{
    before=\par\smallskip\centering,
	colback=KUL_light_blue,
	colbacktitle=KUL_blue,
	coltitle=white,
	coltext=KUL_dark_blue,
	colframe=KUL_blue,
	boxrule=1pt,
	%titlerule=0pt,
	arc=2pt,
	fonttitle=\bfseries,
	title={\strut#1}
}
\newtcolorbox{cbox}[1][]{
   before=\par\smallskip,
   #1
}

%Kleuren nieuwe stijl 2018: hoofdkleuren
\definecolor{KULblauw1}{RGB}{29,141,176} %Hoofdblauw nieuwe huisstijl
\definecolor{KULblauw2}{RGB}{220,231,240} %Secundair blauw: heel lichtblauw
\definecolor{KULblauw3a}{RGB}{82,189,236} %Tertiair blauw (accent): licht
\definecolor{KULblauw3b}{RGB}{30,110,135} %Tertiair blauw (accent): donker
\definecolor{KULblauw3c}{RGB}{12,73,92} %Tertiair blauw (accent): donkerst
\colorlet{KULblauw3a10} {KULblauw3a!10!white}

%Kleuren nieuwe stijl 2018: andere accentkleuren
\definecolor{KULappelblauwzeegroen}{RGB}{135,192,189} 
\definecolor{KULoranje}{RGB}{231,176,55} 
\definecolor{KULdonkergroen}{RGB}{156,166,90} 
\definecolor{KULgeel}{RGB}{228,218,62} 
\definecolor{KULgrijsblauw}{RGB}{184,208,212}
\definecolor{KULbruin}{RGB}{176,159,118}
\definecolor{KULrood}{RGB}{212,119,110}
\definecolor{KULoker}{RGB}{203,182,16}
\definecolor{KULpaars}{RGB}{170,121,130}
\definecolor{KULroze}{RGB}{199,147,174}
\definecolor{KULlichtgroen}{RGB}{212,216,66}
\definecolor{KULroodbruin}{RGB}{186,113,60}

\colorlet{KULoranje10} {KULoranje!10!white}
\colorlet{KULlichtgroen10} {KULlichtgroen!10!white}

%Kleuren uit beamerstyle
\definecolor{KULdark}		{RGB}{47,77,93}			%KUL dark blue uit beamerstyle
\definecolor{gray}			{gray}{.5}				%gray uit beamerstyle
\definecolor{lgray}			{gray}{.95}				%light gray uit beamerstyle


% Opties instellen
\DeclareOptionBeamer{kul}{
  \renewcommand{\Background}{\includegraphics[width=\paperwidth,height=\paperheight]{style/kuleuvenBackground}}
  \renewcommand{\Outline}{\includegraphics[width=\paperwidth,height=\paperheight]{style/kuleuvenOutline}}
  \renewcommand{\Titlepage}{\includegraphics[width=\paperwidth,height=\paperheight]{style/kuleuvenTitlepage}}
  \renewcommand{\Logo}{\includegraphics[height=.8cm]{style/kuleuvenLogo}}
  }
\DeclareOptionBeamer{kulak}{
  \providecommand{\Background}{\includegraphics[width=\paperwidth,height=\paperheight]{style/kulakBackground}}
  \providecommand{\Outline}{\includegraphics[width=\paperwidth,height=\paperheight]{style/kulakOutline}}
  \providecommand{\Titlepage}{\includegraphics[width=\paperwidth,height=\paperheight]{style/kulakTitlepage}}
   \providecommand{\Logo}{\includegraphics[height=.8cm]{style/kulakLogo}}
  }

\ExecuteOptionsBeamer{kulak} %standaardopties
\ProcessOptionsBeamer


\mode<all>


%%		
%%  INNER THEME
%%

% Text colours
\hypersetup{colorlinks,linkcolor=KULblauw1,urlcolor=KULblauw1} %link colors
\urlstyle{sf}					%url addreses are sans-serif font (not typewritter)

\setbeamercolor{title}			{fg=white}				
\setbeamercolor{title page}		{fg=white}
\setbeamercolor{normal text}	{fg = black}			%text color
\setbeamercolor{frametitle}		{fg=KULblauw1}			%frame title color
\setbeamercolor{section in toc}{fg=KULblauw1}			%toc (section) color
\setbeamercolor{section in toc shaded}{fg=KULblauw1}		%toc (shaded section) color
\setbeamercolor{item}			{fg=KULblauw1}			%item color
\setbeamercolor{subitem}		{fg=KULblauw1}			%subitem color
\setbeamercolor{subsubitem}		{fg=KULblauw1}			%subsubitem color
\setbeamercolor{text}			{fg=white,bg=KULblauw1}	%text block color
\setbeamercolor{caption name}	{fg=black}				%figure and table caption color
\setbeamercolor{abstract title}	{fg=red}			%abstract title color

% Blocks, theorem-like environments and colorboxes
\setbeamerfont{block title} {size=\normalsize}				%block title font size
\setbeamercolor{block title}{bg=lgray,fg=KULblauw1}			%block title colour
\setbeamercolor{block body} {bg=lgray,fg=black}				%block body colour
\setbeamertemplate{qed symbol}{\color{KULblauw1} $\square$}	%end of proof symbol

\setbeamercolor{block title alerted}{bg=white!95!red}				%alertbloc title (red)
\setbeamercolor{block body alerted}{bg=white!95!red}				%alertbloc body

\setbeamercolor{block title example}{bg=white!95!KULblauw1,fg=KULblauw1} 	%example block title (blue)
\setbeamercolor{block body example}{bg=white!95!KULblauw1,fg=black}		%example block body

\setbeamercolor{box1}		{fg=white,bg=KULblauw1}		
\setbeamercolor{box2}		{fg=KULblauw1,bg=lgray}			%five different colour schemes for Beamer colour box
\setbeamercolor{box3}		{fg=black,bg=lgray}
\setbeamercolor{box4}		{fg=red,bg=lgray}	
\setbeamercolor{box5}		{fg=white,bg=red}	

\setbeamercolor{button}		{bg= lgray,fg=KULblauw1}			%button frame

%math font
\usefonttheme[onlymath]{serif}

%outline and margins
\setbeamertemplate{sections/subsections in toc}[circle]			%toc symbols
\setbeamersize{text margin left=21pt,text margin right=21pt} 	%text margins

%itemize list
\setbeamertemplate{itemize item}[triangle] 			%item symbol (triangle)
\setbeamertemplate{itemize subitem}[circle]			%subitem symbol (cirlce)
\renewcommand\textbullet{\ensuremath{\bullet}}		%correction for warning for subitem circle bullect
\setbeamertemplate{itemize subsubitem}{-}			%subsubitem symbol (short hypthen)

%enumerate list
\setbeamertemplate{enumerate item}{\small  \insertenumlabel  \enspace }		%enumerate symbol
\setbeamertemplate{enumerate subitem}{\scriptsize \raisebox{.085em} \insertsubenumlabel } 	%subenumerate symbol
\setbeamertemplate{enumerate subsubitem}{\tiny \raisebox{.18em} \insertsubsubenumlabel } 	%subenumerate symbol


%%		
%%  OUTER THEME
%%
\usebackgroundtemplate{\Background}
\newenvironment{titleframe}
{\bgroup\usebackgroundtemplate{\Titlepage}\begin{frame}[plain]}
{\end{frame}\egroup\addtocounter{framenumber}{-1}}

\newenvironment{outlineframe}[1][]
{\bgroup\usebackgroundtemplate{\Outline}\begin{frame}{#1}}
{\end{frame}\egroup}

\setbeamertemplate{navigation symbols}{} %remove the navigation symbols

%head frametitle	
\setbeamertemplate{frametitle}
{
	\vspace{.5cm}
	{\large\textbf{\insertframetitle}} 
}

\defbeamertemplate*{title page}{customized}[1][]
{\begin{tikzpicture}[remember picture,overlay]
  \node at ($(current  page.south  west)  + (-\hoffset,  -\voffset)$) {
    \begin{tikzpicture}[remember picture, overlay,inner sep=0mm,node distance=.5cm]
     \node[anchor=base] (lijn) at (.5cm ,.25\paperheight) {};
	 \node (lijnT) at (lijn.north west) {};
 	 \node (lijnB) at (lijn.south west) {};
     \node[above of=lijnT, anchor=south west, align=left, text width=.9\paperwidth] (author) {\Large \insertauthor};
	 \node (authorT) at (author.north west) {};
     \node[above of=authorT, anchor=south west, align=left, text width=.9\paperwidth] (subtitle) {\textbf{\Large\insertsubtitle}};
     \node (subtitleT) at (subtitle.north west) {};
     \node[above of=subtitleT, anchor=south west, align=left, text width=.9\paperwidth] (title) {\textbf{\LARGE\inserttitle}};
     \node[below of=lijnB, anchor=north west, align=left, text width=.9\paperwidth] (institute) {\large \textcolor{KULblauw1}{\insertinstitute}};
  	 \node (instituteB) at (institute.south west) {};
     \node[below of=instituteB,anchor=north west, align=left, text width=.9\paperwidth] (date) {\textcolor{KULblauw1}{\insertdate}};
    \end{tikzpicture}
  };
\end{tikzpicture}}
%
%\defbeamertemplate*{title page}{customized}[1][]
%{
%	\hspace*{.006\paperheight}
%	\begin{minipage}[t]{.66\paperwidth}
%		\vspace*{0.277\paperheight}
%		
%		{\fontsize{18}{19}\bfseries{\inserttitle}}~\\[12pt]
%		{\fontsize{11}{12}\bfseries{\insertsubtitle}}~\vspace*{0.01\paperheight}\\[2pt]
%
%
%		{\color{white}\fontsize{10}{11}{\insertauthor}}~\vspace*{0.09\paperheight}\\[20pt]
%		{\color{KULblauw1}\fontsize{10}{11}{\insertinstitute}}~\\[2pt]
%		{\color{KULblauw1}\fontsize{10}{11}{\insertdate}}~
%	\end{minipage}
%}


\defbeamertemplate*{footline}{body}
{\hypersetup{linkcolor=white}
\hspace{.085\paperheight}
\raisebox{8.3pt}{\color{white}\scriptsize\hspace{11pt} \insertframenumber\ \(\cdot\) \insertshorttitle\ \(\cdot\) \secname}
\hypersetup{colorlinks,linkcolor=KULblauw1,urlcolor=KULblauw1}

}	

\beamertemplatenavigationsymbolsempty
