package Sah::Schema::identifier63;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ['identifier' => {
    summary => 'Identifier with a maximum length of 63 characters',
    description => <<'MARKDOWN',

Just like C<identifier>, but limited to 63 characters.

MARKDOWN
    max_len => 63,
    examples => [
        {value=>'a'x 63, valid=>1},
        {value=>'a'x 64, valid=>0, summary=>'Too long'},
    ],
}];

1;
# ABSTRACT:
