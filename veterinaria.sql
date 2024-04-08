create database veterinaria

use veterinaria

create table usuario
(login_usuario varchar(70) primary key ,
clave varchar(50),
nombre varchar(70),
)

create table Mascota(
 id_mascota int primary key identity (1,1),
 nombre_mascota varchar(50),
 tipo_mascota varchar(50),
 comida_favorita varchar(50),
)

create table citas(
id_mascota int,
proxima_fecha date,
medico_asignado varchar(50),
constraint FK_idmascota foreign key (id_mascota) references Mascota(id_mascota),
)