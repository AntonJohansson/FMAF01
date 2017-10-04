(TeX-add-style-hook
 "inlm"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "a4paper")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("babel" "swedish") ("inputenc" "utf8") ("fontenc" "T1")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "babel"
    "inputenc"
    "fontenc"
    "amsmath"
    "amssymb"
    "graphicx"
    "epstopdf"
    "caption"
    "subcaption")
   (LaTeX-add-labels
    "eq:22fourier"
    "fig:serie22"))
 :latex)

