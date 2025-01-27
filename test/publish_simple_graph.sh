#!/bin/bash

rostopic pub /graph_data graph_visualization/GraphMessage "{
  origin: 'test_origin',
  name: 'simple_graph',
  graph_json: '{
    \"nodes\": [{\"id\": \"A\", \"label\": \"Node A\"}],
    \"links\": [{\"source\": \"A\", \"target\": \"A\", \"value\": 1}]
  }'
}" -1
