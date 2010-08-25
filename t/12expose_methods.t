use strict;
use warnings;
use Test::More tests => 3;

use FindBin;
use lib "$FindBin::Bin/lib";

use_ok('Catalyst::Test', 'TestApp');

my $response;
ok(($response = request("/test?view=ExposeMethods&template=expose_methods.tt"))->is_success, 'request ok');
is($response->content, "magic added param", 'message ok');
