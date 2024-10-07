unit uCadastroRobos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormPadrao, System.ImageList,
  Vcl.ImgList, cxImageList, cxGraphics, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.ToolWin, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvSpin, JvDBSpinEdit, JvExStdCtrls, JvCombobox, JvDBCombobox,
  Vcl.DBCtrls, dxBarBuiltInMenu, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxPC, Vcl.Imaging.pngimage, Vcl.Imaging.jpeg;

type
  TfrmCadastroRobos = class(TfrmPadrao)
    qryRobos: TFDQuery;
    DS: TDataSource;
    qryRobosID: TIntegerField;
    qryRobosIDEMPRESA: TIntegerField;
    qryRobosNOME: TStringField;
    qryRobosTIPO_COMUNICAO: TIntegerField;
    qryRobosHOST_IP: TStringField;
    qryRobosPORTA: TIntegerField;
    qryRobosTIMEOUT: TIntegerField;
    qryRobosAGUARDAR_PC_SENSOR: TStringField;
    qryRobosFECHAR_GARRA: TStringField;
    qryRobosABRIR_GARRA: TStringField;
    qryRobosREPOSICIONA_GARRA: TStringField;
    qryRobosFIM_PALETE: TStringField;
    qryRobosINICIO_PALETE: TStringField;
    qryRobosPONTO0_PALLETE_X: TIntegerField;
    qryRobosPONTO0_PALLETE_Y: TIntegerField;
    qryRobosPONTO0_PALLETE_Z: TIntegerField;
    qryRobosPONTO0_MAGAZINE_X: TIntegerField;
    qryRobosPONTO0_MAGAZINE_Y: TIntegerField;
    qryRobosPONTO_INTERSEG_B_X: TIntegerField;
    qryRobosPONTO_INTERSEG_B_Y: TIntegerField;
    qryRobosPONTO_INTERSEG_B_Z: TIntegerField;
    qryRobosPONTO_INTERSEG_A_X: TIntegerField;
    qryRobosPONTO_INTERSEG_A_Y: TIntegerField;
    qryRobosPONTO_INTERSEG_A_Z: TIntegerField;
    qryRobosPONTO_SEGRET_X: TIntegerField;
    qryRobosPONTO_SEGRET_Y: TIntegerField;
    qryRobosPONTO_SEGRET_Z: TIntegerField;
    qryRobosPONTO_SEGRET_CURVA_Z: TIntegerField;
    qryRobosPONTO_SUPMESA_X: TIntegerField;
    qryRobosPONTO_SUPMESA_Y: TIntegerField;
    qryRobosPONTO_SUPMESA_ESP_ENC: TIntegerField;
    qryRobosPONTO_SUPMESA_CENTROY: TIntegerField;
    qryRobosPONTO_SUPMESA_POS_BATY: TIntegerField;
    qryRobosPONTO_INFMESA_Y: TIntegerField;
    qryRobosPONTO_INFMESA_ROLETES: TIntegerField;
    qryRobosPONTO_INFMESA_LIVRE: TIntegerField;
    qryRobosALTURA_MESA_Z_ALIN: TIntegerField;
    qryRobosALTURA_MESA_Z_MESAMIN: TIntegerField;
    qryRobosALTURA_MESA_OFFSET_UP: TIntegerField;
    qryRobosALTURA_MESA_PONTO_Z: TIntegerField;
    qryRobosALTURA_MESA_CURVA_CICLO: TIntegerField;
    qryRobosDATA_INCLUSAO: TSQLTimeStampField;
    qryRobosIDUSUARIO_INCLUSAO: TIntegerField;
    qryRobosDATA_ULT_ALTERACAO: TSQLTimeStampField;
    qryRobosIDUSUARIO_ULT_ALTERACAO: TIntegerField;
    Label1: TLabel;
    dbspdCodigo: TJvDBSpinEdit;
    Label2: TLabel;
    dbedtNome: TDBEdit;
    Label3: TLabel;
    dbcbTipoComunicacao: TJvDBComboBox;
    lblIP: TLabel;
    dbedtIP: TDBEdit;
    lblPorta: TLabel;
    dbedtPorta: TDBEdit;
    lblTimeOut: TLabel;
    dbedtTimeOut: TDBEdit;
    pgBase: TcxPageControl;
    tbsParamsIO: TcxTabSheet;
    tbsPosicaoPalete: TcxTabSheet;
    Label7: TLabel;
    dbmemAguardarPcSensor: TDBMemo;
    dbmemFecharGrCaixa: TDBMemo;
    Label8: TLabel;
    dbmemAbrirGarra: TDBMemo;
    Label9: TLabel;
    dbmemRepGarra: TDBMemo;
    Label10: TLabel;
    dbMemFimPalete: TDBMemo;
    Label11: TLabel;
    dbmemInicioPalete: TDBMemo;
    Label12: TLabel;
    pgBasePosicaoPalete: TcxPageControl;
    tbsPontoZeroPallete: TcxTabSheet;
    tbsPontoZeroMagazine: TcxTabSheet;
    tbsPontoIntermediarioSeguranca: TcxTabSheet;
    tbsPontoSegurancaRetorno: TcxTabSheet;
    GroupBox2: TGroupBox;
    Image7: TImage;
    Image4: TImage;
    Label13: TLabel;
    Image5: TImage;
    Label14: TLabel;
    Label15: TLabel;
    Memo2: TMemo;
    Image2: TImage;
    Image1: TImage;
    GroupBox1: TGroupBox;
    Image6: TImage;
    Label16: TLabel;
    Image8: TImage;
    Label17: TLabel;
    Image3: TImage;
    GroupBox3: TGroupBox;
    Image9: TImage;
    Label18: TLabel;
    Image10: TImage;
    Label19: TLabel;
    Image19: TImage;
    Label20: TLabel;
    GroupBox4: TGroupBox;
    Image20: TImage;
    Image11: TImage;
    Label21: TLabel;
    Image12: TImage;
    Label22: TLabel;
    Label23: TLabel;
    Image13: TImage;
    GroupBox5: TGroupBox;
    Image14: TImage;
    Label24: TLabel;
    Image15: TImage;
    Label25: TLabel;
    Image18: TImage;
    Label26: TLabel;
    GroupBox6: TGroupBox;
    Memo1: TMemo;
    Image21: TImage;
    Label27: TLabel;
    tbsConfigMesaAparatos: TcxTabSheet;
    pgBaseConfigMesa: TcxPageControl;
    tbsPontoSuperiorMesa: TcxTabSheet;
    Image16: TImage;
    GroupBox7: TGroupBox;
    Image17: TImage;
    Image22: TImage;
    Label28: TLabel;
    Image23: TImage;
    Label29: TLabel;
    Label30: TLabel;
    GroupBox8: TGroupBox;
    Image24: TImage;
    Label31: TLabel;
    Image25: TImage;
    Label32: TLabel;
    tbsPontoInferiorMesa: TcxTabSheet;
    Image26: TImage;
    GroupBox9: TGroupBox;
    Image27: TImage;
    Image28: TImage;
    Label33: TLabel;
    Image29: TImage;
    Label34: TLabel;
    Label35: TLabel;
    Memo3: TMemo;
    tbsAlturaMesaAlinhador: TcxTabSheet;
    Image30: TImage;
    GroupBox10: TGroupBox;
    Image31: TImage;
    Label36: TLabel;
    Image32: TImage;
    Label37: TLabel;
    GroupBox11: TGroupBox;
    Image33: TImage;
    Label38: TLabel;
    Image34: TImage;
    Label39: TLabel;
    Image35: TImage;
    Label40: TLabel;
    dbspdPontoZeroPaleteX: TJvDBSpinEdit;
    dbspdPontoZeroPaleteY: TJvDBSpinEdit;
    dbspdPontoZeroAlturaZ: TJvDBSpinEdit;
    dbspdPontoZeroMagazineX: TJvDBSpinEdit;
    dbspdPontoZeroMagazineY: TJvDBSpinEdit;
    dbspdPontoSegPaletBaixaX: TJvDBSpinEdit;
    dbspdPontoSegPaletBaixaY: TJvDBSpinEdit;
    dbspdPontoSegPaletBaixaZP: TJvDBSpinEdit;
    dbspdPontoSegPaletAltaX: TJvDBSpinEdit;
    dbspdPontoSegPaletAltaY: TJvDBSpinEdit;
    dbspdPontoSegPaletAltaZ: TJvDBSpinEdit;
    dbspdPontoSegRetPaletBaixaX: TJvDBSpinEdit;
    dbspdPontoSegRetPaletBaixaY: TJvDBSpinEdit;
    dbspdPontoSegRetPaletBaixaZ: TJvDBSpinEdit;
    dbspdCurvaZP: TJvDBSpinEdit;
    dbspdMesaPontoSupX: TJvDBSpinEdit;
    dbspdMesaPontoSupY: TJvDBSpinEdit;
    dbspdEspEncosto: TJvDBSpinEdit;
    dbspdCentroEsteiraY: TJvDBSpinEdit;
    dbspdPosBatenteY: TJvDBSpinEdit;
    dbspdMesaInfRolY: TJvDBSpinEdit;
    dbspdPontoMesaInfRoletes: TJvDBSpinEdit;
    dbspdMesaLivre: TJvDBSpinEdit;
    dbspdAlinhador_dZ: TJvDBSpinEdit;
    dbspdMesaMin: TJvDBSpinEdit;
    dbspdOffsetSubida: TJvDBSpinEdit;
    JvDBSpinEdit1: TJvDBSpinEdit;
    dbspdCurvaCiclo: TJvDBSpinEdit;
    tbsParametosAdicionais: TcxTabSheet;
    Image36: TImage;
    Image37: TImage;
    Image38: TImage;
    Image39: TImage;
    Image40: TImage;
    Label4: TLabel;
    Image41: TImage;
    Label5: TLabel;
    Image42: TImage;
    Label6: TLabel;
    Image43: TImage;
    Label41: TLabel;
    Image44: TImage;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Image45: TImage;
    Label46: TLabel;
    Label47: TLabel;
    Image46: TImage;
    Image47: TImage;
    Label48: TLabel;
    Label49: TLabel;
    Edit13: TEdit;
    Edit14: TEdit;
    Image49: TImage;
    Image50: TImage;
    Image52: TImage;
    Label51: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    dbspdOffsetAltura: TJvDBSpinEdit;
    qryRobosOFFSET_ALTURA: TIntegerField;
    qryRobosOFFSET_APPROC: TIntegerField;
    qryRobosOFFSET_GARRA: TIntegerField;
    qryRobosZ_PALETE: TIntegerField;
    qryRobosOS_Z_RETORNO: TIntegerField;
    qryRobosVEL_PEGADA: TIntegerField;
    qryRobosVEL_SOLTURA: TIntegerField;
    qryRobosVEL_LINEAR: TIntegerField;
    qryRobosY_MESA_LIVRE: TIntegerField;
    qryRobosOS_ENCOSTO: TIntegerField;
    qryRobosZ_PEGADA: TIntegerField;
    qryRobosCURVA_PEGADA: TIntegerField;
    qryRobosPOS_BATENTE_Y: TIntegerField;
    qryRobosOFFSET_SUBIDA: TIntegerField;
    qryRobosVEL_SUBIDA: TIntegerField;
    qryRobosCURVA_AFAST: TIntegerField;
    dbspdOffsetApproc: TJvDBSpinEdit;
    dbspdOffsetGarra: TJvDBSpinEdit;
    dbspdZPalete: TJvDBSpinEdit;
    dbspdOsZRetorno: TJvDBSpinEdit;
    dbspdVelPegada: TJvDBSpinEdit;
    dbspdVelSoltura: TJvDBSpinEdit;
    dbspdVelLinear: TJvDBSpinEdit;
    dbspdYMesaLivre: TJvDBSpinEdit;
    dbspdOsEncosto: TJvDBSpinEdit;
    dbspdZPegada: TJvDBSpinEdit;
    dbspdCurvaPegada: TJvDBSpinEdit;
    qryRobosCENTRO_ESTEIRA_Y: TIntegerField;
    dbspdPosBatente: TJvDBSpinEdit;
    dbpsdVelSubida: TJvDBSpinEdit;
    dbspdCurvaAfast: TJvDBSpinEdit;
    Label50: TLabel;
    dbcbTipoRobo: TJvDBComboBox;
    Label52: TLabel;
    dbcbTipoPaletizacao: TJvDBComboBox;
    qryRobosTIPO_ROBO: TIntegerField;
    qryRobosTIPO_PALETIZACAO: TIntegerField;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryRobosAfterInsert(DataSet: TDataSet);
    procedure qryRobosAfterEdit(DataSet: TDataSet);
    procedure btnCancelarClick(Sender: TObject);
    procedure dbcbTipoComunicacaoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroRobos: TfrmCadastroRobos;

implementation

{$R *.dfm}

uses uDM, uFuncoesGerais;

procedure TfrmCadastroRobos.btnCancelarClick(Sender: TObject);
begin
  inherited;
  qryRobos.Cancel;

  qryRobos.Close;
  qryRobos.Params[0].AsInteger := 0;
  qryRobos.Open;
  qryRobos.Append;

  dbedtNome.SetFocus;
end;

procedure TfrmCadastroRobos.btnPesquisarClick(Sender: TObject);
var
  R : STRING;
begin
  inherited;

  R := Consultar('Cadastro de Robôs',
                 'SELECT A.ID, A.NOME AS "Nome", CASE(A.TIPO_COMUNICAO) WHEN 0 THEN ''0 - USB'' ELSE ''1 - MODBUS'' END AS "Tipo de Comunicação" FROM TBROBO A', //SELECT
                 '', //WHERE
                 'A.NOME', //ORDER BY
                 'A.NOME; A.ID', //CAMPOS FILTROS
                 'Nome; ID', //LABEL CAMPOS FILTROS
                 'ID');

  IF(LENGTH(TRIM(R)) > 0)THEN
  BEGIN
    qryRobos.Cancel;
    qryRobos.Close;
    qryRobos.Params[0].AsString := R;
    qryRobos.Open;
    IF NOT(qryRobos.IsEmpty)THEN
      qryRobos.Edit;

    dbedtNome.SetFocus;
  END;
end;

procedure TfrmCadastroRobos.btnSalvarClick(Sender: TObject);
begin
  inherited;
  ValidaCampos(dbedtNome, 'Nome');
  ValidaCampos(dbcbTipoComunicacao, 'Tipo de comunicação');
  if(dbcbTipoComunicacao.ItemIndex = 1)then
  begin
    ValidaCampos(dbedtIP, 'IP');
    ValidaCampos(dbedtPorta, 'Porta');
    ValidaCampos(dbedtTimeOut, 'TimeOut');
  end;
  ValidaCampos(dbcbTipoRobo, 'Tipo do Robô');
  ValidaCampos(dbcbTipoPaletizacao, 'Tipo de Paletização');

  qryRobos.Post;

  qryRobos.Close;
  qryRobos.Params[0].AsInteger := 0;
  qryRobos.Open;
  qryRobos.Append;

  dbedtNome.SetFocus;
end;

procedure TfrmCadastroRobos.dbcbTipoComunicacaoChange(Sender: TObject);
begin
  inherited;
  lblIP.Visible        := (dbcbTipoComunicacao.ItemIndex = 1);
  dbedtIP.Visible      := (dbcbTipoComunicacao.ItemIndex = 1);
  lblPorta.Visible     := (dbcbTipoComunicacao.ItemIndex = 1);
  dbedtPorta.Visible   := (dbcbTipoComunicacao.ItemIndex = 1);
  lblTimeOut.Visible   := (dbcbTipoComunicacao.ItemIndex = 1);
  dbedtTimeOut.Visible := (dbcbTipoComunicacao.ItemIndex = 1);
