-- ROLES
INSERT INTO ROL(NOMBRE, ESTATUS, DESCRIPCION) VALUES('Administrador de Proyectos', 'A', 'Figura que administra todos los proyectos registrados en la plataforma.');
INSERT INTO ROL(NOMBRE, ESTATUS, DESCRIPCION) VALUES('Gerente de Proyecto', 'A', 'Figura que administra algunos de los proyectos registrados en la plataforma.');
INSERT INTO ROL(NOMBRE, ESTATUS, DESCRIPCION) VALUES('Líder de Proyecto', 'A', 'Figura que administra algunos de los proyectos registrados en la plataforma.');
INSERT INTO ROL(NOMBRE, ESTATUS, DESCRIPCION) VALUES('Recurso', 'A', 'Figura que tiene a su cargo una o más tareas de proyectos');
INSERT INTO ROL(NOMBRE, ESTATUS, DESCRIPCION) VALUES('Cliente', 'A', 'Cliente final para el que se desarrolla el proyecto.');

--USUARIO
INSERT INTO USUARIO (NOMBRE, APPATERNO, APMATERNO, USUARIO, PASSWORD, CORREO_ELECTRONICO, NUMERO_MOVIL, ID_ROL, ESTATUS, FECHA_REGISTRO) 
VALUES ('NOMBRE', 'APPATERNO', 'APMATERNO', 'INTADM', 'PASSWORD', 'pame23@gmail.com', '5527299581', 1, 'A', NOW())

-- PRIVILEGIOS
INSERT INTO PRIVILEGIO(NOMBRE, ESTATUS, DESCRIPCION) VALUES('DSHBRD', 'A', 'Privilegio para visualizar dashboard de resumen de proyectos.');
INSERT INTO PRIVILEGIO(NOMBRE, ESTATUS, DESCRIPCION) VALUES('MRECURSOS', 'A', 'Privilegio para visualizar mapa de recursos.');
INSERT INTO PRIVILEGIO(NOMBRE, ESTATUS, DESCRIPCION) VALUES('RRADAR', 'A', 'Privilegio para visualizar y descargar reporte de radar.');
INSERT INTO PRIVILEGIO(NOMBRE, ESTATUS, DESCRIPCION) VALUES('RADAR', 'A', 'Privilegio para aceptar o rechazar reportes de radar.');
INSERT INTO PRIVILEGIO(NOMBRE, ESTATUS, DESCRIPCION) VALUES('NPRYTO', 'A', 'Privilegio para registrar nuevos proyectos en el sistema.');

-- ASIGNACIÓN DE PRIVILEGIOS DEFAULT POR ROL
INSERT INTO REL_ROL_PRIVILEGIO(ID_ROL, ID_PRIVILEGIO) VALUES(1, 1);
INSERT INTO REL_ROL_PRIVILEGIO(ID_ROL, ID_PRIVILEGIO) VALUES(1, 2);
INSERT INTO REL_ROL_PRIVILEGIO(ID_ROL, ID_PRIVILEGIO) VALUES(1, 3);
INSERT INTO REL_ROL_PRIVILEGIO(ID_ROL, ID_PRIVILEGIO) VALUES(1, 4);
INSERT INTO REL_ROL_PRIVILEGIO(ID_ROL, ID_PRIVILEGIO) VALUES(1, 5);


-- ASIGNACIÓN DE PRIVILEGIOS PARA EL USUARIO DEFAULT
INSERT INTO REL_USUARIO_P(ID_USUARIO, ESTATUS, ID_PRIVILEGIO) VALUES(1, 'A', 1);
INSERT INTO REL_USUARIO_P(ID_USUARIO, ESTATUS, ID_PRIVILEGIO) VALUES(1, 'A', 2);
INSERT INTO REL_USUARIO_P(ID_USUARIO, ESTATUS, ID_PRIVILEGIO) VALUES(1, 'A', 3);
INSERT INTO REL_USUARIO_P(ID_USUARIO, ESTATUS, ID_PRIVILEGIO) VALUES(1, 'A', 4);
INSERT INTO REL_USUARIO_P(ID_USUARIO, ESTATUS, ID_PRIVILEGIO) VALUES(1, 'A', 5);

-- CLIENTES 
INSERT INTO CLIENTE (NOMBRE, CORREO_ELECTRONICO, NUMERO_MOVIL, ESTATUS, FECHA_REGISTRO) VALUES ('COVEG', 'coveg@gmail.com', '5527299581', 'A', NOW());
INSERT INTO CLIENTE (NOMBRE, CORREO_ELECTRONICO, NUMERO_MOVIL, ESTATUS, FECHA_REGISTRO) VALUES ('Deportenis', 'coveg@gmail.com', '5527299581', 'A', NOW());
INSERT INTO CLIENTE (NOMBRE, CORREO_ELECTRONICO, NUMERO_MOVIL, ESTATUS, FECHA_REGISTRO) VALUES ('Monte Pío Luz Saviñon', 'coveg@gmail.com', '5527299581', 'A', NOW());
INSERT INTO CLIENTE (NOMBRE, CORREO_ELECTRONICO, NUMERO_MOVIL, ESTATUS, FECHA_REGISTRO) VALUES ('Servicios de Salud Zacatecas', 'coveg@gmail.com', '5527299581', 'A', NOW());

