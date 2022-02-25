## This is a _linked_ (mkfile) Makefile for Economics

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

Sources += README.md

Ignore += pwt.xlsx

Sources += jd_comments.txt

######################################################################

Sources += $(wildcard *.Rmd)
Ignore += tech_plot.html
tech_plot.html: tech_plot.Rmd
	$(knithtml)

### Makestuff

## Sources += $(wildcard *.mk)
## include $(wildcard *.mk)

Ignore += Makefile
Ignore += makestuff
msrepo = https://github.com/dushoff
Makefile: makestuff/Makefile
makestuff/Makefile:
	ln -s ../makestuff .
	ls makestuff/Makefile

-include makestuff/os.mk

-include makestuff/pipeR.mk

-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk
