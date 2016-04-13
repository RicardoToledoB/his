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
tipo_prevision_id int(10) primary key not null auto_increment,
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
identificacion_id int(10) primary key not null auto_increment,
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


drop table Centros_Salud;
create table Centros_Salud(
centro_salud_id int(10) primary key not null auto_increment,
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

drop table Vias;
create table Vias(
via_id int(10) primary key not null auto_increment,
nombre varchar(25),
codigo varchar(25),
estado varchar(25));

drop table Estados_Civil;
create table Estados_Civil(
estado_civil_id int(10) primary key not null auto_increment,
nombre varchar(25),
codigo varchar(25),
estado varchar(25));

drop table Pacientes;
create table Pacientes(
paciente_id int(10) primary key not null auto_increment,
identificacion_id int(10),
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
fecha_creacion datetime,
nombre varchar(25),
via_id int(10),
nacionalidad_id int(10),
pais_nac_id int(10),
run varchar(15),
dv varchar(10),
numeroidentificacion varchar(25),
runresp varchar(25),
dvresp varchar(25),
ficha_id int(10),
estado_civil_id int(10),
email varchar(25),
estado varchar(25),
centro_salud_id int(10));



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



insert into Paises(nombre,estado) values(‘CHILE’,’activo’);




insert into Paises(nombre,estado) values('Chile','activo');
insert into Paises(nombre,estado) values('Argentina','activo');
insert into Paises(nombre,estado) values('Austria','activo');
insert into Paises(nombre,estado) values('Belgica','activo');
insert into Paises(nombre,estado) values('Bulgaria','activo');
insert into Paises(nombre,estado) values('Chipre','activo');
insert into Paises(nombre,estado) values('Dinamarca','activo');
insert into Paises(nombre,estado) values('España','activo');
insert into Paises(nombre,estado) values('Finlandia','activo');
insert into Paises(nombre,estado) values('Francia','activo');
insert into Paises(nombre,estado) values('Grecia','activo');
insert into Paises(nombre,estado) values('Hungria','activo');
insert into Paises(nombre,estado) values('Irlanda','activo');
insert into Paises(nombre,estado) values('Italia','activo');
insert into Paises(nombre,estado) values('Luxemburgo','activo');
insert into Paises(nombre,estado) values('Malta','activo');
insert into Paises(nombre,estado) values('Paises Bajos','activo');
insert into Paises(nombre,estado) values('Polonia','activo');
insert into Paises(nombre,estado) values('Portugal','activo');
insert into Paises(nombre,estado) values('Reino Unido','activo');
insert into Paises(nombre,estado) values('Alemania','activo');
insert into Paises(nombre,estado) values('Rumania','activo');
insert into Paises(nombre,estado) values('Suecia','activo');
insert into Paises(nombre,estado) values('Letonia','activo');
insert into Paises(nombre,estado) values('Estonia','activo');
insert into Paises(nombre,estado) values('Lituania','activo');
insert into Paises(nombre,estado) values('Republica Checa','activo');
insert into Paises(nombre,estado) values('Republica Eslovaca','activo');
insert into Paises(nombre,estado) values('Eslovenia','activo');
insert into Paises(nombre,estado) values('Otros Paises O Territorios De La Union Europea','activo');
insert into Paises(nombre,estado) values('Albania','activo');
insert into Paises(nombre,estado) values('Islandia','activo');
insert into Paises(nombre,estado) values('Liechtenstein','activo');
insert into Paises(nombre,estado) values('Monaco','activo');
insert into Paises(nombre,estado) values('Noruega','activo');
insert into Paises(nombre,estado) values('Andorra','activo');
insert into Paises(nombre,estado) values('San Marino','activo');
insert into Paises(nombre,estado) values('Santa Sede','activo');
insert into Paises(nombre,estado) values('Suiza','activo');
insert into Paises(nombre,estado) values('Ucrania','activo');
insert into Paises(nombre,estado) values('Moldavia','activo');
insert into Paises(nombre,estado) values('Belarus','activo');
insert into Paises(nombre,estado) values('Georgia','activo');
insert into Paises(nombre,estado) values('Bosnia Y Herzegovina','activo');
insert into Paises(nombre,estado) values('Croacia','activo');
insert into Paises(nombre,estado) values('Armenia','activo');
insert into Paises(nombre,estado) values('Rusia','activo');
insert into Paises(nombre,estado) values('Macedonia ','activo');
insert into Paises(nombre,estado) values('Serbia','activo');
insert into Paises(nombre,estado) values('Montenegro','activo');
insert into Paises(nombre,estado) values('Guernesey','activo');
insert into Paises(nombre,estado) values('Svalbard Y Jan Mayen','activo');
insert into Paises(nombre,estado) values('Islas Feroe','activo');
insert into Paises(nombre,estado) values('Isla De Man','activo');
insert into Paises(nombre,estado) values('Gibraltar','activo');
insert into Paises(nombre,estado) values('Islas Del Canal','activo');
insert into Paises(nombre,estado) values('Jersey','activo');
insert into Paises(nombre,estado) values('Islas Aland','activo');
insert into Paises(nombre,estado) values('Turquia','activo');
insert into Paises(nombre,estado) values('Otros Paises O Territorios Del Resto De Europa','activo');
insert into Paises(nombre,estado) values('Burkina Faso','activo');
insert into Paises(nombre,estado) values('Angola','activo');
insert into Paises(nombre,estado) values('Argelia','activo');
insert into Paises(nombre,estado) values('Benin','activo');
insert into Paises(nombre,estado) values('Botswana','activo');
insert into Paises(nombre,estado) values('Burundi','activo');
insert into Paises(nombre,estado) values('Cabo Verde','activo');
insert into Paises(nombre,estado) values('Camerun','activo');
insert into Paises(nombre,estado) values('Comores','activo');
insert into Paises(nombre,estado) values('Congo','activo');
insert into Paises(nombre,estado) values('Costa De Marfil','activo');
insert into Paises(nombre,estado) values('Djibouti','activo');
insert into Paises(nombre,estado) values('Egipto','activo');
insert into Paises(nombre,estado) values('Etiopia','activo');
insert into Paises(nombre,estado) values('Gabon','activo');
insert into Paises(nombre,estado) values('Gambia','activo');
insert into Paises(nombre,estado) values('Ghana','activo');
insert into Paises(nombre,estado) values('Guinea','activo');
insert into Paises(nombre,estado) values('Guinea-Bissau','activo');
insert into Paises(nombre,estado) values('Guinea Ecuatorial','activo');
insert into Paises(nombre,estado) values('Kenia','activo');
insert into Paises(nombre,estado) values('Lesotho','activo');
insert into Paises(nombre,estado) values('Liberia','activo');
insert into Paises(nombre,estado) values('Libia','activo');
insert into Paises(nombre,estado) values('Madagascar','activo');
insert into Paises(nombre,estado) values('Malawi','activo');
insert into Paises(nombre,estado) values('Mali','activo');
insert into Paises(nombre,estado) values('Marruecos','activo');
insert into Paises(nombre,estado) values('Mauricio','activo');
insert into Paises(nombre,estado) values('Mauritania','activo');
insert into Paises(nombre,estado) values('Mozambique','activo');
insert into Paises(nombre,estado) values('Namibia','activo');
insert into Paises(nombre,estado) values('Niger','activo');
insert into Paises(nombre,estado) values('Nigeria','activo');
insert into Paises(nombre,estado) values('Republica Centroafricana','activo');
insert into Paises(nombre,estado) values('Sudafrica','activo');
insert into Paises(nombre,estado) values('Ruanda','activo');
insert into Paises(nombre,estado) values('Santo Tome Y Principe','activo');
insert into Paises(nombre,estado) values('Senegal','activo');
insert into Paises(nombre,estado) values('Seychelles','activo');
insert into Paises(nombre,estado) values('Sierra Leona','activo');
insert into Paises(nombre,estado) values('Somalia','activo');
insert into Paises(nombre,estado) values('Sudan','activo');
insert into Paises(nombre,estado) values('Swazilandia','activo');
insert into Paises(nombre,estado) values('Tanzania','activo');
insert into Paises(nombre,estado) values('Chad','activo');
insert into Paises(nombre,estado) values('Togo','activo');
insert into Paises(nombre,estado) values('Tunez','activo');
insert into Paises(nombre,estado) values('Uganda','activo');
insert into Paises(nombre,estado) values('Rep.Democratica Del Congo','activo');
insert into Paises(nombre,estado) values('Zambia','activo');
insert into Paises(nombre,estado) values('Zimbabwe','activo');
insert into Paises(nombre,estado) values('Eritrea','activo');
insert into Paises(nombre,estado) values('Santa Helena','activo');
insert into Paises(nombre,estado) values('Reunion','activo');
insert into Paises(nombre,estado) values('Mayotte','activo');
insert into Paises(nombre,estado) values('Sahara Occidental','activo');
insert into Paises(nombre,estado) values('Otros Paises O Territorios De Africa','activo');
insert into Paises(nombre,estado) values('Canada','activo');
insert into Paises(nombre,estado) values('Estados Unidos De America','activo');
insert into Paises(nombre,estado) values('Mexico','activo');
insert into Paises(nombre,estado) values('San Pedro Y Miquelon ','activo');
insert into Paises(nombre,estado) values('Groenlandia','activo');
insert into Paises(nombre,estado) values('Otros Paises  O Territorios De America Del Norte','activo');
insert into Paises(nombre,estado) values('Antigua Y Barbuda','activo');
insert into Paises(nombre,estado) values('Bahamas','activo');
insert into Paises(nombre,estado) values('Barbados','activo');
insert into Paises(nombre,estado) values('Belice','activo');
insert into Paises(nombre,estado) values('Costa Rica','activo');
insert into Paises(nombre,estado) values('Cuba','activo');
insert into Paises(nombre,estado) values('Dominica','activo');
insert into Paises(nombre,estado) values('El Salvador','activo');
insert into Paises(nombre,estado) values('Granada','activo');
insert into Paises(nombre,estado) values('Guatemala','activo');
insert into Paises(nombre,estado) values('Haiti','activo');
insert into Paises(nombre,estado) values('Honduras','activo');
insert into Paises(nombre,estado) values('Jamaica','activo');
insert into Paises(nombre,estado) values('Nicaragua','activo');
insert into Paises(nombre,estado) values('Panama','activo');
insert into Paises(nombre,estado) values('San Vicente Y Las Granadinas','activo');
insert into Paises(nombre,estado) values('Republica Dominicana','activo');
insert into Paises(nombre,estado) values('Trinidad Y Tobago','activo');
insert into Paises(nombre,estado) values('Santa Lucia','activo');
insert into Paises(nombre,estado) values('San Cristobal Y Nieves','activo');
insert into Paises(nombre,estado) values('Islas Caimán','activo');
insert into Paises(nombre,estado) values('Islas Turcas Y Caicos','activo');
insert into Paises(nombre,estado) values('Islas Vírgenes De Los Estados Unidos','activo');
insert into Paises(nombre,estado) values('Guadalupe','activo');
insert into Paises(nombre,estado) values('Antillas Holandesas','activo');
insert into Paises(nombre,estado) values('San Martin (Parte Francesa)','activo');
insert into Paises(nombre,estado) values('Aruba','activo');
insert into Paises(nombre,estado) values('Montserrat','activo');
insert into Paises(nombre,estado) values('Anguilla','activo');
insert into Paises(nombre,estado) values('San Bartolome','activo');
insert into Paises(nombre,estado) values('Martinica','activo');
insert into Paises(nombre,estado) values('Puerto Rico','activo');
insert into Paises(nombre,estado) values('Bermudas','activo');
insert into Paises(nombre,estado) values('Islas Virgenes Britanicas','activo');
insert into Paises(nombre,estado) values('Otros Paises O Territorios Del Caribe Y America Central','activo');
insert into Paises(nombre,estado) values('Bolivia','activo');
insert into Paises(nombre,estado) values('Brasil','activo');
insert into Paises(nombre,estado) values('Ecuador','activo');
insert into Paises(nombre,estado) values('Guyana','activo');
insert into Paises(nombre,estado) values('Paraguay','activo');
insert into Paises(nombre,estado) values('Peru','activo');
insert into Paises(nombre,estado) values('Surinam','activo');
insert into Paises(nombre,estado) values('Uruguay','activo');
insert into Paises(nombre,estado) values('Venezuela','activo');
insert into Paises(nombre,estado) values('Guayana Francesa','activo');
insert into Paises(nombre,estado) values('Islas Malvinas','activo');
insert into Paises(nombre,estado) values('Otros Paises O Territorios  De Sudamerica','activo');
insert into Paises(nombre,estado) values('Afganistan','activo');
insert into Paises(nombre,estado) values('Arabia Saudi','activo');
insert into Paises(nombre,estado) values('Bahrein','activo');
insert into Paises(nombre,estado) values('Bangladesh','activo');
insert into Paises(nombre,estado) values('Myanmar','activo');
insert into Paises(nombre,estado) values('China','activo');
insert into Paises(nombre,estado) values('Emiratos Arabes Unidos','activo');
insert into Paises(nombre,estado) values('Filipinas','activo');
insert into Paises(nombre,estado) values('India','activo');
insert into Paises(nombre,estado) values('Indonesia','activo');
insert into Paises(nombre,estado) values('Iraq','activo');
insert into Paises(nombre,estado) values('Iran','activo');
insert into Paises(nombre,estado) values('Israel','activo');
insert into Paises(nombre,estado) values('Japon','activo');
insert into Paises(nombre,estado) values('Jordania','activo');
insert into Paises(nombre,estado) values('Camboya','activo');
insert into Paises(nombre,estado) values('Kuwait','activo');
insert into Paises(nombre,estado) values('Laos','activo');
insert into Paises(nombre,estado) values('Libano','activo');
insert into Paises(nombre,estado) values('Malasia','activo');
insert into Paises(nombre,estado) values('Maldivas','activo');
insert into Paises(nombre,estado) values('Mongolia','activo');
insert into Paises(nombre,estado) values('Nepal','activo');
insert into Paises(nombre,estado) values('Oman','activo');
insert into Paises(nombre,estado) values('Pakistan','activo');
insert into Paises(nombre,estado) values('Qatar','activo');
insert into Paises(nombre,estado) values('Corea','activo');
insert into Paises(nombre,estado) values('Corea Del Norte ','activo');
insert into Paises(nombre,estado) values('Singapur','activo');
insert into Paises(nombre,estado) values('Siria','activo');
insert into Paises(nombre,estado) values('Sri Lanka','activo');
insert into Paises(nombre,estado) values('Tailandia','activo');
insert into Paises(nombre,estado) values('Vietnam','activo');
insert into Paises(nombre,estado) values('Brunei','activo');
insert into Paises(nombre,estado) values('Islas Marshall','activo');
insert into Paises(nombre,estado) values('Yemen','activo');
insert into Paises(nombre,estado) values('Azerbaiyan','activo');
insert into Paises(nombre,estado) values('Kazajstan','activo');
insert into Paises(nombre,estado) values('Kirguistan','activo');
insert into Paises(nombre,estado) values('Tadyikistan','activo');
insert into Paises(nombre,estado) values('Turkmenistan','activo');
insert into Paises(nombre,estado) values('Uzbekistan','activo');
insert into Paises(nombre,estado) values('Islas Marianas Del Norte','activo');
insert into Paises(nombre,estado) values('Palestina','activo');
insert into Paises(nombre,estado) values('Hong Kong','activo');
insert into Paises(nombre,estado) values('Bhután','activo');
insert into Paises(nombre,estado) values('Guam','activo');
insert into Paises(nombre,estado) values('Macao','activo');
insert into Paises(nombre,estado) values('Otros Paises O Territorios De Asia','activo');
insert into Paises(nombre,estado) values('Australia','activo');
insert into Paises(nombre,estado) values('Fiji','activo');
insert into Paises(nombre,estado) values('Nueva Zelanda','activo');
insert into Paises(nombre,estado) values('Papua Nueva Guinea','activo');
insert into Paises(nombre,estado) values('Islas Salomon','activo');
insert into Paises(nombre,estado) values('Samoa','activo');
insert into Paises(nombre,estado) values('Tonga','activo');
insert into Paises(nombre,estado) values('Vanuatu','activo');
insert into Paises(nombre,estado) values('Micronesia','activo');
insert into Paises(nombre,estado) values('Tuvalu','activo');
insert into Paises(nombre,estado) values('Islas Cook','activo');
insert into Paises(nombre,estado) values('Nauru','activo');
insert into Paises(nombre,estado) values('Palaos','activo');
insert into Paises(nombre,estado) values('Timor Oriental','activo');
insert into Paises(nombre,estado) values('Polinesia Francesa','activo');
insert into Paises(nombre,estado) values('Isla Norfolk','activo');
insert into Paises(nombre,estado) values('Kiribati','activo');
insert into Paises(nombre,estado) values('Niue','activo');
insert into Paises(nombre,estado) values('Islas Pitcairn','activo');
insert into Paises(nombre,estado) values('Tokelau','activo');
insert into Paises(nombre,estado) values('Nueva Caledonia','activo');
insert into Paises(nombre,estado) values('Wallis Y Fortuna','activo');
insert into Paises(nombre,estado) values('Samoa Americana','activo');



insert into Regiones(nombre,estado,pais_id) values('Tarapacá','activo',1);
insert into Regiones(nombre,estado,pais_id) values('Antogasta','activo',1);
insert into Regiones(nombre,estado,pais_id) values('Atacama','activo',1);
insert into Regiones(nombre,estado,pais_id) values('Coquimbo','activo',1);
insert into Regiones(nombre,estado,pais_id) values('Valparaíso','activo',1);
insert into Regiones(nombre,estado,pais_id) values('Ohiggins','activo',1);
insert into Regiones(nombre,estado,pais_id) values('Maule','activo',1);
insert into Regiones(nombre,estado,pais_id) values('Biobío','activo',1);
insert into Regiones(nombre,estado,pais_id) values('Araucanía','activo',1);
insert into Regiones(nombre,estado,pais_id) values('Los Lagos','activo',1);
insert into Regiones(nombre,estado,pais_id) values('Aysén','activo',1);
insert into Regiones(nombre,estado,pais_id) values('Magallanes','activo',1);
insert into Regiones(nombre,estado,pais_id) values('Metropolitana','activo',1);
insert into Regiones(nombre,estado,pais_id) values('Los Ríos','activo',1);
insert into Regiones(nombre,estado,pais_id) values('Arica y Parinacota','activo',1);

insert into Provincias(nombre,estado,region_id) values('Arica','activo',15);
insert into Provincias(nombre,estado,region_id) values('Parinacota','activo',15);
insert into Provincias(nombre,estado,region_id) values('Iquique','activo',1);
insert into Provincias(nombre,estado,region_id) values('Tamarugal','activo',1);
insert into Provincias(nombre,estado,region_id) values('Tocopilla','activo',2);
insert into Provincias(nombre,estado,region_id) values('El Loa','activo',2);
insert into Provincias(nombre,estado,region_id) values('Antofagasta','activo',2);
insert into Provincias(nombre,estado,region_id) values('Chañaral','activo',3);
insert into Provincias(nombre,estado,region_id) values('Copiapó','activo',3);
insert into Provincias(nombre,estado,region_id) values('Huasco','activo',3);
insert into Provincias(nombre,estado,region_id) values('Elqui','activo',4);
insert into Provincias(nombre,estado,region_id) values('Limarí','activo',4);
insert into Provincias(nombre,estado,region_id) values('Choapa','activo',4);
insert into Provincias(nombre,estado,region_id) values('Petorca','activo',5);
insert into Provincias(nombre,estado,region_id) values('Los Andes','activo',5);
insert into Provincias(nombre,estado,region_id) values('San Felipe de Aconcagua','activo',5);
insert into Provincias(nombre,estado,region_id) values('Quillota','activo',5);
insert into Provincias(nombre,estado,region_id) values('Valparaíso','activo',5);
insert into Provincias(nombre,estado,region_id) values('San Antonio','activo',5);
insert into Provincias(nombre,estado,region_id) values('Isla de Pascua','activo',5);
insert into Provincias(nombre,estado,region_id) values('Marga Marga','activo',5);
insert into Provincias(nombre,estado,region_id) values('Chabuco','activo',13);
insert into Provincias(nombre,estado,region_id) values('Santiago','activo',13);
insert into Provincias(nombre,estado,region_id) values('Cordillera','activo',13);
insert into Provincias(nombre,estado,region_id) values('Maipo ','activo',13);
insert into Provincias(nombre,estado,region_id) values('Melipilla','activo',13);
insert into Provincias(nombre,estado,region_id) values('Talagante','activo',13);
insert into Provincias(nombre,estado,region_id) values('Cachapoal','activo',6);
insert into Provincias(nombre,estado,region_id) values('Colchagua','activo',6);
insert into Provincias(nombre,estado,region_id) values('Cardenal Caro','activo',6);
insert into Provincias(nombre,estado,region_id) values('Curicó','activo',7);
insert into Provincias(nombre,estado,region_id) values('Talca','activo',7);
insert into Provincias(nombre,estado,region_id) values('Linares','activo',7);
insert into Provincias(nombre,estado,region_id) values('Cauquenes','activo',7);
insert into Provincias(nombre,estado,region_id) values('Ñuble','activo',8);
insert into Provincias(nombre,estado,region_id) values('BioBio','activo',8);
insert into Provincias(nombre,estado,region_id) values('Concepción','activo',8);
insert into Provincias(nombre,estado,region_id) values('Arauco','activo',8);
insert into Provincias(nombre,estado,region_id) values('Malleco','activo',9);
insert into Provincias(nombre,estado,region_id) values('Cautín ','activo',9);
insert into Provincias(nombre,estado,region_id) values('Valdivia','activo',14);
insert into Provincias(nombre,estado,region_id) values('Ranco','activo',14);
insert into Provincias(nombre,estado,region_id) values('Osorno','activo',10);
insert into Provincias(nombre,estado,region_id) values('Llanquihue','activo',10);
insert into Provincias(nombre,estado,region_id) values('Chiloé','activo',10);
insert into Provincias(nombre,estado,region_id) values('Palena','activo',10);
insert into Provincias(nombre,estado,region_id) values('Coyhaique','activo',11);
insert into Provincias(nombre,estado,region_id) values('Aysén','activo',11);
insert into Provincias(nombre,estado,region_id) values('General Carrera ','activo',11);
insert into Provincias(nombre,estado,region_id) values('Capitán Prat','activo',11);
insert into Provincias(nombre,estado,region_id) values('Última Esperanza','activo',12);
insert into Provincias(nombre,estado,region_id) values('Magallanes','activo',12);
insert into Provincias(nombre,estado,region_id) values('Tierra del Fuego','activo',12);
insert into Provincias(nombre,estado,region_id) values('Antártica Chilena','activo',12);



insert into Comunas(nombre,estado,provincia_id) values('Arica','activo',1);
insert into Comunas(nombre,estado,provincia_id) values('Camarones','activo',1);
insert into Comunas(nombre,estado,provincia_id) values('Putre','activo',2);
insert into Comunas(nombre,estado,provincia_id) values('General Lagos','activo',2);
insert into Comunas(nombre,estado,provincia_id) values('Iquique','activo',3);
insert into Comunas(nombre,estado,provincia_id) values('Camiña','activo',4);
insert into Comunas(nombre,estado,provincia_id) values('Colchane','activo',4);
insert into Comunas(nombre,estado,provincia_id) values('Huara','activo',4);
insert into Comunas(nombre,estado,provincia_id) values('Pica','activo',4);
insert into Comunas(nombre,estado,provincia_id) values('Pozo Almonte','activo',4);
insert into Comunas(nombre,estado,provincia_id) values('Alto Hospicio','activo',3);
insert into Comunas(nombre,estado,provincia_id) values('Antofagasta','activo',7);
insert into Comunas(nombre,estado,provincia_id) values('Mejillones','activo',7);
insert into Comunas(nombre,estado,provincia_id) values('Sierra Gorda','activo',7);
insert into Comunas(nombre,estado,provincia_id) values('Taltal','activo',7);
insert into Comunas(nombre,estado,provincia_id) values('Calama','activo',6);
insert into Comunas(nombre,estado,provincia_id) values('Ollagüe','activo',6);
insert into Comunas(nombre,estado,provincia_id) values('San Pedro de Atacama','activo',6);
insert into Comunas(nombre,estado,provincia_id) values('Tocopilla','activo',5);
insert into Comunas(nombre,estado,provincia_id) values('María Elena','activo',5);
insert into Comunas(nombre,estado,provincia_id) values('Copiapó','activo',9);
insert into Comunas(nombre,estado,provincia_id) values('Caldera','activo',9);
insert into Comunas(nombre,estado,provincia_id) values('Tierra Amarilla','activo',9);
insert into Comunas(nombre,estado,provincia_id) values('Chañaral','activo',8);
insert into Comunas(nombre,estado,provincia_id) values('Diego de Almagro','activo',8);
insert into Comunas(nombre,estado,provincia_id) values('Vallenar','activo',10);
insert into Comunas(nombre,estado,provincia_id) values('Alto del Carmen','activo',10);
insert into Comunas(nombre,estado,provincia_id) values('Freirina','activo',10);
insert into Comunas(nombre,estado,provincia_id) values('Huasco','activo',10);
insert into Comunas(nombre,estado,provincia_id) values('La Serena','activo',11);
insert into Comunas(nombre,estado,provincia_id) values('Coquimbo','activo',11);
insert into Comunas(nombre,estado,provincia_id) values('Andacollo','activo',11);
insert into Comunas(nombre,estado,provincia_id) values('La Higuera','activo',11);
insert into Comunas(nombre,estado,provincia_id) values('Paiguano','activo',11);
insert into Comunas(nombre,estado,provincia_id) values('Vicuña','activo',11);
insert into Comunas(nombre,estado,provincia_id) values('Illapel','activo',13);
insert into Comunas(nombre,estado,provincia_id) values('Canela','activo',13);
insert into Comunas(nombre,estado,provincia_id) values('Los Vilos','activo',13);
insert into Comunas(nombre,estado,provincia_id) values('Salamanca','activo',13);
insert into Comunas(nombre,estado,provincia_id) values('Ovalle','activo',12);
insert into Comunas(nombre,estado,provincia_id) values('Combarbalá','activo',12);
insert into Comunas(nombre,estado,provincia_id) values('Monte Patria','activo',12);
insert into Comunas(nombre,estado,provincia_id) values('Punitaqui','activo',12);
insert into Comunas(nombre,estado,provincia_id) values('Río Hurtado','activo',12);
insert into Comunas(nombre,estado,provincia_id) values('Valparaíso','activo',18);
insert into Comunas(nombre,estado,provincia_id) values('Casablanca','activo',18);
insert into Comunas(nombre,estado,provincia_id) values('Concón','activo',18);
insert into Comunas(nombre,estado,provincia_id) values('Juan Fernández','activo',18);
insert into Comunas(nombre,estado,provincia_id) values('Puchuncaví','activo',18);
insert into Comunas(nombre,estado,provincia_id) values('Quilpué','activo',21);
insert into Comunas(nombre,estado,provincia_id) values('Quintero','activo',18);
insert into Comunas(nombre,estado,provincia_id) values('Villa Alemana','activo',21);
insert into Comunas(nombre,estado,provincia_id) values('Viña del Mar','activo',18);
insert into Comunas(nombre,estado,provincia_id) values('Isla  de Pascua','activo',20);
insert into Comunas(nombre,estado,provincia_id) values('Los Andes','activo',15);
insert into Comunas(nombre,estado,provincia_id) values('Calle Larga','activo',15);
insert into Comunas(nombre,estado,provincia_id) values('Rinconada','activo',15);
insert into Comunas(nombre,estado,provincia_id) values('San Esteban','activo',15);
insert into Comunas(nombre,estado,provincia_id) values('La Ligua','activo',14);
insert into Comunas(nombre,estado,provincia_id) values('Cabildo','activo',14);
insert into Comunas(nombre,estado,provincia_id) values('Papudo','activo',14);
insert into Comunas(nombre,estado,provincia_id) values('Petorca','activo',14);
insert into Comunas(nombre,estado,provincia_id) values('Zapallar','activo',14);
insert into Comunas(nombre,estado,provincia_id) values('Quillota','activo',17);
insert into Comunas(nombre,estado,provincia_id) values('Calera','activo',17);
insert into Comunas(nombre,estado,provincia_id) values('Hijuelas','activo',17);
insert into Comunas(nombre,estado,provincia_id) values('La Cruz','activo',17);
insert into Comunas(nombre,estado,provincia_id) values('Limache','activo',21);
insert into Comunas(nombre,estado,provincia_id) values('Nogales','activo',17);
insert into Comunas(nombre,estado,provincia_id) values('Olmué','activo',21);
insert into Comunas(nombre,estado,provincia_id) values('San Antonio','activo',19);
insert into Comunas(nombre,estado,provincia_id) values('Algarrobo','activo',19);
insert into Comunas(nombre,estado,provincia_id) values('Cartagena','activo',19);
insert into Comunas(nombre,estado,provincia_id) values('El Quisco','activo',19);
insert into Comunas(nombre,estado,provincia_id) values('El Tabo','activo',19);
insert into Comunas(nombre,estado,provincia_id) values('Santo Domingo','activo',19);
insert into Comunas(nombre,estado,provincia_id) values('San Felipe','activo',16);
insert into Comunas(nombre,estado,provincia_id) values('Catemu','activo',16);
insert into Comunas(nombre,estado,provincia_id) values('Llaillay','activo',16);
insert into Comunas(nombre,estado,provincia_id) values('Panquehue','activo',16);
insert into Comunas(nombre,estado,provincia_id) values('Putaendo','activo',16);
insert into Comunas(nombre,estado,provincia_id) values('Santa María','activo',16);
insert into Comunas(nombre,estado,provincia_id) values('Rancagua','activo',28);
insert into Comunas(nombre,estado,provincia_id) values('Codegua','activo',28);
insert into Comunas(nombre,estado,provincia_id) values('Coinco','activo',28);
insert into Comunas(nombre,estado,provincia_id) values('Coltauco','activo',28);
insert into Comunas(nombre,estado,provincia_id) values('Doñihue','activo',28);
insert into Comunas(nombre,estado,provincia_id) values('Graneros','activo',28);
insert into Comunas(nombre,estado,provincia_id) values('Las Cabras','activo',28);
insert into Comunas(nombre,estado,provincia_id) values('Machalí','activo',28);
insert into Comunas(nombre,estado,provincia_id) values('Malloa','activo',28);
insert into Comunas(nombre,estado,provincia_id) values('Mostazal','activo',28);
insert into Comunas(nombre,estado,provincia_id) values('Olivar','activo',28);
insert into Comunas(nombre,estado,provincia_id) values('Peumo','activo',28);
insert into Comunas(nombre,estado,provincia_id) values('Pichidegua','activo',28);
insert into Comunas(nombre,estado,provincia_id) values('Quinta de Tilcoco','activo',28);
insert into Comunas(nombre,estado,provincia_id) values('Rengo','activo',28);
insert into Comunas(nombre,estado,provincia_id) values('Requínoa','activo',28);
insert into Comunas(nombre,estado,provincia_id) values('San Vicente','activo',28);
insert into Comunas(nombre,estado,provincia_id) values('Pichilemu','activo',30);
insert into Comunas(nombre,estado,provincia_id) values('La Estrella','activo',30);
insert into Comunas(nombre,estado,provincia_id) values('Litueche','activo',30);
insert into Comunas(nombre,estado,provincia_id) values('Marchihue','activo',30);
insert into Comunas(nombre,estado,provincia_id) values('Navidad','activo',30);
insert into Comunas(nombre,estado,provincia_id) values('Paredones','activo',30);
insert into Comunas(nombre,estado,provincia_id) values('San Fernando','activo',29);
insert into Comunas(nombre,estado,provincia_id) values('Chépica','activo',29);
insert into Comunas(nombre,estado,provincia_id) values('Chimbarongo','activo',29);
insert into Comunas(nombre,estado,provincia_id) values('Lolol','activo',29);
insert into Comunas(nombre,estado,provincia_id) values('Nancagua','activo',29);
insert into Comunas(nombre,estado,provincia_id) values('Palmilla','activo',29);
insert into Comunas(nombre,estado,provincia_id) values('Peralillo','activo',29);
insert into Comunas(nombre,estado,provincia_id) values('Placilla','activo',29);
insert into Comunas(nombre,estado,provincia_id) values('Pumanque','activo',29);
insert into Comunas(nombre,estado,provincia_id) values('Santa Cruz','activo',29);
insert into Comunas(nombre,estado,provincia_id) values('Talca','activo',32);
insert into Comunas(nombre,estado,provincia_id) values('Constitución','activo',32);
insert into Comunas(nombre,estado,provincia_id) values('Curepto','activo',32);
insert into Comunas(nombre,estado,provincia_id) values('Empedrado','activo',32);
insert into Comunas(nombre,estado,provincia_id) values('Maule','activo',32);
insert into Comunas(nombre,estado,provincia_id) values('Pelarco','activo',32);
insert into Comunas(nombre,estado,provincia_id) values('Pencahue','activo',32);
insert into Comunas(nombre,estado,provincia_id) values('Río Claro','activo',32);
insert into Comunas(nombre,estado,provincia_id) values('San Clemente','activo',32);
insert into Comunas(nombre,estado,provincia_id) values('San Rafael','activo',32);
insert into Comunas(nombre,estado,provincia_id) values('Cauquenes','activo',34);
insert into Comunas(nombre,estado,provincia_id) values('Chanco','activo',34);
insert into Comunas(nombre,estado,provincia_id) values('Pelluhue','activo',34);
insert into Comunas(nombre,estado,provincia_id) values('Curicó','activo',31);
insert into Comunas(nombre,estado,provincia_id) values('Hualañé','activo',31);
insert into Comunas(nombre,estado,provincia_id) values('Licantén','activo',31);
insert into Comunas(nombre,estado,provincia_id) values('Molina','activo',31);
insert into Comunas(nombre,estado,provincia_id) values('Rauco','activo',31);
insert into Comunas(nombre,estado,provincia_id) values('Romeral','activo',31);
insert into Comunas(nombre,estado,provincia_id) values('Sagrada Familia','activo',31);
insert into Comunas(nombre,estado,provincia_id) values('Teno','activo',31);
insert into Comunas(nombre,estado,provincia_id) values('Vichuquén','activo',31);
insert into Comunas(nombre,estado,provincia_id) values('Linares','activo',33);
insert into Comunas(nombre,estado,provincia_id) values('Colbún','activo',33);
insert into Comunas(nombre,estado,provincia_id) values('Longaví','activo',33);
insert into Comunas(nombre,estado,provincia_id) values('Parral','activo',33);
insert into Comunas(nombre,estado,provincia_id) values('Retiro','activo',33);
insert into Comunas(nombre,estado,provincia_id) values('San Javier','activo',33);
insert into Comunas(nombre,estado,provincia_id) values('Villa Alegre','activo',33);
insert into Comunas(nombre,estado,provincia_id) values('Yerbas Buenas','activo',33);
insert into Comunas(nombre,estado,provincia_id) values('Concepción','activo',37);
insert into Comunas(nombre,estado,provincia_id) values('Coronel','activo',37);
insert into Comunas(nombre,estado,provincia_id) values('Chiguayante','activo',37);
insert into Comunas(nombre,estado,provincia_id) values('Florida','activo',37);
insert into Comunas(nombre,estado,provincia_id) values('Hualqui','activo',37);
insert into Comunas(nombre,estado,provincia_id) values('Lota','activo',37);
insert into Comunas(nombre,estado,provincia_id) values('Penco','activo',37);
insert into Comunas(nombre,estado,provincia_id) values('San Pedro de la Paz','activo',37);
insert into Comunas(nombre,estado,provincia_id) values('Santa Juana','activo',37);
insert into Comunas(nombre,estado,provincia_id) values('Talcahuano','activo',37);
insert into Comunas(nombre,estado,provincia_id) values('Tomé','activo',37);
insert into Comunas(nombre,estado,provincia_id) values('Hualpén','activo',37);
insert into Comunas(nombre,estado,provincia_id) values('Lebu','activo',38);
insert into Comunas(nombre,estado,provincia_id) values('Arauco','activo',38);
insert into Comunas(nombre,estado,provincia_id) values('Cañete','activo',38);
insert into Comunas(nombre,estado,provincia_id) values('Contulmo','activo',38);
insert into Comunas(nombre,estado,provincia_id) values('Curanilahue','activo',38);
insert into Comunas(nombre,estado,provincia_id) values('Los Álamos','activo',38);
insert into Comunas(nombre,estado,provincia_id) values('Tirúa','activo',38);
insert into Comunas(nombre,estado,provincia_id) values('Los Ángeles','activo',36);
insert into Comunas(nombre,estado,provincia_id) values('Antuco','activo',36);
insert into Comunas(nombre,estado,provincia_id) values('Cabrero','activo',36);
insert into Comunas(nombre,estado,provincia_id) values('Laja','activo',36);
insert into Comunas(nombre,estado,provincia_id) values('Mulchén','activo',36);
insert into Comunas(nombre,estado,provincia_id) values('Nacimiento','activo',36);
insert into Comunas(nombre,estado,provincia_id) values('Negrete','activo',36);
insert into Comunas(nombre,estado,provincia_id) values('Quilaco','activo',36);
insert into Comunas(nombre,estado,provincia_id) values('Quilleco','activo',36);
insert into Comunas(nombre,estado,provincia_id) values('San Rosendo','activo',36);
insert into Comunas(nombre,estado,provincia_id) values('Santa Bárbara','activo',36);
insert into Comunas(nombre,estado,provincia_id) values('Tucapel','activo',36);
insert into Comunas(nombre,estado,provincia_id) values('Yumbel','activo',36);
insert into Comunas(nombre,estado,provincia_id) values('Alto Biobío','activo',36);
insert into Comunas(nombre,estado,provincia_id) values('Chillán','activo',35);
insert into Comunas(nombre,estado,provincia_id) values('Bulnes','activo',35);
insert into Comunas(nombre,estado,provincia_id) values('Cobquecura','activo',35);
insert into Comunas(nombre,estado,provincia_id) values('Coelemu','activo',35);
insert into Comunas(nombre,estado,provincia_id) values('Coihueco','activo',35);
insert into Comunas(nombre,estado,provincia_id) values('Chillán Viejo','activo',35);
insert into Comunas(nombre,estado,provincia_id) values('El Carmen','activo',35);
insert into Comunas(nombre,estado,provincia_id) values('Ninhue','activo',35);
insert into Comunas(nombre,estado,provincia_id) values('Ñiquén','activo',35);
insert into Comunas(nombre,estado,provincia_id) values('Pemuco','activo',35);
insert into Comunas(nombre,estado,provincia_id) values('Pinto','activo',35);
insert into Comunas(nombre,estado,provincia_id) values('Portezuelo','activo',35);
insert into Comunas(nombre,estado,provincia_id) values('Quillón','activo',35);
insert into Comunas(nombre,estado,provincia_id) values('Quirihue','activo',35);
insert into Comunas(nombre,estado,provincia_id) values('Ránquil','activo',35);
insert into Comunas(nombre,estado,provincia_id) values('San Carlos','activo',35);
insert into Comunas(nombre,estado,provincia_id) values('San Fabián','activo',35);
insert into Comunas(nombre,estado,provincia_id) values('San Ignacio','activo',35);
insert into Comunas(nombre,estado,provincia_id) values('San Nicolás','activo',35);
insert into Comunas(nombre,estado,provincia_id) values('Treguaco','activo',35);
insert into Comunas(nombre,estado,provincia_id) values('Yungay','activo',35);
insert into Comunas(nombre,estado,provincia_id) values('Temuco','activo',40);
insert into Comunas(nombre,estado,provincia_id) values('Carahue','activo',40);
insert into Comunas(nombre,estado,provincia_id) values('Cunco','activo',40);
insert into Comunas(nombre,estado,provincia_id) values('Curarrehue','activo',40);
insert into Comunas(nombre,estado,provincia_id) values('Freire','activo',40);
insert into Comunas(nombre,estado,provincia_id) values('Galvarino','activo',40);
insert into Comunas(nombre,estado,provincia_id) values('Gorbea','activo',40);
insert into Comunas(nombre,estado,provincia_id) values('Lautaro','activo',40);
insert into Comunas(nombre,estado,provincia_id) values('Loncoche','activo',40);
insert into Comunas(nombre,estado,provincia_id) values('Melipeuco','activo',40);
insert into Comunas(nombre,estado,provincia_id) values('Nueva Imperial','activo',40);
insert into Comunas(nombre,estado,provincia_id) values('Padre Las Casas','activo',40);
insert into Comunas(nombre,estado,provincia_id) values('Perquenco','activo',40);
insert into Comunas(nombre,estado,provincia_id) values('Pitrufquén','activo',40);
insert into Comunas(nombre,estado,provincia_id) values('Pucón','activo',40);
insert into Comunas(nombre,estado,provincia_id) values('Saavedra','activo',40);
insert into Comunas(nombre,estado,provincia_id) values('Teodoro Schmidt','activo',40);
insert into Comunas(nombre,estado,provincia_id) values('Toltén','activo',40);
insert into Comunas(nombre,estado,provincia_id) values('Vilcún','activo',40);
insert into Comunas(nombre,estado,provincia_id) values('Villarrica','activo',40);
insert into Comunas(nombre,estado,provincia_id) values('Cholchol','activo',40);
insert into Comunas(nombre,estado,provincia_id) values('Angol','activo',39);
insert into Comunas(nombre,estado,provincia_id) values('Collipulli','activo',39);
insert into Comunas(nombre,estado,provincia_id) values('Curacautín','activo',39);
insert into Comunas(nombre,estado,provincia_id) values('Ercilla','activo',39);
insert into Comunas(nombre,estado,provincia_id) values('Lonquimay','activo',39);
insert into Comunas(nombre,estado,provincia_id) values('Los Sauces','activo',39);
insert into Comunas(nombre,estado,provincia_id) values('Lumaco','activo',39);
insert into Comunas(nombre,estado,provincia_id) values('Purén','activo',39);
insert into Comunas(nombre,estado,provincia_id) values('Renaico','activo',39);
insert into Comunas(nombre,estado,provincia_id) values('Traiguén','activo',39);
insert into Comunas(nombre,estado,provincia_id) values('Victoria','activo',39);
insert into Comunas(nombre,estado,provincia_id) values('Valdivia','activo',41);
insert into Comunas(nombre,estado,provincia_id) values('Corral','activo',41);
insert into Comunas(nombre,estado,provincia_id) values('Futrono','activo',42);
insert into Comunas(nombre,estado,provincia_id) values('La Unión','activo',42);
insert into Comunas(nombre,estado,provincia_id) values('Lago Ranco','activo',42);
insert into Comunas(nombre,estado,provincia_id) values('Lanco','activo',41);
insert into Comunas(nombre,estado,provincia_id) values('Los Lagos','activo',41);
insert into Comunas(nombre,estado,provincia_id) values('Máfil','activo',41);
insert into Comunas(nombre,estado,provincia_id) values('Mariquina','activo',41);
insert into Comunas(nombre,estado,provincia_id) values('Paillaco','activo',41);
insert into Comunas(nombre,estado,provincia_id) values('Panguipulli','activo',41);
insert into Comunas(nombre,estado,provincia_id) values('Río Bueno','activo',42);
insert into Comunas(nombre,estado,provincia_id) values('Puerto Montt','activo',44);
insert into Comunas(nombre,estado,provincia_id) values('Calbuco','activo',44);
insert into Comunas(nombre,estado,provincia_id) values('Cochamó','activo',44);
insert into Comunas(nombre,estado,provincia_id) values('Fresia','activo',44);
insert into Comunas(nombre,estado,provincia_id) values('Frutillar','activo',44);
insert into Comunas(nombre,estado,provincia_id) values('Los Muermos','activo',44);
insert into Comunas(nombre,estado,provincia_id) values('Llanquihue','activo',44);
insert into Comunas(nombre,estado,provincia_id) values('Maullín','activo',44);
insert into Comunas(nombre,estado,provincia_id) values('Puerto Varas','activo',44);
insert into Comunas(nombre,estado,provincia_id) values('Castro','activo',45);
insert into Comunas(nombre,estado,provincia_id) values('Ancud','activo',45);
insert into Comunas(nombre,estado,provincia_id) values('Chonchi','activo',45);
insert into Comunas(nombre,estado,provincia_id) values('Curaco de Vélez','activo',45);
insert into Comunas(nombre,estado,provincia_id) values('Dalcahue','activo',45);
insert into Comunas(nombre,estado,provincia_id) values('Puqueldón','activo',45);
insert into Comunas(nombre,estado,provincia_id) values('Queilén','activo',45);
insert into Comunas(nombre,estado,provincia_id) values('Quellón','activo',45);
insert into Comunas(nombre,estado,provincia_id) values('Quemchi','activo',45);
insert into Comunas(nombre,estado,provincia_id) values('Quinchao','activo',45);
insert into Comunas(nombre,estado,provincia_id) values('Osorno','activo',43);
insert into Comunas(nombre,estado,provincia_id) values('Puerto Octay','activo',43);
insert into Comunas(nombre,estado,provincia_id) values('Purranque','activo',43);
insert into Comunas(nombre,estado,provincia_id) values('Puyehue','activo',43);
insert into Comunas(nombre,estado,provincia_id) values('Río Negro','activo',43);
insert into Comunas(nombre,estado,provincia_id) values('San Juan de la Costa','activo',43);
insert into Comunas(nombre,estado,provincia_id) values('San Pablo','activo',43);
insert into Comunas(nombre,estado,provincia_id) values('Chaitén','activo',46);
insert into Comunas(nombre,estado,provincia_id) values('Futaleufú','activo',46);
insert into Comunas(nombre,estado,provincia_id) values('Hualaihué','activo',46);
insert into Comunas(nombre,estado,provincia_id) values('Palena','activo',46);
insert into Comunas(nombre,estado,provincia_id) values('Coihaique','activo',47);
insert into Comunas(nombre,estado,provincia_id) values('Lago Verde','activo',47);
insert into Comunas(nombre,estado,provincia_id) values('Aisén','activo',48);
insert into Comunas(nombre,estado,provincia_id) values('Cisnes','activo',48);
insert into Comunas(nombre,estado,provincia_id) values('Guaitecas','activo',48);
insert into Comunas(nombre,estado,provincia_id) values('Cochrane','activo',50);
insert into Comunas(nombre,estado,provincia_id) values('O Higgins','activo',50);
insert into Comunas(nombre,estado,provincia_id) values('Tortel','activo',50);
insert into Comunas(nombre,estado,provincia_id) values('Chile Chico','activo',49);
insert into Comunas(nombre,estado,provincia_id) values('Río Ibáñez','activo',49);
insert into Comunas(nombre,estado,provincia_id) values('Punta Arenas','activo',52);
insert into Comunas(nombre,estado,provincia_id) values('Laguna Blanca','activo',52);
insert into Comunas(nombre,estado,provincia_id) values('Río Verde','activo',52);
insert into Comunas(nombre,estado,provincia_id) values('San Gregorio','activo',52);
insert into Comunas(nombre,estado,provincia_id) values('Cabo de Hornos','activo',54);
insert into Comunas(nombre,estado,provincia_id) values('Antártica','activo',54);
insert into Comunas(nombre,estado,provincia_id) values('Porvenir','activo',53);
insert into Comunas(nombre,estado,provincia_id) values('Primavera','activo',53);
insert into Comunas(nombre,estado,provincia_id) values('Timaukel','activo',53);
insert into Comunas(nombre,estado,provincia_id) values('Natales','activo',51);
insert into Comunas(nombre,estado,provincia_id) values('Torres del Paine','activo',51);
insert into Comunas(nombre,estado,provincia_id) values('Santiago','activo',23);
insert into Comunas(nombre,estado,provincia_id) values('Cerrillos','activo',23);
insert into Comunas(nombre,estado,provincia_id) values('Cerro Navia','activo',23);
insert into Comunas(nombre,estado,provincia_id) values('Conchalí','activo',23);
insert into Comunas(nombre,estado,provincia_id) values('El Bosque','activo',23);
insert into Comunas(nombre,estado,provincia_id) values('Estación Central','activo',23);
insert into Comunas(nombre,estado,provincia_id) values('Huechuraba','activo',23);
insert into Comunas(nombre,estado,provincia_id) values('Independencia','activo',23);
insert into Comunas(nombre,estado,provincia_id) values('La Cisterna','activo',23);
insert into Comunas(nombre,estado,provincia_id) values('La Florida','activo',23);
insert into Comunas(nombre,estado,provincia_id) values('La Granja','activo',23);
insert into Comunas(nombre,estado,provincia_id) values('La Pintana','activo',23);
insert into Comunas(nombre,estado,provincia_id) values('La Reina','activo',23);
insert into Comunas(nombre,estado,provincia_id) values('Las Condes','activo',23);
insert into Comunas(nombre,estado,provincia_id) values('Lo Barnechea','activo',23);
insert into Comunas(nombre,estado,provincia_id) values('Lo Espejo','activo',23);
insert into Comunas(nombre,estado,provincia_id) values('Lo Prado','activo',23);
insert into Comunas(nombre,estado,provincia_id) values('Macul','activo',23);
insert into Comunas(nombre,estado,provincia_id) values('Maipú','activo',23);
insert into Comunas(nombre,estado,provincia_id) values('Ñuñoa','activo',23);
insert into Comunas(nombre,estado,provincia_id) values('Pedro Aguirre Cerda','activo',23);
insert into Comunas(nombre,estado,provincia_id) values('Peñalolén','activo',23);
insert into Comunas(nombre,estado,provincia_id) values('Providencia','activo',23);
insert into Comunas(nombre,estado,provincia_id) values('Pudahuel','activo',23);
insert into Comunas(nombre,estado,provincia_id) values('Quilicura','activo',23);
insert into Comunas(nombre,estado,provincia_id) values('Quinta Normal','activo',23);
insert into Comunas(nombre,estado,provincia_id) values('Recoleta','activo',23);
insert into Comunas(nombre,estado,provincia_id) values('Renca','activo',23);
insert into Comunas(nombre,estado,provincia_id) values('San Joaquín','activo',23);
insert into Comunas(nombre,estado,provincia_id) values('San Miguel','activo',23);
insert into Comunas(nombre,estado,provincia_id) values('San Ramón','activo',23);
insert into Comunas(nombre,estado,provincia_id) values('Vitacura','activo',23);
insert into Comunas(nombre,estado,provincia_id) values('Puente Alto','activo',24);
insert into Comunas(nombre,estado,provincia_id) values('Pirque','activo',24);
insert into Comunas(nombre,estado,provincia_id) values('San José de Maipo','activo',24);
insert into Comunas(nombre,estado,provincia_id) values('Colina','activo',22);
insert into Comunas(nombre,estado,provincia_id) values('Lampa','activo',22);
insert into Comunas(nombre,estado,provincia_id) values('Tiltil','activo',22);
insert into Comunas(nombre,estado,provincia_id) values('San Bernardo','activo',25);
insert into Comunas(nombre,estado,provincia_id) values('Buin','activo',25);
insert into Comunas(nombre,estado,provincia_id) values('Calera de Tango','activo',25);
insert into Comunas(nombre,estado,provincia_id) values('Paine','activo',25);
insert into Comunas(nombre,estado,provincia_id) values('Melipilla','activo',26);
insert into Comunas(nombre,estado,provincia_id) values('Alhué','activo',26);
insert into Comunas(nombre,estado,provincia_id) values('Curacaví','activo',26);
insert into Comunas(nombre,estado,provincia_id) values('María Pinto','activo',26);
insert into Comunas(nombre,estado,provincia_id) values('San Pedro','activo',26);
insert into Comunas(nombre,estado,provincia_id) values('Talagante','activo',27);
insert into Comunas(nombre,estado,provincia_id) values('El Monte','activo',27);
insert into Comunas(nombre,estado,provincia_id) values('Isla de Maipo','activo',27);
insert into Comunas(nombre,estado,provincia_id) values('Padre Hurtado','activo',27);
insert into Comunas(nombre,estado,provincia_id) values('Peñaflor','activo',27);

insert into Sexos(nombre,codigo,estado) values('Hombre','1','activo');
insert into Sexos(nombre,codigo,estado) values('Mujer','2','activo');
insert into Sexos(nombre,codigo,estado) values('Indeterminado','3','activo');
insert into Sexos(nombre,codigo,estado) values('Desconocido','9','activo');


insert into Identificaciones(nombre,codigo) values('Run','1');
insert into Identificaciones(nombre,codigo) values('Pasaporte','2');
insert into Identificaciones(nombre,codigo) values('Run Materno','3');
insert into Identificaciones(nombre,codigo) values('Sin Rut','4');
insert into Identificaciones(nombre,codigo) values('Otro','9');


insert into Nacionalidades(nombre,estado) values('Afgano/na','activo');
insert into Nacionalidades(nombre,estado) values('Albanés/sa','activo');
insert into Nacionalidades(nombre,estado) values('Alemán/na','activo');
insert into Nacionalidades(nombre,estado) values('Andorrano/na','activo');
insert into Nacionalidades(nombre,estado) values('Angoleño/ña','activo');
insert into Nacionalidades(nombre,estado) values('Antiguano/na','activo');
insert into Nacionalidades(nombre,estado) values('Saudí','activo');
insert into Nacionalidades(nombre,estado) values('Argelino/na','activo');
insert into Nacionalidades(nombre,estado) values('Argentino/a','activo');
insert into Nacionalidades(nombre,estado) values('Armenio/nia','activo');
insert into Nacionalidades(nombre,estado) values('Australiano/na','activo');
insert into Nacionalidades(nombre,estado) values('Austriaco/ca','activo');
insert into Nacionalidades(nombre,estado) values('Azerbaiyano/na','activo');
insert into Nacionalidades(nombre,estado) values('Bahameño/ña','activo');
insert into Nacionalidades(nombre,estado) values('Barbadense','activo');
insert into Nacionalidades(nombre,estado) values('Belga','activo');
insert into Nacionalidades(nombre,estado) values('Bielorruso/sa','activo');
insert into Nacionalidades(nombre,estado) values('Birmano/na','activo');
insert into Nacionalidades(nombre,estado) values('Boliviano/a','activo');
insert into Nacionalidades(nombre,estado) values('Bosnio/nia; Bosnioherzegovino/na','activo');
insert into Nacionalidades(nombre,estado) values('Botsuano/na','activo');
insert into Nacionalidades(nombre,estado) values('Brasilero/a','activo');
insert into Nacionalidades(nombre,estado) values('Bruneano/na','activo');
insert into Nacionalidades(nombre,estado) values('Búlgaro/ra','activo');
insert into Nacionalidades(nombre,estado) values('Caboverdiano/na','activo');
insert into Nacionalidades(nombre,estado) values('Camboyano/na','activo');
insert into Nacionalidades(nombre,estado) values('Camerunés/sa','activo');
insert into Nacionalidades(nombre,estado) values('Canadiense','activo');
insert into Nacionalidades(nombre,estado) values('Catarí','activo');
insert into Nacionalidades(nombre,estado) values('Chadiano/na','activo');
insert into Nacionalidades(nombre,estado) values('Chileno/a','activo');
insert into Nacionalidades(nombre,estado) values('Chino/na','activo');
insert into Nacionalidades(nombre,estado) values('Chipriota','activo');
insert into Nacionalidades(nombre,estado) values('Vaticano/na','activo');
insert into Nacionalidades(nombre,estado) values('Colombiano/a','activo');
insert into Nacionalidades(nombre,estado) values('Comorense','activo');
insert into Nacionalidades(nombre,estado) values('Norcoreano/na','activo');
insert into Nacionalidades(nombre,estado) values('Surcoreano/na','activo');
insert into Nacionalidades(nombre,estado) values('Marfileño/ña','activo');
insert into Nacionalidades(nombre,estado) values('Costarricense','activo');
insert into Nacionalidades(nombre,estado) values('Croata','activo');
insert into Nacionalidades(nombre,estado) values('Cubano/a','activo');
insert into Nacionalidades(nombre,estado) values('Danés/sa','activo');
insert into Nacionalidades(nombre,estado) values('Ecuatoriano/a','activo');
insert into Nacionalidades(nombre,estado) values('Egipcio/cia','activo');
insert into Nacionalidades(nombre,estado) values('Salvadoreño/ña','activo');
insert into Nacionalidades(nombre,estado) values('Eritreo/a','activo');
insert into Nacionalidades(nombre,estado) values('Eslovaco/ca','activo');
insert into Nacionalidades(nombre,estado) values('Esloveno/na','activo');
insert into Nacionalidades(nombre,estado) values('Español/la','activo');
insert into Nacionalidades(nombre,estado) values('Estadounidense','activo');
insert into Nacionalidades(nombre,estado) values('Estonio/nia','activo');
insert into Nacionalidades(nombre,estado) values('Etíope','activo');
insert into Nacionalidades(nombre,estado) values('Filipino/na','activo');
insert into Nacionalidades(nombre,estado) values('Finlandés/sa','activo');
insert into Nacionalidades(nombre,estado) values('Fiyiano/na','activo');
insert into Nacionalidades(nombre,estado) values('Francés/sa','activo');
insert into Nacionalidades(nombre,estado) values('Gambiano/na','activo');
insert into Nacionalidades(nombre,estado) values('Georgiano/na','activo');
insert into Nacionalidades(nombre,estado) values('Granadino/a','activo');
insert into Nacionalidades(nombre,estado) values('Griego/ga','activo');
insert into Nacionalidades(nombre,estado) values('Guatemalteco/a','activo');
insert into Nacionalidades(nombre,estado) values('Ecuatoguineano/na','activo');
insert into Nacionalidades(nombre,estado) values('Guineano/na','activo');
insert into Nacionalidades(nombre,estado) values('Guineano/na','activo');
insert into Nacionalidades(nombre,estado) values('Haitiano/a','activo');
insert into Nacionalidades(nombre,estado) values('Hondureño/a','activo');
insert into Nacionalidades(nombre,estado) values('Húngaro/ra','activo');
insert into Nacionalidades(nombre,estado) values('Indio/dia','activo');
insert into Nacionalidades(nombre,estado) values('Indonesio/sia','activo');
insert into Nacionalidades(nombre,estado) values('Irlandés/sa','activo');
insert into Nacionalidades(nombre,estado) values('Islandés/sa','activo');
insert into Nacionalidades(nombre,estado) values('Salomonense','activo');
insert into Nacionalidades(nombre,estado) values('Israelita','activo');
insert into Nacionalidades(nombre,estado) values('Italiano/na','activo');
insert into Nacionalidades(nombre,estado) values('Jamaicano/na o Jamaiquino/na','activo');
insert into Nacionalidades(nombre,estado) values('Japonés/sa','activo');
insert into Nacionalidades(nombre,estado) values('Jordano/na','activo');
insert into Nacionalidades(nombre,estado) values('Kazajo/ja','activo');
insert into Nacionalidades(nombre,estado) values('Keniano/na; Keniata','activo');
insert into Nacionalidades(nombre,estado) values('Kiribatiano/na','activo');
insert into Nacionalidades(nombre,estado) values('Laosiano/na','activo');
insert into Nacionalidades(nombre,estado) values('Lesotense','activo');
insert into Nacionalidades(nombre,estado) values('Liberiano/na','activo');
insert into Nacionalidades(nombre,estado) values('Libio/a','activo');
insert into Nacionalidades(nombre,estado) values('iechtensteiniano/na','activo');
insert into Nacionalidades(nombre,estado) values('Lituano/na','activo');
insert into Nacionalidades(nombre,estado) values('Malgache','activo');
insert into Nacionalidades(nombre,estado) values('Malasio/sia','activo');
insert into Nacionalidades(nombre,estado) values('Maldivo/va','activo');
insert into Nacionalidades(nombre,estado) values('Mauriciano/na','activo');
insert into Nacionalidades(nombre,estado) values('Mauritano/na','activo');
insert into Nacionalidades(nombre,estado) values('Mexicano/a','activo');
insert into Nacionalidades(nombre,estado) values('Micronesio/sia','activo');
insert into Nacionalidades(nombre,estado) values('Moldavo/va','activo');
insert into Nacionalidades(nombre,estado) values('Monegasco/ca','activo');
insert into Nacionalidades(nombre,estado) values('Mongol/la','activo');
insert into Nacionalidades(nombre,estado) values('Montenegrino/na','activo');
insert into Nacionalidades(nombre,estado) values('Namibio/bia','activo');
insert into Nacionalidades(nombre,estado) values('Nauruano/na','activo');
insert into Nacionalidades(nombre,estado) values('Nicaraguense','activo');
insert into Nacionalidades(nombre,estado) values('Nigerino/na','activo');
insert into Nacionalidades(nombre,estado) values('Nigeriano /na','activo');
insert into Nacionalidades(nombre,estado) values('Noruego/ga','activo');
insert into Nacionalidades(nombre,estado) values('Neozelandés/sa','activo');
insert into Nacionalidades(nombre,estado) values('Neerlandés/sa','activo');
insert into Nacionalidades(nombre,estado) values('Pakistaní','activo');
insert into Nacionalidades(nombre,estado) values('Panameño/ña','activo');
insert into Nacionalidades(nombre,estado) values('Paraguayo/a','activo');
insert into Nacionalidades(nombre,estado) values('Peruano/a','activo');
insert into Nacionalidades(nombre,estado) values('Polaco/ca','activo');
insert into Nacionalidades(nombre,estado) values('Portugués/sa','activo');
insert into Nacionalidades(nombre,estado) values('Británico/ca','activo');
insert into Nacionalidades(nombre,estado) values('Centroafricano/na','activo');
insert into Nacionalidades(nombre,estado) values('Checo/ca','activo');
insert into Nacionalidades(nombre,estado) values('Macedonio/nia','activo');
insert into Nacionalidades(nombre,estado) values('Dominicano/na','activo');
insert into Nacionalidades(nombre,estado) values('Sudafricano/na','activo');
insert into Nacionalidades(nombre,estado) values('Rumano/na','activo');
insert into Nacionalidades(nombre,estado) values('Ruso/sa','activo');
insert into Nacionalidades(nombre,estado) values('Samoano/na','activo');
insert into Nacionalidades(nombre,estado) values('Sanmarinense','activo');
insert into Nacionalidades(nombre,estado) values('Sanvicentino/na','activo');
insert into Nacionalidades(nombre,estado) values('Santalucense','activo');
insert into Nacionalidades(nombre,estado) values('Santotomense','activo');
insert into Nacionalidades(nombre,estado) values('Senegalés/sa','activo');
insert into Nacionalidades(nombre,estado) values('Serbio/a','activo');
insert into Nacionalidades(nombre,estado) values('Seychellense','activo');
insert into Nacionalidades(nombre,estado) values('Singapurense','activo');
insert into Nacionalidades(nombre,estado) values('Sirio/ria','activo');
insert into Nacionalidades(nombre,estado) values('Suazi','activo');
insert into Nacionalidades(nombre,estado) values('Sueco/ca','activo');
insert into Nacionalidades(nombre,estado) values('Suizo/za','activo');
insert into Nacionalidades(nombre,estado) values('Tanzano/na','activo');
insert into Nacionalidades(nombre,estado) values('Tayiko/ka','activo');
insert into Nacionalidades(nombre,estado) values('Timorense','activo');
insert into Nacionalidades(nombre,estado) values('Tongano/na','activo');
insert into Nacionalidades(nombre,estado) values('Trinitense','activo');
insert into Nacionalidades(nombre,estado) values('Tunecino/na','activo');
insert into Nacionalidades(nombre,estado) values('Turkmeno/na','activo');
insert into Nacionalidades(nombre,estado) values('Turco/ca','activo');
insert into Nacionalidades(nombre,estado) values('Tuvaluano/na','activo');
insert into Nacionalidades(nombre,estado) values('Ucraniano/na','activo');
insert into Nacionalidades(nombre,estado) values('Uruguayo/a','activo');
insert into Nacionalidades(nombre,estado) values('Uzbeko/ka','activo');
insert into Nacionalidades(nombre,estado) values('Vanuatuense','activo');
insert into Nacionalidades(nombre,estado) values('Venezolano/a','activo');
insert into Nacionalidades(nombre,estado) values('Vietnamita','activo');
insert into Nacionalidades(nombre,estado) values('Yibutiano/na','activo');
insert into Nacionalidades(nombre,estado) values('Zambiano/na','activo');
insert into Nacionalidades(nombre,estado) values('Zimbabuense','activo');

insert into centros_salud(nombre,codigo,estado) values('Hospital Clínico Dr Lautaro Navarro Avaria','126100','activo');
insert into centros_salud(nombre,codigo,estado) values('Hospital Dr Augusto Essmann Burgos','126101','activo');
insert into centros_salud(nombre,codigo,estado) values('Hospital Dr Marco Antonio Chamorro','126102','activo');
insert into centros_salud(nombre,codigo,estado) values('CESFAM Dr Mateo Bencur','126300','activo');
insert into centros_salud(nombre,codigo,estado) values('CESFAM Dr Juan Damianovic','126301','activo');
insert into centros_salud(nombre,codigo,estado) values('CESFAM 18 Septiembre','126302','activo');
insert into centros_salud(nombre,codigo,estado) values('CESFAM Dr Thomas Fenton','126303','activo');
insert into centros_salud(nombre,codigo,estado) values('CESFAM Carlos Ibáñez','126304','activo');
insert into centros_salud(nombre,codigo,estado) values('CESFAM Puerto Natales','126305','activo');
insert into centros_salud(nombre,codigo,estado) values('COSAM Punta Arenas','126606','activo');
insert into centros_salud(nombre,codigo,estado) values('CECOSF Dr Mateo Bencur','126700','activo');
insert into centros_salud(nombre,codigo,estado) values('CECOSF Río Seco','126701','activo');
insert into centros_salud(nombre,codigo,estado) values('CECOSF Hospital de Puerto Williams','126704','activo');
insert into centros_salud(nombre,codigo,estado) values('SAPU Dr Mateo Bencur','126800','activo');
insert into centros_salud(nombre,codigo,estado) values('SAPU-Dr Juan Damianovic','126801','activo');
insert into centros_salud(nombre,codigo,estado) values ('SAPU- 18 de Septiembre','200171','activo');

insert into sistema_previsiones(nombre,estado,codigo) values('Fuerzas Armadas','activo',1);
insert into sistema_previsiones(nombre,estado,codigo) values('Particulares','activo',2);
insert into sistema_previsiones(nombre,estado,codigo) values('Seguro Privado','activo',3);
insert into sistema_previsiones(nombre,estado,codigo) values('Sistema Nacional','activo',4);

insert into previsiones(nombre,estado,codigo,sistema_prev_id) values('Capredena','activo',1,1);
insert into previsiones(nombre,estado,codigo,sistema_prev_id) values('Dipreca','activo',2,1);
insert into previsiones(nombre,estado,codigo,sistema_prev_id) values('Particular','activo',3,2);
insert into previsiones(nombre,estado,codigo,sistema_prev_id) values('Aseguradora Magallanes','activo',4,3);
insert into previsiones(nombre,estado,codigo,sistema_prev_id) values('BCI Seguros Generales','activo',5,3);
insert into previsiones(nombre,estado,codigo,sistema_prev_id) values('MAPFRE','activo',6,3);
insert into previsiones(nombre,estado,codigo,sistema_prev_id) values('PENTA SECURITY','activo',7,3);
insert into previsiones(nombre,estado,codigo,sistema_prev_id) values('R.S.A Seguros','activo',8,3);
insert into previsiones(nombre,estado,codigo,sistema_prev_id) values('Banmédica','activo',9,4);
insert into previsiones(nombre,estado,codigo,sistema_prev_id) values('Chuquicamata Ltda.','activo',10,4);
insert into previsiones(nombre,estado,codigo,sistema_prev_id) values('Cigna Salud','activo',11,4);
insert into previsiones(nombre,estado,codigo,sistema_prev_id) values('Colmena Golden Cross','activo',12,4);
insert into previsiones(nombre,estado,codigo,sistema_prev_id) values('Consalud S.A','activo',13,4);
insert into previsiones(nombre,estado,codigo,sistema_prev_id) values('Cruz del Norte Ltda.','activo',14,4);
insert into previsiones(nombre,estado,codigo,sistema_prev_id) values('Ferrosalud S.A','activo',15,4);
insert into previsiones(nombre,estado,codigo,sistema_prev_id) values('FONASA','activo',16,4);
insert into previsiones(nombre,estado,codigo,sistema_prev_id) values('Fusat Ltda.','activo',17,4);
insert into previsiones(nombre,estado,codigo,sistema_prev_id) values('Cruz Blanca','activo',18,4);
insert into previsiones(nombre,estado,codigo,sistema_prev_id) values('Master Salud','activo',19,4);
insert into previsiones(nombre,estado,codigo,sistema_prev_id) values('Mas Vida S.A','activo',20,4);
insert into previsiones(nombre,estado,codigo,sistema_prev_id) values('No Informado','activo',21,4);
insert into previsiones(nombre,estado,codigo,sistema_prev_id) values('Río Blanco Ltda.','activo',22,4);
insert into previsiones(nombre,estado,codigo,sistema_prev_id) values('San Lorenzo Ltda.','activo',23,4);
insert into previsiones(nombre,estado,codigo,sistema_prev_id) values('Sfera S.A','activo',24,4);
insert into previsiones(nombre,estado,codigo,sistema_prev_id) values('Vida Tres S.A','activo',25,4);

insert into tipo_previsiones(nombre,estado,codigo,prevision_id) values('Capredena','activo',1,1);
insert into tipo_previsiones(nombre,estado,codigo,prevision_id) values('Dipreca','activo',2,2);
insert into tipo_previsiones(nombre,estado,codigo,prevision_id) values('Particular','activo',3,3);
insert into tipo_previsiones(nombre,estado,codigo,prevision_id) values('Aseguradora Magallanes','activo',4,4);
insert into tipo_previsiones(nombre,estado,codigo,prevision_id) values('BCI Seguros Generales','activo',5,5);
insert into tipo_previsiones(nombre,estado,codigo,prevision_id) values('MAPFRE','activo',6,6);
insert into tipo_previsiones(nombre,estado,codigo,prevision_id) values('PENTA SECURITY','activo',7,7);
insert into tipo_previsiones(nombre,estado,codigo,prevision_id) values('R.S.A Seguros','activo',8,8);
insert into tipo_previsiones(nombre,estado,codigo,prevision_id) values('Banmédica','activo',9,9);
insert into tipo_previsiones(nombre,estado,codigo,prevision_id) values('Chuquicamata Ltda.','activo',10,10);
insert into tipo_previsiones(nombre,estado,codigo,prevision_id) values('Cigna Salud','activo',11,11);
insert into tipo_previsiones(nombre,estado,codigo,prevision_id) values('Colmena Golden Cross','activo',12,12);
insert into tipo_previsiones(nombre,estado,codigo,prevision_id) values('Consalud S.A','activo',13,13);
insert into tipo_previsiones(nombre,estado,codigo,prevision_id) values('Cruz del Norte Ltda.','activo',14,14);
insert into tipo_previsiones(nombre,estado,codigo,prevision_id) values('Ferrosalud S.A','activo',15,15);
insert into tipo_previsiones(nombre,estado,codigo,prevision_id) values('FONASA A','activo',16,16);
insert into tipo_previsiones(nombre,estado,codigo,prevision_id) values('FONASA B','activo',17,16);
insert into tipo_previsiones(nombre,estado,codigo,prevision_id) values('FONASA C','activo',18,16);
insert into tipo_previsiones(nombre,estado,codigo,prevision_id) values('FONASA D','activo',19,16);
insert into tipo_previsiones(nombre,estado,codigo,prevision_id) values('FONASA MLE','activo',20,16);
insert into tipo_previsiones(nombre,estado,codigo,prevision_id) values('Fusat Ltda.','activo',21,17);
insert into tipo_previsiones(nombre,estado,codigo,prevision_id) values('Cruz Blanca','activo',22,18);
insert into tipo_previsiones(nombre,estado,codigo,prevision_id) values('Master Salud','activo',23,19);
insert into tipo_previsiones(nombre,estado,codigo,prevision_id) values('Mas Vida S.A','activo',24,20);
insert into tipo_previsiones(nombre,estado,codigo,prevision_id) values('No Informado','activo',25,21);
insert into tipo_previsiones(nombre,estado,codigo,prevision_id) values('Río Blanco Ltda.','activo',26,22);
insert into tipo_previsiones(nombre,estado,codigo,prevision_id) values('San Lorenzo Ltda.','activo',27,23);
insert into tipo_previsiones(nombre,estado,codigo,prevision_id) values('Sfera S.A','activo',28,24);
insert into tipo_previsiones(nombre,estado,codigo,prevision_id) values('Vida Tres S.A','activo',29,25);


insert into Paises_nac(nombre,estado) values('Chile','activo');
insert into Paises_nac(nombre,estado) values('Argentina','activo');
insert into Paises_nac(nombre,estado) values('Austria','activo');
insert into Paises_nac(nombre,estado) values('Belgica','activo');
insert into Paises_nac(nombre,estado) values('Bulgaria','activo');
insert into Paises_nac(nombre,estado) values('Chipre','activo');
insert into Paises_nac(nombre,estado) values('Dinamarca','activo');
insert into Paises_nac(nombre,estado) values('España','activo');
insert into Paises_nac(nombre,estado) values('Finlandia','activo');
insert into Paises_nac(nombre,estado) values('Francia','activo');
insert into Paises_nac(nombre,estado) values('Grecia','activo');
insert into Paises_nac(nombre,estado) values('Hungria','activo');
insert into Paises_nac(nombre,estado) values('Irlanda','activo');
insert into Paises_nac(nombre,estado) values('Italia','activo');
insert into Paises_nac(nombre,estado) values('Luxemburgo','activo');
insert into Paises_nac(nombre,estado) values('Malta','activo');
insert into Paises_nac(nombre,estado) values('Paises Bajos','activo');
insert into Paises_nac(nombre,estado) values('Polonia','activo');
insert into Paises_nac(nombre,estado) values('Portugal','activo');
insert into Paises_nac(nombre,estado) values('Reino Unido','activo');
insert into Paises_nac(nombre,estado) values('Alemania','activo');
insert into Paises_nac(nombre,estado) values('Rumania','activo');
insert into Paises_nac(nombre,estado) values('Suecia','activo');
insert into Paises_nac(nombre,estado) values('Letonia','activo');
insert into Paises_nac(nombre,estado) values('Estonia','activo');
insert into Paises_nac(nombre,estado) values('Lituania','activo');
insert into Paises_nac(nombre,estado) values('Republica Checa','activo');
insert into Paises_nac(nombre,estado) values('Republica Eslovaca','activo');
insert into Paises_nac(nombre,estado) values('Eslovenia','activo');
insert into Paises_nac(nombre,estado) values('Otros Paises O Territorios De La Union Europea','activo');
insert into Paises_nac(nombre,estado) values('Albania','activo');
insert into Paises_nac(nombre,estado) values('Islandia','activo');
insert into Paises_nac(nombre,estado) values('Liechtenstein','activo');
insert into Paises_nac(nombre,estado) values('Monaco','activo');
insert into Paises_nac(nombre,estado) values('Noruega','activo');
insert into Paises_nac(nombre,estado) values('Andorra','activo');
insert into Paises_nac(nombre,estado) values('San Marino','activo');
insert into Paises_nac(nombre,estado) values('Santa Sede','activo');
insert into Paises_nac(nombre,estado) values('Suiza','activo');
insert into Paises_nac(nombre,estado) values('Ucrania','activo');
insert into Paises_nac(nombre,estado) values('Moldavia','activo');
insert into Paises_nac(nombre,estado) values('Belarus','activo');
insert into Paises_nac(nombre,estado) values('Georgia','activo');
insert into Paises_nac(nombre,estado) values('Bosnia Y Herzegovina','activo');
insert into Paises_nac(nombre,estado) values('Croacia','activo');
insert into Paises_nac(nombre,estado) values('Armenia','activo');
insert into Paises_nac(nombre,estado) values('Rusia','activo');
insert into Paises_nac(nombre,estado) values('Macedonia ','activo');
insert into Paises_nac(nombre,estado) values('Serbia','activo');
insert into Paises_nac(nombre,estado) values('Montenegro','activo');
insert into Paises_nac(nombre,estado) values('Guernesey','activo');
insert into Paises_nac(nombre,estado) values('Svalbard Y Jan Mayen','activo');
insert into Paises_nac(nombre,estado) values('Islas Feroe','activo');
insert into Paises_nac(nombre,estado) values('Isla De Man','activo');
insert into Paises_nac(nombre,estado) values('Gibraltar','activo');
insert into Paises_nac(nombre,estado) values('Islas Del Canal','activo');
insert into Paises_nac(nombre,estado) values('Jersey','activo');
insert into Paises_nac(nombre,estado) values('Islas Aland','activo');
insert into Paises_nac(nombre,estado) values('Turquia','activo');
insert into Paises_nac(nombre,estado) values('Otros Paises O Territorios Del Resto De Europa','activo');
insert into Paises_nac(nombre,estado) values('Burkina Faso','activo');
insert into Paises_nac(nombre,estado) values('Angola','activo');
insert into Paises_nac(nombre,estado) values('Argelia','activo');
insert into Paises_nac(nombre,estado) values('Benin','activo');
insert into Paises_nac(nombre,estado) values('Botswana','activo');
insert into Paises_nac(nombre,estado) values('Burundi','activo');
insert into Paises_nac(nombre,estado) values('Cabo Verde','activo');
insert into Paises_nac(nombre,estado) values('Camerun','activo');
insert into Paises_nac(nombre,estado) values('Comores','activo');
insert into Paises_nac(nombre,estado) values('Congo','activo');
insert into Paises_nac(nombre,estado) values('Costa De Marfil','activo');
insert into Paises_nac(nombre,estado) values('Djibouti','activo');
insert into Paises_nac(nombre,estado) values('Egipto','activo');
insert into Paises_nac(nombre,estado) values('Etiopia','activo');
insert into Paises_nac(nombre,estado) values('Gabon','activo');
insert into Paises_nac(nombre,estado) values('Gambia','activo');
insert into Paises_nac(nombre,estado) values('Ghana','activo');
insert into Paises_nac(nombre,estado) values('Guinea','activo');
insert into Paises_nac(nombre,estado) values('Guinea-Bissau','activo');
insert into Paises_nac(nombre,estado) values('Guinea Ecuatorial','activo');
insert into Paises_nac(nombre,estado) values('Kenia','activo');
insert into Paises_nac(nombre,estado) values('Lesotho','activo');
insert into Paises_nac(nombre,estado) values('Liberia','activo');
insert into Paises_nac(nombre,estado) values('Libia','activo');
insert into Paises_nac(nombre,estado) values('Madagascar','activo');
insert into Paises_nac(nombre,estado) values('Malawi','activo');
insert into Paises_nac(nombre,estado) values('Mali','activo');
insert into Paises_nac(nombre,estado) values('Marruecos','activo');
insert into Paises_nac(nombre,estado) values('Mauricio','activo');
insert into Paises_nac(nombre,estado) values('Mauritania','activo');
insert into Paises_nac(nombre,estado) values('Mozambique','activo');
insert into Paises_nac(nombre,estado) values('Namibia','activo');
insert into Paises_nac(nombre,estado) values('Niger','activo');
insert into Paises_nac(nombre,estado) values('Nigeria','activo');
insert into Paises_nac(nombre,estado) values('Republica Centroafricana','activo');
insert into Paises_nac(nombre,estado) values('Sudafrica','activo');
insert into Paises_nac(nombre,estado) values('Ruanda','activo');
insert into Paises_nac(nombre,estado) values('Santo Tome Y Principe','activo');
insert into Paises_nac(nombre,estado) values('Senegal','activo');
insert into Paises_nac(nombre,estado) values('Seychelles','activo');
insert into Paises_nac(nombre,estado) values('Sierra Leona','activo');
insert into Paises_nac(nombre,estado) values('Somalia','activo');
insert into Paises_nac(nombre,estado) values('Sudan','activo');
insert into Paises_nac(nombre,estado) values('Swazilandia','activo');
insert into Paises_nac(nombre,estado) values('Tanzania','activo');
insert into Paises_nac(nombre,estado) values('Chad','activo');
insert into Paises_nac(nombre,estado) values('Togo','activo');
insert into Paises_nac(nombre,estado) values('Tunez','activo');
insert into Paises_nac(nombre,estado) values('Uganda','activo');
insert into Paises_nac(nombre,estado) values('Rep.Democratica Del Congo','activo');
insert into Paises_nac(nombre,estado) values('Zambia','activo');
insert into Paises_nac(nombre,estado) values('Zimbabwe','activo');
insert into Paises_nac(nombre,estado) values('Eritrea','activo');
insert into Paises_nac(nombre,estado) values('Santa Helena','activo');
insert into Paises_nac(nombre,estado) values('Reunion','activo');
insert into Paises_nac(nombre,estado) values('Mayotte','activo');
insert into Paises_nac(nombre,estado) values('Sahara Occidental','activo');
insert into Paises_nac(nombre,estado) values('Otros Paises O Territorios De Africa','activo');
insert into Paises_nac(nombre,estado) values('Canada','activo');
insert into Paises_nac(nombre,estado) values('Estados Unidos De America','activo');
insert into Paises_nac(nombre,estado) values('Mexico','activo');
insert into Paises_nac(nombre,estado) values('San Pedro Y Miquelon ','activo');
insert into Paises_nac(nombre,estado) values('Groenlandia','activo');
insert into Paises_nac(nombre,estado) values('Otros Paises  O Territorios De America Del Norte','activo');
insert into Paises_nac(nombre,estado) values('Antigua Y Barbuda','activo');
insert into Paises_nac(nombre,estado) values('Bahamas','activo');
insert into Paises_nac(nombre,estado) values('Barbados','activo');
insert into Paises_nac(nombre,estado) values('Belice','activo');
insert into Paises_nac(nombre,estado) values('Costa Rica','activo');
insert into Paises_nac(nombre,estado) values('Cuba','activo');
insert into Paises_nac(nombre,estado) values('Dominica','activo');
insert into Paises_nac(nombre,estado) values('El Salvador','activo');
insert into Paises_nac(nombre,estado) values('Granada','activo');
insert into Paises_nac(nombre,estado) values('Guatemala','activo');
insert into Paises_nac(nombre,estado) values('Haiti','activo');
insert into Paises_nac(nombre,estado) values('Honduras','activo');
insert into Paises_nac(nombre,estado) values('Jamaica','activo');
insert into Paises_nac(nombre,estado) values('Nicaragua','activo');
insert into Paises_nac(nombre,estado) values('Panama','activo');
insert into Paises_nac(nombre,estado) values('San Vicente Y Las Granadinas','activo');
insert into Paises_nac(nombre,estado) values('Republica Dominicana','activo');
insert into Paises_nac(nombre,estado) values('Trinidad Y Tobago','activo');
insert into Paises_nac(nombre,estado) values('Santa Lucia','activo');
insert into Paises_nac(nombre,estado) values('San Cristobal Y Nieves','activo');
insert into Paises_nac(nombre,estado) values('Islas Caimán','activo');
insert into Paises_nac(nombre,estado) values('Islas Turcas Y Caicos','activo');
insert into Paises_nac(nombre,estado) values('Islas Vírgenes De Los Estados Unidos','activo');
insert into Paises_nac(nombre,estado) values('Guadalupe','activo');
insert into Paises_nac(nombre,estado) values('Antillas Holandesas','activo');
insert into Paises_nac(nombre,estado) values('San Martin (Parte Francesa)','activo');
insert into Paises_nac(nombre,estado) values('Aruba','activo');
insert into Paises_nac(nombre,estado) values('Montserrat','activo');
insert into Paises_nac(nombre,estado) values('Anguilla','activo');
insert into Paises_nac(nombre,estado) values('San Bartolome','activo');
insert into Paises_nac(nombre,estado) values('Martinica','activo');
insert into Paises_nac(nombre,estado) values('Puerto Rico','activo');
insert into Paises_nac(nombre,estado) values('Bermudas','activo');
insert into Paises_nac(nombre,estado) values('Islas Virgenes Britanicas','activo');
insert into Paises_nac(nombre,estado) values('Otros Paises O Territorios Del Caribe Y America Central','activo');
insert into Paises_nac(nombre,estado) values('Bolivia','activo');
insert into Paises_nac(nombre,estado) values('Brasil','activo');
insert into Paises_nac(nombre,estado) values('Ecuador','activo');
insert into Paises_nac(nombre,estado) values('Guyana','activo');
insert into Paises_nac(nombre,estado) values('Paraguay','activo');
insert into Paises_nac(nombre,estado) values('Peru','activo');
insert into Paises_nac(nombre,estado) values('Surinam','activo');
insert into Paises_nac(nombre,estado) values('Uruguay','activo');
insert into Paises_nac(nombre,estado) values('Venezuela','activo');
insert into Paises_nac(nombre,estado) values('Guayana Francesa','activo');
insert into Paises_nac(nombre,estado) values('Islas Malvinas','activo');
insert into Paises_nac(nombre,estado) values('Otros Paises O Territorios  De Sudamerica','activo');
insert into Paises_nac(nombre,estado) values('Afganistan','activo');
insert into Paises_nac(nombre,estado) values('Arabia Saudi','activo');
insert into Paises_nac(nombre,estado) values('Bahrein','activo');
insert into Paises_nac(nombre,estado) values('Bangladesh','activo');
insert into Paises_nac(nombre,estado) values('Myanmar','activo');
insert into Paises_nac(nombre,estado) values('China','activo');
insert into Paises_nac(nombre,estado) values('Emiratos Arabes Unidos','activo');
insert into Paises_nac(nombre,estado) values('Filipinas','activo');
insert into Paises_nac(nombre,estado) values('India','activo');
insert into Paises_nac(nombre,estado) values('Indonesia','activo');
insert into Paises_nac(nombre,estado) values('Iraq','activo');
insert into Paises_nac(nombre,estado) values('Iran','activo');
insert into Paises_nac(nombre,estado) values('Israel','activo');
insert into Paises_nac(nombre,estado) values('Japon','activo');
insert into Paises_nac(nombre,estado) values('Jordania','activo');
insert into Paises_nac(nombre,estado) values('Camboya','activo');
insert into Paises_nac(nombre,estado) values('Kuwait','activo');
insert into Paises_nac(nombre,estado) values('Laos','activo');
insert into Paises_nac(nombre,estado) values('Libano','activo');
insert into Paises_nac(nombre,estado) values('Malasia','activo');
insert into Paises_nac(nombre,estado) values('Maldivas','activo');
insert into Paises_nac(nombre,estado) values('Mongolia','activo');
insert into Paises_nac(nombre,estado) values('Nepal','activo');
insert into Paises_nac(nombre,estado) values('Oman','activo');
insert into Paises_nac(nombre,estado) values('Pakistan','activo');
insert into Paises_nac(nombre,estado) values('Qatar','activo');
insert into Paises_nac(nombre,estado) values('Corea','activo');
insert into Paises_nac(nombre,estado) values('Corea Del Norte ','activo');
insert into Paises_nac(nombre,estado) values('Singapur','activo');
insert into Paises_nac(nombre,estado) values('Siria','activo');
insert into Paises_nac(nombre,estado) values('Sri Lanka','activo');
insert into Paises_nac(nombre,estado) values('Tailandia','activo');
insert into Paises_nac(nombre,estado) values('Vietnam','activo');
insert into Paises_nac(nombre,estado) values('Brunei','activo');
insert into Paises_nac(nombre,estado) values('Islas Marshall','activo');
insert into Paises_nac(nombre,estado) values('Yemen','activo');
insert into Paises_nac(nombre,estado) values('Azerbaiyan','activo');
insert into Paises_nac(nombre,estado) values('Kazajstan','activo');
insert into Paises_nac(nombre,estado) values('Kirguistan','activo');
insert into Paises_nac(nombre,estado) values('Tadyikistan','activo');
insert into Paises_nac(nombre,estado) values('Turkmenistan','activo');
insert into Paises_nac(nombre,estado) values('Uzbekistan','activo');
insert into Paises_nac(nombre,estado) values('Islas Marianas Del Norte','activo');
insert into Paises_nac(nombre,estado) values('Palestina','activo');
insert into Paises_nac(nombre,estado) values('Hong Kong','activo');
insert into Paises_nac(nombre,estado) values('Bhután','activo');
insert into Paises_nac(nombre,estado) values('Guam','activo');
insert into Paises_nac(nombre,estado) values('Macao','activo');
insert into Paises_nac(nombre,estado) values('Otros Paises O Territorios De Asia','activo');
insert into Paises_nac(nombre,estado) values('Australia','activo');
insert into Paises_nac(nombre,estado) values('Fiji','activo');
insert into Paises_nac(nombre,estado) values('Nueva Zelanda','activo');
insert into Paises_nac(nombre,estado) values('Papua Nueva Guinea','activo');
insert into Paises_nac(nombre,estado) values('Islas Salomon','activo');
insert into Paises_nac(nombre,estado) values('Samoa','activo');
insert into Paises_nac(nombre,estado) values('Tonga','activo');
insert into Paises_nac(nombre,estado) values('Vanuatu','activo');
insert into Paises_nac(nombre,estado) values('Micronesia','activo');
insert into Paises_nac(nombre,estado) values('Tuvalu','activo');
insert into Paises_nac(nombre,estado) values('Islas Cook','activo');
insert into Paises_nac(nombre,estado) values('Nauru','activo');
insert into Paises_nac(nombre,estado) values('Palaos','activo');
insert into Paises_nac(nombre,estado) values('Timor Oriental','activo');
insert into Paises_nac(nombre,estado) values('Polinesia Francesa','activo');
insert into Paises_nac(nombre,estado) values('Isla Norfolk','activo');
insert into Paises_nac(nombre,estado) values('Kiribati','activo');
insert into Paises_nac(nombre,estado) values('Niue','activo');
insert into Paises_nac(nombre,estado) values('Islas Pitcairn','activo');
insert into Paises_nac(nombre,estado) values('Tokelau','activo');
insert into Paises_nac(nombre,estado) values('Nueva Caledonia','activo');
insert into Paises_nac(nombre,estado) values('Wallis Y Fortuna','activo');
insert into Paises_nac(nombre,estado) values('Samoa Americana','activo');

insert into fichas(codigo,estado,fecha_creacion,creado_por) values('100000','activo','2016/04/12 15:53:00',2);
insert into fichas(codigo,estado,fecha_creacion,creado_por) values('200001','activo','2016/04/12 15:53:00',1);
insert into fichas(codigo,estado,fecha_creacion,creado_por) values('300020','activo','2016/04/12 15:53:00',2);
insert into fichas(codigo,estado,fecha_creacion,creado_por) values('400544','activo','2016/04/12 15:53:00',2);
insert into fichas(codigo,estado,fecha_creacion,creado_por) values('499999','activo','2016/04/12 15:53:00',1);


insert into estados_civil(nombre,codigo,estado) values('Soltero/a','1','activo');
insert into estados_civil(nombre,codigo,estado) values('Separado/a','2','activo');
insert into estados_civil(nombre,codigo,estado) values('Casado/a','3','activo');
insert into estados_civil(nombre,codigo,estado) values('Divorciado/a','4','activo');
insert into estados_civil(nombre,codigo,estado) values('Viudo/a','5','activo');
insert into estados_civil(nombre,codigo,estado) values('Conviviente','6','activo');
insert into estados_civil(nombre,codigo,estado) values('Desconocido','7','activo');


insert into vias(nombre,codigo,estado) values('calle','1','activo');
insert into vias(nombre,codigo,estado) values('pasaje','2','activo');
insert into vias(nombre,codigo,estado) values('avenida','3','activo');
insert into vias(nombre,codigo,estado) values('otro','1','activo');


insert into pacientes(identificacion_id,apepat,apemat,fec_nac,comuna_id,sexo_id,direccion,telefono1,telefono2,celular,tipo_prevision_id,creado_por,fecha_creacion,nombre,via_id,nacionalidad_id,pais_nac_id,run,dv,numeroidentificacion,runresp,dvresp,ficha_id,estado_civil_id,email,estado,centro_salud_id) values(1,'González','Martínez','1990/04/23',24,1,'Ovejero 333','612229383','','56993244433',19,3,'2016/04/12 16:16:00', 'Carlos',1,1,3,'15365988','4','','','',2,1,'wewewesd@gmail.com','activo',5);



/* RESPALDO DE CONSULTA
select pacientes.nombre as Nombre,paises_nac.nombre as Pais,Centros_Salud.nombre as Centro,Tipo_previsiones.nombre as TipoPrev,Comunas.nombre as Comuna ,Nacionalidades.nombre as Nacionalidad,Fichas.codigo as ficha,Usuarios.nombre as creado_por, Identificaciones.nombre as identificacion,Vias.nombre
 from pacientes,paises_nac,Centros_Salud,tipo_previsiones,Comunas,Nacionalidades,Fichas,Usuarios,Identificaciones,Vias
 where 
     pacientes.pais_nac_id=paises_nac.pais_nac_id
 and
    pacientes.centro_salud_id=Centros_salud.centro_salud_id
 and
    pacientes.tipo_prevision_id=Tipo_previsiones.tipo_prevision_id
 and 
    pacientes.comuna_id=comunas.comuna_id
 and 
    pacientes.nacionalidad_id=nacionalidades.nacionalidad_id
 and
    pacientes.ficha_id=Fichas.ficha_id
 and 
    pacientes.creado_por=Usuarios.usuario_id
 and
    pacientes.identificacion_id=Identificaciones.identificacion_id
 and 
    pacientes.via_id=vias.via_id;

*/