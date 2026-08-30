
<div align="center">

# ☕ Coffee Barista & Manager AI Agent 

**A high-performance, production-ready intelligent assistant and data agent suite developed strictly through official Google GenAI Codelabs and Advanced ADK Training.**

![Python](https://img.shields.io/badge/Python-3.13-blue?logo=python&logoColor=white)
![Google Cloud](https://img.shields.io/badge/Cloud-Google_Cloud_Run-4285F4?logo=googlecloud&logoColor=white)
![Google GenAI](https://img.shields.io/badge/AI-Google_GenAI_%2B_Gemini-4285F4?logo=google&logoColor=white)
![vLLM](https://img.shields.io/badge/Engine-vLLM_%2B_Gemma_4-FF6F00?logo=pytorch&logoColor=white)
![Status](https://img.shields.io/badge/Status-Active_%2F_Codelabs_Verified-brightgreen)

[Overview](#-overview) · [Google GenAI Codelabs Tracks](#-google-genai-codelabs-tracks) · [Quick Start](#-quick-start) · [Cloud Deployment](#-cloud-deployment)

</div>

---

## 🌟 Overview

Welcome to the official unified repository for the **Coffee Barista & Manager AI Agent Suite**, built by **Muhammad Ali Shan** (Computer Science undergraduate at UET Lahore) as part of official **Google GenAI Codelabs** and cloud infrastructure learning tracks. 

This repository consolidates hands-on lab projects featuring customer-facing conversational RAG architectures, Firestore database integrations, serverless GPU inference pipelines utilizing vLLM with Gemma 4, and BigQuery Model Context Protocol (MCP) data agents.

---

## 🚀 Google GenAI Codelabs Tracks

| Codelab Track | Core Lab Objective | Technologies & Architecture |
| :--- | :--- | :--- |
| **Track 1: Core Barista RAG** | Building a virtual coffee shop barista assistant powered by grounded Retrieval-Augmented Generation. | Python, FastAPI, Firestore, LangChain, Gemini API |
| **Track 2: App Integration & Seed** | Setting up backend database seeding, menu management structures, and user session orchestration. | Python, JSON, Firestore, REST APIs |
| **Track 3: Manager & Data Agent** | Deploying enterprise data agents integrating vLLM, Gemma 4, Cloud Run, and BigQuery MCP. | Google ADK, vLLM, BigQuery MCP, Cloud Run, Docker |

---

## 🛠️ Quick Setup & Installation

Clone the repository and set up your local development environment:

```bash
# Clone the repository
git clone [https://github.com/MuhammadAliShan77/coffee-barista-agent.git](https://github.com/MuhammadAliShan77/coffee-barista-agent.git)
cd coffee-barista-agent

# Set up the virtual environment
python -m venv .venv
# .venv\Scripts\activate          # Windows
source .venv/bin/activate         # macOS/Linux

# Install required dependencies
python -m pip install -r requirements.txt

```

---

## ☁️ Google GenAI Codelabs Cloud Deployment

Following official **Google GenAI Codelabs** instructions for cloud deployment, the data agent and model inference engine are deployed on **Google Cloud Run** using serverless GPU containers:

1. **Model Weight Caching & Cloud Build:**
Configured single-region Cloud Storage buckets with Direct VPC Egress and Run:ai Model Streamer for high-speed container bootups.
2. **ADK Agent Deployment:**
```bash
adk deploy cloud_run \
    --with_ui \
    --project $GOOGLE_CLOUD_PROJECT \
    --region $GOOGLE_CLOUD_REGION \
    --service_name gemma4-data-agent \
    --app_name data_agent \
    data_agent

```


3. **BigQuery MCP Tooling:**
Empowered the `data_agent` with secure, read-only SQL execution (`execute_sql_readonly`) over public datasets (such as NYC Citibike) to extract precise business analytics and insights.

---

## 👨‍💻 Author & Acknowledgments

* **Developer**: **Muhammad Ali Shan** (Computer Science Student, UET Lahore)
* **Context**: Developed strictly through official **Google GenAI Codelabs** and cloud infrastructure training modules.
---

<div align="center">

Built with ❤️ AI Excellence | Official Google GenAI Codelabs

</div>
