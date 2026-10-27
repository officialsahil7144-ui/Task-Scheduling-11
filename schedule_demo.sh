#!/usr/bin/env bash 
set -e 
mkdir -p "$HOME/linux_schedule_lab" 
printf 'Task ran at %s\n' "$(date '+%F %T')" >> "$HOME/linux_schedule_lab/run.log" 
echo "A test task entry was added." 
tail -n 1 "$HOME/linux_schedule_lab/run.log" 
echo 
echo "Example cron entry (edit with crontab -e):" 
echo '*/5 * * * * $HOME/linux_schedule_lab/task.sh'  
