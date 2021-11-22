all: clean-pdf en_ zh_ elab_ clean clean-tex
en: clean-pdf en_ clean clean-tex
zh: clean-pdf zh_ clean clean-tex
elab: clean-pdf elab_ clean clean-tex
en_: Main.hs
	runghc Main.hs en >> latex/resume.tex; cd latex; xelatex resume.tex; cp resume.pdf ../
zh_: Main.hs
	runghc Main.hs cn >> latex/resume-cn.tex; cd latex; xelatex resume-cn.tex; cp resume-cn.pdf ../
elab_: Main.hs
	runghc Main.hs elab >> latex/resume-elab.tex; cd latex; xelatex resume-elab.tex; cp resume-elab.pdf ../

ifeq ($(OS),Windows_NT)
  # on Windows
  RM = cmd //C del
else
  # on Unix/Linux
  RM = rm -f
endif

clean:
	$(RM) latex/*.log latex/*.aux latex/*.bbl latex/*.blg latex/*.synctex.gz latex/*.out latex/*.toc latex/*.lof latex/*.idx latex/*.ilg latex/*.ind latex/*.pdf latex/*.cut latex/*.fdb_latexmk latex/*.fls

clean-tex:
	$(RM) latex/resume.tex latex/resume-cn.tex latex/resume-elab.tex

clean-pdf:
	$(RM) *.pdf