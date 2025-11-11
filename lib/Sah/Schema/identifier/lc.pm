package Sah::Schema::identifier::lc;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [str => {
    summary => 'A string that starts with [a-z_] followed by zero of more [a-z0-9_]',
    description => <<'MARKDOWN',

Just like C<identifier>, but must contain lowercase [a-z] only.

MARKDOWN
    min_len => 1,
    match => qr/\A[a-z_][a-z0-9_]*\z/,
    examples => [
        {value=>{}, valid=>0, summary=>"Not a string"},
        {value=>'', valid=>0, summary=>'Empty string'},
        {value=>'a', valid=>1},
        {value=>'a1', valid=>1},
        {value=>'Aa', valid=>0, summary=>'Contains uppercase letter'},
        {value=>'a_', valid=>1},
        {value=>'_a', valid=>1},
        {value=>'a__b', valid=>1},
        {value=>'a b', valid=>0, summary=>'Contains whitespace'},
        {value=>'ab-', valid=>0, summary=>'Contains invalid character'},
    ],
}];

1;
# ABSTRACT:
