package App::cpanexec;
use 5.008001;
use strict;
use warnings;

our $VERSION = "0.01";



1;
__END__

=encoding utf-8

=head1 NAME

App::cpanexec - Execute application within local environment.

=head1 SYNOPSIS

    cpane myscript arg1 arg2 ...

    cpane plackup hello.psgi

    cpane env

=head1 DESCRIPTION

The program to execute command within the local environment. Perl package
managers like L<Carton> or L<cpm> installs the dependencies into C<local> folder
near the C<cpanfile>.

The library L<local::lib> prepare appropriate environment for execute scripts
or executable program within such local environment. However it is necessary to
do some passes to configure such environment and configured environment need to
be deconfigured.

This program C<cpane> require command line passed to it as arguments. The
command line may be script installed in local folder or generic executable may
be with arguments. It execute passed command line within prepared by
C<local::lib> local environment and does not modify current environment.

=head1 DEPENDENCIES

L<local::lib>

=head1 SEE ALSO

L<local::lib>

L<Carton>

L<cpm>

L<perlrocks>

L<cpanm>

L<cpanfile>

L<bundler|http://bundler.io/man/bundle-exec.1.html>

L<npm|https://docs.npmjs.com/cli/run-script>

=head1 LICENSE

MIT

=head1 AUTHOR

Serguei Okladnikov E<lt>oklaspec@gmail.comE<gt>

=cut

