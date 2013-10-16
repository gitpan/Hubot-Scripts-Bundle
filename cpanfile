requires "AnyEvent" => "0";
requires "AnyEvent::HTTP::ScopedClient" => "0";
requires "DateTime" => "0";
requires "DateTime::Format::Duration" => "0";
requires "Encode" => "0";
requires "JSON::XS" => "0";
requires "Lingua::KO::Hangul::Util" => "0";
requires "List::Util" => "0";
requires "Redis" => "0";
requires "Storable" => "0";
requires "Try::Tiny" => "0";
requires "strict" => "0";
requires "utf8" => "0";
requires "warnings" => "0";

on 'test' => sub {
  requires "Hubot::Adapter" => "0";
  requires "Hubot::Message" => "0";
  requires "Hubot::Robot" => "0";
  requires "Hubot::User" => "0";
  requires "Moose" => "0";
  requires "Test::More" => "0";
  requires "lib" => "0";
  requires "namespace::autoclean" => "0";
};

on 'configure' => sub {
  requires "ExtUtils::MakeMaker" => "6.30";
};
