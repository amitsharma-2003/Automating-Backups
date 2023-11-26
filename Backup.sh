#!/bin/bash

source_dir="/home/ubuntu/Projects"
target_dir="/home/ubuntu/Backup_for_Projects"

current_timestamp=$(date "+%Y-%m-%d-%H-%M-%S")

echo "Taking backup for timestamp: $current_timestamp"

final_file="$target_dir/file_backup-$current_timestamp.tgz"

tar czf "$final_file" -C "$source_dir" .

echo "Backup Complete"
