package Sah::Schema::identifier::uc15;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ['identifier::uc' => {
    summary => 'Uppercase Identifier with a maximum length of 15 characters',
    description => <<'MARKDOWN',

Just like C<identifier::uc>, but limited to 15 characters.

MARKDOWN
    max_len => 15,
    examples => [
        {value=>'A'x 15, valid=>1},
        {value=>'A'x 16, valid=>0, summary=>'Too long'},
    ],
}];

1;
# ABSTRACT:
