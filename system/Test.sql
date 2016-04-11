drop database his;
create database his;
use his;
drop table Roles;
create table Roles(
rol_id int(10) primary key not null auto_increment,
estado varchar(25),
creado_por int(10),
fecha_creacion datetime,
tipo varchar(25));

drop table Usuarios;
create table Usuarios(
usuario_id int(10) primary key not null auto_increment,
rol_id  int(10),
rut varchar(15),
dv varchar(15),
nombre varchar(25),
apepat varchar(25),
apemat varchar(25),
fec_nac date,
username varchar(25),
password varchar(25),
enabled int(10),
creado_por int(10),
fecha_creacion datetime,
estamento_id int(10),
establecimiento_id int(10),
email varchar(25));

drop table Usuarios_Establecimientos;
create table Usuarios_Establecimientos(
usuario_id int(10),
establecimiento_id int(10));

drop table Estamentos;
create table Estamentos(
estamento_id int(10) primary key not null auto_increment,
nombre varchar(25),
codigo varchar(25),
estado varchar(25));

drop table Establecimientos;
create table Establecimientos(
establecimiento_id int(10) primary key not null auto_increment,
nombre varchar(25),
codigo varchar(25),
estado varchar(25));

drop table Logs;
create table Logs(
log_id int(10) primary key not null auto_increment,
fecha_ingeso datetime,
usuario_id int(10));

drop table Usuarios_Servicios;
create table Usuarios_Servicios(
usuario_id int(10),
servicio_id int(10));

drop table Servicios;
create table Servicios(
servicio_id int(10) primary key not null auto_increment,
nombre varchar(25),
estado varchar(25),
creado_por int(10),
fecha_creacion datetime,
codigo varchar(25));

drop table Unidades;
create table Unidades(
unidad_id int(10) primary key not null auto_increment,
nombre varchar(25),
estado varchar(25),
servicio_id int(10),
creado_por int(10),
fecha_creacion datetime,
codigo varchar(25));

drop table Bloqueos;
create table Bloqueos(
bloqueo_id int(10) primary key not null auto_increment,
motivo varchar(25),
codigo varchar(25),
estado varchar(25));

drop table Agendas;
create table Agendas(
agenda_id int(10) primary key not null auto_increment,
usuario_id int(10),
fecha_inicio date,
fecha_termino date,
pluses int(10),
hora_inicio time,
hora_termino time,
creado_por int(10),
fecha_creacion datetime,
estado varchar(20));

drop table Detalle_Agendas;
create table Detalle_Agendas(
detalle_agenda_id int(10) primary key not null auto_increment,
bloqueo_id int(10),
fecha_inicio date,
fecha_termino date,
hora_inicio time,
hora_termino time,
estado varchar(25),
agenda_id int(10));

drop table Citaciones;
create table Citaciones(
citacion_id int(10) primary key not null auto_increment,
paciente_id int(10),
agenda_id int(10),
fecha date,
hora_inicio time,
hora_termino time,
tipo_atencion_id int(10),
estado varchar(25),
creado_por int(10),
fecha_creacion datetime,
estado_cita_id int(10));

drop table Estados_Citas;
create table Estados_Citas(
estado_cita_id int(10) primary key not null auto_increment,
nombre varchar(25),
codigo varchar(25),
estado varchar(25));

drop table Tipo_Atenciones;
create table Tipo_Atenciones(
tipo_atencion_id int(10) primary key not null auto_increment,
nombre varchar(25),
codigo varchar(25),
estado varchar(25));

drop table Atenciones;
create table Atenciones(
atencion_id int(10) primary key not null auto_increment,
nombre varchar(25),
codigo varchar(25),
estado varchar(25),
tipo_atencion_id int(10));


drop table Sistema_Previsiones;
create table Sistema_Previsiones(
sistema_prev_id int(10) primary key not null auto_increment,
nombre varchar(25),
estado varchar(25),
codigo varchar(25));

drop table Previsiones;
create table Previsiones(
prevision_id int(10) primary key not null auto_increment,
nombre varchar(25),
estado varchar(25),
codigo varchar(25),
sistema_prev_id int(10));

drop table Tipo_Previsiones;
create table Tipo_Previsiones(
tipo_privision_id int(10) primary key not null auto_increment,
nombre varchar(25),
estado varchar(25),
codigo varchar(25),
prevision_id int(10));

