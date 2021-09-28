## This is a _linked_ (mkfile) Makefile for Korede A.

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

## No pipeline
## HW2/hw2.html: HW2/hw2.Rmd

Sources += HW2/jd.txt

HW2/%.html: HW2/%.Rmd
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
