#!/bin/bash

# Configuration for Decentralized Data Pipeline Parser

# Set decentralization parameters
NODE_COUNT=5
NETWORK_LATENCY=50
DATA_CHUNK_SIZE=1024

# Set data sources
DATA_SOURCES=(
  "https://datasource1.com/stream"
  "https://datasource2.com/stream"
  "https://datasource3.com/stream"
)

# Set data sinks
DATA_SINKS=(
  "https://sink1.com/ingest"
  "https://sink2.com/ingest"
  "https://sink3.com/ingest"
)

# Set parser configuration
PARSER_MODULE="x57h_parser.so"
PARSER_ARGS="-t 10 -b 100"

# Set logging configuration
LOG_LEVEL="INFO"
LOG_FILE="/var/log/x57h_decent.log"

# Set pipeline topology
PIPELINE_TOPOLOGY="

  datasource1 ->
  parser ->
  sink1

  datasource2 ->
  parser ->
  sink2

  datasource3 ->
  parser ->
  sink3
"

# Set failure tolerance
FAILURE_TOLERANCE=2

# Set debug mode
DEBUG_MODE=false