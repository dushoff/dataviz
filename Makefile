## This is the screendir dataviz

current: target
-include target.mk

-include makestuff/perl.def

######################################################################

vim_session: 
	bash -cl "vmt screens.list"
	
screen_session: screens.update
	$(MAKE) $(vscreens)

######################################################################

Shmealth:
	$(MAKE) Neal
	ln -s Neal/Project $@

Shmealth/Makefile:
	cd Shmealth && ln -s ../../mkfiles/Shmealth.make $(notdir $@)

######################################################################

### Makestuff

Sources += Makefile $(wildcard *.md)

Ignore += makestuff
msrepo = https://github.com/dushoff
Makefile: makestuff/Makefile
makestuff/Makefile:
	git clone $(msrepo)/makestuff
	ls $@

### Includes

-include makestuff/os.mk

-include makestuff/listdir.mk
-include makestuff/screendir.mk
-include makestuff/mkfiles.mk

-include makestuff/git.mk
-include makestuff/visual.mk

