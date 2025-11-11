package Sah::Schema::identifier::lc255;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ['identifier::lc' => {
    summary => 'Lowercase Identifier with a maximum length of 255 characters',
    description => <<'MARKDOWN',

Just like C<identifier::lc>, but limited to 255 characters.

MARKDOWN
    max_len => 255,
    examples => [
        {value=>'a'x 255, valid=>1},
        {value=>'a'x 256, valid=>0, summary=>'Too long'},
    ],
}];

1;
# ABSTRACT:
