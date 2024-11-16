🏥 API de Gestión de Citas Médicas
📚 Proyecto Académico
Una API REST diseñada para gestionar citas médicas, enfocándose en autenticación de pacientes y administración eficiente de citas. Construida con las mejores prácticas de desarrollo utilizando Node.js, Express, JWT, y PostgreSQL.

🚀 Descripción del Proyecto
Este proyecto proporciona una solución escalable y segura para la gestión de citas médicas. Incluye rutas esenciales para pacientes, como inicio de sesión, asignación, edición y eliminación de citas. El enfoque principal está en implementar las funcionalidades pares asignadas en el enunciado, asegurando un desarrollo limpio y funcional.

👨‍💻 Autor
Nombre: Carlos Andrés Mesa Roldán
Cédula: 1044508253
Institución: Universidad de Antioquia
Contacto: carlos.mesar@udea.edu.co
🛠️ Tecnologías Utilizadas
Backend: Node.js, Express.js
Autenticación: JSON Web Token (JWT)
Base de Datos: PostgreSQL
Lenguaje: JavaScript
✨ Características Principales
🌟 Autenticación de Pacientes
POST /patient/login
Los pacientes pueden iniciar sesión utilizando su correo y contraseña.
Genera un token JWT con vigencia de 30 minutos para sesiones seguras.
📅 Gestión de Citas Médicas
GET /patient/:id/appointment

Consulta todas las citas de un paciente por su ID.
POST /patient/appointment

Permite asignar nuevas citas a pacientes, especificando fecha y hora.
PUT /patient/appointment/:appointmentId

Actualiza la información de una cita existente (fecha y hora).
DELETE /patient/appointment/:appointmentId

Cancela una cita específica de un paciente.



Eliminar cita
curl -X DELETE http://localhost:3000/patient/appointment/1 \
-H "Authorization: Bearer {token}"
Información de Doctores
Obtener información de un doctor en especifico segun ID
curl http://localhost:3000/doctor/1 \
-H "Authorization: Bearer $TOKEN" | jq
Obtener citas de un doctor
curl http://localhost:3000/doctor/1/appointment \
-H "Authorization: Bearer $TOKEN" | jq
Ver citas de un doctor por fecha
curl "http://localhost:3000/doctor/1/appointment?date=20-11-2024" \
-H "Authorization: Bearer $TOKEN" | jq



Para autenticarse en el sistema, realiza una solicitud de inicio de sesión:
curl -X POST http://localhost:3000/patient/login
-H "Content-Type: application/json"
-d '{ "email": "miguel.santos@email.com", "password": "admin123" }' | jq

Guardar el Token para Uso en las Siguientes Peticiones
Guarda el token generado tras el login para usarlo en futuras solicitudes:
TOKEN=$(curl -s -X POST http://localhost:3000/patient/login
-H "Content-Type: application/json"
-d '{"email":"miguel.santos@email.com","password":"admin123"}'
| jq -r '.data.token')

🗓️ Gestión de Citas
1. Obtener Todas las Citas del Paciente
Consulta todas las citas asociadas al paciente autenticado:
curl http://localhost:3000/patient/appointment
-H "Authorization: Bearer $TOKEN" | jq

2. Filtrar Citas por Fecha
Obtén las citas de un paciente para una fecha específica:
curl "http://localhost:3000/patient/appointment?date=2024-11-20"
-H "Authorization: Bearer $TOKEN" | jq

3. Crear Nueva Cita
Asigna una nueva cita a un paciente:
curl -X POST http://localhost:3000/patient/appointment
-H "Authorization: Bearer $TOKEN"
-H "Content-Type: application/json"
-d '{ "doctorId": 1, "date": "2024-11-20", "hour": "09:00" }' | jq

4. Modificar una Cita Existente
Edita la información de una cita específica (reemplaza {id} con el ID de la cita):
curl -X PUT http://localhost:3000/patient/appointment/{id}
-H "Authorization: Bearer $TOKEN"
-H "Content-Type: application/json"
-d '{ "doctorId": 1, "date": "2024-11-21", "hour": "09:00" }' | jq

5. Eliminar una Cita
Elimina una cita específica (reemplaza 1 con el ID de la cita):
curl -X DELETE http://localhost:3000/patient/appointment/1
-H "Authorization: Bearer $TOKEN"

🩺 Gestión de Doctores
1. Obtener Información de un Doctor
Consulta los detalles de un doctor específico (reemplaza 1 con el ID del doctor):
curl http://localhost:3000/doctor/1
-H "Authorization: Bearer $TOKEN" | jq

2. Consultar Citas de un Doctor
Obtén todas las citas asociadas a un doctor específico (reemplaza 1 con el ID del doctor):
curl http://localhost:3000/doctor/1/appointment
-H "Authorization: Bearer $TOKEN" | jq

3. Ver Citas de un Doctor por Fecha
Filtra las citas de un doctor para una fecha específica:
curl "http://localhost:3000/doctor/1/appointment?date=2024-11-20"
-H "Authorization: Bearer $TOKEN" | jq

A tener en cuenta
Asegúrate de que el servidor esté en ejecución en http://localhost:3000.
Usa jq para formatear las respuestas JSON de manera legible.
Reemplaza los valores {id} o 1 con los identificadores correspondientes según el contexto.