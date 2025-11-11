package Sah::Schema::identifier::lc127;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ['identifier::lc' => {
    summary => 'Lowercase Identifier with a maximum length of 127 characters',
    description => <<'MARKDOWN',

Just like C<identifier::lc>, but limited to 127 characters.

MARKDOWN
    max_len => 127,
    examples => [
        {value=>'a'x 127, valid=>1},
        {value=>'a'x 128, valid=>0, summary=>'Too long'},
    ],
}];

1;
# ABSTRACT:
