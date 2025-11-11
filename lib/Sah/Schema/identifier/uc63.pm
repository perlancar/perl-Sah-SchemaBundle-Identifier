package Sah::Schema::identifier::uc63;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ['identifier::uc' => {
    summary => 'Uppercase Identifier with a maximum length of 63 characters',
    description => <<'MARKDOWN',

Just like C<identifier::uc>, but limited to 63 characters.

MARKDOWN
    max_len => 63,
    examples => [
        {value=>'A'x 63, valid=>1},
        {value=>'A'x 64, valid=>0, summary=>'Too long'},
    ],
}];

1;
# ABSTRACT:
