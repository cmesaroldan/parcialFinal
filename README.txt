
# API de Gestión de Citas Médicas

## Descripción del Proyecto

Este proyecto consiste en desarrollar una API REST para la gestión de citas médicas, enfocándose únicamente en las funcionalidades relacionadas con las tareas **pares** del enunciado. Esto incluye la autenticación de pacientes, administración de sus citas y las rutas relacionadas. El desarrollo sigue las mejores prácticas de Node.js y Express, utilizando JWT para autenticación y PostgreSQL como base de datos.

## Autor

**Nombre:** Carlos Andrés Mesa Roldán  
**Cédula:** 1044508253  
**Institución:** Universidad de Antioquia  

## Funcionalidades Principales (Asignadas)

### Rutas para Pacientes
1. **POST** `/patient/login`  
   - Permite que un paciente inicie sesión proporcionando su correo electrónico y contraseña.  
   - Genera un JWT con vigencia de 30 minutos.  
   
2. **GET** `/patient/:id/appointment`  
   - Lista todas las citas asignadas al paciente con base en su ID.  

3. **POST** `/patient/appointment`  
   - Permite asignar una nueva cita a un paciente con la información de fecha y hora.

4. **PUT** `/patient/appointment/:appointmentId`  
   - Permite editar la información de una cita existente (fecha y hora).

5. **DELETE** `/patient/appointment/:appointmentId`  
   - Permite eliminar una cita específica del paciente.

---
DME.md
```

