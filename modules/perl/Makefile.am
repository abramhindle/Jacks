SUBDIRS = . t example-clients

include_HEADERS = 

EXTRA_DIST = Build.PL.in Changes MANIFEST MANIFEST.SKIP META.yml Makefile.PL OeLinkBin.PL.in README jacks.pm jacks.pod.in 

_cflags = -I$(top_builddir)/corelib @OE_LIB_CFLAGS@ @PERLXS_CFLAGS@ @JACK_CFLAGS@
_libadd = $(top_builddir)/corelib/libjacks.la @PERLXS_LDFLAGS@ @JACK_LIBS@

lib_LTLIBRARIES = libjacks_perl.la 

libjacks_perl_la_SOURCES = Jacks_perl5_wrap.c
libjacks_perl_la_LIBADD = ${_libadd}
libjacks_perl_la_CFLAGS = ${_cflags}
libjacks_perl_la_LDFLAGS = @OE_LIB_LDFLAGS@ -module

clean-local:
	rm -f ./Build
	rm -rf ./_build
	rm -rf ./blib
	rm -rf ./lib
	rm -f ./lib/*script*.pm

check:
	mkdir -p lib
	cat jacks.pod ./jacks.pm > lib/jacks.pm
	perl ./Build.PL
	./Build test

install-data-hook:
if OE_INSTALL_PERL_MODULE
	mkdir -p lib
	cat jacks.pod ./jacks.pm > lib/jacks.pm
	perl ./Build.PL 
	./Build build
	cp ./jacks.pm lib/
	./Build install
endif

swig:
	swig -I${top_builddir}/corelib -Wall -perl5 -o ./Jacks_perl5_wrap.c ../Jacks.i

