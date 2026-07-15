# This document has no \bibliography yet, so bibtex is disabled to keep the
# build clean: latexmk otherwise runs bibtex and errors when there is no
# bibliography. When you add \cite commands, also add a bibliography block
# before \end{document}:
#   \setlength{\bibsep}{0pt}
#   \bibliography{./references}
#   \bibliographystyle{abbrvnat}
# (see 1_Artifact/notes.tex for the working pattern), then delete this file so
# the citations resolve and render.
$bibtex_use = 0;
