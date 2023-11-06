# abyssal_dungeon

# Autenticación con Google en Flutter para GitHub

Esta guía te muestra cómo implementar la autenticación con Google en una aplicación Flutter para GitHub sin utilizar Firebase.

## Requisitos Previos

Asegúrate de tener los siguientes requisitos previos antes de comenzar:

- Tener Flutter instalado en tu sistema.
- Tener una cuenta de GitHub para configurar la autenticación.

## Configurar el Proyecto Flutter

1. Crea un nuevo proyecto Flutter utilizando el siguiente comando en la terminal:

   ```bash
   flutter create mi_app
## Configurar la Autenticación de Google

Para habilitar la autenticación de Google en esta aplicación Flutter, sigue estos pasos:

1. Ve al [Panel de Desarrolladores de Google](https://console.developers.google.com/) y crea un nuevo proyecto.

2. En la sección "Credenciales" de tu proyecto, configura una credencial OAuth 2.0 para la autenticación con Google.

3. Asegúrate de registrar una URL de redireccionamiento válida para tu aplicación. Por ejemplo, puedes utilizar `http://localhost` como URL de redireccionamiento durante el desarrollo.

4. Obtiene el ID de cliente (Client ID) de la credencial creada.

Estos pasos te permitirán configurar la autenticación de Google en esta aplicación Flutter, lo que habilitará la funcionalidad de inicio de sesión con Google.
