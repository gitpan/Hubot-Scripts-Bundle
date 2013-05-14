
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "optional scripts for hubot",
  "AUTHOR" => "Hyungsuk Hong <hshong\@perl.kr>, Hojung Youn <amoc.yn\@gmail.com>",
  "BUILD_REQUIRES" => {},
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
    "Lingua::KO::Hangul::Util" => 0,
    "List::Util" => 0,
    "Redis" => 0,
    "Try::Tiny" => 0,
    "strict" => 0,
    "utf8" => 0,
    "warnings" => 0
  },
  "TEST_REQUIRES" => {
    "AnyEvent" => 0,
    "Hubot::Adapter" => 0,
    "Hubot::Message" => 0,
    "Hubot::Robot" => 0,
    "Hubot::User" => 0,
    "Moose" => 0,
    "Test::More" => 0,
    "namespace::autoclean" => 0
  },
  "VERSION" => "0.1.2",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  my $tr = delete $WriteMakefileArgs{TEST_REQUIRES};
  my $br = $WriteMakefileArgs{BUILD_REQUIRES};
  for my $mod ( keys %$tr ) {
    if ( exists $br->{$mod} ) {
      $br->{$mod} = $tr->{$mod} if $tr->{$mod} > $br->{$mod};
    }
    else {
      $br->{$mod} = $tr->{$mod};
    }
  }
}

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



