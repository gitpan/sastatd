#!perl -T

use Test::More tests => 6;

BEGIN {
    use_ok( 'JSON::Any' )             || print "Bail out!";
    use_ok( 'Log::Dispatch' )         || print "Bail out!";
    use_ok( 'Log::Dispatch::Screen' ) || print "Bail out!";
    use_ok( 'Log::Dispatch::Syslog' ) || print "Bail out!";
    use_ok( 'Pid::File::Flock' )      || print "Bail out!";
    use_ok( 'POE' )                   || print "Bail out!";
}

diag( "Testing sastatd prerequsites, Perl $], $^X" );