drop table Paises_Nac;
create table Paises_Nac(
pais_nac_id int(10) primary key not null auto_increment,
nombre varchar(25),
estado varchar(25));


drop table Sub_Fichas;
create table Sub_Fichas(
sub_ficha_id int(10) primary key not null auto_increment,
codigo varchar(25),
estado varchar(25),
fecha_creacion date,
creado_por int(10),
ficha_id int(10));

drop table Fichas;
create table Fichas(
ficha_id int(10) primary key not null auto_increment,
codigo varchar(25),
estado varchar(25),
fecha_creacion date,
creado_por int(10));

drop table Movimientos_Fichas;
create table Movimientos_Fichas(
movimiento_ficha_id int(10) primary key not null auto_increment,
ficha_id int(10),
estado varchar(25),
creado_por int(10),
fecha_movimiento date);

drop table Identificaciones;
create table Identificaciones(
indentificacion_id int(10) primary key not null auto_increment,
nombre varchar(25),
codigo varchar(25));

drop table Sexos;
create table Sexos(
sexo_id int(10) primary key not null auto_increment,
nombre varchar(25),
codigo varchar(25),
estado varchar(25));

drop table Nacionalidades;
create table Nacionalidades(
nacionalidad_id int(10) primary key not null auto_increment,
nombre varchar(25),
estado varchar(25));

drop table Establecimientos_Inscritos;
create table Establecimientos_Inscritos(
establecimientos_inscrito_id int(10) primary key not null auto_increment,
nombre varchar(25),
codigo varchar(25),
estado varchar(25));

drop table Paises;
create table Paises(
pais_id int(10) primary key not null auto_increment,
nombre varchar(25),
estado varchar(25));

drop table Regiones;
create table Regiones(
region_id int(10) primary key not null auto_increment,
nombre varchar(25),
estado varchar(25),
pais_id int(10));

drop table Provincias;
create table Provincias(
provincia_id int(10) primary key not null auto_increment,
nombre varchar(25),
estado varchar(25),
region_id int(10)
);

drop table Comunas;
create table Comunas(
comuna_id int(10) primary key not null auto_increment,
nombre varchar(25),
estado varchar(25),
provincia_id int(10)
);


drop table Pacientes;
create table Pacientes(
paciente_id int(10) primary key not null auto_increment,
indentificacion_id int(10),
apepat varchar(25),
apemat varchar(25),
fec_nac date,
comuna_id int(10),
sexo_id int(10),
direccion varchar(100),
telefono1 varchar(25),
telefono2 varchar(25),
celular varchar(25),
tipo_prevision_id int(10),
creado_por int(10),
fecha_creacion_id datetime,
nombre varchar(25),
via varchar(25),
nacionalidad_id int(10),
pais_nac_id int(10),
rut varchar(15),
dv varchar(10),
numeroidentificacion varchar(25),
runresp varchar(25),
dvresp varchar(25),
ficha_id int(10),
estadocivil varchar(25),
email varchar(25),
estada varchar(25),
establecimiento_id int(10));



insert into Roles(estado,creado_por,fecha_creacion,tipo) values('activo',1,'2016/03/31 13:00:01','administrador');
insert into Roles(estado,creado_por,fecha_creacion,tipo) values('activo',2,'2016/04/11 12:59:43','administrativo');

insert into Usuarios(rut,dv,nombre,apepat,apemat,fec_nac,username,password,enabled,creado_por,fecha_creacion,estamento_id,establecimiento_id,email,rol_id) values('15582517','0','Ricardo','Toledo','Barria','1984/07/31','rtoledo','1234',1,1,'2015/01/01 12:00:01',1,1,'rtoledo@gmail.com',1);
insert into Usuarios(rut,dv,nombre,apepat,apemat,fec_nac,username,password,enabled,creado_por,fecha_creacion,estamento_id,establecimiento_id,email,rol_id) values('15905884','0','Iván Alonso','Andrade','Cabrera','1985/03/02','iandrade','1234',1,2,'2016/04/11 13:13:02',1,1,'ivanandrade@gmail.com',1);
insert into Usuarios(rut,dv,nombre,apepat,apemat,fec_nac,username,password,enabled,creado_por,fecha_creacion,estamento_id,establecimiento_id,email,rol_id) values('10063397','3','Juan','Pérez','Gómez','1990/10/02','jperez','1234',1,2,'2016/04/11 15:00:00',3,2,'juanperez@gmail.com',2);
insert into Usuarios(rut,dv,nombre,apepat,apemat,fec_nac,username,password,enabled,creado_por,fecha_creacion,estamento_id,establecimiento_id,email,rol_id) values('89565247','3','Jimena','Muñoz','Cárdenas','1950/12/09','jmuñoz','1234',1,2,'2016/04/11 17:30:01',4,3,'jmuñoz@gmail.com',2);
insert into Usuarios(rut,dv,nombre,apepat,apemat,fec_nac,username,password,enabled,creado_por,fecha_creacion,estamento_id,establecimiento_id,email,rol_id) values('21849349','1','Carlos','Cáceres','Pinto','1988/05/22','ccaceres','1234',1,2,'2016/04/11 16:02:00',5,4,'ccaceresp@gmail.com',2);

