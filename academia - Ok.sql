/* 1. DROP TABLE */
DROP TABLE tutorias;
DROP TABLE asignaturas;
DROP TABLE usuarios;


/* 2. CREATE TABLE */
CREATE TABLE usuarios(
   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   nif VARCHAR(10)NOT NULL,
   nombre VARCHAR(26)NOT NULL,
   apellidos VARCHAR(35)NOT NULL,
   movil VARCHAR(9)NOT NULL,
   email VARCHAR(255)NOT NULL,
   fecha_nacimiento VARCHAR(10)NOT NULL,
   tipo VARCHAR(13)NOT NULL,
   nombre_usuario VARCHAR(9) NOT NULL,
   password VARCHAR(9) NOT NULL
);


CREATE TABLE asignaturas(
   id_asignatura INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   nombre_asignatura VARCHAR(50)NOT NULL,
   nif_profesor VARCHAR(10)NOT NULL,
   dias_clases  VARCHAR(50)NOT NULL,
   hora_inicioC VARCHAR(6)NOT NULL,
   hora_finC VARCHAR(6)NOT NULL,
   nif_alumno1 VARCHAR(10),
   nif_alumno2 VARCHAR(10),
   nif_alumno3 VARCHAR(10),
   nif_alumno4 VARCHAR(10),
   nif_alumno5 VARCHAR(10),
   dias_tutorias VARCHAR(50)NOT NULL,
   hora_inicioT VARCHAR(6)NOT NULL,
   hora_finT VARCHAR(6)NOT NULL
);

CREATE TABLE tutorias(
 id_tuto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 id_asignatura INT NOT NULL,
 nif_profesor VARCHAR(10)NOT NULL,
 nif_alumno VARCHAR(10)NOT NULL,
 dia_tutoria VARCHAR(50)NOT NULL,
 mensaje VARCHAR(255)NOT NULL,
 leido BOOLEAN,
 FOREIGN KEY (id_asignatura) REFERENCES asignaturas(id_asignatura)
 );
 
/* 3. INSERTS */

/*Usuarios*/
INSERT INTO usuarios (nif, nombre, apellidos, movil, email, fecha_nacimiento, tipo, nombre_usuario, password)
			  VALUES ('50957476V','ALEJANDRO','RUIZ CARRASCO','690653110','alejandroruizcarrasco@hotmail.com','08/09/1979','Profesor','neo','1234');

INSERT INTO usuarios (nif, nombre, apellidos, movil, email, fecha_nacimiento, tipo, nombre_usuario, password)
			  VALUES ('45957473S','ADRIAN','CABEZON','690653110','adriMeGustaSajabi@hotmail.com','22/05/1985','Alumno','adri','adr1234');

INSERT INTO usuarios (nif, nombre, apellidos, movil, email, fecha_nacimiento, tipo, nombre_usuario, password)
			  VALUES ('45957605S','JUAN','GAYTERO CABEZON','653653110','junitoPeligroso@hotmail.com','10/07/1988','Alumno','juanca','juan123');

INSERT INTO usuarios (nif, nombre, apellidos, movil, email, fecha_nacimiento, tipo, nombre_usuario, password)
		      VALUES ('12345678A','ADMIN','ADMIN','00000000','admin@admin.es','01/01/1970','Administrador','admin','admin');
			  
INSERT INTO usuarios (nif, nombre, apellidos, movil, email, fecha_nacimiento, tipo, nombre_usuario, password)
		      VALUES ('45106365F','ANTONIO JAVIER','MORALES YAÑEZ','659379519','antoniomy82@gmail.com','11/01/1982','Profesor','antomy','antomy');
			  
INSERT INTO usuarios (nif, nombre, apellidos, movil, email, fecha_nacimiento, tipo, nombre_usuario, password)
			  VALUES ('33957474B','MIGUEL ANGEL','CASTRO DE LA CUESTA','640656110','maccmaic@hotmail.com','01/09/1981','Profesor','maccmaic','maccmaic');

INSERT INTO usuarios (nif, nombre, apellidos, movil, email, fecha_nacimiento, tipo, nombre_usuario, password)
			  VALUES ('0595747A','ADRIAN','MONTERO STALONE','630646110','culturistaAdri@hotmail.com','18/05/1980','Alumno','silveste','silveste');

INSERT INTO usuarios (nif, nombre, apellidos, movil, email, fecha_nacimiento, tipo, nombre_usuario, password)
			  VALUES ('6095347B','FRANCISCO JAVIER','ESQUIZO SERRANO','612643110','fjmoreno@everis.com','11/01/1980','Alumno','fjmoreno','fjmoreno');

