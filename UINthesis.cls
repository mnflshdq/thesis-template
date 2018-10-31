%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   LaTeX template for Physics Study Program, Faculty of Science              %
%                   and Technology UIN Jakarta's thesis                       %
%                                                                             %
%                                                                             %
%   by            : Muhammad Naufal Shidqi                                    %
%   Faculty       : Sains and Technology                                      %
%   Study Program : Physics                                                   %
%   date          : 23 September 2018                                         %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{UINthesis}[23/09/2018 UIN Jakarta Thesis Template]
\LoadClass[12pt, oneside, a4paper]{book}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% => Layout                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% define paper and margin
\RequirePackage[a4paper, margin=3cm, top=4cm, left=4cm]{geometry}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% => Font and Character       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{fontspec}

% set Times New Roman as main font
\setmainfont{Times New Roman}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% => Table                    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{booktabs}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% => Title                    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{titlesec}

% >>>>> chapter <<<<< %
% change chapter to BAB
\renewcommand{\chaptername}{BAB}
% redefine chapter title
\titleformat{\chapter}[display]{\centering\large\bfseries}{\normalfont\bfseries\chaptertitlename{} \thechapter}{0pt}{}[]

% >>>>> table of contents <<<<< %
\newcommand{\contentspage}{%
    \begin{spacing}{1.0}
        \renewcommand{\contentsname}{DAFTAR ISI}
        \tableofcontents
        \addcontentsline{toc}{chapter}{DAFTAR ISI}
    \end{spacing}
}

% >>>>> list of figures <<<<< %
\newcommand{\figurespage}{%
    \begin{spacing}{1.0}
        \renewcommand{\listfigurename}{DAFTAR GAMBAR}
        \listoffigures
        \addcontentsline{toc}{chapter}{DAFTAR GAMBAR}
    \end{spacing}
}

% >>>>> list of tables <<<<< %
\newcommand{\tablespage}{%
    \begin{spacing}{1.0}
        \renewcommand{\listtablename}{DAFTAR TABEL}
        \listoftables
        \addcontentsline{toc}{chapter}{DAFTAR TABEL}
    \end{spacing}
}

\newcommand{\referencepage}{%
    \renewcommand\bibname{DAFTAR PUSTAKA}
    \printbibliography%
    \addcontentsline{toc}{chapter}{DAFTAR PUSTAKA}
    }

% >>>>> section <<<<< %
% redefine section title
\titleformat{\section}[hang]{\normalfont\bfseries}{\normalfont\bfseries\thesection{} }{0pt}{}[]

% >>>>> subsection <<<<< %
% redefine subsection title
\titleformat{\subsection}[hang]{\normalfont\bfseries}{\normalfont\bfseries\thesubsection{} }{0pt}{}[]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% => Numbering                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% change chapter numbering from arabic to roman number
\renewcommand{\thechapter}{\Roman{chapter}}

% change section numbering
\renewcommand\thesection{\arabic{chapter}.\arabic{section} }

% change subsection numbering
\renewcommand\thesubsection{\arabic{chapter}.\arabic{section}.\arabic{subsection} }

%>>>>> equation <<<<<%
% change equation numbering
\renewcommand\theequation{\arabic{chapter}.\arabic{equation}}

%>>>>> picture <<<<<%
% change picture numbering
\renewcommand\thefigure{\arabic{chapter}.\arabic{figure}}

%>>>>> table <<<<<%
% change table numbering
\renewcommand\thetable{\arabic{chapter}.\arabic{table}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% => Caption                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% redefine caption
\usepackage[labelfont=bf, labelsep=period, justification=centering]{caption}

% redefine figure name
\renewcommand{\figurename}{\textbf{GAMBAR}}

% redefine table name
\renewcommand{\tablename}{\textbf{tabel}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% => Spacing                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% indent first paragraph
\RequirePackage{indentfirst}
% for itemize and enumerate
\RequirePackage{enumitem}
% paragraph indent
\setlength{\parindent}{15pt}

% line spacing
\renewcommand{\baselinestretch}{1.5}

% change chapter space to top margin
\titlespacing*{\chapter}{0pt}{-2\baselineskip}{1em}

% change section space
\titlespacing{\section}{0pt}{12pt}{11pt}

% change subsection space
\titlespacing{\subsection}{0pt}{11pt}{11pt}

% change paragraph in the midle of document
\RequirePackage{setspace}

% redefine table spacing
\renewcommand{\arraystretch}{0.5}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% => Headers and Footers      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{fancyhdr}

% >>>>> pagestyle <<<<< %
\pagestyle{fancy}
\fancyhead[L]{}
\fancyhead[R]{\thepage}
\fancyfoot[L]{}
\fancyfoot[C]{}
\renewcommand{\headrulewidth}{0pt}
\setlength{\headheight}{15pt}

% >>>>> page style for chapter (default is plain) <<<<< %
\fancypagestyle{plain}{%
    % ---> head <--- %
    \renewcommand{\headrulewidth}{0pt}
    \lhead{}
    \chead{}
    \rhead{}

    % ---> foot <--- %
    \renewcommand{\footrulewidth}{0pt}
    \lfoot{}
    \cfoot{\thepage}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% => Reference                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{hyperref}
\usepackage[
    backend=biber,
    style=ieee,
    sorting=ynt,
    isbn=true,
    url=true,
    doi=true
]{biblatex}
\addbibresource{part/backmatter/reference.bib}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% => Graphics                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{graphicx}
\RequirePackage{float}

% define graphics directory
\graphicspath{{pictures/}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% => Equation Related         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{siunitx}
\usepackage{amsmath}
\usepackage{mathtools}
\DeclarePairedDelimiter\abs{\lvert}{\rvert}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% => New Command              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% signature field for 2 signature in the center of page
\newcommand*{\sigctwo}[6]{%
    \begin{center}
        \par\noindent\makebox[5cm]{#1}
            \hspace{2cm}\makebox[5cm]{#4}\\%
        \vspace{2.5cm}
        \par\noindent\makebox[5cm]{\underline{#2}}
            \hspace{2cm}\makebox[5cm]{\underline{#5}}%
        \begin{spacing}{0}
            \par\noindent\makebox[5cm]{#3}
                \hspace{2cm}\makebox[5cm]{#6}%
        \end{spacing}
    \end{center}
}%

% signature field for 1 signature in the center of page
\newcommand*{\sigcone}[2]{%
    \begin{center}
        \par\noindent\makebox[5cm][c]{#1}\\
        \vspace{2.5cm}
        \par\noindent\makebox[5cm][c]{#2}
    \end{center}
}

% signature field for 1 signature in the right side of page
\newcommand*{\sigrone}[2]{%
    \begin{flushright}
        \par\noindent\makebox[5cm][c]{#1}\\
        \vspace{2.5cm}
        \par\noindent\makebox[5cm][c]{#2}
    \end{flushright}
}

\renewcommand{\titlepage}{%
    \begin{spacing}{1.0}
        \input{part/frontmatter/title.tex}
    \end{spacing}
    }

\newcommand{\originalitypage}{%
    \begin{spacing}{2.0}
        \input{part/frontmatter/originality.tex}
    \end{spacing}
    }

\newcommand{\prefacepage}{%
        \input{part/frontmatter/preface.tex}
    }

\newcommand{\validationpage}{%
    \begin{spacing}{1.0}
        \input{part/frontmatter/validation.tex}
    \end{spacing}
    }

\newcommand{\abstractpage}{%
    \begin{spacing}{1.0}
        {\setlength{\parindent}{0cm}
        \input{part/frontmatter/abstract-id.tex}
        \textit{\input{part/frontmatter/abstract-en.tex}}
        }
    \end{spacing}
    }
