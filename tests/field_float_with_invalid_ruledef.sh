# added 2015-02-26 by singh.janmejay
# This file is part of the liblognorm project, released under ASL 2.0
. ./exec.sh $0 "float with invalid field-declaration"

add_rule 'rule=:%no:flo% foo'
execute '10.0 foo'
assert_output_json_eq '{ "originalmsg": "10.0 foo", "unparsed-data": "10.0 foo" }'
