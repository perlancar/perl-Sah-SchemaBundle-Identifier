package Sah::Schema::identifier::no_u_delim;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [str => {
    summary => 'A string that starts with [a-z] followed by zero of more [a-z0-9_] and ends with [a-z0-9]',
    description => <<'MARKDOWN',

This is a version of C<identifier> that does not allow underscore delimiters.
Underscore is still allowed in the middle.

MARKDOWN
    min_len => 1,
    match => qr/\A(?:[A-Za-z]|[A-Za-z][A-Za-z0-9_]*[A-Za-z0-9])\z/,
    examples => [
        {value=>{}, valid=>0, summary=>"Not a string"},
        {value=>'', valid=>0, summary=>'Empty string'},
        {value=>'a', valid=>1},
        {value=>'a1', valid=>1},
        {value=>'Aa', valid=>1},
        {value=>'a_', valid=>0, summary=>'Contains underscore delimiter'},
        {value=>'_a', valid=>0, summary=>'Contains underscore delimiter'},
        {value=>'a__b', valid=>1},
        {value=>'a b', valid=>0, summary=>'Contains whitespace'},
        {value=>'ab-', valid=>0, summary=>'Contains invalid character'},
    ],
}];

1;
# ABSTRACT:
