package Sah::Schema::identifier::uc255;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ['identifier::uc' => {
    summary => 'Uppercase Identifier with a maximum length of 255 characters',
    description => <<'MARKDOWN',

Just like C<identifier::uc>, but limited to 255 characters.

MARKDOWN
    max_len => 255,
    examples => [
        {value=>'A'x 255, valid=>1},
        {value=>'A'x 256, valid=>0, summary=>'Too long'},
    ],
}];

1;
# ABSTRACT:
