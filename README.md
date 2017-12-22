# NAME

App::cpanexec - Execute application within local environment.

# SYNOPSIS

    cpane myscript arg1 arg2 ...

    cpane plackup hello.psgi

    cpane env

# DESCRIPTION

The program to execute command within the local environment. Perl package
managers like [Carton](https://metacpan.org/pod/Carton) or [cpm](https://metacpan.org/pod/cpm) installs the dependencies into `local` folder
near the `cpanfile`.

The library [local::lib](https://metacpan.org/pod/local::lib) prepare appropriate environment for execute scripts
or executable program within such local environment. However it is necessary to
do some passes to configure such environment and configured environment need to
be deconfigured.

This program `cpane` require command line passed to it as arguments. The
command line may be script installed in local folder or generic executable may
be with arguments. It execute passed command line within prepared by
`local::lib` local environment and does not modify current environment.

# DEPENDENCIES

[local::lib](https://metacpan.org/pod/local::lib)

# SEE ALSO

[local::lib](https://metacpan.org/pod/local::lib)

[Carton](https://metacpan.org/pod/Carton)

[cpm](https://metacpan.org/pod/cpm)

[perlrocks](https://metacpan.org/pod/perlrocks)

[cpanm](https://metacpan.org/pod/cpanm)

[cpanfile](https://metacpan.org/pod/cpanfile)

[bundler](http://bundler.io/man/bundle-exec.1.html)

[npm](https://docs.npmjs.com/cli/run-script)

# LICENSE

MIT

# AUTHOR

Serguei Okladnikov <oklaspec@gmail.com>
