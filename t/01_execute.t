use strict;
use Test::More;

use Capture::Tiny qw(capture);
use File::Temp qw/ tempdir /;
use Cwd;

sub run {
  my (@args) = @_;
  my($stdout, $stderr, $exit) = capture {
    system(@args);
  };

  # warn "$stderr\n" if $exit;
  die "execution is not succeeded, code:$exit" if $exit;

  return $stdout;
} 

my $result;
my $tmpdir = tempdir( CLEANUP => 1 );

my $cwd = Cwd::cwd();

chdir $tmpdir;

mkdir "$tmpdir";

$result = eval{
  run "$cwd/script/cpane" => 'echo must exit with error';
  1;
};
ok $result != 1, 'folder "./local" is required';

mkdir "$tmpdir/local";

$result = eval{
  run "$cwd/script/cpane";
  1;
};
ok $result != 1, 'script or command is required';

$result = run "$cwd/script/cpane" => 'echo $PERL5LIB';
ok -1 != index($result, "$tmpdir/local/lib"), 'libs configured';

$result = run "$cwd/script/cpane" => 'echo $PATH';
ok -1 != index($result, "$tmpdir/local/bin"), 'bins configured';

chdir $cwd;

done_testing();

