#!/bin/bash

set -x

psql -U postgres << EOSQL
CREATE DATABASE testdb;
EOSQL
