use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'	=> 'Crypt-DES_PP',
    'VERSION_FROM' => 'DES_PP.ppp', # finds $VERSION
);

sub MY::postamble {
   ' 
all :: lib/Crypt/DES_PP.pm

PREPROCESSOR = cpp

lib/Crypt/DES_PP.pm: DES_PP.ppp
	$(PREPROCESSOR) $< | \
		$(PERL) -ne \'/^#\s*\d+\s*"DES_PP\.ppp"\s*$$/ or print\' >$@
'
}