INSERT INTO usuarios (nif, nombre, apellidos, movil, email, fecha_nacimiento, tipo, nombre_usuario, password)
		      VALUES ('0000000B','root','root','00000000','root@root.com','01/01/1970','Administrador','root','root');
			  
INSERT INTO usuarios (nif, nombre, apellidos, movil, email, fecha_nacimiento, tipo, nombre_usuario, password)
		      VALUES ('45108313S','LUISA','FERNANDEZ ALONSO','629309519','luisafdez@gmail.com','24/07/1983','Profesor','luisa83','luisa83');			  
			  
INSERT INTO usuarios (nif, nombre, apellidos, movil, email, fecha_nacimiento, tipo, nombre_usuario, password)
			  VALUES ('13957474F','PEPE','CASTILLO MUÑOZ','640856110','pepecastillo@hotmail.com','01/10/1990','Alumno','pepeca','pepeca');

INSERT INTO usuarios (nif, nombre, apellidos, movil, email, fecha_nacimiento, tipo, nombre_usuario, password)
			  VALUES ('01574735Z','MARTA','MORENO MARTIN','620635110','martamor@gmail.com','08/10/1971','Profesor','marmor','marmor');

INSERT INTO usuarios (nif, nombre, apellidos, movil, email, fecha_nacimiento, tipo, nombre_usuario, password)
			  VALUES ('60143479B','LUCIA','RELINQUE ESCRIBANO','682943110','luciarelinque@everis.com','15/04/1986','Alumno','lrelinque','lrelinque');

INSERT INTO usuarios (nif, nombre, apellidos, movil, email, fecha_nacimiento, tipo, nombre_usuario, password)
		      VALUES ('12345678C','JAIMITO','PEREZ GUTIERREZ','654321012','jaimitoperez@gmail.com','05/04/1966','Alumno','jaimito','jaimito');
			  
INSERT INTO usuarios (nif, nombre, apellidos, movil, email, fecha_nacimiento, tipo, nombre_usuario, password)
		      VALUES ('55105650F','NATIUSKA','GORVACHOF KRUCHEF','679305519','natiuska@gmail.com','22/11/1989','Alumno','natiuska','natiuska');			  
			  
INSERT INTO usuarios (nif, nombre, apellidos, movil, email, fecha_nacimiento, tipo, nombre_usuario, password)
			  VALUES ('13957474B','OSCAR','RUIZ PUERTES','610455110','oscarruiz@hotmail.com','14/05/1984','Alumno','oscarruiz','oscarruiz');

INSERT INTO usuarios (nif, nombre, apellidos, movil, email, fecha_nacimiento, tipo, nombre_usuario, password)
			  VALUES ('65677779V','IRENE','PREPO TOTAL','621456110','ireneprepo@hotmail.com','28/04/1988','Profesor','ireneprep','ireneprep');

INSERT INTO usuarios (nif, nombre, apellidos, movil, email, fecha_nacimiento, tipo, nombre_usuario, password)
			  VALUES ('80953471Y','SERGIO','ESTRADA MARTI','635663110','sergioestrada@gmail.com','10/02/1976','Profesor','sestrada','sestrada');

INSERT INTO usuarios (nif, nombre, apellidos, movil, email, fecha_nacimiento, tipo, nombre_usuario, password)
		      VALUES ('98765432A','NACHO','VIDAL','696969696','nachovidal@pornhub.com','12/03/1971','Alumno','cubata73','cubata73');
			  
INSERT INTO usuarios (nif, nombre, apellidos, movil, email, fecha_nacimiento, tipo, nombre_usuario, password)
		      VALUES ('15108365A','PEPE','BOTICA','614359519','honrradotraficante@gmail.com','23/06/1990','Alumno','botica','botica');			  			  

INSERT INTO usuarios (nif, nombre, apellidos, movil, email, fecha_nacimiento, tipo, nombre_usuario, password)
			  VALUES ('61574735Z','DORA','EXPLORADORA MUNDIAL','620535110','doraexplora@gmail.com','01/12/2005','Alumno','doraexp','doraexp05');

INSERT INTO usuarios (nif, nombre, apellidos, movil, email, fecha_nacimiento, tipo, nombre_usuario, password)
			  VALUES ('90243479B','MCGYVER','FIX ALL','602943110','mcgyver@love80.com','15/03/1965','Profesor','mcgyver','mcgyver65');

INSERT INTO usuarios (nif, nombre, apellidos, movil, email, fecha_nacimiento, tipo, nombre_usuario, password)
		      VALUES ('72845678X','MICHAEL','KNIGHT HASENHOLF','754321012','michaelknight@lawandorder.com','01/10/1968','Profesor','mknight','mnknight');
			  
