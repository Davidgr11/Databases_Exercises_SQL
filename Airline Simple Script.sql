CREATE TABLE aerolinea (
    cve_aerolinea   NUMBER NOT NULL,
    descripcion     VARCHAR2(100) NOT NULL,
    cve_pais        NUMBER NOT NULL
);

ALTER TABLE aerolinea ADD CONSTRAINT pk_aerolinea PRIMARY KEY ( cve_aerolinea );

CREATE TABLE pais (
    cve_pais      NUMBER NOT NULL,
    descripcion   VARCHAR2(100) NOT NULL
);

ALTER TABLE pais ADD CONSTRAINT pk_pais PRIMARY KEY ( cve_pais );

CREATE TABLE pasajero (
    cve_pasajero   NUMBER NOT NULL,
    paterno        VARCHAR2(50),
    materno        VARCHAR2(500) NOT NULL,
    nombre         VARCHAR2(500),
    cve_pais       NUMBER NOT NULL
);

ALTER TABLE pasajero ADD CONSTRAINT pk_pasajero PRIMARY KEY ( cve_pasajero );

ALTER TABLE aerolinea
    ADD CONSTRAINT fk_pais_aerolinea FOREIGN KEY ( cve_pais )
        REFERENCES pais ( cve_pais );

ALTER TABLE pasajero
    ADD CONSTRAINT fk_pais_pasajero FOREIGN KEY ( cve_pais )
        REFERENCES pais ( cve_pais );

INSERT INTO "PAIS" (CVE_PAIS, DESCRIPCION) VALUES ('1', 'M xico');
INSERT INTO "PAIS" (CVE_PAIS, DESCRIPCION) VALUES ('2', 'USA');
INSERT INTO "PAIS" (CVE_PAIS, DESCRIPCION) VALUES ('3', 'Francia');
INSERT INTO "PAIS" (CVE_PAIS, DESCRIPCION) VALUES ('4', 'Espa a');

commit;

INSERT INTO "PASAJERO" (CVE_PASAJERO, PATERNO, MATERNO, NOMBRE, CVE_PAIS) VALUES ('10', 'Hern ndez', 'Romero', 'Jos  Luis', '1');
INSERT INTO "PASAJERO" (CVE_PASAJERO, PATERNO, MATERNO, NOMBRE, CVE_PAIS) VALUES ('11', 'Fern ndez', 'G mez', 'Adri n', '1');
INSERT INTO "PASAJERO" (CVE_PASAJERO, PATERNO, MATERNO, NOMBRE, CVE_PAIS) VALUES ('12', 'Salda a', 'Tello', 'Rafael', '1');
INSERT INTO "PASAJERO" (CVE_PASAJERO, PATERNO, MATERNO, NOMBRE, CVE_PAIS) VALUES ('13', 'Villa', 'Del Angel', 'Miguel', '1');
INSERT INTO "PASAJERO" (CVE_PASAJERO, PATERNO, MATERNO, NOMBRE, CVE_PAIS) VALUES ('14', 'Ortega', 'Rangel', 'Miguel', '4');
INSERT INTO "PASAJERO" (CVE_PASAJERO, PATERNO, MATERNO, NOMBRE, CVE_PAIS) VALUES ('15', 'Finley', 'Hans', 'MIchael', '2');

commit;

INSERT INTO "AEROLINEA" (CVE_AEROLINEA, DESCRIPCION, CVE_PAIS) VALUES ('50', 'Aerom xico', '1');
INSERT INTO "AEROLINEA" (CVE_AEROLINEA, DESCRIPCION, CVE_PAIS) VALUES ('51', 'Iberia', '4');

commit;
