#!/bin/bash
echo "============================================"
echo "Đang sửa lỗi cho Nextcloud 2026 (v32)"
echo "============================================"

# 1. Database indices
echo ""
echo "[1/5] Adding missing database indices..."
docker exec -u www-data nextcloud2026-app-1 php occ db:add-missing-indices

# 2. Mimetype migrations
echo ""
echo "[2/5] Running mimetype migrations (có thể mất vài phút)..."
docker exec -u www-data nextcloud2026-app-1 php occ maintenance:repair --include-expensive

# 3. Trusted proxies
echo ""
echo "[3/5] Fixing trusted proxies..."
docker exec -u www-data nextcloud2026-app-1 php occ config:system:delete trusted_proxies
docker exec -u www-data nextcloud2026-app-1 php occ config:system:set trusted_proxies 0 --value='172.16.0.0/12'

# 4. Phone region (Vietnam)
echo ""
echo "[4/5] Setting default phone region to Vietnam..."
docker exec -u www-data nextcloud2026-app-1 php occ config:system:set default_phone_region --value='VN'

# 5. Maintenance window (2 giờ sáng)
echo ""
echo "[5/5] Setting maintenance window to 2 AM..."
docker exec -u www-data nextcloud2026-app-1 php occ config:system:set maintenance_window_start --type=integer --value=2

echo ""
echo "============================================"
echo "Hoàn tất! Vui lòng refresh trang Admin."
echo "============================================"