INSERT INTO usuarios (nif, nombre, apellidos, movil, email, fecha_nacimiento, tipo, nombre_usuario, password)
		      VALUES ('14056509F','LUISITO','GONZALEZ MARTIN','609305519','luisgm@gmail.com','10/09/2010','Alumno','luisgm','luisgm');			  
			  
INSERT INTO usuarios (nif, nombre, apellidos, movil, email, fecha_nacimiento, tipo, nombre_usuario, password)
			  VALUES ('33947474B','BILL','GATES SMITH','600405110','billgates@microsoft.com','14/04/1962','Profesor','billgates','billgates');

INSERT INTO usuarios (nif, nombre, apellidos, movil, email, fecha_nacimiento, tipo, nombre_usuario, password)
			  VALUES ('65567779V','MANOLITO','GAFOTAS PEREZ','681456120','manolitogafotas@gmail.com','21/02/2012','Alumno','manugafas','manugafas');

INSERT INTO usuarios (nif, nombre, apellidos, movil, email, fecha_nacimiento, tipo, nombre_usuario, password)
			  VALUES ('40563471T','MARIA','FERRA SANCHEZ','695663140','mferra@gmail.com','15/04/2013','Alumno','mferra','mferra');

INSERT INTO usuarios (nif, nombre, apellidos, movil, email, fecha_nacimiento, tipo, nombre_usuario, password)
		      VALUES ('56476543F','PABLO','GALLARDO COLAS','646567096','pablogallardocolas@mixmail.com','24/01/1986','Alumno','pablogc','pablogc');
			  
INSERT INTO usuarios (nif, nombre, apellidos, movil, email, fecha_nacimiento, tipo, nombre_usuario, password)
		      VALUES ('25148365B','ROCIO','GONZALEZ GONZALEZ','654359519','rociogonzalez@gmail.com','23/05/1983','Alumno','rgonzalez','rgonzalez');		
			  
			  
/*Asignaturas*/		  
INSERT INTO asignaturas (nombre_asignatura, nif_profesor, dias_clases, hora_inicioC, hora_finC, nif_alumno1, nif_alumno2, nif_alumno3, nif_alumno4, nif_alumno5, dias_tutorias, hora_inicioT, hora_finT)
			  VALUES ('INGENIERIA DEL SOFTWARE ','45106365F','Lunes, Miércoles, Viernes','16:00','17:00','25148365B','56476543F','','','','Martes,Miércoles','20:00','21:00');

INSERT INTO asignaturas (nombre_asignatura, nif_profesor, dias_clases, hora_inicioC, hora_finC, nif_alumno1, nif_alumno2, nif_alumno3, nif_alumno4, nif_alumno5, dias_tutorias, hora_inicioT, hora_finT)
			  VALUES ('ESTADISTICA DESCRIPTIVA','50957476V','Martes, Jueves,','16:00','17:30','40563471T','56476543F','','','','Miércoles','19:00','21:00');

INSERT INTO asignaturas (nombre_asignatura, nif_profesor, dias_clases, hora_inicioC, hora_finC, nif_alumno1, nif_alumno2, nif_alumno3, nif_alumno4, nif_alumno5, dias_tutorias, hora_inicioT, hora_finT)
			  VALUES ('CONTABILIDAD FINANCIERA','45108313S','Lunes, Miércoles','17:00','19:30','14056509F','13957474B','25148365B','60143479B','','Martes','20:00','23:00');		
			  
INSERT INTO asignaturas (nombre_asignatura, nif_profesor, dias_clases, hora_inicioC, hora_finC, nif_alumno1, nif_alumno2, nif_alumno3, nif_alumno4, nif_alumno5, dias_tutorias, hora_inicioT, hora_finT)
			  VALUES ('PROGRAMACION AVANZADA C#','33947474B','Lunes, Miércoles, Viernes','18:00','19:00','45957473S','45957605S','90243479B','72845678X','15108365A','Lunes','16:00','18:00');

INSERT INTO asignaturas (nombre_asignatura, nif_profesor, dias_clases, hora_inicioC, hora_finC, nif_alumno1, nif_alumno2, nif_alumno3, nif_alumno4, nif_alumno5, dias_tutorias, hora_inicioT, hora_finT)
			  VALUES ('VISUAL STUDIO','33947474B','Lunes, Miércoles, Viernes','19:30','20:30','45957473S','45957605S','90243479B','72845678X','15108365A','Martes','16:00','18:00');			  

INSERT INTO asignaturas (nombre_asignatura, nif_profesor, dias_clases, hora_inicioC, hora_finC, nif_alumno1, nif_alumno2, nif_alumno3, nif_alumno4, nif_alumno5, dias_tutorias, hora_inicioT, hora_finT)
			  VALUES ('FISCALIDAD CONTABLE','45108313S','Miércoles, Viernes','20:00','21:30','25148365B','56476543F','14056509F','72845678X','15108365A','Martes','18:00','19:00');

