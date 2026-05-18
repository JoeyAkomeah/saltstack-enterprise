# SaltStack Enterprise Automation Platform

Centralized infrastructure automation platform using SaltStack with role-based configuration, environment-aware deployments, and self-healing capabilities.

---

## Architecture

### Overview

This system uses a **Salt Master–Minion architecture** to manage multiple Linux nodes from a central control point.

- **Salt Master** controls all configuration and orchestration
- **Minions** (web-dev, web-prod, db-server) receive and enforce configurations
- Communication is secured using Salt key authentication over a private network

---

### Components

#### 🔹 Salt Master
- Stores states (`/srv/salt`) and pillar data (`/srv/pillar`)
- Manages authentication and job execution
- Orchestrates configuration across all nodes

#### 🔹 Minions

- **web-dev**
  - Development environment
  - Runs Nginx
  - Displays development-specific content

- **web-prod**
  - Production environment
  - Runs Nginx
  - Displays production content

- **db-server**
  - Database node
  - Configured using role-based targeting

---

### Configuration Management

#### 🔸 States
- Define desired system configuration
- Example:
  - Install packages (nginx, vim, curl)
  - Deploy web content
  - Ensure services are running

#### 🔸 Pillar
- Stores environment-specific data
- Separates configuration from logic
- Enables dynamic behavior (dev vs production)

---

### Role-Based Targeting

Using `top.sls`, nodes receive different configurations:

- `web-dev` → Development configuration
- `web-prod` → Production configuration
- `db-server` → Database configuration

---

### Self-Healing Mechanism

Each minion runs a scheduled task:

```yaml
schedule:
  highstate:
    function: state.highstate
    minutes: 5