package Sah::Schema::identifier::uc;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [str => {
    summary => 'A string that starts with [A-Z_] followed by zero of more [A-Z0-9_]',
    description => <<'MARKDOWN',

Just like C<identifier>, but must contain uppercase [A-Z] only.

MARKDOWN
    min_len => 1,
    match => qr/\A[A-Z_][A-Z0-9_]*\z/,
    examples => [
        {value=>{}, valid=>0, summary=>"Not a string"},
        {value=>'', valid=>0, summary=>'Empty string'},
        {value=>'A', valid=>1},
        {value=>'A1', valid=>1},
        {value=>'Aa', valid=>0, summary=>'Contains lowercase letter'},
        {value=>'A_', valid=>1},
        {value=>'_A', valid=>1},
        {value=>'A__B', valid=>1},
        {value=>'A B', valid=>0, summary=>'Contains whitespace'},
        {value=>'AB-', valid=>0, summary=>'Contains invalid character'},
    ],
}];

1;
# ABSTRACT:
