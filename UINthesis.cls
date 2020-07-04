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
\usepackage[a4paper, margin=3cm, top=4cm, left=4cm]{geometry}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% => Font and Character       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{newtxtext, newtxmath}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% => Headers and Footers      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{fancyhdr}

% >>>>> pagestyle <<<<< %
\pagestyle{fancy}
\fancyhead[L]{}
\fancyhead[R]{\thepage}
\fancyfoot[L]{}
\fancyfoot[C]{}
\renewcommand{\headrulewidth}{0pt}
\setlength{\headheight}{15pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% => Table                    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{booktabs}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% => Customize chapters, sections and subsections           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{titlesec}

% change chapter to BAB
\renewcommand{\chaptername}{BAB}

% redefine chapter
\titleformat{\chapter}[display]{\centering\large\bfseries}{\large\bfseries\chaptertitlename{} \thechapter}{-10pt}{}[]

% redefine section
\titleformat{\section}[hang]{\normalfont\bfseries}{\normalfont\bfseries\thesection{} }{0pt}{}[]

% redefine subsection
\titleformat{\subsection}[hang]{\normalfont\normalsize}{\normalfont\normalsize\thesubsection{} }{0pt}{}[]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% => Listings                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{listings}
\lstset{%
    basicstyle=\linespread{0.8}\ttfamily\footnotesize,
    extendedchars=true,
    showspaces=false,
    breaklines=true,
    showtabs=false,
    escapeinside={(*}{*)}
}
\lstdefinestyle{box}{%
    frame=shadowbox,
    numbers=left,
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% => Caption                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% redefine caption
\usepackage[
    belowskip=-10pt,
    labelfont=bf,
    labelsep=period,
    justification=centering,
    figurename=GAMBAR,
    tablename=TABEL]{caption}

\usepackage{subcaption}

\renewcommand\lstlistingname{LISTING}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% => Equation Related         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{siunitx}
\usepackage{amsmath}
\usepackage{mathtools}
\DeclarePairedDelimiter\abs{\lvert}{\rvert}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% => Reference & Citing       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage[hidelinks]{hyperref}
\usepackage{letltxmacro}

\usepackage[
    backend=biber,
    style=ieee,
    sorting=nty,
    isbn=true,
    url=true,
    doi=true
]{biblatex}
\addbibresource{part/backmatter/reference.bib}

% redefine autoref figure name
\renewcommand{\figureautorefname}{GAMBAR}

% redefine autoref table name
\renewcommand{\tableautorefname}{TABEL}

% reference using cleveref
\usepackage[nameinlink]{cleveref}
\crefname{figure}{Fig.}{Fig.}
\Crefname{figure}{Figure.}{Figure.}

\crefname{table}{Tab.}{Tab.}
\Crefname{table}{Tabel.}{Tabel.}

\crefname{listing}{List.}{List.}
\Crefname{listing}{Listing.}{Listing.}

\creflabelformat{equation}{#2#1#3}
\crefname{equation}{Eq.}{Eq.}
\Crefname{equation}{Equation.}{Equation.}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% => Graphics                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{color}
\usepackage{graphicx}
\usepackage{float}

% define graphics directory
\graphicspath{{pictures/}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% => Numbering                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% change chapter numbering from arabic to roman number
\renewcommand\thechapter{\Roman{chapter}}

% change section numbering
\renewcommand\thesection{\arabic{chapter}.\arabic{section} }

% change subsection numbering
\renewcommand\thesubsection{\arabic{chapter}.\arabic{section}.\arabic{subsection} }

% change equation numbering
\renewcommand\theequation{\arabic{chapter}.\arabic{equation}}

% change picture numbering
\renewcommand\thefigure{\arabic{chapter}.\arabic{figure}}

% change table numbering
\renewcommand\thetable{\arabic{chapter}.\arabic{table}}

% change listing numbering
\AtBeginDocument{
     \renewcommand\thelstlisting{\arabic{chapter}.\arabic{lstlisting}}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% => Spacing                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% indent first paragraph
\usepackage{indentfirst}

% for itemize and enumerate
\usepackage{enumitem}

% reduce list line spacing
\setlist[enumerate]{itemsep=0mm}
\setlist[itemize]{itemsep=0mm}

% paragraph indent
\setlength{\parindent}{1cm}

% tab
\usepackage{tabto}

% line spacing
\renewcommand{\baselinestretch}{1.5}

% change chapter space to top margin
\titlespacing*{\chapter}{0pt}{-2\baselineskip}{1em}

% change section space
\titlespacing{\section}{0pt}{12pt}{11pt}

% change subsection space
\titlespacing{\subsection}{0pt}{11pt}{11pt}

% change paragraph in the midle of document
\usepackage{setspace}

% redefine table spacing
\renewcommand{\arraystretch}{0.5}

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
\newcommand*{\sigcone}[3]{%
    \begin{center}
        \par\noindent\makebox[5cm][c]{#1}\\
        \vspace{2.5cm}
        \par\noindent\makebox[5cm][c]{\underline{#2}}
        \begin{spacing}{0}
            \par\noindent\makebox[5cm][c]{#3}
        \end{spacing}
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
        \addcontentsline{toc}{chapter}{LEMBAR JUDUL}
    \end{spacing}
    }

\newcommand{\contentspage}{%
    \begin{spacing}{1.0}
        \renewcommand{\contentsname}{DAFTAR ISI}
        \tableofcontents
        \addcontentsline{toc}{chapter}{DAFTAR ISI}
    \end{spacing}
}

\newcommand{\figurespage}{%
    \begin{spacing}{1.0}
        \renewcommand{\listfigurename}{DAFTAR GAMBAR}
        \listoffigures
        \addcontentsline{toc}{chapter}{DAFTAR GAMBAR}
    \end{spacing}
}

\newcommand{\tablespage}{%
    \begin{spacing}{1.0}
        \renewcommand{\listtablename}{DAFTAR TABEL}
        \listoftables
        \addcontentsline{toc}{chapter}{DAFTAR TABEL}
    \end{spacing}
}

\newcommand{\listingpage}{%
    \begin{spacing}{1.0}
        \renewcommand{\lstlistlistingname}{DAFTAR LISTING}
        \lstlistoflistings%
        \addcontentsline{toc}{chapter}{DAFTAR LISTING}
    \end{spacing}
}

\newcommand{\bibliographypage}{%
    \printbibliography[title={DAFTAR PUSTAKA}]
    \addcontentsline{toc}{chapter}{DAFTAR PUSTAKA}
    }

\newcommand{\originalitypage}{%
    \begin{spacing}{2.0}
        \input{part/frontmatter/originality.tex}
        \addcontentsline{toc}{chapter}{PERNYATAAN ORISINALITAS}
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

\newcommand{\abstractpageid}{%
    \begin{spacing}{1.0}
        {\setlength{\parindent}{0cm}
        \input{part/frontmatter/abstract-id.tex}
        }
    \end{spacing}
    }

\newcommand{\abstractpageen}{%
    \begin{spacing}{1.0}
        {\setlength{\parindent}{0cm}
        \textit{\input{part/frontmatter/abstract-en.tex}}
        }
    \end{spacing}
    }
