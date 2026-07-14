# Linux Homelab

![Docker](https://img.shields.io/badge/Docker-Compose-blue)
![License](https://img.shields.io/badge/License-GPLv3-blue)

A Docker-based homelab running on Linux, designed to provide a self-hosted media server, task management, and automation environment while serving as a learning project for Linux system administration, Docker, networking, and DevOps concepts.

---

# Project Overview

This project aims to build a complete self-hosted home server using Docker Compose on Linux. The primary goal is to gain practical experience with Linux administration, containerization, networking, automation, and service management.

The homelab currently includes the following services:

* **Jellyfin** – Media streaming server
* **qBittorrent** – Torrent client
* **Radarr** – Movie management and automation
* **Sonarr** – TV series management and automation
* **Lidarr** - Music management and automation
* **Prowlarr** – Indexer management
* **Homepage** – Dashboard for accessing all services
* **Vikunja** – Self-hosted task management
* **Automated backup script** – Scheduled backups using cron/dcron


This project is continuously evolving as new services and features are added.

---

# Features

* Docker Compose based deployment
* Persistent Docker volumes
* Automated media management
* Self-hosted dashboard
* Task management
* Automatic backups
* Easy service management
* Beginner-friendly project structure

---

# Technologies

* Linux
* Docker
* Docker Compose
* Bash
* YAML
* PostgreSQL
* SQLite

---

# Project Structure

```text
.
├── docker-compose.yml
├── .env.example
├── backup.sh
├── docker/
│   ├── homepage/
│   ├── jellyfin/
│   ├── lidarr/
│   ├── prowlarr/
│   ├── radarr/
│   └── sonarr/
├── db/
├── files/
└── README.md
```

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
| Prowlarr    | 9696         |
| Vikunja     | 3456         |

Open your browser and navigate to the desired service.

Example:

```
http://localhost:3000
```

or

```
http://<your-server-ip>:3000
```

---

# Backup

A Bash script is included to create backups of the service configurations.

The backup process is intended to run automatically using dcron's anacron-like scheduling, ensuring that backups are performed even if the server is not powered on at the scheduled time.

---

# Roadmap

Planned improvements include:

* Reverse proxy
* HTTPS support
* Monitoring with Prometheus and Grafana
* Automated updates
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

Thanks to the developers and maintainers of the open-source projects used in this homelab, including Docker, Jellyfin, LinuxServer.io, Vikunja, and the broader open-source community.

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
- Docker

Each project is licensed under its respective license. Please refer to the official repositories of those projects for licensing information.
