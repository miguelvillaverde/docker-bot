# 🐳 Bot Generador de Entornos Docker

**Asistente Virtual con IA para Despliegue Automático de Contenedores**

---

## 👥 Autores
Proyecto desarrollado colaborativamente por:
* Miguel Villaverde
* Iker Rios

---

## 🧐 ¿Qué es este proyecto?
Es una solución de automatización inteligente que permite crear entornos Docker mediante lenguaje natural. Tú describes lo que necesitas en Telegram y el sistema, potenciado por IA, diseña y levanta el entorno de forma inmediata.

---

## 🏗️ Arquitectura del Sistema
El flujo de trabajo combina la agilidad de los bots de Telegram con la potencia de los orquestadores de contenedores:

Telegram -> ngrok -> n8n -> Groq IA -> Docker

| Componente | Función Principal |
| :--- | :--- |
| n8n | Orquestador de flujos y lógica de negocio |
| OpenHands | Agente especializado en ejecución de código |
| Groq (Llama-3.1) | Cerebro IA para interpretar requisitos |
| Telegram Bot | Interfaz de comunicación con el usuario |
| ngrok | Túnel seguro para exponer el webhook |

---

## 🤖 Comandos del Bot
Gestiona toda tu infraestructura cómodamente desde el chat de Telegram:

### Gestión de Contenedores
* /crear [nombre] : Genera un nuevo entorno/contenedor
* /listar : Muestra la lista de contenedores activos
* /iniciar [nombre] : Inicia un contenedor detenido
* /detener [nombre] : Detiene un contenedor en ejecución
* /reiniciar [nombre] : Reinicia un contenedor
* /eliminar [nombre] : Elimina un contenedor del sistema

### Información y Estado
* /estado [nombre] : Consulta el estado detallado de un contenedor
* /logs [nombre] : Muestra los logs del contenedor
* /stats : Muestra estadísticas de recursos
* /imagenes : Lista las imágenes de Docker disponibles
* /volumenes : Lista los volúmenes configurados
* /redes : Muestra las redes de Docker activas

---

## 🚀 Guía de Configuración

1. Clonar el repositorio
   git clone https://github.com/miguelvillaverde/docker-bot.git
   cd docker-bot

2. Variables de Entorno
   Edita tu docker-compose.yml y configura las credenciales:
   - LLM_API_KEY: Tu clave de API de Groq.
   - WEBHOOK_URL: La dirección proporcionada por tu túnel ngrok.

3. Lanzamiento
   docker compose up -d --build

4. Configuración del Túnel
   ngrok http 5678 --request-header-add "ngrok-skip-browser-warning: true"

---

## 📈 Niveles de Implementación
* Nivel 1: Infraestructura base (n8n, Docker, conexión con Groq).
* Nivel 2: Persistencia de datos y automatización de despliegue.
* Nivel 3: Integración completa de comandos en Telegram.

---

## 🛠️ Notas Técnicas
* Entorno: Diseñado para alta compatibilidad con arquitecturas ARM64.
* Persistencia: Uso de volúmenes nombrados para asegurar que los datos sobrevivan a los reinicios.
* Seguridad: Comunicación securizada mediante túnel estático.

---
Proyecto Integrador - DAM - Sistemas Informáticos - 2026
