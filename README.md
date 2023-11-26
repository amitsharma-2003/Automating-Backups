# Automating-Backups
We have created a simple yet effective backup script using Bash on a Linux system. Additionally, we have automated this script using cron

Title: Automating Backups in Linux with a Bash Script and Cron

Introduction:
Data is a critical aspect of any project or system, and having a robust backup strategy is essential to ensure the integrity and availability of your data. In this article, we'll explore how to create a simple yet effective backup script using Bash on a Linux system. Additionally, we'll demonstrate how to automate this script using cron, a time-based job scheduler in Unix-like operating systems.

The Backup Script:
Let's start by creating a Bash script that performs a basic backup of a specified directory. Open your favorite text editor and create a file named backup.sh. Here's a sample script:

bash
Copy code
#!/bin/bash

source_dir="/home/ubuntu/Projects"
target_dir="/home/ubuntu/Backup_for_Projects"

current_timestamp=$(date "+%Y-%m-%d-%H-%M-%S")

echo "Taking backup for timestamp: $current_timestamp"

final_file="$target_dir/file_backup-$current_timestamp.tgz"

tar czf "$final_file" -C "$source_dir" .

echo "Backup Complete"
Explanation of the script:

source_dir: The directory you want to back up.
target_dir: The directory where the backup will be stored.
current_timestamp: A timestamp to uniquely identify each backup.
final_file: The final path and filename for the compressed backup file.
The tar command creates a compressed archive of the source directory in the target directory.
Automation with Cron:
Now that we have our backup script, let's automate it using cron.

Open your crontab file for editing:

bash
Copy code
crontab -e
Add a line to schedule the script. For example, to run the script every day at 2 AM:

bash
Copy code
0 2 * * * /path/to/your/backup.sh
Replace /path/to/your/backup.sh with the actual path to your backup script.

Conclusion:
With this simple yet effective backup script and the power of cron, you can automate the backup process on your Linux system. Regular backups are crucial for data integrity and recovery, and by incorporating this script into your routine, you can ensure that your important data is consistently and securely backed up. Feel free to customize the script and schedule to meet your specific backup needs.
