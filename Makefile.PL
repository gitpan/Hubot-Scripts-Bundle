
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "optional scripts for hubot",
  "AUTHOR" => "Hyungsuk Hong <hshong\@perl.kr>",
  "BUILD_REQUIRES" => {
    "AnyEvent" => 0,
    "Hubot::Adapter" => 0,
    "Hubot::Message" => 0,
    "Hubot::Robot" => 0,
    "Hubot::User" => 0,
    "Moose" => 0,
    "Test::More" => 0,
    "namespace::autoclean" => 0
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Hubot-Scripts-Bundle",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Hubot::Scripts::Bundle",
  "PREREQ_PM" => {
    "AnyEvent::HTTP::ScopedClient" => 0,
    "DateTime" => 0,
    "DateTime::Format::Duration" => 0,
    "Encode" => 0,
    "JSON::XS" => 0,
    "Redis" => 0,
    "strict" => 0,
    "utf8" => 0,
    "warnings" => 0
  },
  "VERSION" => "0.0.9",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



