package Acme::CPANModules::MultipleDispatch;

use strict;
use warnings;
use Acme::CPANModulesUtil::Misc;

# AUTHORITY
# DATE
# DIST
# VERSION

my $text = <<'MARKDOWN';
**About multiple dispatch**

Multiple dispatch is a technique where you can define /multiple/ functions (or
methods) of the same name but with different signatures (e.g. different type of
arguments, different number of arguments) and the runtime will choose
(/dispatch/) the correct function by matching the signature of the caller to
that of the defined functions.

This technique has several benefits, mostly simplifying user code particularly
when dealing with different types/arguments, because you are deferring the
checks to the runtime. For example, if you create a function to concat two
strings:

    function combine(Str a, Str b) {
        a + b;
    }

and later wants to support some other types, instead of peppering the original
function with `if` statements, you can just supply additional functions with the
same name but with different arguments you want to support:

    function combine(Num a, Num b) {
        a.as_str() + b.as_str();
    }

    function combine(File a, File b) {
        a.open().read() + b.open().read();
    }

Some languages, particularly strongly-typed ones, support multiple dispatch:
Julia, C#, Common Lisp, Groovy. Raku (Perl 6) also supports multiple dispatch.

Perl 5 does not. But some modules will allow you to fake it.


**Modules**

<pm:Multi::Dispatch>. By DCONWAY.

<pm:Dios>. Also by DCONWAY. An object system which supports multiple dispatch.

<pm:Class::Multimethods>. Older module by DCONWAY.


**Keywords**

multi dispatch, multisub, multimethod.

MARKDOWN

our $LIST = {
    summary => 'List of modules to do smart matching',
    description => $text,
    tags => ['task'],
};

Acme::CPANModulesUtil::Misc::populate_entries_from_module_links_in_description;

1;
# ABSTRACT:

=head1 prepend:SEE ALSO

L<Bencher::ScenarioBundle::SmartMatch>
