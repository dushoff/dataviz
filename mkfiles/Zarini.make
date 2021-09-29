## This is a _linked_ (mkfile) Makefile for Sina Zarini

current: target
-include target.mk

# -include makestuff/perl.def

vim_session:
	bash -cl "vmt"

######################################################################

autopipeR = defined
Sources += $(wildcard *.R)

HW2.Rout: HW2.R vaccinedata.csv
Ignore += vaccinedata.csv
vaccinedata.csv:
	$(LN) ../course/docs/data/vaccine_data_online.csv $@

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
