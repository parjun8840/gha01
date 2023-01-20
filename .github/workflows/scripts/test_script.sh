#!/bin/bash
cat << EOF
1..13
ok 1 - IS $(whoami) != root
ok 2 - IS "$var" =~ parjun8840
ok 3 - ISNT "$var" == parjun8840
ok 4 - OK -f /etc/passwd
ok 5 - NOK -w /etc/passwd
ok 6 - RUNS true
ok 7 - NRUNS false
ok 8 - RUNS echo -e 'parjun8840\nbar\nbaz'
ok 9 - GREP bar
ok 10 - OGREP bar
ok 11 - NEGREP . # verify empty
ok 12 - DIFF. # verify empty
not ok 13 - TODO RUNS false # TODO Test Know to fail
EOF
exit 1

