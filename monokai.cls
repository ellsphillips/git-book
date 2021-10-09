%% Start of file `monokai.cls'.
%% Copyright 2021 Elliott Phillips <ellsphillipsuni@gmail.com>
%
% ------------------------------------------------------------------------------

\ProvidesClass{monokai}[%
	2021/01/25 Code documentation standard.
]
\NeedsTeXFormat{LaTeX2e}

%\DeclareOption{draft}{\setlength\overfullrule{5pt}}
%\DeclareOption{final}{\setlength\overfullrule{0pt}}
%\DeclareOption*{
%	\PassOptionsToClass{\CurrentOption}{book}
%}
%\ProcessOptions\relax

\PassOptionsToPackage{table}{xcolor}

\LoadClass[11pt,oneside]{book}

% ------------------------------------------------------------------------------

\usepackage{%
	lib/colour/monokai-theme,
}
	
\usepackage{%
	lib/fonts,
	lib/graphics,
	lib/page,
	lib/refs,
}

\usepackage{lib/xltabular}

\usepackage{%
	lib/components/table,
	lib/components/frontpage,
	lib/components/hourglass,
}

\usepackage{lib/theme/init}

\usepackage{lib/code-blocks/init}

% ------------------------------------------------------------------------------


\makeatletter
	\providecommand*{\input@path}{}
	\g@addto@macro\input@path{{img/}{figures/}}
\makeatother

\RequirePackage{xkeyval}



\DeclareOptionX{theme}{\colorlet{monokai-accent-colour}{#1}}

\DeclareOptionX{logo}{\IfFileExists{#1}{\def\companylogo{#1}}{\def\companylogo{}}}

\newif\ifrandombanner
\DeclareOptionX{banner}{%
	\ifthenelse{\equal{\detokenize{#1}}{\detokenize{random}}}{%
		\randombannertrue%
	}{%
		\randombannerfalse
		\IfFileExists{#1}{\def\companybanner{#1}}{\def\companybanner{}}%
	}%
}

\newif\ifhourglass
\DeclareOptionX{hourglass}{\hourglasstrue}

\DeclareOptionX{lightmode}{\monokailightmode}
\DeclareOptionX{darkmode}{\monokaidarkmode}
\ExecuteOptionsX{lightmode}



\DeclareOptionX*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptionsX \relax

% ------------------------------------------------------------------------------
%
%% End of file `monokai.cls'.