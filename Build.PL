use warnings;
use strict;

use Module::Build;

Module::Build -> new
(
	module_name    => 'Lingua::EN::StopWordList',
	license        => 'artistic_2',
	dist_abstract  => 'A sorted list of English stop words',
	dist_author    => 'Ron Savage <ron@savage.net.au>',
	build_requires =>
	{
		'Test::More' => 1.001014,
		'Test::Pod' => 1.48,
	},
	configure_requires =>
	{
		'Module::Build' => 0.4211,
	},
	requires =>
	{
		'strict' => 1.04,
		'warnings' => 1.12,
	},
) -> create_build_script();
