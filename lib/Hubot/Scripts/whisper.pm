package Hubot::Scripts::whisper;
{
  $Hubot::Scripts::whisper::VERSION = '0.1.1';
}
use strict;
use warnings;

sub load {
    my ( $class, $robot ) = @_;
    $robot->whisper(
        sub {
            my $msg = shift;
            return if $msg->message->user->{name} eq '*';
            $msg->send( $msg->message->text );
        }
    );
}

1;

=pod

=encoding utf-8

=head1 NAME

Hubot::Scripts::whisper

=head1 SYNOPSIS

    /msg hubot <channel> <text> - speak <text> to <channel> behind the robot

=head1 DESCRIPTION

C<(split(/ /, ENV{HUBOT_IRC_ROOMS})[0])> is default to use if C<channel> is not specified

=head1 AUTHOR

Hyungsuk Hong <hshong@perl.kr>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Hyungsuk Hong.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
