use strict;
use warnings;
use ExtUtils::MakeMaker 6.64;	# 6.64 for TEST_REQUIRES

WriteMakefile(
    NAME                => 'CGI::Untaint::CountyStateProvince::US',
    AUTHOR              => q{Nigel Horne <njh@bandsman.co.uk>},
    VERSION_FROM        => 'lib/CGI/Untaint/CountyStateProvince/US.pm',
    ABSTRACT_FROM        => 'lib/CGI/Untaint/CountyStateProvince/US.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'GPL')
      : ()),
    PL_FILES            => {},
    TEST_REQUIRES => {
	'Test::Most' => 0,
	'File::Spec' => 3.4,
    }, PREREQ_PM => {
    	'CGI' => 0,	# Workaround for RT#105917
	'CGI::Untaint' => 0,
	'CGI::Untaint::CountyStateProvince' => 0.04,
	'Locale::SubCountry' => 1.47,	# Needs new() on two character codes
	'Test::NoWarnings' => 0,
	# 'Test::Kwalitee' => 0,
    }, META_MERGE		=> {
	'meta-spec' => { version => 2 },
	resources => {
		repository => {
			type => 'git',
			url => 'git://github.com/nigelhorne/CGI-Untaint-CountyStateProvinvce.git',
			web => 'https://github.com/nigelhorne/CGI-Untaint-CountyStateProvinvce',
			repository => 'https://github.com/nigelhorne/CGI-Untaint-CountyStateProvinvce',
		}, bugtracker => {
			# web => 'https://rt.cpan.org/Public/Dist/Display.html?Name=CGI-Untaint-CountyStateProvinvce',
			web => 'https://github.com/nigelhorne/CGI-Untaint-CountyStateProvinvce/issues',
			url => 'https://github.com/nigelhorne/CGI-Untaint-CountyStateProvinvce/issues',
			mailto => 'bug-CGI-Untaint-CountyStateProvinvce@rt.cpan.org'
		}
	},
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'CGI-Untaint-CountyStateProvince-US*' },
);
