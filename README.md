<h1 align="center">🐳 Bot Generador de Entornos Docker</h1>

<p align="center">
  <b>Asistente Virtual IA para despliegue automático de contenedores</b><br>
  <sub>DAM · Sistemas Informáticos · Proyecto integrador (3ª Evaluación)</sub>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Status-Completado-brightgreen?style=for-the-badge&logo=docker">
  <img src="https://img.shields.io/badge/Author-Jose%20Espinoza-blue?style=for-the-badge&logo=github">
</p>

---

## 🧐 ¿Qué es esto?
¡Un **bot de Telegram con IA** que trabaja para ti! A partir de una descripción en lenguaje natural, genera y despliega automáticamente un entorno Docker personalizado. 

> **Ejemplo:**
> * **Usuario:** "Quiero un Nginx con PHP"
> * **Bot:** "Entorno generado... `services: nginx: image: nginx:latest`"

---

## 🏗️ Arquitectura del Sistema
El flujo es totalmente automatizado mediante el uso de túneles y orquestación de servicios:

```mermaid
graph LR
    A[Telegram] -->|Webhook| B(ngrok)
    B --> C[n8n]
    C --> D[Groq IA]
    D --> E[Execute Command]
    E --> F[Docker]
ComponenteFunciónPuerton8nOrquestador de flujos ⚙️5678OpenHandsAgente de ejecución 🤖3000Groq (Llama-3.1)Cerebro IA 🧠APITelegramInterfaz de usuario 💬—ngrokTúnel HTTPS 🌐—⚡ Comandos del BotGestiona tu infraestructura desde el chat:Texto libre: Genera y despliega un entorno Docker al vuelo./listar: 📋 Muestra todos los contenedores activos./parar [nombre]: 🛑 Detiene un contenedor./eliminar [nombre]: 🗑️ Elimina un contenedor.Cualquier otra cosa: Conversación fluida con IA.🚀 Guía de Arranque RápidoClonar el repo:Bashgit clone [https://github.com/Jin-maker-bit/docker-bot-dam.git](https://github.com/Jin-maker-bit/docker-bot-dam.git)
cd docker-bot-dam
Configuración: Edita docker-compose.yml e ingresa tus LLM_API_KEY (Groq) y WEBHOOK_URL (ngrok).Despliegue:Bashdocker compose up -d
Túnel ngrok: ```bashngrok http 5678 --request-header-add "ngrok-skip-browser-warning: true"Importar Workflow: Accede a http://localhost:5678, importa exports/workflow-n8n.json y activa el switch.📈 Niveles de Proyecto[✅] Nivel 1: Infraestructura base (n8n + OpenHands + Groq).[✅] Nivel 2: Despliegue real con volúmenes de persistencia.[✅] Nivel 3: Integración completa de comandos Telegram + ngrok.🛠️ Notas TécnicasDocker-CLI: Imagen de n8n personalizada con docker-cli y docker-compose instalados.IA: Optimizado para llama-3.1-8b-instant por su gran velocidad en ARM64.Persistencia: Volúmenes nombrados para mantener tus datos vivos entre reinicios.
