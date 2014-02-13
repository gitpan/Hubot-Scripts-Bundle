
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "optional scripts for hubot",
  "AUTHOR" => "Hyungsuk Hong <hshong\@perl.kr>, Hojung Youn <amoc.yn\@gmail.com>, Jonas Genannt <jonas\@brachium-system.net>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Hubot-Scripts-Bundle",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Hubot::Scripts::Bundle",
  "PREREQ_PM" => {
    "AnyEvent" => 0,
    "AnyEvent::HTTP::ScopedClient" => 0,
    "DateTime" => 0,
    "DateTime::Format::Duration" => 0,
    "Encode" => 0,
    "JSON" => 0,
    "JSON::XS" => 0,
    "Lingua::KO::Hangul::Util" => 0,
    "List::Util" => 0,
    "Redis" => 0,
    "Storable" => 0,
    "Try::Tiny" => 0,
    "URI" => 0
  },
  "TEST_REQUIRES" => {},
  "VERSION" => "0.1.8",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "AnyEvent" => 0,
  "AnyEvent::HTTP::ScopedClient" => 0,
  "DateTime" => 0,
  "DateTime::Format::Duration" => 0,
  "Encode" => 0,
  "JSON" => 0,
  "JSON::XS" => 0,
  "Lingua::KO::Hangul::Util" => 0,
  "List::Util" => 0,
  "Redis" => 0,
  "Storable" => 0,
  "Try::Tiny" => 0,
  "URI" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



