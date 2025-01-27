#!/bin/bash

rostopic pub /graph_data graph_visualization/GraphMessage "{
  origin: 'test_origin',
  name: 'graph_with_active_node',
  graph_json: '{
    \"nodes\": [
      {\"id\": \"A\", \"label\": \"Node A\", \"active\": true},
      {\"id\": \"B\", \"label\": \"Node B\", \"active\": false}
    ],
    \"links\": [
      {\"source\": \"A\", \"target\": \"B\", \"label\": \"A to B\"}
    ]
  }'
}" -1
