## This is a _linked_ (mkfile) Makefile for Cat movement

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

%.html: %.Rmd
	$(knithtml)

Sources += $(wildcard *.Rmd)
Ignore += Project_Proposal.html WhenAreCatsTracked.html
## Project_Proposal.html: Project_Proposal.Rmd
## WhenAreCatsTracked.html: WhenAreCatsTracked.Rmd

######################################################################

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
