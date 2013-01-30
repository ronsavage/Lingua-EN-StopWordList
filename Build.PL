use Module::Build;

Module::Build -> new
(
	module_name    => 'Lingua::EN::StopWordList',
	license        => 'artistic_2',
	dist_abstract  => 'A sorted list of English stop words',
	dist_author    => 'Ron Savage <ron@savage.net.au>',
	build_requires =>
	{
		Test::Simple=> 0.96,
		Test::Pod  => 1.45,
	},
	configure_requires =>
	{
		Module::Build => 0.3800,
	},
	requires =>
	{
		strict        => 1.04,
		warnings      => 1.12,
	},
) -> create_build_script();
