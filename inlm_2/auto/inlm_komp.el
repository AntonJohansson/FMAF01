(TeX-add-style-hook
 "inlm_komp"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "a4paper")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("babel" "swedish") ("inputenc" "utf8x") ("fontenc" "T1")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "babel"
    "inputenc"
    "amsmath"
    "amssymb"
    "fontenc"
    "graphicx"
    "epstopdf")
   (LaTeX-add-labels
    "eq:22fourier"
    "fig:serie22"))
 :latex)

