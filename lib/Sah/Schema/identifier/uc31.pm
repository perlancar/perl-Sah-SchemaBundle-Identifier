package Sah::Schema::identifier::uc31;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ['identifier::uc' => {
    summary => 'Uppercase Identifier with a maximum length of 31 characters',
    description => <<'MARKDOWN',

Just like C<identifier::uc>, but limited to 63 characters.

MARKDOWN
    max_len => 31,
    examples => [
        {value=>'A'x 31, valid=>1},
        {value=>'A'x 32, valid=>0, summary=>'Too long'},
    ],
}];

1;
# ABSTRACT:
