use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'	=> 'Crypt-DES_PP',
    'VERSION_FROM' => 'lib/Crypt/DES_PP.pm', # finds $VERSION
);

sub MY::postamble {
    '
PREPROCESSOR = cpp

lib/Crypt/DES_PP.pm: DES_PP.ppm
	$(PREPROCESSOR) $< >$@
'
}
