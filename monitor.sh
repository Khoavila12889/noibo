# Xem PHP-FPM pool status
watch -n 5 'docker exec nextcloud2026-app-1 \
  cat /proc/$(pgrep -o php-fpm)/status | grep -E "VmRSS|Threads"'

# Hoặc dùng script
cat > monitor.sh << 'EOF'
#!/bin/bash
while true; do
  echo "=== $(date) ==="
  docker stats --no-stream --format \
    "table {{.Name}}\t{{.CPUPerc}}\t{{.MemUsage}}" | grep nextcloud
  sleep 60
done
EOF
chmod +x monitor.sh
./monitor.sh