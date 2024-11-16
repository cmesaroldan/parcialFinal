TRUNCATE TABLE medicalappointment CASCADE;
TRUNCATE TABLE doctor CASCADE;
TRUNCATE TABLE patient CASCADE;
TRUNCATE TABLE specialty CASCADE;

-- Insertar las 5 especialidades
INSERT INTO specialty (name) VALUES 
    ('medicina general'),
    ('cardiología'),
    ('urología'),
    ('fisiología'),
    ('pediatría');

-- Insertar 5 médicos (contraseña: password123)
INSERT INTO doctor (name, age, email, password, specialty_id) VALUES 
    ('Dra. Valentina Ruiz', 51, 'valentina.ruiz@hospital.com', '$2a$10$zOqBTgbXFtbBX.KE1amYWu1iR3Guqg6sFOPESEkIpgt406imL67jO', 2),
    ('Dr. Mateo Restrepo', 37, 'mateo.restrepo@hospital.com', '$2a$10$zOqBTgbXFtbBX.KE1amYWu1iR3Guqg6sFOPESEkIpgt406imL67jO', 5),
    ('Dr. Santiago Pérez', 46, 'santiago.perez@hospital.com', '$2a$10$zOqBTgbXFtbBX.KE1amYWu1iR3Guqg6sFOPESEkIpgt406imL67jO', 1),
    ('Dra. Isabella Martínez', 40, 'isabella.martinez@hospital.com', '$2a$10$zOqBTgbXFtbBX.KE1amYWu1iR3Guqg6sFOPESEkIpgt406imL67jO', 4),
    ('Dr. Daniel López', 39, 'daniel.lopez@hospital.com', '$2a$10$zOqBTgbXFtbBX.KE1amYWu1iR3Guqg6sFOPESEkIpgt406imL67jO', 3);

-- Insertar 10 pacientes (contraseña: admin123)
INSERT INTO patient (name, age, email, password) VALUES 
    ('Laura Ochoa', 30, 'laura.ochoa@email.com', '$2a$10$zOqBTgbXFtbBX.KE1amYWu1iR3Guqg6sFOPESEkIpgt406imL67jO'),
    ('Sebastián Torres', 20, 'sebastian.torres@email.com', '$2a$10$zOqBTgbXFtbBX.KE1amYWu1iR3Guqg6sFOPESEkIpgt406imL67jO'),
    ('Ana María Gómez', 28, 'ana.gomez@email.com', '$2a$10$zOqBTgbXFtbBX.KE1amYWu1iR3Guqg6sFOPESEkIpgt406imL67jO'),
    ('María José Díaz', 26, 'maria.diaz@email.com', '$2a$10$zOqBTgbXFtbBX.KE1amYWu1iR3Guqg6sFOPESEkIpgt406imL67jO'),
    ('Carlos Hernández', 46, 'carlos.hernandez@email.com', '$2a$10$zOqBTgbXFtbBX.KE1amYWu1iR3Guqg6sFOPESEkIpgt406imL67jO'),
    ('Camila Andrea Soto', 29, 'camila.soto@email.com', '$2a$10$zOqBTgbXFtbBX.KE1amYWu1iR3Guqg6sFOPESEkIpgt406imL67jO'),
    ('Juan Pablo Mejía', 34, 'juan.mejia@email.com', '$2a$10$zOqBTgbXFtbBX.KE1amYWu1iR3Guqg6sFOPESEkIpgt406imL67jO'),
    ('David Alejandro Castro', 39, 'david.castro@email.com', '$2a$10$zOqBTgbXFtbBX.KE1amYWu1iR3Guqg6sFOPESEkIpgt406imL67jO'),
    ('Mariana Vélez', 41, 'mariana.velez@email.com', '$2a$10$zOqBTgbXFtbBX.KE1amYWu1iR3Guqg6sFOPESEkIpgt406imL67jO'),
    ('Andrés Felipe Ríos', 32, 'andres.rios@email.com', '$2a$10$zOqBTgbXFtbBX.KE1amYWu1iR3Guqg6sFOPESEkIpgt406imL67jO');

-- Insertar algunas citas de ejemplo
INSERT INTO medicalappointment (date, hour, patient_id, doctor_id) VALUES 
    ('2024-11-20', '09:00', 1, 1),
    ('2024-11-20', '10:00', 2, 2),
    ('2024-11-20', '11:00', 3, 3);