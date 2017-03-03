# alpine-perl
perl installed on alpine with some modules

Based on scottw/alpine-perl image

with these modules added:
use Text::CSV_XS; 
use Data::Dumper;
use JSON::Parse 'parse_json';
use JSON::Create 'create_json';
use Date::Parse;
use Cwd;
use REST::Client;
use Config::Natural;
