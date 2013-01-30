use ExtUtils::MakeMaker;

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

WriteMakefile
(
	($] ge '5.005') ?
	(
		AUTHOR   => 'Ron Savage (ron@savage.net.au)',
		ABSTRACT => 'A sorted list of English stop words',
    ) : (),
	clean =>
	{
		FILES => 'blib/* Makefile MANIFEST Lingua-EN-StopWordList-*'
	},
	dist =>
	{
		COMPRESS => 'gzip',
		SUFFIX   => 'gz'
	},
	DISTNAME  => 'Lingua-EN-StopWordList',
	NAME      => 'Lingua::EN::StopWordList',
	LICENSE   => 'artistic_2',
	PL_FILES  => {},
	PREREQ_PM =>
	{
		strict     => 1.04,
		Test::Simple=> 0.96,
		Test::Pod  => 1.45,
		warnings   => 1.12,
	},
	VERSION_FROM => 'lib/Lingua/EN/StopWordList.pm',
);
