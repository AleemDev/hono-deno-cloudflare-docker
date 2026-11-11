# hono-deno-cloudflare-docker
A production-ready backend boilerplate built with Hono and Deno, containerized with Docker for local development, and pre-configured for seamless deployment to Cloudflare Workers.

## Project Overview

This repository provides a standalone, reusable starter kit for building a highly responsive, serverless REST API. It leverages Deno as the local TypeScript runtime and Hono as the web framework. Because the codebase relies strictly on standard Web Fetch APIs, the exact same entry point runs locally inside Docker and deploys natively to Cloudflare Workers without requiring any code changes or transpilation.
Tech Stack

* Framework: Hono (lightweight, edge-optimized routing).

* Runtime & Package Manager: Deno (utilizing native npm: specifier compatibility).

* Containerization: Docker & Docker Compose (using the denoland/deno image).

* Deployment Target: Cloudflare Workers (via wrangler.toml).

## Core Architecture & Configuration

* Universal Entry Point: The src/index.ts file exports a default fetch handler that is natively recognized by both the local deno serve command and Cloudflare Workers in production.

* Isolated Local Development: The docker-compose.yml mounts the local directory as a volume (.:/app) and maps port 8000, enabling instant hot-reloading through the Deno container without needing Deno installed on the host machine.

* Zero-Config Tooling: The project utilizes a deno.json file to manage imports (like npm:hono) and define local development tasks, bypassing the need for a traditional package.json or complex build pipelines.

* Headless Deployment Pipeline: The boilerplate includes a structured workflow to deploy directly to Cloudflare's edge network via an ephemeral Node Docker container, keeping the host machine completely free of global Wrangler or npm dependencies.