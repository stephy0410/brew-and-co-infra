# Brew & Co. — Project Wiki

## Project Description

Brew & Co. is a modern coffee shop ordering application that allows customers to browse the menu and place orders. Built with a focus on DevOps best practices including CI/CD pipelines, infrastructure as code, and environment management.

## Tech Stack

| Layer | Technology |
|-------|-----------|
| Backend | Node.js + Express |
| Frontend | React + Vite |
| Containerization | Docker + DockerHub |
| CI/CD | GitHub Actions |
| Infrastructure | Terraform + Cloudflare Pages |
| Monitoring | Sentry (APM) |
| Version Control | Git + GitHub |

## Components

### Backend
- `GET /health` — Health check endpoint
- `GET /menu` — Returns full menu item list
- `GET /menu/:id` — Returns single menu item by ID

### Frontend
- Menu page — Displays all available products
- Product card component — Shows item name, price, category
- Order flow — Add items to cart

## Infrastructure Resources

| Resource | Provider | Environment |
|----------|---------|-------------|
| brew-and-co-dev | Cloudflare Pages | Dev |
| brew-and-co-prod | Cloudflare Pages | Prod |
| brew-and-co-backend | DockerHub | Both |

## Branch Strategy

| Branch | Purpose | Deploys to |
|--------|---------|------------|
| `main` | Production-ready code | Prod |
| `dev` | Integration branch | Dev |
| `feature/*` | Individual features | — |

## Deployment Diagram
feature/* → PR → dev → GitHub Actions → Cloudflare Pages (Dev)
↓
PR → main → GitHub Actions → Cloudflare Pages (Prod)

## Diagrams

> Class diagram, infrastructure diagram, and deployment diagram to be added by Hannah.
