#!/bin/bash

echo "Stopping containers..."
docker-compose down -v

echo "Cleaning old data..."
rm -rf ./db/* ./html/*
mkdir -p ./db ./html ./nginx

echo "Starting database..."
docker-compose up -d db
echo "Waiting 60 seconds..."
sleep 60

echo "Creating database user..."
docker-compose exec -T db mysql -uroot -pcdv@2000 << 'EOF'
DROP USER IF EXISTS 'nextcloud'@'%';
CREATE USER 'nextcloud'@'%' IDENTIFIED BY 'cdv@2000';
GRANT ALL PRIVILEGES ON nextcloud.* TO 'nextcloud'@'%';
FLUSH PRIVILEGES;
EOF

echo "Starting all services..."
docker-compose up -d

echo ""
echo "Done! Wait 30 seconds then open: http://localhost:8080"
echo ""
echo "Database info:"
echo "  User: nextcloud"
echo "  Password: cdv@2000"
echo "  Database: nextcloud"
echo "  Host: db"