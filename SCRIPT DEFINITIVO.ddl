

DROP TABLE CENTRO CASCADE CONSTRAINTS ;

DROP TABLE PARTE CASCADE CONSTRAINTS ;

DROP TABLE TRABAJADOR CASCADE CONSTRAINTS ;

DROP TABLE VEHICULO CASCADE CONSTRAINTS ;

DROP TABLE "VEHICULO_TRABAJADOR" CASCADE CONSTRAINTS ;

DROP TABLE VIAJE CASCADE CONSTRAINTS ;

CREATE TABLE CENTRO
  (
    Id_Centro     NUMBER (10)  PRIMARY KEY,
    Nombre        VARCHAR2 (75) NOT NULL ,
    Calle         VARCHAR2 (75) NOT NULL ,
    Numero        VARCHAR2 (75) NOT NULL ,
    Codigo_Postal VARCHAR2 (75) NOT NULL ,
    Telefono      VARCHAR2 (75) NOT NULL ,
    Ciudad        VARCHAR2 (75) NOT NULL ,
    Provincia     VARCHAR2 (75) NOT NULL
    ) ;

CREATE TABLE TRABAJADOR
  (
    Id_Trabajador    NUMBER (10)  PRIMARY KEY ,
    Usuario          VARCHAR2 (75) NOT NULL ,
    Contrasena       VARCHAR2 (75) NOT NULL ,
    Dni              VARCHAR2 (75) NOT NULL ,
    Nombre           VARCHAR2 (75) NOT NULL ,
    Apellido_1       VARCHAR2 (75) NOT NULL ,
    Apellido_2       VARCHAR2 (77) NOT NULL ,
    Calle            VARCHAR2 (77) NOT NULL ,
    Portal           VARCHAR2 (77) NOT NULL ,
    Piso             VARCHAR2 (77) ,
    Mano             VARCHAR2 (77) ,
    Categoria        NUMBER (30) NOT NULL ,
    Avisos           VARCHAR2 (77) ,
    CENTRO_Id_Centro NUMBER NOT NULL,
    CONSTRAINT TRABAJADOR_CENTRO_FK FOREIGN KEY ( CENTRO_Id_Centro ) REFERENCES CENTRO ( Id_Centro )
  ) ;


CREATE TABLE PARTE
  (
    Id_Parte                 NUMBER (10)  PRIMARY KEY ,
    Km_principio             NUMBER (30) NOT NULL ,
    Km_final                 NUMBER (30) NOT NULL ,
    Fecha                    TIMESTAMP NOT NULL ,
    Estado                   NUMBER NOT NULL ,
    Gasto_gasoil             NUMBER (30) ,
    Gasto_autopista          NUMBER (30) ,
    Gasto_dietas             NUMBER (30) ,
    Otros_gastos             NUMBER (30) ,
    Indidencias              NUMBER ,
    Validar                  NUMBER (30) NOT NULL ,
    TRABAJADOR_Id_Trabajador NUMBER NOT NULL,
    CONSTRAINT PARTE_TRABAJADOR_FK FOREIGN KEY ( TRABAJADOR_Id_Trabajador ) REFERENCES TRABAJADOR ( Id_Trabajador )) ;



  
 


CREATE TABLE VEHICULO
  (
    Id_Vehiculo NUMBER (10) PRIMARY KEY ,
    Marca       VARCHAR2 (77) ,
    Matricula   VARCHAR2 (77) NOT NULL ,
    Modelo      VARCHAR2 (77));



CREATE TABLE "VEHICULO_TRABAJADOR"
  (
    TRABAJADOR_Id_Trabajador NUMBER (10)  PRIMARY KEY,
    CONSTRAINT FK_ASS_1 FOREIGN KEY ( TRABAJADOR_Id_Trabajador ) REFERENCES TRABAJADOR ( Id_Trabajador ),
    VEHICULO_Id_Vehiculo     NUMBER (10) NOT NULL,
    CONSTRAINT FK_ASS_2 FOREIGN KEY ( VEHICULO_Id_Vehiculo ) REFERENCES VEHICULO ( Id_Vehiculo )
  ) ;




CREATE TABLE VIAJE
  (
    Id_Viaje       NUMBER (10)  PRIMARY KEY,
    Hora_salida    TIMESTAMP NOT NULL ,
    Hora_llegada   TIMESTAMP NOT NULL ,
    PARTE_Id_Parte NUMBER NOT NULL,
    CONSTRAINT VIAJE_PARTE_FK FOREIGN KEY ( PARTE_Id_Parte ) REFERENCES PARTE ( Id_Parte )
  ) ;










-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             6
-- CREATE INDEX                             0
-- ALTER TABLE                             13
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- TSDP POLICY                              0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