-- TIPO PROYECTO
INSERT INTO TIPO_PROYECTO (NOMBRE, DESCRIPCION, ESTATUS) VALUES ('Bajo Plan', 'Proyecto bajo plan', 'A');
INSERT INTO TIPO_PROYECTO (NOMBRE, DESCRIPCION, ESTATUS) VALUES ('Soporte', 'Proyecto de soporte', 'A');
INSERT INTO TIPO_PROYECTO (NOMBRE, DESCRIPCION, ESTATUS) VALUES ('Garantía', 'Proyecto bajo garantía', 'A');
INSERT INTO TIPO_PROYECTO (NOMBRE, DESCRIPCION, ESTATUS) VALUES ('Iguala', 'Proyecto bajo iguala', 'A');
INSERT INTO TIPO_PROYECTO (NOMBRE, DESCRIPCION, ESTATUS) VALUES ('Tiempo y materiales', 'Proyecto bajo tiempo y materiales', 'A');

-- CLASE PROYECO
INSERT INTO CLASE_PROYECTO (NOMBRE, DESCRIPCION, ESTATUS) VALUES ('Cliente final', 'Proyecto para cliente final', 'A');
INSERT INTO CLASE_PROYECTO (NOMBRE, DESCRIPCION, ESTATUS) VALUES ('Asociado', 'Proyecto con asociado', 'A');

-- TIPO FACTURACION
INSERT INTO TIPO_FACTURACION (NOMBRE, DESCRIPCION, ESTATUS) VALUES ('Porcentaje por fase', 'Proyecto que factura por porcentaje en cada fase', 'A');
INSERT INTO TIPO_FACTURACION (NOMBRE, DESCRIPCION, ESTATUS) VALUES ('Mensual', 'Proyecto que factura mensual', 'A');

-- MODALIDAD
INSERT INTO MODALIDAD_PROYECTO (NOMBRE, DESCRIPCION, ESTATUS) VALUES ('Local', 'Proyecto local', 'A');
INSERT INTO MODALIDAD_PROYECTO (NOMBRE, DESCRIPCION, ESTATUS) VALUES ('Remoto', 'Proyecto remoto', 'A');

-- ASOCIADO
INSERT INTO ASOCIADO (NOMBRE, CORREO_ELECTRONICO, NUMERO_MOVIL, ESTATUS, FECHA_REGISTRO) VALUES ('ASOCIADO 1', 'asociado@gmail.com', '5534628852', 'A', NOW())

-- USUARIOS DE PRUEBA COMO RECURSOS
INSERT INTO USUARIO (NOMBRE, APPATERNO, APMATERNO, USUARIO, PASSWORD, CORREO_ELECTRONICO, NUMERO_MOVIL, ID_ROL, ESTATUS, FECHA_REGISTRO) 
VALUES ('Leobardo', 'Jimenez', 'Sanchez', 'LJS', 'PASSWORD', 'pame23@gmail.com', '5527299581', 4, 'A', NOW())

INSERT INTO RECURSO (ID_USUARIO, ESTATUS, TIPO_RECURSO, COSTO_HORA, FECHA_REGISTRO) VALUES (2, 'A', 'Java Sr', 100, NOW());

-- TIPOS DE TAREA
INSERT INTO TIPO_ALERTA (NOMBRE, DESCRIPCION, ESTATUS) VALUES ('P', 'Programación de tarea en calendario', 'A');
INSERT INTO TIPO_ALERTA (NOMBRE, DESCRIPCION, ESTATUS) VALUES ('T', 'Mensaje de texto', 'A');
INSERT INTO TIPO_ALERTA (NOMBRE, DESCRIPCION, ESTATUS) VALUES ('A', 'Aviso mediante push notification al movil', 'A');
INSERT INTO TIPO_ALERTA (NOMBRE, DESCRIPCION, ESTATUS) VALUES ('C', 'Correo electrónico', 'A');

-- FASE DE TAREA EN LA QUE SE ENVIARÁ LA NOTIFICACIÓN
INSERT INTO FASE_TAREA_ALERTA (NOMBRE, DESCRIPCION) 
VALUES ('Inicio tarea', 'La notificación se envia al inicio de la tarea, de acuerdo a la fecha actual del sistema y a la fecha configurada de la tarea');

INSERT INTO FASE_TAREA_ALERTA (NOMBRE, DESCRIPCION) 
VALUES ('Fin tarea', 'La notificación se envia cuando la tarea haya terminado, de acuerdo a la fecha actual del sistema y a la fecha configurada de la tarea');

INSERT INTO FASE_TAREA_ALERTA (NOMBRE, DESCRIPCION) 
VALUES ('Atraso', 'La notificación se envia cuando la tarea presente atraso, de acuerdo a la fecha actual del sistema, a la fecha configurada de la tarea y a la captura de radar correspondiente');

INSERT INTO FASE_TAREA_ALERTA (NOMBRE, DESCRIPCION) 
VALUES ('Procentaje de avance', 'La notificación se envia cuando la tarea alcance el porcentaje de avance configurado de acuerdo a la duración de la misma y las capturas de radar');

INSERT INTO FASE_TAREA_ALERTA (NOMBRE, DESCRIPCION) 
VALUES ('Liberación de recurso', 'La notifcación se envía cuando el recurso responsable haya concluído la tarea.');

INSERT INTO FASE_TAREA_ALERTA (NOMBRE, DESCRIPCION) 
VALUES ('Inicio de tarea anticipado', 'La notifcación se envía si la tarea inicia de manera anticipada de acuerdo a la fecha de la captura de radar y a la fecha de inicio de la tarea en el plan');

INSERT INTO FASE_TAREA_ALERTA (NOMBRE, DESCRIPCION) 
VALUES ('Fin de tarea anticipado', 'La notifcación se envía si la tarea termina de manera anticipada de acuerdo a la fecha de la captura de radar y a la fecha de fin de la tarea en el plan');



