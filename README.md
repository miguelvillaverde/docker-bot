<div align="center">

# 🐳🤖 DockerBot

### Asistente Inteligente para Gestión de Contenedores Docker mediante IA

![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![n8n](https://img.shields.io/badge/n8n-FF6D5A?style=for-the-badge&logo=n8n&logoColor=white)
![Telegram](https://img.shields.io/badge/Telegram-26A5E4?style=for-the-badge&logo=telegram&logoColor=white)
![Ollama](https://img.shields.io/badge/Ollama-000000?style=for-the-badge)
![Llama 3.2](https://img.shields.io/badge/Llama-3.2-orange?style=for-the-badge)

---

🚀 Automatización • 🤖 Inteligencia Artificial • 🐳 Docker • 📱 Telegram

</div>

---

# 📖 Descripción

DockerBot es un asistente inteligente desarrollado para administrar contenedores Docker directamente desde Telegram mediante lenguaje natural.

El usuario puede crear, iniciar, detener, reiniciar y eliminar contenedores sin necesidad de acceder al servidor.

Además, incorpora Inteligencia Artificial para responder preguntas, generar código y crear páginas web automáticamente.

---

# 👨‍💻 Autores

Proyecto desarrollado por:

| Nombre |
|----------|
| Miguel Villaverde |
| Iker Ríos |

---

# 🎯 Objetivos

✅ Automatizar tareas Docker.

✅ Gestionar servidores desde Telegram.

✅ Integrar Inteligencia Artificial.

✅ Aprender Docker, n8n y automatización.

✅ Crear un sistema práctico y funcional.

✅ Aplicar conceptos reales de administración de sistemas.

---

# 🏗️ Arquitectura General

```text
┌─────────────┐
│ Telegram    │
└──────┬──────┘
       │
       ▼
┌─────────────┐
│ TelegramBot │
└──────┬──────┘
       │
       ▼
┌─────────────┐
│ n8n         │
└──────┬──────┘
       │
 ┌─────┴─────┐
 │           │
 ▼           ▼
Docker      IA
           Ollama
           Llama3.2
```

---

# ⚙️ Tecnologías Utilizadas

| Tecnología | Uso |
|------------|-----|
| 🐳 Docker | Gestión de contenedores |
| 🔄 n8n | Automatización de flujos |
| 🤖 Ollama | IA local |
| 🦙 Llama 3.2 | Modelo de lenguaje |
| 📱 Telegram Bot | Interfaz con el usuario |
| 🌐 Ngrok | Exposición del webhook |
| 💻 HTML/CSS/JS | Generación de páginas web |
| 🧠 OpenHands | Generación automática de código |

---

# 🚀 Funcionalidades Implementadas

## 🐳 Gestión de Contenedores

| Comando | Función |
|----------|----------|
| /crear | Crear contenedor |
| /listar | Mostrar contenedores |
| /iniciar | Iniciar contenedor |
| /detener | Detener contenedor |
| /reiniciar | Reiniciar contenedor |
| /eliminar | Eliminar contenedor |

---

## 📊 Información y Monitorización

| Comando | Función |
|----------|----------|
| /estado | Estado de un contenedor |
| /logs | Últimos logs |
| /stats | Uso de CPU y RAM |
| /imagenes | Imágenes Docker |
| /volumenes | Volúmenes |
| /redes | Redes Docker |

---

## 📚 Sistema de Ayuda

Comando:

```bash
/ayuda
```

Incluye:

- Descripción de comandos.
- Menú de navegación.
- Botones rápidos.
- Ejemplos de uso.

---

# 🎮 Botones Interactivos

Se implementó un teclado interactivo para Telegram.

```text
/listar      /imagenes

/volumenes   /redes

/estado      /stats

/logs        /ayuda
```

Ventajas:

✅ Más cómodo.

✅ Menos errores de escritura.

✅ Mejor experiencia de usuario.

---

# 🤖 Inteligencia Artificial

DockerBot incorpora IA mediante:

```text
Ollama + Llama 3.2
```

Capaz de:

- Resolver preguntas.
- Explicar conceptos.
- Generar código.
- Resolver operaciones matemáticas.
- Generar páginas web.
- Ayudar en programación.

Ejemplos:

```text
¿Cuánto es 24 + 6?
```

```text
Explícame Docker
```

```text
Genera una página web de coches
```

---

# 🌐 Generación Automática de Páginas Web

Una de las funcionalidades más interesantes del proyecto.

Ejemplo:

```text
Crear una tienda online moderna
```

La IA genera automáticamente:

✅ HTML

✅ CSS

✅ Diseño responsive

✅ Tarjetas de productos

✅ Hero section

✅ Contacto

✅ FAQ

✅ Diseño moderno

Inspirado en:

- Amazon
- Apple
- Tesla
- Stripe
- Shopify

---

# 🔄 Flujo de Funcionamiento

## 1️⃣ Recepción

El usuario envía un mensaje a Telegram.

```text
/listar
```

---

## 2️⃣ Telegram

Telegram recibe el mensaje.

---

## 3️⃣ n8n

n8n procesa la solicitud.

---

## 4️⃣ Decisión

El sistema identifica el comando.

```text
/listar
```

o

```text
¿Cuánto es 24 + 6?
```

---

## 5️⃣ Acción

Según el tipo:

🐳 Docker

o

🤖 IA

---

## 6️⃣ Respuesta

La respuesta vuelve a Telegram.

---

# 🛠️ Problemas Encontrados Durante el Desarrollo

## ⚠️ Error 403

Problema:

```text
Forbidden
```

Causa:

Webhook mal configurado.

Solución:

Reconfiguración de Telegram y Ngrok.

---

## ⚠️ Error JSON inválido

Problema:

```text
The value in the JSON Body field is not valid JSON
```

Causa:

Saltos de línea y caracteres especiales.

Solución:

Corregir el formato JSON y escapar caracteres.

---

## ⚠️ Error message text is empty

Problema:

```text
Bad Request: message text is empty
```

Causa:

Campo incorrecto en el nodo Telegram.

Solución:

Mapeo correcto de la respuesta generada por la IA.

---

## ⚠️ Error stream

Problema:

```text
cannot unmarshal string into bool
```

Causa:

El campo stream estaba configurado como texto.

Solución:

Utilizar valor booleano.

```json
false
```

---

## ⚠️ Problemas con memoria conversacional

Se intentó implementar un sistema de memoria persistente.

Dificultades:

- Gestión del historial.
- Persistencia.
- Referencias entre nodos.

Resultado:

Se implementó una memoria basada en contexto reciente.

---

# 🔧 Configuración del Proyecto

## Clonar repositorio

```bash
git clone https://github.com/miguelvillaverde/docker-bot.git

cd docker-bot
```

---

## Configurar Variables

```env
BOT_TOKEN=xxxxxxxxxx

OLLAMA_MODEL=llama3.2

WEBHOOK_URL=https://xxxxx.ngrok-free.app
```

---

## Iniciar Docker

```bash
docker compose up -d --build
```

---

## Iniciar Ngrok

```bash
ngrok http 5678
```

---

## Configurar Telegram

Configurar el webhook apuntando a la URL generada por ngrok.

---

# 📈 Mejoras Implementadas

✅ Sistema de comandos.

✅ Menú interactivo.

✅ IA local.

✅ Generación web.

✅ Monitorización Docker.

✅ Ayuda integrada.

✅ Gestión completa de contenedores.

---

# 🔮 Mejoras Futuras

🚀 Memoria persistente real.

🚀 Base de datos.

🚀 Publicación automática de webs.

🚀 Multiusuario.

🚀 Panel web administrativo.

🚀 Sistema de autenticación.

🚀 Integración con más modelos IA.

---

# 🏆 Resultados Obtenidos

✔ Administración Docker desde Telegram.

✔ Integración completa con IA.

✔ Automatización mediante n8n.

✔ Gestión de recursos.

✔ Generación automática de páginas web.

✔ Interfaz sencilla y accesible desde móvil.

---

# 📸 Capturas del Proyecto

Aquí pueden añadirse imágenes de:

- Bot Telegram.
- Flujos de n8n.
- Docker.
- Generación de páginas web.
- Comandos funcionando.

---

# 📚 Conclusiones

DockerBot demuestra cómo combinar:

🐳 Docker

🔄 Automatización

🤖 Inteligencia Artificial

📱 Telegram

para crear una solución real capaz de administrar infraestructura de forma sencilla y eficiente.

El proyecto integra conceptos de administración de sistemas, automatización, virtualización e IA, aplicando conocimientos adquiridos durante el ciclo formativo de DAM.

---

<div align="center">

# 🚀 Proyecto Integrador DAM 2026 🚀

**DockerBot - Gestión Inteligente de Contenedores**

🐳 🤖 💻 🔥 🚀

</div>
