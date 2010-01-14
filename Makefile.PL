use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
	NAME                => 'sastatd',
	AUTHOR              => 'Oleg A. Mamontov <oleg@mamontov.net>',
	VERSION_FROM        => 'bin/sastatd',
	ABSTRACT_FROM       => 'bin/sastatd',
	($ExtUtils::MakeMaker::VERSION >= 6.3002 ? ('LICENSE'=> 'perl') : ()),
	PL_FILES            => {},
	PREREQ_PM => {
		'JSON::Any'             => 0,
		'Log::Dispatch'         => 2.26,
		'Test::More'            => 0,
		'Pid::File::Flock'      => 0,
		'POE'                   => 0,
		'Sys::Syslog'           => 0.16,
	},
	PREREQ_FATAL        => 1,
	EXE_FILES           => [ 'bin/sastatd' ],
	dist                => {
		COMPRESS => 'gzip -9f',
		SUFFIX => 'gz',
	},
);

