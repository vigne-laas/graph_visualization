#!/bin/bash

# Premier graphe
rostopic pub /graph_data graph_visualization/GraphMessage "{
  origin: 'origin_1',
  name: 'graph_1',
  graph_json: '{
    \"nodes\": [
      {\"id\": \"X\", \"label\": \"Node X\", \"active\": true},
      {\"id\": \"Y\", \"label\": \"Node Y\", \"active\": false}
    ],
    \"links\": [
      {\"source\": \"X\", \"target\": \"Y\", \"label\": \"X to Y\"}
    ]
  }'
}" -1

sleep 1

# Deuxième graphe
rostopic pub /graph_data graph_visualization/GraphMessage "{
  origin: 'origin_2',
  name: 'graph_2',
  graph_json: '{
    \"nodes\": [
      {\"id\": \"A\", \"label\": \"Node A\", \"active\": false},
      {\"id\": \"B\", \"label\": \"Node B\", \"active\": true}
    ],
    \"links\": [
      {\"source\": \"A\", \"target\": \"B\", \"label\": \"A to B\"}
    ]
  }'
}" -1

sleep 1

## Troisième graphe
rostopic pub /graph_data graph_visualization/GraphMessage "{
  origin: 'origin_1',
  name: 'graph_3',
  graph_json: '{
    \"nodes\": [
      {\"id\": \"Z\", \"label\": \"Node Z\", \"active\": false},
      {\"id\": \"W\", \"label\": \"Node W\", \"active\": true}
    ],
    \"links\": [
      {\"source\": \"Z\", \"target\": \"W\", \"label\": \"Z to W\"}
    ]
  }'
}" -1
