use strict;
use warnings;
package Dist::Zilla::Plugin::Deprecated; # git description: 24a450d
# ABSTRACT: ...
# KEYWORDS: ...
# vim: set ts=8 sw=4 tw=78 et :
$Dist::Zilla::Plugin::Deprecated::VERSION = '0.001';
use Moose;
with 'Dist::Zilla::Role::MetaProvider';

use namespace::autoclean;

# no configs yet to dump
#around dump_config => sub
#{
#    my ($orig, $self) = @_;
#    my $config = $self->$orig;
#
#    $config->{+__PACKAGE__} = {
#        ...
#    };
#
#    return $config;
#};

sub metadata
{
    my $self = shift;

    return { x_deprecated => 1 };
}

__PACKAGE__->meta->make_immutable;

__END__

=pod

=encoding UTF-8

=head1 NAME

Dist::Zilla::Plugin::Deprecated - ...

=head1 VERSION

version 0.001

=head1 SYNOPSIS

In your F<dist.ini>:

    [Deprecated]

=head1 DESCRIPTION

This is a L<Dist::Zilla> plugin that adds metadata to your distribution marking it as deprecated.

=for Pod::Coverage metadata

=head1 SUPPORT

=for stopwords irc

Bugs may be submitted through L<the RT bug tracker|https://rt.cpan.org/Public/Dist/Display.html?Name=Dist-Zilla-Plugin-Deprecated>
(or L<bug-Dist-Zilla-Plugin-Deprecated@rt.cpan.org|mailto:bug-Dist-Zilla-Plugin-Deprecated@rt.cpan.org>).
I am also usually active on irc, as 'ether' at C<irc.perl.org>.

=head1 ACKNOWLEDGEMENTS

Neil Bowers requested this. :)

=head1 AUTHOR

Karen Etheridge <ether@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Karen Etheridge.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