insert into Establecimientos(nombre,codigo,estado) values('Hospital Clinico Magallanes','H01','activo');
insert into Establecimientos(nombre,codigo,estado) values('Hospital Augusto Essmann','H02','activo');
insert into Establecimientos(nombre,codigo,estado) values('Hospital Marco Chamorro','H03','activo');
insert into Establecimientos(nombre,codigo,estado) values('Hospital Puerto Williams','H04','activo');

insert into Estamentos(nombre,codigo,estado) values('superusuario','01','activo');
insert into Estamentos(nombre,codigo,estado) values('medico','02','activo');
insert into Estamentos(nombre,codigo,estado) values('administrativo','03','activo');



insert into Usuarios_Establecimientos(usuario_id,establecimiento_id) values(1,2);
insert into Usuarios_Establecimientos(usuario_id,establecimiento_id) values(2,1);
insert into Usuarios_Establecimientos(usuario_id,establecimiento_id) values(3,2);
insert into Usuarios_Establecimientos(usuario_id,establecimiento_id) values(4,3);
insert into Usuarios_Establecimientos(usuario_id,establecimiento_id) values(5,4);

insert into Logs(fecha_ingreso,usuario_id) values('2016/01/31 08:00:01',1);
insert into Logs(fecha_ingreso,usuario_id) values('2016/01/29 09:15:00',2);
insert into Logs(fecha_ingreso,usuario_id) values('2016/01/30 12:02:01',2);
insert into Logs(fecha_ingreso,usuario_id) values('2016/01/30 13:00:00',1);


insert into Servicios(nombre,estado,creado_por,fecha_creacion,codigo) values('admision','activo',1,'2015/01/01 08:00:00','0001');
insert into Servicios(nombre,estado,creado_por,fecha_creacion,codigo) values('cirugia','activo',2,'2016/04/11 09:00:01','0002');
insert into Servicios(nombre,estado,creado_por,fecha_creacion,codigo) values('medicina','activo',2,'2016/04/11 10:11:00','0003');
insert into Servicios(nombre,estado,creado_por,fecha_creacion,codigo) values('traumatologia','activo',2,'2016/04/11 08:03:00','0004');
insert into Servicios(nombre,estado,creado_por,fecha_creacion,codigo) values('pediatria','activo',2,'2016/04/11 08:00:30','0005');

insert into Unidades(nombre,estado,servicio_id,creado_por,fecha_creacion,codigo) values('admision','activo',1,1,'2015/02/01 10:30:31','0001-1');
insert into Unidades(nombre,estado,servicio_id,creado_por,fecha_creacion,codigo) values('cirugia adulto','activo',2,2,'2016/04/11 11:15:30','0002-1');
insert into Unidades(nombre,estado,servicio_id,creado_por,fecha_creacion,codigo) values('cirugia bariatrica','activo',2,2,'2016/04/11 09:00:00','0002-2');
insert into Unidades(nombre,estado,servicio_id,creado_por,fecha_creacion,codigo) values('medicina general','activo',3,2,'2016/04/11 11:30:01','0003-1');
insert into Unidades(nombre,estado,servicio_id,creado_por,fecha_creacion,codigo) values('pabellon de yeso','activo',4,2,'2016/04/11 11:02:01','0004-1');

insert into Usuarios_Servicios(usuario_id,servicio_id) values(1,1);
insert into Usuarios_Servicios(usuario_id,servicio_id) values(2,1);
insert into Usuarios_Servicios(usuario_id,servicio_id) values(3,2);
insert into Usuarios_Servicios(usuario_id,servicio_id) values(4,3);
insert into Usuarios_Servicios(usuario_id,servicio_id) values(5,4);











