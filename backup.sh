#!/bin/bash

set -euo pipefail

BACKUP_DIR="$HOME/backup"

mkdir -p "$BACKUP_DIR"

echo "=== Backup started: $(date) ==="

backup() {
    local source="$1"
    local name="$2"

    echo "Backing up $name..."

    tar -czf "$BACKUP_DIR/$name.tar.gz" "$source"
}

backup "./docker-compose.yml" "docker-compose"
backup "/mnt/qbittorrent/appdata/qBittorrent" "qbittorrent"
backup "./docker/jellyfin/config" "jellyfin"
backup "./docker/homepage/config" "homepage"
backup "./docker/prowlarr/data" "prowlarr"
backup "./docker/sonarr/data" "sonarr"
backup "./docker/radarr/config" "radarr"
backup "./files" "vikunjafiles"
backup "./db" "vikunjadb"

echo "=== Backup finished ==="