INSERT INTO asignaturas (nombre_asignatura, nif_profesor, dias_clases, hora_inicioC, hora_finC, nif_alumno1, nif_alumno2, nif_alumno3, nif_alumno4, nif_alumno5, dias_tutorias, hora_inicioT, hora_finT)
			  VALUES ('PROGRAMACION C/C++ ','33957474B','Lunes, Miércoles, Viernes','16:00','17:00','45957473S','45957605S','0595747A','','','Martes,Miércoles','20:00','21:00');

INSERT INTO asignaturas (nombre_asignatura, nif_profesor, dias_clases, hora_inicioC, hora_finC, nif_alumno1, nif_alumno2, nif_alumno3, nif_alumno4, nif_alumno5, dias_tutorias, hora_inicioT, hora_finT)
			  VALUES ('INGLES A2','01574735Z','Martes, Jueves,','20:00','21:30','13957474F','61574735Z','12345678C','','','Miércoles','19:00','21:00');

INSERT INTO asignaturas (nombre_asignatura, nif_profesor, dias_clases, hora_inicioC, hora_finC, nif_alumno1, nif_alumno2, nif_alumno3, nif_alumno4, nif_alumno5, dias_tutorias, hora_inicioT, hora_finT)
			  VALUES ('TECNOLOGIA APLICADA','90243479B','Lunes, Miércoles','18:00','19:30','98765432A','13957474B','25148365B','60143479B','','Martes','20:00','23:00');		
			  
INSERT INTO asignaturas (nombre_asignatura, nif_profesor, dias_clases, hora_inicioC, hora_finC, nif_alumno1, nif_alumno2, nif_alumno3, nif_alumno4, nif_alumno5, dias_tutorias, hora_inicioT, hora_finT)
			  VALUES ('CONDUCCION DEPORTIVA','72845678X','Lunes, Miércoles, Viernes','18:00','19:00','45957473S','45957605S','90243479B','72845678X','15108365A','Lunes','16:00','18:00');

INSERT INTO asignaturas (nombre_asignatura, nif_profesor, dias_clases, hora_inicioC, hora_finC, nif_alumno1, nif_alumno2, nif_alumno3, nif_alumno4, nif_alumno5, dias_tutorias, hora_inicioT, hora_finT)
			  VALUES ('BIG DATA','65677779V','Martes, Jueves','19:30','20:30','45957473S','45957605S','90243479B','72845678X','15108365A','Jueves','18:00','19:00');			  

INSERT INTO asignaturas (nombre_asignatura, nif_profesor, dias_clases, hora_inicioC, hora_finC, nif_alumno1, nif_alumno2, nif_alumno3, nif_alumno4, nif_alumno5, dias_tutorias, hora_inicioT, hora_finT)
			  VALUES ('GESTION DE NOMINAS','45108313S','Miércoles, Jueves','20:00','21:30','25148365B','56476543F','14056509F','72845678X','15108365A','Martes','18:00','19:00');					  
			  

/*Tutorias*/
/* CARGAR DESPUES DE CREAR TODO LO ANTERIOR, SI NO DARÁ ERRORES*/

INSERT INTO tutorias (id_asignatura, nif_profesor, nif_alumno, dia_tutoria, mensaje, leido, nombre_asignatura)
             VALUES ('4','33947474B','45957473S','Lunes, 27 Mayo 2019','Datos de carga 1','0','PROGRAMACION AVANZADA C#');
			 
INSERT INTO tutorias (id_asignatura, nif_profesor, nif_alumno, dia_tutoria, mensaje, leido, nombre_asignatura)
             VALUES ('5','33947474B','45957473S','Martes, 28 Mayo 2019','Datos de carga 1','1','VISUAL STUDIO');

INSERT INTO tutorias (id_asignatura, nif_profesor, nif_alumno, dia_tutoria, mensaje, leido, nombre_asignatura)
             VALUES ('7','33947474B','45957473S','Martes, 4 Mayo 2019','Datos de carga 1','0','PROGRAMACION C/C++ ');	

INSERT INTO tutorias (id_asignatura, nif_profesor, nif_alumno, dia_tutoria, mensaje, leido, nombre_asignatura)
             VALUES ('10','72845678X','45957473S','Lunes, 3 Mayo 2019','Datos de carga 1','1','CONDUCCION DEPORTIVA');	

INSERT INTO tutorias (id_asignatura, nif_profesor, nif_alumno, dia_tutoria, mensaje, leido, nombre_asignatura)
             VALUES ('11','33947474B','65677779V','Jueves, 30 Mayo 2019','Datos de carga 1','0','BIG DATA');				 


