#!/bin/bash

for i in `seq 1 100`; do
     time perl perl.pl 1 2> perl -ne 'print $_ . "foo"'
done

time perl moo.pl

time perl moose.pl
rm -f test.db ||:

time raku raku.raku
rm -rf test.db ||:

time ruby ruby.rb
rm -f test.db ||:
