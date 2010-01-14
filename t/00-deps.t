#!perl -T

use Test::More tests => 4;

BEGIN {
    use_ok( 'JSON::Any' )             || print "Bail out!";
    use_ok( 'Log::Dispatch', 2.26 )   || print "Bail out!";
    use_ok( 'Pid::File::Flock' )      || print "Bail out!";
    use_ok( 'POE' )                   || print "Bail out!";
    use_ok( 'Sys::Syslog', 0.16 )     || print "Bail out!";
}

diag( "Testing sastatd prerequsites, Perl $], $^X" );

