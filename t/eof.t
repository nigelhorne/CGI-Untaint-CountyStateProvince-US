#!/usr/bin/env perl

use strict;
use warnings;
use Test::Most;

BEGIN {
	if($ENV{AUTHOR_TESTING}) {
		eval {
			require Test::EOF;
		};
		if($@) {
			plan(skip_all => 'Test::EOF not installed');
		} else {
			import Test::EOF;

			# Causes skip all with no reason
			# all_perl_files_ok({ minimum_newlines => 1, maximum_newlines => 4 });
			all_perl_files_ok(('.'), { strict => 1 });
			done_testing();
		}
	} else {
		plan(skip_all => 'Author tests not required for installation');
	}
}
