# Customer Support Intake Web UI

A simple Node.js web application that allows users to select sample customer support messages and submit them to a Kafka topic.

## Quick Start

### Using Pre-built Container (Recommended)

Pull and run the latest container from GitHub Container Registry:

```bash
docker pull ghcr.io/YOUR_USERNAME/summit2025-ai-demo-svcs/sample-data:latest
docker run -p 8080:8080 \
  -e KAFKA_BROKER=your-kafka-broker:9092 \
  -e KAFKA_INTAKE_TOPIC=intake \
  ghcr.io/YOUR_USERNAME/summit2025-ai-demo-svcs/sample-data:latest
```

### Using Docker Build

Build and run locally:

```bash
docker build -t customer-support-intake .
docker run -p 8080:8080 \
  -e KAFKA_BROKER=your-kafka-broker:9092 \
  -e KAFKA_INTAKE_TOPIC=intake \
  customer-support-intake
```

### Using Node.js Directly

```bash
npm install
npm start
```

Open your browser to `http://localhost:8080`

## Environment Variables

### Server Configuration
- `PORT`: Server port (default: 8080)

### Kafka Configuration
- `KAFKA_BROKER`: Kafka broker address (default: localhost:9092)
- `KAFKA_INTAKE_TOPIC`: Topic name for intake messages (default: intake)
- `KAFKA_SECURITY_PROTOCOL`: Security protocol (SSL, SASL_SSL, PLAINTEXT)
- `KAFKA_SASL_MECHANISM`: SASL mechanism (plain, scram-sha-256, scram-sha-512)
- `KAFKA_SASL_USERNAME`: SASL username for authentication
- `KAFKA_SASL_PASSWORD`: SASL password for authentication

## Features

- 📧 Web UI for selecting customer support messages
- 🔄 Real-time content preview
- 📤 Form submission to Kafka topics
- ✅ Success page with message tracking
- 🐳 Containerized deployment
- 🚀 GitHub Actions CI/CD pipeline
