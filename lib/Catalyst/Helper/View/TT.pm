package Catalyst::Helper::View::TT;

use strict;

=head1 NAME

Catalyst::Helper::View::TT - Helper for TT Views

=head1 SYNOPSIS

    bin/create view TT TT

=head1 DESCRIPTION

Helper for TT Views.

=head2 METHODS

=head3 mk_compclass

=cut

sub mk_compclass {
    my ( $self, $helper ) = @_;
    my $file  = $helper->{file};
    my $class = $helper->{class};
    $helper->mk_file( $file, <<"EOF");
package $class;

use strict;
use base 'Catalyst::View::TT';

=head1 NAME

$class - TT View Component

=head1 SYNOPSIS

    Very simple to use

=head1 DESCRIPTION

Very nice component.

=head1 AUTHOR

Clever guy

=head1 LICENSE

This library is free software . You can redistribute it and/or modify it under
the same terms as perl itself.

=cut

1;
EOF
}

=head1 SEE ALSO

L<Catalyst::Manual>, L<Catalyst::Test>, L<Catalyst::Request>,
L<Catalyst::Response>, L<Catalyst::Helper>

=head1 AUTHOR

Sebastian Riedel, C<sri@oook.de>

=head1 LICENSE

This library is free software . You can redistribute it and/or modify it under
the same terms as perl itself.

=cut

1;