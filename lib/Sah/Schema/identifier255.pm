package Sah::Schema::identifier255;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ['identifier' => {
    summary => 'Identifier with a maximum length of 255 characters',
    description => <<'MARKDOWN',

Just like C<identifier>, but limited to 255 characters. Can be used, e.g. for
file names in Unix filesystem.

MARKDOWN
    max_len => 255,
    examples => [
        {value=>'a'x 255, valid=>1},
        {value=>'a'x 256, valid=>0, summary=>'Too long'},
    ],
}];

1;
# ABSTRACT:
