CREATE TABLE TBROBO (
    ID                       INTEGER GENERATED BY DEFAULT AS IDENTITY,
    IDEMPRESA                INTEGER,
    NOME                     VARCHAR(60) NOT NULL,
    TIPO_COMUNICAO           INTEGER DEFAULT 0 NOT NULL,
    HOST_IP                  VARCHAR(10),
    PORTA                    INTEGER,
    TIMEOUT                  INTEGER,
    AGUARDAR_PC_SENSOR       VARCHAR(2500),
    FECHAR_GARRA             VARCHAR(2500),
    ABRIR_GARRA              VARCHAR(2500),
    REPOSICIONA_GARRA        VARCHAR(2500),
    FIM_PALETE               VARCHAR(2500),
    INICIO_PALETE            VARCHAR(2500),
    PONTO0_PALLETE_X         INTEGER,
    PONTO0_PALLETE_Y         INTEGER,
    PONTO0_PALLETE_Z         INTEGER,
    PONTO0_MAGAZINE_X        INTEGER,
    PONTO0_MAGAZINE_Y        INTEGER,
    PONTO_INTERSEG_B_X       INTEGER,
    PONTO_INTERSEG_B_Y       INTEGER,
    PONTO_INTERSEG_B_Z       INTEGER,
    PONTO_INTERSEG_A_X       INTEGER,
    PONTO_INTERSEG_A_Y       INTEGER,
    PONTO_INTERSEG_A_Z       INTEGER,
    PONTO_SEGRET_X           INTEGER,
    PONTO_SEGRET_Y           INTEGER,
    PONTO_SEGRET_Z           INTEGER,
    PONTO_SEGRET_CURVA_Z     INTEGER,
    PONTO_SUPMESA_X          INTEGER,
    PONTO_SUPMESA_Y          INTEGER,
    PONTO_SUPMESA_ESP_ENC    INTEGER,
    PONTO_SUPMESA_CENTROY    INTEGER,
    PONTO_SUPMESA_POS_BATY   INTEGER,
    PONTO_INFMESA_Y          INTEGER,
    PONTO_INFMESA_ROLETES    INTEGER,
    PONTO_INFMESA_LIVRE      INTEGER,
    ALTURA_MESA_Z_ALIN       INTEGER,
    ALTURA_MESA_Z_MESAMIN    INTEGER,
    ALTURA_MESA_OFFSET_UP    INTEGER,
    ALTURA_MESA_PONTO_Z      INTEGER,
    ALTURA_MESA_CURVA_CICLO  INTEGER,
    DATA_INCLUSAO            TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    IDUSUARIO_INCLUSAO       INTEGER NOT NULL,
    DATA_ULT_ALTERACAO       TIMESTAMP,
    IDUSUARIO_ULT_ALTERACAO  INTEGER
);



/******************************************************************************/
/****                       Autoincrement generators                       ****/
/******************************************************************************/

ALTER TABLE TBROBO ALTER ID RESTART WITH 0;




/******************************************************************************/
/****                             Primary keys                             ****/
/******************************************************************************/

ALTER TABLE TBROBO ADD CONSTRAINT PK_TBROBO PRIMARY KEY (ID);


/******************************************************************************/
/****                             Foreign keys                             ****/
/******************************************************************************/

ALTER TABLE TBROBO ADD CONSTRAINT FK_TBROBO_1 FOREIGN KEY (IDEMPRESA) REFERENCES TBEMPRESAS (ID) ON DELETE CASCADE;
ALTER TABLE TBROBO ADD CONSTRAINT FK_TBROBO_2 FOREIGN KEY (IDUSUARIO_INCLUSAO) REFERENCES TBUSUARIOS (ID) ON DELETE CASCADE;
ALTER TABLE TBROBO ADD CONSTRAINT FK_TBROBO_3 FOREIGN KEY (IDUSUARIO_ULT_ALTERACAO) REFERENCES TBUSUARIOS (ID) ON DELETE CASCADE;


/******************************************************************************/
/****                         Fields descriptions                          ****/
/******************************************************************************/

COMMENT ON COLUMN TBROBO.TIPO_COMUNICAO IS
'0 - COMUNICACAO VIA USB (TRASMISSAO DE ARQUIVOS)
1 - COMUNICACAO VIA MODBUS';