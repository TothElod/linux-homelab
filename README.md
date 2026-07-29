# Linux Homelab

![Docker](https://img.shields.io/badge/Docker-Compose-blue)
![License](https://img.shields.io/badge/License-GPLv3-blue)

A Docker-based homelab running on Linux, designed to provide a self-hosted media server, task management, automation, monitoring, and reverse proxy services while serving as a learning project for Linux system administration, Docker, networking, DevOps, and self-hosted infrastructure.

---

# Project Overview

This project aims to build a complete self-hosted home server using Docker Compose on Linux. The primary goal is to gain practical experience with Linux administration, containerization, networking, reverse proxies, monitoring, automation, version control, service management and DevOps workflows.

The homelab currently includes the following services:

* **Jellyfin** – Media streaming server
* **qBittorrent** – Torrent client
* **Radarr** – Movie management and automation
* **Sonarr** – TV series management and automation
* **Lidarr** - Music management and automation
* **Prowlarr** – Indexer management
* **Homepage** – Dashboard for accessing all services
* **Vikunja** – Self-hosted task management
* **Caddy** - Reverse proxy with HTTPS support
* **Prometheus** - Metrics collection
* **Grafana** - Monitoring dashboards and alerting
* **Node Exporter** - Linux system metrics
* **cAdvisor** - Docker container metrics
* **Automated backup script** – Scheduled backups using dcron


This project is continuously evolving as new services and features are added.

---

# Features

* Docker Compose based deployment
* Reverse proxy using Caddy
* Local domain names for services
* Persistent Docker volumes
* Automated media management
* Self-hosted dashboard
* System monitoring
* Docker container monitoring
* Grafana alerting (Discord webhook)
* Task management
* Automatic backups
* Easy service management
* Beginner-friendly project structure

---

# Technologies

* Linux
* Docker
* Docker Compose
* Caddy
* Prometheus
* Grafana
* Node Exporter
* cAdvisor
* Bash
* YAML
* PostgreSQL
* SQLite

---

# Project Structure

```text
.
├── backup.sh
├── caddy
│   ├── Caddyfile
│   ├── config
│   └── data
├── db
├── docker
│   ├── grafana
│   ├── homepage
│   ├── jellyfin
│   ├── lidarr
│   ├── prometheus
│   ├── prowlarr
│   ├── radarr
│   └── sonarr
├── docker-compose.yml
├── files
├── LICENSE
└── README.md

```
---
# Networking

All containers communicate through a shared Docker bridge network.

Caddy acts as a reverse proxy, allowing services to be accessed using friendly hostnames such as:

https://jellyfin.example.com
https://homepage.example.com
https://grafana.example.com

For local development these hostnames can be mapped using the operating system's `hosts` file.

---
# Monitoring

Monitoring is provided by Prometheus and Grafana.

Collected metrics include:

* CPU usage
* Memory usage
* Disk usage
* Docker container statistics
* Host uptime
* Network traffic

Grafana dashboards visualize these metrics and alert rules can send notifications through Discord webhooks when predefined conditions are met.

---
# Installation

## Prerequisites

Before starting, make sure the following software is installed:

* Docker
* Docker Compose
* Git

Clone the repository:

```bash
git clone https://github.com/TothElod/linux-homelab.git
cd linux-homelab
```

Create your environment file:

```bash
cp .env.example .env
```

Edit the configuration to match your system.

Start all services:

```bash
docker compose up -d
```

Verify that all containers are running:

```bash
docker compose ps
```

---

# Usage

After deployment, the services are available through their respective ports.

| Service     | Default Port |
| ----------- | ------------ |
| Homepage    | 3000         |
| Jellyfin    | 8096         |
| qBittorrent | 8080         |
| Radarr      | 7878         |
| Sonarr      | 8989         |
| Lidarr      | 8686         |
| Prowlarr    | 9696         |
| Vikunja     | 3456         |
| Grafana     | 3001         |
| Prometheus  | 9090         |

Open your browser and navigate to the desired service.

Example:

```
http://192.168.x.x:3000
```

or

```
http://homepage.example.com
```

---

# Backup

A Bash script is included to create backups of the service configurations.

The backup process is intended to run automatically using dcron's anacron-like scheduling, ensuring that backups are performed even if the server is not powered on at the scheduled time.

---

# Roadmap

Planned improvements include:

* CI/CD with GitHub Actions
* Automatic Docker image updates
* WireGuard VPN
* Centralized logging
* Monitoring improvements
* Additional Grafana dashboards
* Additional self-hosted services

---

# Contributing

Contributions are welcome.

If you would like to contribute:

1. Fork the repository.
2. Create a new feature branch.
3. Commit your changes with clear commit messages.
4. Submit a Pull Request describing your changes.

Please keep the code style consistent and document any significant changes.

---

# License

This project is licensed under the GNU General Public License v3.0 (GPL-3.0).

See the LICENSE file for details.

---

# Acknowledgements

Thanks to the developers and maintainers of the open-source projects used in this homelab, including Docker, Jellyfin, LinuxServer.io, Vikunja, Grafana Labs, Prometheus, Caddy, and the broader open-source community.

---

## Third-party software

This project uses several open-source applications that retain their own licenses.

- Jellyfin
- qBittorrent
- Radarr
- Sonarr
- Lidarr
- Prowlarr
- Homepage
- Vikunja
- Caddy
- Prometheus
- Grafana
- Node Exporter
- cAdvisor
- Docker

Each project is licensed under its respective license. Please refer to the official repositories of those projects for licensing information.
