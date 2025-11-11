package Sah::Schema::identifier::uc127;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ['identifier::uc' => {
    summary => 'Uppercase Identifier with a maximum length of 127 characters',
    description => <<'MARKDOWN',

Just like C<identifier::uc>, but limited to 127 characters.

MARKDOWN
    max_len => 127,
    examples => [
        {value=>'A'x 127, valid=>1},
        {value=>'A'x 128, valid=>0, summary=>'Too long'},
    ],
}];

1;
# ABSTRACT:
