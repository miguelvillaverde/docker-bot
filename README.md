<h1 align="center">🐳 Bot Generador de Entornos Docker</h1>

<p align="center">
  <b>Asistente Virtual con IA para Despliegue Automático de Contenedores</b>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Proyecto-Integrador-purple?style=for-the-badge">
  <img src="https://img.shields.io/badge/DAM-Sistemas%20Informáticos-blue?style=for-the-badge">
</p>

---

## 👥 Autores
Proyecto desarrollado colaborativamente por:
* **Miguel Villaverde**
* **Iker Rios**

---

## 🧐 ¿Qué es este proyecto?
Es una solución de automatización inteligente que permite crear entornos Docker mediante lenguaje natural. Tú describes lo que necesitas en Telegram, y nuestro sistema, potenciado por IA, diseña y levanta el entorno de forma inmediata.

> **Ejemplo de uso:**
> * **Usuario:** "Quiero un Nginx con PHP"
> * **Bot:** "Entorno generado con éxito ✅"

---

## 🏗️ Arquitectura del Sistema
El flujo de trabajo combina la agilidad de los bots de Telegram con la potencia de los orquestadores de contenedores:

**Telegram** ➔ **ngrok** ➔ **n8n** ➔ **Groq IA** ➔ **Docker**

| Componente | Función Principal |
| :--- | :--- |
| **n8n** | Orquestador de flujos y lógica de negocio |
| **OpenHands** | Agente especializado en ejecución de código |
| **Groq (Llama-3.1)** | Cerebro IA para interpretar requisitos |
| **Telegram Bot** | Interfaz de comunicación con el usuario |
| **ngrok** | Túnel seguro para exponer el webhook |

---

## ⚡ Comandos Disponibles
Gestiona toda tu infraestructura cómodamente desde tu chat:

* **Texto libre:** Describe el entorno y el bot se encarga del despliegue.
* `/listar`: 📋 Muestra todos los contenedores activos.
* `/parar [nombre]`: 🛑 Detiene un contenedor en ejecución.
* `/eliminar [nombre]`: 🗑️ Elimina un contenedor permanentemente.

---

## 🚀 Guía de Configuración

### 1. Clonar el repositorio
```bash
git clone [https://github.com/miguelvillaverde/docker-bot.git](https://github.com/miguelvillaverde/docker-bot.git)
cd docker-bot
2. Variables de Entorno
Edita tu docker-compose.yml y configura las credenciales necesarias:

LLM_API_KEY: Tu clave de API de Groq.

WEBHOOK_URL: La dirección proporcionada por tu túnel ngrok.

3. Lanzamiento
Bash
docker compose up -d --build
4. Configuración del Túnel
Para permitir que Telegram se comunique con tu máquina:

Bash
ngrok http 5678 --request-header-add "ngrok-skip-browser-warning: true"
📈 Niveles de Implementación
Nivel 1: Infraestructura base (n8n, Docker, conexión con Groq).

Nivel 2: Persistencia de datos y automatización de despliegue.

Nivel 3: Integración completa de comandos en Telegram.

🛠️ Notas Técnicas
Entorno: Diseñado para alta compatibilidad con arquitecturas ARM64.

Persistencia: Uso de volúmenes nombrados para asegurar que los datos sobrevivan a los reinicios.

Seguridad: Comunicación securizada mediante túnel estático.
