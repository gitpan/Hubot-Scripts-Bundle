use strict;
use Test::More tests => 8;

BEGIN { use_ok 'Hubot::Scripts::Bundle' }
BEGIN { use_ok 'Hubot::Scripts::ping' }
BEGIN { use_ok 'Hubot::Scripts::redisBrain' }
BEGIN { use_ok 'Hubot::Scripts::uptime' }
BEGIN { use_ok 'Hubot::Scripts::whisper' }
BEGIN { use_ok 'Hubot::Scripts::eval' }
BEGIN { use_ok 'Hubot::Scripts::tell' }
BEGIN { use_ok 'Hubot::Scripts::bugzilla' }
