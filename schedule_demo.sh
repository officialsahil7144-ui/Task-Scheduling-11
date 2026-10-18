#!/usr/bin/env bash
set -e

WORK="schedule_lab"
mkdir -p "$WORK"

echo "Scheduling Demonstration"
echo "Current date and time:"
date

echo
echo "Cron service status:"
if command -v systemctl >/dev/null 2>&1; then
    systemctl is-active cron || true
else
    echo "systemctl is not available"
fi

echo
echo "Current user's scheduled cron jobs:"
crontab -l 2>/dev/null || echo "No crontab entries found"

echo
echo "Scheduling demo completed."
