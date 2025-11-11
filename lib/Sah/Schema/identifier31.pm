package Sah::Schema::identifier31;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ['identifier' => {
    summary => 'Identifier with a maximum length of 31 characters',
    description => <<'MARKDOWN',

Just like C<identifier>, but limited to 31 characters.

MARKDOWN
    max_len => 31,
    examples => [
        {value=>'a'x 31, valid=>1},
        {value=>'a'x 32, valid=>0, summary=>'Too long'},
    ],
}];

1;
# ABSTRACT:
