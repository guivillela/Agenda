/******************************************************************************/
/****        Generated by IBExpert 2015.12.21.1 01/10/2019 10:03:21        ****/
/******************************************************************************/

SET SQL DIALECT 3;

SET NAMES WIN1252;

SET CLIENTLIB 'C:\Program Files (x86)\Firebird\Firebird_3_0\fbclient.dll';

CREATE DATABASE 'localhost:C:\Users\Villela\Desktop\Faculdade - Aulas\4� Semestre - TDS\Xandao - Delphi BD\Agenda ACME\BD\AGENDAACME.fdb'
USER 'SYSDBA' PASSWORD 'masterkey'
PAGE_SIZE 16384
DEFAULT CHARACTER SET WIN1252 COLLATION WIN1252;



/******************************************************************************/
/****                              Generators                              ****/
/******************************************************************************/

CREATE GENERATOR GEN_AGENDA_ID START WITH 0 INCREMENT BY 1;
SET GENERATOR GEN_AGENDA_ID TO 7;

CREATE GENERATOR GEN_CIDADES_ID START WITH 0 INCREMENT BY 1;
SET GENERATOR GEN_CIDADES_ID TO 3;

CREATE GENERATOR GEN_CONTATOS_ID START WITH 0 INCREMENT BY 1;
SET GENERATOR GEN_CONTATOS_ID TO 4;



/******************************************************************************/
/****                              Exceptions                              ****/
/******************************************************************************/

CREATE EXCEPTION EX_NAO_PERMITIDO 'Opera��o n�o permitida!';



/******************************************************************************/
/****                                Tables                                ****/
/******************************************************************************/



CREATE TABLE AGENDA (
    CODAGE  INTEGER NOT NULL,
    TITAGE  VARCHAR(50),
    LOCAGE  VARCHAR(30),
    CODCON  INTEGER,
    DIAAGE  DATE,
    DIATOD  CHAR(1) DEFAULT 'N',
    HORINI  TIME,
    HORFIN  TIME,
    REPAGE  CHAR(7)
);

CREATE TABLE CIDADES (
    CODCID  INTEGER NOT NULL,
    NOMCID  VARCHAR(50)
);

CREATE TABLE CONTATOS (
    CODCON  INTEGER NOT NULL,
    NOMCON  VARCHAR(50),
    ENDCON  VARCHAR(50),
    BAICON  VARCHAR(20),
    CODCID  SMALLINT,
    TELCON  VARCHAR(15),
    CELCON  VARCHAR(15),
    TIPCON  CHAR(10),
    DESCON  VARCHAR(200),
    DTANAS  DATE
);

INSERT INTO CIDADES (CODCID, NOMCID) VALUES (1, 'Ara�atuba');
INSERT INTO CIDADES (CODCID, NOMCID) VALUES (2, 'Birigui');

COMMIT WORK;

INSERT INTO CONTATOS (CODCON, NOMCON, ENDCON, BAICON, CODCID, TELCON, CELCON, TIPCON, DESCON, DTANAS) VALUES (1, 'Teste', 'rua dos bobos', 'vl sao paulo', 1, '1836232323', '1899988525', NULL, NULL, NULL);
INSERT INTO CONTATOS (CODCON, NOMCON, ENDCON, BAICON, CODCID, TELCON, CELCON, TIPCON, DESCON, DTANAS) VALUES (2, 'Teste 2', 'rua dos tontos', 'pirituba', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO CONTATOS (CODCON, NOMCON, ENDCON, BAICON, CODCID, TELCON, CELCON, TIPCON, DESCON, DTANAS) VALUES (3, 'Teste 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

COMMIT WORK;

INSERT INTO AGENDA (CODAGE, TITAGE, LOCAGE, CODCON, DIAAGE, DIATOD, HORINI, HORFIN, REPAGE) VALUES (1, 'Teste', NULL, 1, '1995-11-17', 'N', NULL, NULL, NULL);
INSERT INTO AGENDA (CODAGE, TITAGE, LOCAGE, CODCON, DIAAGE, DIATOD, HORINI, HORFIN, REPAGE) VALUES (4, 'Teste 2', NULL, 2, '2019-10-01', 'N', '08:00:00', '09:00:00', NULL);
INSERT INTO AGENDA (CODAGE, TITAGE, LOCAGE, CODCON, DIAAGE, DIATOD, HORINI, HORFIN, REPAGE) VALUES (5, 'Teste 3 Final', NULL, 1, '2019-10-01', 'N', '09:09:35', '09:09:35', NULL);
INSERT INTO AGENDA (CODAGE, TITAGE, LOCAGE, CODCON, DIAAGE, DIATOD, HORINI, HORFIN, REPAGE) VALUES (6, 'Teste 4', NULL, 1, '2019-10-01', 'N', '09:09:35', '09:09:35', NULL);

COMMIT WORK;



/******************************************************************************/
/****                             Primary keys                             ****/
/******************************************************************************/

ALTER TABLE AGENDA ADD CONSTRAINT PK_AGENDA PRIMARY KEY (CODAGE);
ALTER TABLE CIDADES ADD CONSTRAINT PK_CIDADES PRIMARY KEY (CODCID);
ALTER TABLE CONTATOS ADD CONSTRAINT PK_CONTATOS PRIMARY KEY (CODCON);


/******************************************************************************/
/****                             Foreign keys                             ****/
/******************************************************************************/

ALTER TABLE AGENDA ADD CONSTRAINT FK_AGENDA_CONTATOS FOREIGN KEY (CODCON) REFERENCES CONTATOS (CODCON);
ALTER TABLE CONTATOS ADD CONSTRAINT FK_CONTATOS_CIDADES FOREIGN KEY (CODCID) REFERENCES CIDADES (CODCID);


/******************************************************************************/
/****                               Triggers                               ****/
/******************************************************************************/



SET TERM ^ ;



/******************************************************************************/
/****                         Triggers for tables                          ****/
/******************************************************************************/



/* Trigger: AGENDA_BI */
CREATE TRIGGER AGENDA_BI FOR AGENDA
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.codage is null) then
    new.codage = gen_id(gen_agenda_id,1);
end
^

/* Trigger: CIDADES_BI */
CREATE TRIGGER CIDADES_BI FOR CIDADES
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.codcid is null) then
    new.codcid = gen_id(gen_cidades_id,1);
end
^

/* Trigger: CONTATOS_BI */
CREATE TRIGGER CONTATOS_BI FOR CONTATOS
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.codcon is null) then
    new.codcon = gen_id(gen_contatos_id,1);
end
^

/* Trigger: TR_CIDADES_BI */
CREATE TRIGGER TR_CIDADES_BI FOR CIDADES
ACTIVE BEFORE INSERT POSITION 0
as
begin

    if ((select count(*)
        from   cidades
        where  codcid = new.codcid) > 0) then
    begin
       exception ex_nao_permitido;
    end

end
^
SET TERM ; ^

