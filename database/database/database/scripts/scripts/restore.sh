#!/bin/bash

FILE=$1

psql -U admin -d hotel < $FILE

echo "Restore completed"
