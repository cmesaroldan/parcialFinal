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