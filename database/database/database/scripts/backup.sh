#!/bin/bash

DATE=$(date +%Y%m%d_%H%M%S)

pg_dump -U admin -d hotel > backup_$DATE.sql

echo "Backup completed"