end;

procedure TfrmCadastroRobos.FormShow(Sender: TObject);
begin
  inherited;
  qryRobos.Cancel;
  qryRobos.Close;
  qryRobos.Params[0].AsInteger := 0;
  qryRobos.Open;
  qryRobos.Append;

  pgBase.ActivePageIndex              := 0;
  pgBasePosicaoPalete.ActivePageIndex := 0;
  pgBaseConfigMesa.ActivePageIndex    := 0;
end;

procedure TfrmCadastroRobos.qryRobosAfterEdit(DataSet: TDataSet);
begin
  inherited;
  qryRobosDATA_ULT_ALTERACAO.AsDateTime     := now;
  qryRobosIDUSUARIO_ULT_ALTERACAO.AsInteger := CodUsuario;

  dbcbTipoComunicacaoChange(self);
end;

procedure TfrmCadastroRobos.qryRobosAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryRobosIDEMPRESA.AsInteger               := CodEmpresa;
  qryRobosTIPO_COMUNICAO.AsInteger          := 0;
  qryRobosHOST_IP.AsString                  := '192.168.0.1';
  qryRobosPORTA.AsString                    := '20004';
  qryRobosTIMEOUT.AsString                  := '0';
  qryRobosAGUARDAR_PC_SENSOR.AsString       := '0';
  qryRobosFECHAR_GARRA.AsString             := '0';
  qryRobosABRIR_GARRA.AsString              := '0';
  qryRobosREPOSICIONA_GARRA.AsString        := '0';
  qryRobosFIM_PALETE.AsString               := '0';
  qryRobosINICIO_PALETE.AsString            := '0';
  qryRobosPONTO0_PALLETE_X.AsString         := '0';
  qryRobosPONTO0_PALLETE_Y.AsString         := '0';
  qryRobosPONTO0_PALLETE_Z.AsString         := '0';
  qryRobosPONTO0_MAGAZINE_X.AsString        := '0';
  qryRobosPONTO0_MAGAZINE_Y.AsString        := '0';
  qryRobosPONTO_INTERSEG_B_X.AsString       := '0';
  qryRobosPONTO_INTERSEG_B_Y.AsString       := '0';
  qryRobosPONTO_INTERSEG_B_Z.AsString       := '0';
  qryRobosPONTO_INTERSEG_A_X.AsString       := '0';
  qryRobosPONTO_INTERSEG_A_Y.AsString       := '0';
  qryRobosPONTO_INTERSEG_A_Z.AsString       := '0';
  qryRobosPONTO_SEGRET_X.AsString           := '0';
  qryRobosPONTO_SEGRET_Y.AsString           := '0';
  qryRobosPONTO_SEGRET_Z.AsString           := '0';
  qryRobosPONTO_SEGRET_CURVA_Z.AsString     := '0';
  qryRobosPONTO_SUPMESA_X.AsString          := '0';
  qryRobosPONTO_SUPMESA_Y.AsString          := '0';
  qryRobosPONTO_SUPMESA_ESP_ENC.AsString    := '0';
  qryRobosPONTO_SUPMESA_CENTROY.AsString    := '0';
  qryRobosPONTO_SUPMESA_POS_BATY.AsString   := '0';
  qryRobosPONTO_INFMESA_Y.AsString          := '0';
  qryRobosPONTO_INFMESA_ROLETES.AsString    := '0';
  qryRobosPONTO_INFMESA_LIVRE.AsString      := '0';
  qryRobosALTURA_MESA_Z_ALIN.AsInteger      := 0;
  qryRobosALTURA_MESA_Z_MESAMIN.AsInteger   := 0;
  qryRobosALTURA_MESA_OFFSET_UP.AsInteger   := 0;
  qryRobosALTURA_MESA_PONTO_Z.AsInteger     := 0;
  qryRobosALTURA_MESA_CURVA_CICLO.AsInteger := 0;
  qryRobosDATA_INCLUSAO.AsDateTime          := now;
  qryRobosIDUSUARIO_INCLUSAO.AsInteger      := CodUsuario;
  qryRobosTIPO_ROBO.AsInteger               := 0;
  qryRobosTIPO_PALETIZACAO.AsInteger        := 0;

  dbcbTipoComunicacaoChange(self);
end;

end.
