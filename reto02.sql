CREATE DATABASE adoptaPet;
USE adoptaPet;
CREATE TABLE usuario(
    id INT PRIMARY KEY,
    username VARCHAR(20),
    nombre VARCHAR(20),
    apellido VARCHAR(20),
    email VARCHAR(20),
    password VARCHAR(20),
    ubicacion VARCHAR(20),
    telefono VARCHAR(20),
    bio VARCHAR(20),
    fotos VARCHAR(20),
    tipo CHAR(15)
);
CREATE TABLE mascota(
    id INT PRIMARY KEY,
    nombre VARCHAR(20),
    categoria CHAR(5),
    fotos VARCHAR(20),
    descripcion VARCHAR(50),
    ubicacion VARCHAR(50)
);
CREATE TABLE solicitud(
    id INT PRIMARY KEY,
    idMascota INT,
    idUsuarioAnunciante INT,
    idUsuarioSolicitante INT,
    fechaDeCreacion DATETIME,
    estado BOOLEAN,
    FOREIGN KEY(idMascota) REFERENCES mascota(id),
    FOREIGN KEY(idUsuarioAnunciante) REFERENCES usuario(id),
    FOREIGN KEY(idUsuarioSolicitante) REFERENCES usuario(id)
);
INSERT INTO usuario
VALUES(
        1,
        "user1",
        "Mauricio",
        "Perez",
        "Mauricio@test.com",
        "123456",
        "Nayarit",
        "311 193 12 35",
        "Soy un humano!",
        "blablablabla",
        "anunciante"
    );
INSERT INTO usuario
VALUES(
        2,
        "user2",
        "Ramón",
        "Martinez",
        "Ramón@test.com",
        "123456",
        "Nayarit",
        "311 193 12 35",
        "Soy un humano!",
        "blablablabla",
        "solicitante"
    );
INSERT INTO mascota
VALUES(
        1,
        "Peluchin",
        "perro",
        "blablabla",
        "Perro entrenado",
        "Nayarit"
    ) CREATE TABLE solicitud(
        1,
        1,
        1,
        1,
        "12/12/2020",
        true
    );