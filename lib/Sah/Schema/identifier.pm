package Sah::Schema::identifier;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [str => {
    summary => 'A string that starts with [A-Za-z_] followed by zero of more [A-Za-z0-9_]',
    description => <<'MARKDOWN',

Identifier is an often-used definition for relatively safe names you can put
into file name, tack onto variable name, and so on.

MARKDOWN
    min_len => 1,
    match => qr/\A[A-Za-z_][A-Za-z0-9_]*\z/,
    examples => [
        {value=>{}, valid=>0, summary=>"Not a string"},
        {value=>'', valid=>0, summary=>'Empty string'},
        {value=>'a', valid=>1},
        {value=>'a1', valid=>1},
        {value=>'Aa', valid=>1},
        {value=>'a_', valid=>1},
        {value=>'_a', valid=>1},
        {value=>'a__b', valid=>1},
        {value=>'a b', valid=>0, summary=>'Contains whitespace'},
        {value=>'ab-', valid=>0, summary=>'Contains invalid character'},
    ],
}];

1;
# ABSTRACT:
