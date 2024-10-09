unit uGeraProgramaPalete_DesenharCaixas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormPadrao, System.ImageList,
  Vcl.ImgList, cxImageList, cxGraphics, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxBarBuiltInMenu, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC;

type
  TfrmDesenharPalete = class(TfrmPadrao)
    QRYROBO: TFDQuery;
    pnAguarde: TPanel;
    pgBasePaletizacao: TcxPageControl;
    tbsPaletizacaoEsquerda: TcxTabSheet;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label17: TLabel;
    Label16: TLabel;
    Image2: TImage;
    Panel1: TPanel;
    Image3: TImage;
    Button3: TButton;
    PLX1: TEdit;
    PLY1: TEdit;
    PLW1: TEdit;
    PLX2: TEdit;
    PLY2: TEdit;
    PLW2: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Panel2: TPanel;
    Image6: TImage;
    Button5: TButton;
    PLX3: TEdit;
    PLY3: TEdit;
    PLW3: TEdit;
    PLX4: TEdit;
    PLY4: TEdit;
    PLW4: TEdit;
    PLX5: TEdit;
    PLY5: TEdit;
    PLW5: TEdit;
    PLX6: TEdit;
    PLY6: TEdit;
    PLW6: TEdit;
    PLX7: TEdit;
    PLY7: TEdit;
    PLW7: TEdit;
    PLX8: TEdit;
    PLY8: TEdit;
    PLW8: TEdit;
    PLX9: TEdit;
    PLY9: TEdit;
    PLW9: TEdit;
    PPX1: TEdit;
    PPY1: TEdit;
    PPW1: TEdit;
    PPX2: TEdit;
    PPY2: TEdit;
    PPW2: TEdit;
    PPX3: TEdit;
    PPY3: TEdit;
    PPW3: TEdit;
    PPX4: TEdit;
    PPY4: TEdit;
    PPW4: TEdit;
    PPX5: TEdit;
    PPY5: TEdit;
    PPW5: TEdit;
    PPX6: TEdit;
    PPY6: TEdit;
    PPW6: TEdit;
    PPX7: TEdit;
    PPY7: TEdit;
    PPW7: TEdit;
    PPX8: TEdit;
    PPY8: TEdit;
    PPW8: TEdit;
    PPX9: TEdit;
    PPY9: TEdit;
    PPW9: TEdit;
    Button4: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Edit5: TEdit;
    Edit4: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label13: TLabel;
    Label12: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Shape1: TShape;
    QRYROBOID: TIntegerField;
    QRYROBOIDEMPRESA: TIntegerField;
    QRYROBONOME: TStringField;
    QRYROBOTIPO_ROBO: TIntegerField;
    QRYROBOTIPO_PALETIZACAO: TIntegerField;
    QRYROBOTIPO_COMUNICAO: TIntegerField;
    QRYROBOHOST_IP: TStringField;
    QRYROBOPORTA: TIntegerField;
    QRYROBOTIMEOUT: TIntegerField;
    QRYROBOAGUARDAR_PC_SENSOR: TStringField;
    QRYROBOFECHAR_GARRA: TStringField;
    QRYROBOABRIR_GARRA: TStringField;
    QRYROBOREPOSICIONA_GARRA: TStringField;
    QRYROBOFIM_PALETE: TStringField;
    QRYROBOINICIO_PALETE: TStringField;
    QRYROBOPONTO0_PALLETE_X: TIntegerField;
    QRYROBOPONTO0_PALLETE_Y: TIntegerField;
    QRYROBOPONTO0_PALLETE_Z: TIntegerField;
    QRYROBOPONTO0_MAGAZINE_X: TIntegerField;
    QRYROBOPONTO0_MAGAZINE_Y: TIntegerField;
    QRYROBOPONTO_INTERSEG_B_X: TIntegerField;
    QRYROBOPONTO_INTERSEG_B_Y: TIntegerField;
    QRYROBOPONTO_INTERSEG_B_Z: TIntegerField;
    QRYROBOPONTO_INTERSEG_A_X: TIntegerField;
    QRYROBOPONTO_INTERSEG_A_Y: TIntegerField;
    QRYROBOPONTO_INTERSEG_A_Z: TIntegerField;
    QRYROBOPONTO_SEGRET_X: TIntegerField;
    QRYROBOPONTO_SEGRET_Y: TIntegerField;
    QRYROBOPONTO_SEGRET_Z: TIntegerField;
    QRYROBOPONTO_SEGRET_CURVA_Z: TIntegerField;
    QRYROBOPONTO_SUPMESA_X: TIntegerField;
    QRYROBOPONTO_SUPMESA_Y: TIntegerField;
    QRYROBOPONTO_SUPMESA_ESP_ENC: TIntegerField;
    QRYROBOPONTO_SUPMESA_CENTROY: TIntegerField;
    QRYROBOPONTO_SUPMESA_POS_BATY: TIntegerField;
    QRYROBOPONTO_INFMESA_Y: TIntegerField;
    QRYROBOPONTO_INFMESA_ROLETES: TIntegerField;
    QRYROBOPONTO_INFMESA_LIVRE: TIntegerField;
    QRYROBOALTURA_MESA_Z_ALIN: TIntegerField;
    QRYROBOALTURA_MESA_Z_MESAMIN: TIntegerField;
    QRYROBOALTURA_MESA_OFFSET_UP: TIntegerField;
    QRYROBOALTURA_MESA_PONTO_Z: TIntegerField;
    QRYROBOALTURA_MESA_CURVA_CICLO: TIntegerField;
    QRYROBOOFFSET_ALTURA: TIntegerField;
    QRYROBOOFFSET_APPROC: TIntegerField;
    QRYROBOOFFSET_GARRA: TIntegerField;
    QRYROBOZ_PALETE: TIntegerField;
    QRYROBOOS_Z_RETORNO: TIntegerField;
    QRYROBOVEL_PEGADA: TIntegerField;
    QRYROBOVEL_SOLTURA: TIntegerField;
    QRYROBOVEL_LINEAR: TIntegerField;
    QRYROBOY_MESA_LIVRE: TIntegerField;
    QRYROBOOS_ENCOSTO: TIntegerField;
    QRYROBOZ_PEGADA: TIntegerField;
    QRYROBOCURVA_PEGADA: TIntegerField;
    QRYROBOCENTRO_ESTEIRA_Y: TIntegerField;
    QRYROBOPOS_BATENTE_Y: TIntegerField;
    QRYROBOOFFSET_SUBIDA: TIntegerField;
    QRYROBOVEL_SUBIDA: TIntegerField;
    QRYROBOCURVA_AFAST: TIntegerField;
    QRYROBODATA_INCLUSAO: TSQLTimeStampField;
    QRYROBOIDUSUARIO_INCLUSAO: TIntegerField;
    QRYROBODATA_ULT_ALTERACAO: TSQLTimeStampField;
    QRYROBOIDUSUARIO_ULT_ALTERACAO: TIntegerField;
    tbsPaletizacaoDireita: TcxTabSheet;
    lblCam1: TLabel;
    lblCam2: TLabel;
    Label19: TLabel;
    lblTotalCxaCam1: TLabel;
    Label21: TLabel;
    lblTotalCxaCam2: TLabel;
    Label23: TLabel;
    lblCentroCxaDir: TLabel;
    imgCxaPaletDir: TImage;
    Label25: TLabel;
    lblTotalCxa: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Shape2: TShape;
    Panel3: TPanel;
    imgPaletDirCam1: TImage;
    btnAddCxaDirCam1: TButton;
    DPLX1: TEdit;
    DPLY1: TEdit;
    DPLZ1: TEdit;
    DPLX2: TEdit;
    DPLY2: TEdit;
    DPLZ2: TEdit;
    edtDir1: TEdit;
    edtDir2: TEdit;
    edtDir3: TEdit;
    Panel4: TPanel;
    imgPaletDirCam2: TImage;
    btnDelCxaDirCam1: TButton;
    DPLX3: TEdit;
    DPLY3: TEdit;
    DPLZ3: TEdit;
    DPLX4: TEdit;
    DPLY4: TEdit;
    DPLZ4: TEdit;
    DPLX5: TEdit;
    DPLY5: TEdit;
    DPLZ5: TEdit;
    DPLX6: TEdit;
    DPLY6: TEdit;
    DPLZ6: TEdit;
    DPLX7: TEdit;
    DPLY7: TEdit;
    DPLZ7: TEdit;
    DPLX8: TEdit;
    DPLY8: TEdit;
    DPLZ8: TEdit;
    DPLX9: TEdit;
    DPLY9: TEdit;
    DPLZ9: TEdit;
    DPPX1: TEdit;
    DPPY1: TEdit;
    DPPZ1: TEdit;
    DPPX2: TEdit;
    DPPY2: TEdit;
    DPPZ2: TEdit;
    DPPX3: TEdit;
    DPPY3: TEdit;
    DPPZ3: TEdit;
    DPPX4: TEdit;
    DPPY4: TEdit;
    DPPZ4: TEdit;
    DPPX5: TEdit;
    DPPY5: TEdit;
    DPPZ5: TEdit;
    DPPX6: TEdit;
    DPPY6: TEdit;
    DPPZ6: TEdit;
    DPPX7: TEdit;
    DPPY7: TEdit;
    DPPZ7: TEdit;
    DPPX8: TEdit;
    DPPY8: TEdit;
    DPPZ8: TEdit;
    DPPX9: TEdit;
    DPPY9: TEdit;
    DPPZ9: TEdit;
    btnAddCxaDirCam2: TButton;
    btnDelCxaDirCam2: TButton;
    btnCam1Up: TButton;
    btnCam1Down: TButton;
    btnCam1Rigth: TButton;
    btnCam1Left: TButton;
    btnCam2Up: TButton;
    btnCam2Down: TButton;
    btnCam2Rigth: TButton;
    btnCam2Left: TButton;
    edtPontoFimCam1PaletDir: TEdit;
    edtPontoIniCam1PaletDir: TEdit;
    edtPontoIniCam2PaletDir: TEdit;
    edtPontoFimCam2PaletDir: TEdit;
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnAddCxaDirCam1Click(Sender: TObject);
    procedure btnAddCxaDirCam2Click(Sender: TObject);
    procedure btnDelCxaDirCam1Click(Sender: TObject);
    procedure btnDelCxaDirCam2Click(Sender: TObject);
    procedure btnCam1UpClick(Sender: TObject);
    procedure btnCam1DownClick(Sender: TObject);
    procedure btnCam1LeftClick(Sender: TObject);
    procedure btnCam1RigthClick(Sender: TObject);
    procedure btnCam2UpClick(Sender: TObject);
    procedure btnCam2DownClick(Sender: TObject);
    procedure btnCam2RigthClick(Sender: TObject);
    procedure btnCam2LeftClick(Sender: TObject);
  private
    { Private declarations }
    FDownX,
    FDownY: Integer;
    FDragging: Boolean;

  public
    { Public declarations }
    procedure ControlMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ControlMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure ControlMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);

    procedure ControlMouseDirDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ControlMouseDirMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure ControlMouseDirUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);

    procedure ContaCaixas;
    procedure ContaCaixasDir;
    procedure CalcularPosicaoCaixa;

    procedure controlClick(Sender : Tobject);
    procedure controlClick_2(Sender : Tobject);

    procedure controlClickDir(Sender : Tobject);
    procedure controlClickDir2(Sender : Tobject);

    procedure CalcularCaixa;
    procedure GeraImagemCxa;


    procedure GeraPontosMovimento;
    procedure GeraPontosMovimentoKosa;
    procedure GeraCodigos;
    procedure GeraCodigosKosa;
    procedure BuscaPontosCaixa(NUM_CX:INTEGER);
    var
      PIDROBO : integer;
      PCOMPRIMENTOCXA, PLARGURACXA, PALTURACXA : INTEGER;
      PCOMPRIMENTOPLT, PLARGURAPLT, PCAMADAS : INTEGER;
      PPROGRAMA : TSTRINGS;
  end;

var
  frmDesenharPalete: TfrmDesenharPalete;
  NUM_CAIXA : Integer = 0;
  DNUM_CAIXA : Integer = 0;
  PANEL_CX : TPanel;
  PANEL_CX_VR : TPanel;

  PANEL_DCX : TPanel;
  PANEL_DCX_VR : TPanel;

  COMP_CX, LARG_CX, ALT_CX : Integer;
  comp_p, larg_p : Integer;

  ESCALA_CX : Integer = 6;
  escala_pl : Integer = 6;
  coluna : string = '3500';

  COMP_PX, LARG_PX : Integer;
  comp_pl_px, larg_pl_px : Integer;

  px_base, mm_base, px_at , mm_at : Integer;
  CX_CM1, CX_CM2 : Integer;
  CX_DCM1, CX_DCM2 : Integer;

  XP_SEG, YP_SEG, ZP_SEG, WP_SEG : Integer;
  XP_APP, YP_APP, ZP_APP, WP_APP : Integer;
  XP_FIN, YP_FIN, ZP_FIN, WP_FIN : Integer;

implementation

{$R *.dfm}

uses uFormGerador, uFuncoesGerais, uDM, uGeraProgramaPalete_Caixas,
  uGeraProgramaPalete_Caixas2, uGeraProgramaPalete;

type
  TMoveCracker = class(TControl);

{ TfrmDesenharPalete }

procedure TfrmDesenharPalete.btnAddCxaDirCam1Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(tfrmCaixas, frmCaixas);
  frmCaixas.Image1.Picture := imgCxaPaletDir.Picture;
  frmCaixas.PLADO := 1;
  frmCaixas.ShowModal;
  frmCaixas.Release;
  frmCaixas.Free;
end;

procedure TfrmDesenharPalete.btnAddCxaDirCam2Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(tfrmDesenharCamada2, frmDesenharCamada2);
  frmDesenharCamada2.PLADO := 1;
  frmDesenharCamada2.Image1.Picture := imgCxaPaletDir.Picture;
  CX_DCM1 := StrToInt(lblTotalCxaCam1.Caption);
  frmDesenharCamada2.showmodal;
  frmDesenharCamada2.Release;
  frmDesenharCamada2.Free;
end;

procedure TfrmDesenharPalete.btnCam1DownClick(Sender: TObject);
var
  nome : string;
begin
  try

    nome := lblCam1.Caption;
    Tpanel(FindComponent(nome)).Top := TEdit(FindComponent(nome)).Top + 1;
    controlClickDir(TEdit(FindComponent(nome)));

  except

  end;
end;

procedure TfrmDesenharPalete.btnCam1LeftClick(Sender: TObject);
var
  nome : string;
begin
  try

    nome := lblCam1.Caption;
    Tpanel(FindComponent(nome)).Left := TEdit(FindComponent(nome)).Left - 1;
    controlClickDir(TEdit(FindComponent(nome)));

  except

  end;
end;

procedure TfrmDesenharPalete.btnCam1RigthClick(Sender: TObject);
var
  nome : string;
begin
  try

    nome := lblCam1.Caption;
    Tpanel(FindComponent(nome)).Left := TEdit(FindComponent(nome)).Left + 1;
    controlClickDir(TEdit(FindComponent(nome)));

  except

  end;
end;

procedure TfrmDesenharPalete.btnCam1UpClick(Sender: TObject);
var
  nome : string;
begin
  try

    nome := lblCam1.Caption;
    Tpanel(FindComponent(nome)).Top := TEdit(FindComponent(nome)).Top - 1;
    controlClickDir(TEdit(FindComponent(nome)));

  except

  end;
end;

procedure TfrmDesenharPalete.btnCam2DownClick(Sender: TObject);
var
  nome : string;
begin
  try

    nome := lblCam2.Caption;
    Tpanel(FindComponent(nome)).Top := TEdit(FindComponent(nome)).Top + 1;
    controlClickDir2(TEdit(FindComponent(nome)));

  except

  end;
end;

procedure TfrmDesenharPalete.btnCam2LeftClick(Sender: TObject);
var
  nome : string;
begin
  try

    nome := lblCam2.Caption;
    Tpanel(FindComponent(nome)).Left := TEdit(FindComponent(nome)).Left - 1;
    controlClickDir2(TEdit(FindComponent(nome)));

  except

  end;
end;

procedure TfrmDesenharPalete.btnCam2RigthClick(Sender: TObject);
var
  nome : string;
begin
  try

    nome := lblCam2.Caption;
    Tpanel(FindComponent(nome)).Left := TEdit(FindComponent(nome)).Left + 1;
    controlClickDir2(TEdit(FindComponent(nome)));

  except

  end;
end;

procedure TfrmDesenharPalete.btnCam2UpClick(Sender: TObject);
var
  nome : string;
begin
  try

    nome := lblCam2.Caption;
    Tpanel(FindComponent(nome)).Top := TEdit(FindComponent(nome)).Top - 1;
    controlClickDir2(TEdit(FindComponent(nome)));

  except

  end;
end;

procedure TfrmDesenharPalete.btnDelCxaDirCam1Click(Sender: TObject);
begin
  inherited;
  if DNUM_CAIXA > 0 then
  BEGIN
    TPanel(FindComponent('DCX' + IntToStr(DNUM_CAIXA))).Destroy;
    TPanel(FindComponent('DCX_VR' + IntToStr(DNUM_CAIXA))).Destroy;

    TEdit(FindComponent('DPLX' + IntToStr(DNUM_CAIXA))).Text := '0';
    TEdit(FindComponent('DPLY' + IntToStr(DNUM_CAIXA))).Text := '0';
    TEdit(FindComponent('DPLW' + IntToStr(DNUM_CAIXA))).Text := '0';

    DNUM_CAIXA := DNUM_CAIXA - 1;

    lblTotalCxaCam1.Caption := IntToStr(DNUM_CAIXA);
    lblTotalCxaCam2.Caption := IntToStr(0);

    ContaCaixasDir;
  END;
end;

procedure TfrmDesenharPalete.btnDelCxaDirCam2Click(Sender: TObject);
VAR
  CX_M1 : Integer;
begin
  CX_M1 := StrToInt(lblTotalCxaCam1.Caption);

  if DNUM_CAIXA > CX_M1 then
  BEGIN
    TPanel(FindComponent('DCX' + IntToStr(DNUM_CAIXA))).Destroy;
    //TPanel(FindComponent('CX_VR' + IntToStr(NUM_CAIXA))).Destroy;

    TEdit(FindComponent('DPPX' + IntToStr(DNUM_CAIXA - CX_CM1))).Text := '0';
    TEdit(FindComponent('DPPY' + IntToStr(DNUM_CAIXA - CX_CM1))).Text := '0';
    TEdit(FindComponent('DPPW' + IntToStr(DNUM_CAIXA - CX_CM1))).Text := '0';

    DNUM_CAIXA := DNUM_CAIXA - 1;


    lblTotalCxaCam2.Caption := IntToStr(DNUM_CAIXA - CX_CM1);
    ContaCaixasDir;

    if CX_CM1 = DNUM_CAIXA then
    BEGIN
      btnAddCxaDirCam1.Enabled := True;
      btnDelCxaDirCam1.Enabled := True;
    END;
  END;
end;

procedure TfrmDesenharPalete.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmDesenharPalete.btnSalvarClick(Sender: TObject);
begin
  inherited;
  pnAguarde.Caption := 'Aguarde... Calculando Posições da caixa...';
  pnAguarde.Visible := true;
  Application.ProcessMessages;
  CalcularPosicaoCaixa;
  Application.ProcessMessages;

  pnAguarde.Caption := 'Aguarde... Gerando pontos de movimento...';
  pnAguarde.Visible := true;
  Application.ProcessMessages;
  //ROBO GSK
  IF(QRYROBO.FieldByName('TIPO_ROBO').AsInteger = 0)THEN
    GeraPontosMovimento
  ELSE //ROBO KOSA
    GeraPontosMovimentoKosa;
  Application.ProcessMessages;

  pnAguarde.Caption := 'Aguarde... Gerando códigos do programa...';
  pnAguarde.Visible := true;
  Application.ProcessMessages;
  //ROBO GSK
  IF(QRYROBO.FieldByName('TIPO_ROBO').AsInteger = 0)THEN
    GeraCodigos
  ELSE //ROBO KOSA
    GeraCodigosKosa;
  Application.ProcessMessages;

  ModalResult := MROK;
end;

procedure TfrmDesenharPalete.BuscaPontosCaixa(NUM_CX: INTEGER);
var
  I: Integer;
  TEXT_APP, TEXT_COMP, TEXT_FIN : string;
begin

  TEXT_APP := '#calculo_ap_CX ' + IntToStr(NUM_CX);
  TEXT_FIN := '#calculo_pf_CX ' + IntToStr(NUM_CX);

  //LOCALIZA PONTO DE APROXIMACAO
  for I := 0 to frmFormGerador.Memo1.Lines.Count - 1 do
  begin

    TEXT_COMP := frmFormGerador.Memo1.Lines[I];
    if TEXT_COMP = TEXT_APP then
    begin
      XP_APP := StrToInt(frmFormGerador.Memo1.Lines[I + 1]);
      YP_APP := StrToInt(frmFormGerador.Memo1.Lines[I + 2]);
      ZP_APP := StrToInt(frmFormGerador.Memo1.Lines[I + 3]);
      WP_APP := StrToInt(frmFormGerador.Memo1.Lines[I + 4]);

      Break;
    end;
  end;


  //LOCALIZA PONTO FINAL
  for I := 0 to frmFormGerador.Memo1.Lines.Count - 1 do
  begin

    TEXT_COMP := frmFormGerador.Memo1.Lines[I];
    if TEXT_COMP = TEXT_FIN then
    begin
      XP_FIN := StrToInt(frmFormGerador.Memo1.Lines[I + 1]);
      YP_FIN := StrToInt(frmFormGerador.Memo1.Lines[I + 2]);
      ZP_FIN := StrToInt(frmFormGerador.Memo1.Lines[I + 3]);
      WP_FIN := StrToInt(frmFormGerador.Memo1.Lines[I + 4]);

      Break;
    end;
  end;
end;

procedure TfrmDesenharPalete.Button10Click(Sender: TObject);
var
  nome : string;
begin
  try
    nome := Label4.Caption;
    Tpanel(FindComponent(nome)).left := TEdit(FindComponent(nome)).left - 1;
    controlClick(TEdit(FindComponent(nome)));
  except

  end;
end;

procedure TfrmDesenharPalete.Button11Click(Sender: TObject);
var
  nome : string;
begin
  try
    nome := Label6.Caption;
    Tpanel(FindComponent(nome)).Top := TEdit(FindComponent(nome)).Top - 1;
    controlClick_2(TEdit(FindComponent(nome)));
  except

  end;
end;

procedure TfrmDesenharPalete.Button12Click(Sender: TObject);
var
  nome : string;
begin
  try
    nome := Label6.Caption;
    Tpanel(FindComponent(nome)).Top := TEdit(FindComponent(nome)).Top + 1;
    controlClick_2(TEdit(FindComponent(nome)));
  except

  end;
end;

procedure TfrmDesenharPalete.Button13Click(Sender: TObject);
var
  nome : string;
begin
  try
    nome := Label6.Caption;
    Tpanel(FindComponent(nome)).left := TEdit(FindComponent(nome)).left + 1;
    controlClick_2(TEdit(FindComponent(nome)));
  except

  end;
end;

procedure TfrmDesenharPalete.Button14Click(Sender: TObject);
var
  nome : string;
begin
  try
    nome := Label6.Caption;
    Tpanel(FindComponent(nome)).left := TEdit(FindComponent(nome)).left - 1;
    controlClick_2(TEdit(FindComponent(nome)));
  except

  end;
end;

procedure TfrmDesenharPalete.Button3Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(tfrmCaixas, frmCaixas);
  frmCaixas.Image1.Picture := Image2.Picture;
  frmCaixas.PLADO := 0;
  frmCaixas.ShowModal;
  frmCaixas.Release;
  frmCaixas.Free;
end;

procedure TfrmDesenharPalete.Button4Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(tfrmDesenharCamada2, frmDesenharCamada2);
  frmCaixas.PLADO := 0;
  frmDesenharCamada2.Image1.Picture := Image2.Picture;
  CX_CM1 := StrToInt(Label8.Caption);
  frmDesenharCamada2.showmodal;
  frmDesenharCamada2.Release;
  frmDesenharCamada2.Free;
end;

procedure TfrmDesenharPalete.Button5Click(Sender: TObject);
begin
  inherited;
  if NUM_CAIXA > 0 then
  BEGIN
    TPanel(FindComponent('CX' + IntToStr(NUM_CAIXA))).Destroy;
    TPanel(FindComponent('CX_VR' + IntToStr(NUM_CAIXA))).Destroy;

    TEdit(FindComponent('PLX' + IntToStr(NUM_CAIXA))).Text := '0';
    TEdit(FindComponent('PLY' + IntToStr(NUM_CAIXA))).Text := '0';
    TEdit(FindComponent('PLW' + IntToStr(NUM_CAIXA))).Text := '0';

    NUM_CAIXA := NUM_CAIXA - 1;

    Label8.Caption  := IntToStr(NUM_CAIXA);
    Label10.Caption := IntToStr(0);

    ContaCaixas;
  END;
end;

procedure TfrmDesenharPalete.Button6Click(Sender: TObject);
VAR
  CX_M1 : Integer;
begin
  CX_M1 := StrToInt(Label8.CAPTION);

  if NUM_CAIXA > CX_M1 then
  BEGIN
    TPanel(FindComponent('CX' + IntToStr(NUM_CAIXA))).Destroy;
    //TPanel(FindComponent('CX_VR' + IntToStr(NUM_CAIXA))).Destroy;

    TEdit(FindComponent('PPX' + IntToStr(NUM_CAIXA - CX_CM1))).Text := '0';
    TEdit(FindComponent('PPY' + IntToStr(NUM_CAIXA - CX_CM1))).Text := '0';
    TEdit(FindComponent('PPW' + IntToStr(NUM_CAIXA - CX_CM1))).Text := '0';

    NUM_CAIXA := NUM_CAIXA - 1;


    Label10.Caption := IntToStr(NUM_CAIXA - CX_CM1);
    ContaCaixas;

    if CX_CM1 = NUM_CAIXA then
    BEGIN
      Button5.Enabled := True;
      Button3.Enabled := True;
    END;
  END;
end;

procedure TfrmDesenharPalete.Button7Click(Sender: TObject);
var
  nome : string;
begin
  try

    nome := Label4.Caption;
    Tpanel(FindComponent(nome)).Top := TEdit(FindComponent(nome)).Top - 1;
    controlClick(TEdit(FindComponent(nome)));

  except

  end;
end;

procedure TfrmDesenharPalete.Button8Click(Sender: TObject);
var
  nome : string;
begin
  try

    nome := Label4.Caption;
    Tpanel(FindComponent(nome)).Top := TEdit(FindComponent(nome)).Top + 1;
    controlClick(TEdit(FindComponent(nome)));

  except

  end;
end;

procedure TfrmDesenharPalete.Button9Click(Sender: TObject);
var
  nome : string;
begin
  try

    nome := Label4.Caption;
    Tpanel(FindComponent(nome)).left := TEdit(FindComponent(nome)).left + 1;
    controlClick(TEdit(FindComponent(nome)));

  except

  end;
end;

procedure TfrmDesenharPalete.CalcularCaixa;
var
  X_IN, X_FIN, Y_IN, Y_FIN : Integer;
  XP_IN, XP_FIN, YP_IN, YP_FIN : Integer;
  ct_cx, os_garra, calc_garra : Integer;
  os_larg_cx : Integer;

label
  RECALCULA_ESCALA;

begin

  (***********************************)
  //calcula centro da caixa para garra
  os_garra := QRYROBO.FieldByName('OFFSET_GARRA').AsInteger;
  os_larg_cx := PLARGURACXA;

  calc_garra := trunc(os_larg_cx / 2);
  calc_garra := calc_garra - os_garra;
  Label16.Caption := IntToStr(calc_garra);
  frmFormGerador.Label16.Caption := label16.Caption;
  (***********************************)

  if(QRYROBO.FieldByName('TIPO_PALETIZACAO').AsInteger in [0,2])then
  begin
    Image2.Picture := nil;
    Image2.Canvas.Brush.Color := $00333333;
    Image2.Canvas.Rectangle(0,0,425,145);

    Image2.Canvas.Pen.Color := clWhite;
    Image2.Canvas.MoveTo(10,135);
    Image2.Canvas.LineTo(10,10);
    Image2.Canvas.LineTo(5,15);
    Image2.Canvas.MoveTo(10,10);
    Image2.Canvas.LineTo(15,15);

    Image2.Canvas.Pen.Color := clWhite;
    Image2.Canvas.MoveTo(10,135);
    Image2.Canvas.LineTo(415,135);
    Image2.Canvas.LineTo(410,130);
    Image2.Canvas.MoveTo(415,135);
    Image2.Canvas.LineTo(410,140);
  end;

  if(QRYROBO.FieldByName('TIPO_PALETIZACAO').AsInteger in [1,2])then
  begin
    imgCxaPaletDir.Picture := nil;
    imgCxaPaletDir.Canvas.Brush.Color := $00333333;
    imgCxaPaletDir.Canvas.Rectangle(0,0,425,145);

    imgCxaPaletDir.Canvas.Pen.Color := clWhite;
    imgCxaPaletDir.Canvas.MoveTo(10,135);
    imgCxaPaletDir.Canvas.LineTo(10,10);
    imgCxaPaletDir.Canvas.LineTo(5,15);
    imgCxaPaletDir.Canvas.MoveTo(10,10);
    imgCxaPaletDir.Canvas.LineTo(15,15);

    imgCxaPaletDir.Canvas.Pen.Color := clWhite;
    imgCxaPaletDir.Canvas.MoveTo(10,135);
    imgCxaPaletDir.Canvas.LineTo(415,135);
    imgCxaPaletDir.Canvas.LineTo(410,130);
    imgCxaPaletDir.Canvas.MoveTo(415,135);
    imgCxaPaletDir.Canvas.LineTo(410,140);
  end;

  ESCALA_CX := 1;
  NUM_CAIXA := 0;

  try
    BEGIN
      COMP_CX := PCOMPRIMENTOCXA;
      LARG_CX := PLARGURACXA;
      ALT_CX  := PALTURACXA;
    END;
  except

  end;

  RECALCULA_ESCALA:

  try
    BEGIN
      COMP_PX := Round(COMP_CX / ESCALA_CX);
      LARG_PX := Round(LARG_CX / ESCALA_CX);
    END;
  Except

  end;

  //imgCxaPaletDir
  try
    if(QRYROBO.FieldByName('TIPO_PALETIZACAO').AsInteger in [0,2])then
    begin
      Image2.Canvas.Pen.Color    := clBlack;
      Image2.Canvas.Brush.Color  := clYellow;
    end;

    if(QRYROBO.FieldByName('TIPO_PALETIZACAO').AsInteger in [1,2])then
    begin
      imgCxaPaletDir.Canvas.Pen.Color   := clBlack;
      imgCxaPaletDir.Canvas.Brush.Color := clYellow;
    end;

    X_IN := 20;
    Y_IN := 125 - LARG_PX;

    X_FIN := 20 + COMP_PX;
    Y_FIN := 125;
  except

  end;

  if (Y_IN < 10) OR (X_FIN > 410) then
  BEGIN
    ESCALA_CX := ESCALA_CX + 1;
    GOTO RECALCULA_ESCALA;
  END;

  if(QRYROBO.FieldByName('TIPO_PALETIZACAO').AsInteger in [0,2])then
    Image2.Canvas.Rectangle(X_IN, Y_IN, X_FIN, Y_FIN);

  if(QRYROBO.FieldByName('TIPO_PALETIZACAO').AsInteger in [1,2])then
    imgCxaPaletDir.Canvas.Rectangle(X_IN, Y_IN, X_FIN, Y_FIN);

  //desenha palete
  try
    BEGIN
      comp_p := PCOMPRIMENTOPLT;
      LARG_p := PLARGURAPLT;

      comp_pl_px := Round(comp_p / escala_pl);
      larg_pl_px := Round(larg_p / escala_pl);
    END;
  except

  end;

  //desenho palete camada 1 palet esquerda;
  if(QRYROBO.FieldByName('TIPO_PALETIZACAO').AsInteger in [0,2])then
  begin
    Image3.Picture := nil;
    Image3.Canvas.Brush.Color := $00333333;
    Image3.Canvas.Rectangle(0,0,400,400);

    XP_IN := 200 - TRUNC(comp_pl_px / 2);
    YP_IN := 200 - TRUNC(larg_pl_px / 2);

    XP_FIN := XP_IN + comp_pl_px;
    YP_FIN := YP_IN + larg_pl_px;

    Image3.Canvas.Pen.Color := clWhite;
    Image3.Canvas.MoveTo(XP_IN,0);
    Image3.Canvas.LineTo(XP_IN, 400);

    Image3.Canvas.Pen.Color := clWhite;
    Image3.Canvas.MoveTo(0,YP_IN);
    Image3.Canvas.LineTo(400, YP_IN);

    Image3.Canvas.Pen.Color := clWhite;
    Image3.Canvas.MoveTo(XP_FIN,0);
    Image3.Canvas.LineTo(XP_FIN, 400);

    Image3.Canvas.Pen.Color := clWhite;
    Image3.Canvas.MoveTo(0, YP_FIN);
    Image3.Canvas.LineTo(400, YP_FIN);


    Image3.Canvas.Brush.Color := clGreen;
    Image3.Canvas.Rectangle(XP_IN, YP_IN, XP_FIN, YP_FIN);

    //coloca ponto inicial do palete 1
    Edit4.Text := IntToStr(XP_IN);
    Edit5.Text := IntToStr(YP_FIN);

    //desenho palete camada 2;
    Image6.Picture := nil;
    Image6.Canvas.Brush.Color := $00333333;
    Image6.Canvas.Rectangle(0,0,400,400);

    XP_IN := 200 - TRUNC(comp_pl_px / 2);
    YP_IN := 200 - TRUNC(larg_pl_px / 2);

    XP_FIN := XP_IN + comp_pl_px;
    YP_FIN := YP_IN + larg_pl_px;

    Image6.Canvas.Pen.Color := clWhite;
    Image6.Canvas.MoveTo(XP_IN,0);
    Image6.Canvas.LineTo(XP_IN, 400);

    Image6.Canvas.Pen.Color := clWhite;
    Image6.Canvas.MoveTo(0,YP_IN);
    Image6.Canvas.LineTo(400, YP_IN);

    Image6.Canvas.Pen.Color := clWhite;
    Image6.Canvas.MoveTo(XP_FIN,0);
    Image6.Canvas.LineTo(XP_FIN, 400);

    Image6.Canvas.Pen.Color := clWhite;
    Image6.Canvas.MoveTo(0, YP_FIN);
    Image6.Canvas.LineTo(400, YP_FIN);


    Image6.Canvas.Brush.Color := clGreen;
    Image6.Canvas.Rectangle(XP_IN, YP_IN, XP_FIN, YP_FIN);

    //coloca ponto inicial do palete
    Edit6.Text := IntToStr(XP_IN);
    Edit7.Text := IntToStr(YP_FIN);
  end;

  //desenho palete camada 1 palet dir;
  if(QRYROBO.FieldByName('TIPO_PALETIZACAO').AsInteger in [1,2])then
  begin
    imgPaletDirCam1.Picture := nil;
    imgPaletDirCam1.Canvas.Brush.Color := $00333333;
    imgPaletDirCam1.Canvas.Rectangle(0,0,400,400);

    XP_IN := 200 - TRUNC(larg_pl_px / 2);
    YP_IN := 200 - TRUNC(comp_pl_px / 2);

    XP_FIN := XP_IN + larg_pl_px;
    YP_FIN := YP_IN + comp_pl_px;

    imgPaletDirCam1.Canvas.Pen.Color := clWhite;
    imgPaletDirCam1.Canvas.MoveTo(XP_IN,0);
    imgPaletDirCam1.Canvas.LineTo(XP_IN, 400);

    imgPaletDirCam1.Canvas.Pen.Color := clWhite;
    imgPaletDirCam1.Canvas.MoveTo(0,YP_IN);
    imgPaletDirCam1.Canvas.LineTo(400, YP_IN);

    imgPaletDirCam1.Canvas.Pen.Color := clWhite;
    imgPaletDirCam1.Canvas.MoveTo(XP_FIN,0);
    imgPaletDirCam1.Canvas.LineTo(XP_FIN, 400);

    imgPaletDirCam1.Canvas.Pen.Color := clWhite;
    imgPaletDirCam1.Canvas.MoveTo(0, YP_FIN);
    imgPaletDirCam1.Canvas.LineTo(400, YP_FIN);


    imgPaletDirCam1.Canvas.Brush.Color := clGreen;
    imgPaletDirCam1.Canvas.Rectangle(XP_IN, YP_IN, XP_FIN, YP_FIN);

    //coloca ponto inicial do palete 1
    edtPontoIniCam1PaletDir.Text := IntToStr(XP_IN);
    edtPontoFimCam1PaletDir.Text := IntToStr(YP_FIN);

    //desenho palete camada 2;
    imgPaletDirCam2.Picture := nil;
    imgPaletDirCam2.Canvas.Brush.Color := $00333333;
    imgPaletDirCam2.Canvas.Rectangle(0,0,400,400);

    XP_IN := 200 - TRUNC(larg_pl_px / 2);
    YP_IN := 200 - TRUNC(comp_pl_px / 2);

    XP_FIN := XP_IN + larg_pl_px;
    YP_FIN := YP_IN + comp_pl_px;

    imgPaletDirCam2.Canvas.Pen.Color := clWhite;
    imgPaletDirCam2.Canvas.MoveTo(XP_IN,0);
    imgPaletDirCam2.Canvas.LineTo(XP_IN, 400);

    imgPaletDirCam2.Canvas.Pen.Color := clWhite;
    imgPaletDirCam2.Canvas.MoveTo(0,YP_IN);
    imgPaletDirCam2.Canvas.LineTo(400, YP_IN);

    imgPaletDirCam2.Canvas.Pen.Color := clWhite;
    imgPaletDirCam2.Canvas.MoveTo(XP_FIN,0);
    imgPaletDirCam2.Canvas.LineTo(XP_FIN, 400);

    imgPaletDirCam2.Canvas.Pen.Color := clWhite;
    imgPaletDirCam2.Canvas.MoveTo(0, YP_FIN);
    imgPaletDirCam2.Canvas.LineTo(400, YP_FIN);


    imgPaletDirCam2.Canvas.Brush.Color := clGreen;
    imgPaletDirCam2.Canvas.Rectangle(XP_IN, YP_IN, XP_FIN, YP_FIN);

    //coloca ponto inicial do palete
    edtPontoIniCam2PaletDir.Text := IntToStr(XP_IN);
    edtPontoFimCam2PaletDir.Text := IntToStr(YP_FIN);
  end;
end;

procedure TfrmDesenharPalete.CalcularPosicaoCaixa;
var
  qtde_cam, cam_par, cam_impar : Integer;
  I, II, III : Integer;
  calc_m1, calc_m2, calc_m3 : Integer;
  z_cam : array[1..40] of Integer;
  offset_altura, offset_app, offset_gar_palete : Integer;
  g_cx, z_inicial : Integer;
  x_cx, y_cx, Z_CX, X_READ, Y_READ, G_READ : Integer;
  esp_caixa : Integer;
  conta_caixas : Integer;

  ct_cx, os_garra, calc_garra : Integer;
  os_larg_cx : Integer;

begin
  (***********************************)
  //calcula centro da caixa para garra
  os_garra   := QRYROBO.FieldByName('OFFSET_GARRA').AsInteger;
  os_larg_cx := PLARGURACXA;

  calc_garra := trunc(os_larg_cx / 2);
  calc_garra := calc_garra - os_garra;
  Label16.Caption := IntToStr(calc_garra);
  //frmFormGerador.Label16.Caption := label16.Caption;
  (***********************************)

  qtde_cam := PCAMADAS;

  //parametros
  offset_altura     := QRYROBO.FieldByName('OFFSET_ALTURA').AsInteger;

  //OFFSET_gar_palete := StrToInt(frmFormGerador.offset_gr.text);
  OFFSET_gar_palete   := StrToInt(frmFormGerador.Label16.caption);

  offset_app := QRYROBO.FieldByName('OFFSET_APPROC').AsInteger;
  z_inicial := QRYROBO.FieldByName('Z_PALETE').AsInteger;

  //dados locais
  cam_impar := StrToInt(label8.Caption);
  cam_par := StrToInt(Label10.Caption);
  esp_caixa := PALTURACXA;

  conta_caixas := 1;
  frmFormGerador.Memo1.Clear;

  //carrega Z das camadas
  for I := 1 to qtde_cam do
    z_cam[I] := z_inicial + ((esp_caixa * (I - 1))) + offset_altura;

  for I := 1 to qtde_cam do
  begin
    //CAMADA IMPAR
    if ((I mod 2) <> 0) OR (cam_par = 0) then
    begin
      for II := 1 to cam_impar do
      begin
        //PEGA DADOS DA CAIXA
        g_READ := StrToInt(TEdit(FindComponent('PLW' + IntToStr(II))).TEXT);
        x_READ := StrToInt(TEdit(FindComponent('PLX' + IntToStr(II))).TEXT);
        y_READ := StrToInt(TEdit(FindComponent('PLY' + IntToStr(II))).TEXT);

        g_cx := G_READ;

        //calcula posica de aproximação
        frmFormGerador.Memo1.Lines.Add('#calculo_ap_CX ' + IntToStr(conta_caixas));

        if (g_cx = 88) then
        begin
          x_cx := X_READ;
          y_cx := Y_READ - offset_gar_palete - offset_app;
          Z_CX := z_cam[I] + offset_app;
        end;

        if (g_cx = 178) then
        BEGIN
          x_cx := X_READ + offset_gar_palete + offset_app;
          y_cx := Y_READ - offset_app;
          Z_CX := z_cam[I] + offset_app;
        END;

        if (g_cx = 268) then
        begin
          x_cx := X_READ;
          y_cx := Y_READ + offset_gar_palete + offset_app;
          Z_CX := z_cam[I] + offset_app;
        end;

        if (g_cx = 0) then
        begin
          x_cx := X_READ - offset_gar_palete - offset_app;
          y_cx := Y_READ - offset_app;
          Z_CX := z_cam[I] + offset_app;
        end;

        //adiciona ao memo
        frmFormGerador.Memo1.Lines.Add(IntToStr(x_cx));
        frmFormGerador.Memo1.Lines.Add(IntToStr(y_cx));
        frmFormGerador.Memo1.Lines.Add(IntToStr(z_cx));
        frmFormGerador.Memo1.Lines.Add(IntToStr(g_cx));

        //calcula posica de posição
        frmFormGerador.Memo1.Lines.Add('#calculo_pf_CX ' + IntToStr(conta_caixas));

        //calcula offset de posicao final
        if (g_cx = 88) then
        begin
          x_cx := X_READ;
          y_cx := Y_READ - offset_gar_palete;
          Z_CX := z_cam[I];
        end;

        if (g_cx = 178) then
        BEGIN
          x_cx := X_READ + offset_gar_palete;
          y_cx := Y_READ;
          Z_CX := z_cam[I];
        END;

        if (g_cx = 268) then
        begin
          x_cx := X_READ;
          y_cx := Y_READ + offset_gar_palete;
          Z_CX := z_cam[I];
        end;

        if (g_cx = 0) then
        begin
          x_cx := X_READ - offset_gar_palete;
          y_cx := Y_READ;
          Z_CX := z_cam[I];
        end;

        //adiciona ao memo
        frmFormGerador.Memo1.Lines.Add(IntToStr(x_cx));
        frmFormGerador.Memo1.Lines.Add(IntToStr(y_cx));
        frmFormGerador.Memo1.Lines.Add(IntToStr(z_cx));
        frmFormGerador.Memo1.Lines.Add(IntToStr(g_cx));

        conta_caixas := conta_caixas + 1;

      end;
    end;

    //CAMADA PAR
    if ((I mod 2) = 0) AND (cam_par > 0) then
    begin
      for II := 1 to cam_par do
      begin
        //PEGA DADOS DA CAIXA
        g_READ := StrToInt(TEdit(FindComponent('PPW' + IntToStr(II))).TEXT);
        x_READ := StrToInt(TEdit(FindComponent('PPX' + IntToStr(II))).TEXT);
        y_READ := StrToInt(TEdit(FindComponent('PPY' + IntToStr(II))).TEXT);

        g_cx := G_READ;

        //calcula posica de aproximação
        frmFormGerador.Memo1.Lines.Add('#calculo_ap_CX ' + IntToStr(conta_caixas));

        if (g_cx = 88) then
        begin
          x_cx := X_READ;
          y_cx := Y_READ - offset_gar_palete - offset_app;
          Z_CX := z_cam[I] + offset_app;
        end;

        if (g_cx = 178) then
        BEGIN
          x_cx := X_READ + offset_gar_palete + offset_app;
          y_cx := Y_READ - offset_app;
          Z_CX := z_cam[I] + offset_app;
        END;

        if (g_cx = 268) then
        begin
          x_cx := X_READ;
          y_cx := Y_READ + offset_gar_palete + offset_app;
          Z_CX := z_cam[I] + offset_app;
        end;

        if (g_cx = 0) then
        begin
          x_cx := X_READ - offset_gar_palete - offset_app;
          y_cx := Y_READ - offset_app;
          Z_CX := z_cam[I] + offset_app;
        end;

        //adiciona ao memo
        frmFormGerador.Memo1.Lines.Add(IntToStr(x_cx));
        frmFormGerador.Memo1.Lines.Add(IntToStr(y_cx));
        frmFormGerador.Memo1.Lines.Add(IntToStr(z_cx));
        frmFormGerador.Memo1.Lines.Add(IntToStr(g_cx));


        //calcula posica de posição
        frmFormGerador.Memo1.Lines.Add('#calculo_pf_CX ' + IntToStr(conta_caixas));

        //calcula offset de posicao final
        if (g_cx = 88) then
        begin
          x_cx := X_READ;
          y_cx := Y_READ - offset_gar_palete;
          Z_CX := z_cam[I];
        end;

        if (g_cx = 178) then
        BEGIN
          x_cx := X_READ + offset_gar_palete;
          y_cx := Y_READ;
          Z_CX := z_cam[I];
        END;

        if (g_cx = 268) then
        begin
          x_cx := X_READ;
          y_cx := Y_READ + offset_gar_palete;
          Z_CX := z_cam[I];
        end;

        if (g_cx = 0) then
        begin
          x_cx := X_READ - offset_gar_palete;
          y_cx := Y_READ;
          Z_CX := z_cam[I];
        end;

        //adiciona ao memo
        frmFormGerador.Memo1.Lines.Add(IntToStr(x_cx));
        frmFormGerador.Memo1.Lines.Add(IntToStr(y_cx));
        frmFormGerador.Memo1.Lines.Add(IntToStr(z_cx));
        frmFormGerador.Memo1.Lines.Add(IntToStr(g_cx));

        conta_caixas := conta_caixas + 1;
      end;
    end;
  end;
end;

procedure TfrmDesenharPalete.ContaCaixas;
var
  t_cam, t_cam_1, t_cam_2 : Integer;
  calc_m1, calc_m2, calc_m3 : Integer;
  qtde_cam_par, qtde_cam_impar : Integer;
begin
  try
    t_cam := PCAMADAS;
    t_cam_1 := StrToInt(Label8.Caption);
    t_cam_2 := StrToInt(Label10.caption);

    //calcula qtde de cada camada
    if t_cam_2 = 0 then
    begin
      qtde_cam_par := 0;
      qtde_cam_impar := t_cam;
    end else
    begin
      if (t_cam mod 2) = 0 then
      begin
        qtde_cam_par := trunc(t_cam / 2);
        qtde_cam_impar := trunc(t_cam / 2);
      end else
      begin
        qtde_cam_par := trunc(t_cam / 2);
        qtde_cam_impar := trunc(t_cam / 2) + 1;
      end;
    end;

    //conta as camadas
    calc_m1 := t_cam_1 * qtde_cam_impar;
    calc_m2 := t_cam_2 * qtde_cam_par;

    calc_m3 := calc_m1 + calc_m2;
    Label12.Caption := IntToStr(calc_m3);
  except

  end;
end;

procedure TfrmDesenharPalete.ContaCaixasDir;
var
  t_cam, t_cam_1, t_cam_2 : Integer;
  calc_m1, calc_m2, calc_m3 : Integer;
  qtde_cam_par, qtde_cam_impar : Integer;
begin
  try
    t_cam := PCAMADAS;
    t_cam_1 := StrToInt(lblTotalCxaCam1.Caption);
    t_cam_2 := StrToInt(lblTotalCxaCam2.caption);

    //calcula qtde de cada camada
    if t_cam_2 = 0 then
    begin
      qtde_cam_par := 0;
      qtde_cam_impar := t_cam;
    end else
    begin
      if (t_cam mod 2) = 0 then
      begin
        qtde_cam_par := trunc(t_cam / 2);
        qtde_cam_impar := trunc(t_cam / 2);
      end else
      begin
        qtde_cam_par := trunc(t_cam / 2);
        qtde_cam_impar := trunc(t_cam / 2) + 1;
      end;
    end;

    //conta as camadas
    calc_m1 := t_cam_1 * qtde_cam_impar;
    calc_m2 := t_cam_2 * qtde_cam_par;

    calc_m3 := calc_m1 + calc_m2;
    lblTotalCxa.Caption := IntToStr(calc_m3);
  except

  end;
end;

procedure TfrmDesenharPalete.controlClick(Sender: Tobject);
var
  num_peca : Integer;
  calc_base : Integer;
  I : Integer;
  NOME_CX : string;
  TOP_CX, LEFT_CX, WIDTH_CX, HEIGHT_CX : Integer;
begin
  label4.Caption := (Sender as TPanel).Name;
  num_peca := StrToInt(Copy(label4.Caption, 3, 2));

  for I := 1 to CX_CM1 do
  begin
    NOME_CX := 'CX' + IntToStr(I);
    if assigned(FindComponent(NOME_CX)) then
    BEGIN
      //calculo das posições Y
      TOP_CX    := TPanel(FindComponent('CX' + IntToStr(I))).TOP;
      HEIGHT_CX := TPanel(FindComponent('CX' + IntToStr(I))).Height;

      px_at     := Top_CX + TRUNC(Height_CX / 2);
      px_base   := StrToInt(Edit5.Text) - PX_AT;
      MM_BASE   := (px_base * 6);
      calc_base := StrToInt(Edit2.TEXT) + MM_BASE;

      TEdit(FindComponent('PLY' + IntToStr(I))).Text := IntToStr(calc_base);

      //calculo das posições X
      Left_CX  := TPanel(FindComponent('CX' + IntToStr(I))).Left;
      WIDTH_CX := TPanel(FindComponent('CX' + IntToStr(I))).Width;

      px_at     := TRUNC(WIDTH_CX / 2)+ LEFT_CX;
      px_base   := px_at + StrToInt(Edit4.Text);
      mm_base   := (px_base * 6);
      calc_base := StrToInt(Edit1.TEXT) - MM_BASE;
      //calc_base := escala_pl;

      TEdit(FindComponent('PLX' + IntToStr(I))).Text    := IntToStr(calc_base);

      //coloca cx camada 2 na mesma posição
      TPanel(FindComponent('CX_VR' + IntToStr(I))).Top  := TOP_CX;
      TPanel(FindComponent('CX_VR' + IntToStr(I))).Left := LEFT_CX;
    END;
  end;
end;

procedure TfrmDesenharPalete.controlClickDir(Sender: Tobject);
var
  num_peca : Integer;
  calc_base : Integer;
  I : Integer;
  NOME_CX : string;
  TOP_CX, LEFT_CX, WIDTH_CX, HEIGHT_CX : Integer;
begin
  lblCam1.Caption := (Sender as TPanel).Name;
  num_peca := StrToInt(Copy(lblCam1.Caption, 3, 2));

  for I := 1 to CX_DCM1 do
  begin
    NOME_CX := 'DCX' + IntToStr(I);
    if assigned(FindComponent(NOME_CX)) then
    BEGIN
      //calculo das posições Y
      TOP_CX    := TPanel(FindComponent('DCX' + IntToStr(I))).TOP;
      HEIGHT_CX := TPanel(FindComponent('DCX' + IntToStr(I))).Height;

      px_at     := Top_CX + TRUNC(Height_CX / 2);
      px_base   := StrToInt(edtPontoFimCam1PaletDir.Text) - PX_AT;
      MM_BASE   := (px_base * 6);
      calc_base := StrToInt(edtDir2.TEXT) + MM_BASE;

      TEdit(FindComponent('DPLY' + IntToStr(I))).Text := IntToStr(calc_base * -1);

      //calculo das posições X
      Left_CX  := TPanel(FindComponent('DCX' + IntToStr(I))).Left;
      WIDTH_CX := TPanel(FindComponent('DCX' + IntToStr(I))).Width;

      px_at     := TRUNC(WIDTH_CX / 2)+ LEFT_CX;
      px_base   := px_at + StrToInt(edtPontoFimCam1PaletDir.Text);
      mm_base   := (px_base * 6);
      calc_base := StrToInt(edtDir1.TEXT) - MM_BASE;
      //calc_base := escala_pl;

      TEdit(FindComponent('DPLX' + IntToStr(I))).Text    := IntToStr(calc_base);

      //coloca cx camada 2 na mesma posição
      TPanel(FindComponent('DCX_VR' + IntToStr(I))).Top  := TOP_CX;
      TPanel(FindComponent('DCX_VR' + IntToStr(I))).Left := LEFT_CX;
    END;
  end;
end;

procedure TfrmDesenharPalete.controlClickDir2(Sender: Tobject);
var
  num_peca : Integer;
  calc_base : Integer;
  I : Integer;
  NOME_CX : string;
  TOP_CX, LEFT_CX, WIDTH_CX, HEIGHT_CX : Integer;
begin
  lblCam2.Caption := (Sender as TPanel).Name;
  num_peca := StrToInt(Copy(lblCam2.Caption, 3, 2));

  for I := NUM_PECA to 20 do
  begin
    NOME_CX := 'DCX' + IntToStr(I);
    if assigned(FindComponent(NOME_CX)) then
    BEGIN
      //calculo das posições Y
      TOP_CX    := TPanel(FindComponent('DCX' + IntToStr(I))).TOP;
      HEIGHT_CX := TPanel(FindComponent('DCX' + IntToStr(I))).Height;

      px_at     := Top_CX + TRUNC(Height_CX / 2);
      px_base   := StrToInt(edtPontoFimCam2PaletDir.Text) - PX_AT;
      MM_BASE   := (px_base * 6);
      calc_base := StrToInt(edtDir2.TEXT)+ MM_BASE;

      TEdit(FindComponent('DPPY' + IntToStr(I - CX_CM1))).Text := IntToStr(calc_base * -1);

      //calculo das posições X
      Left_CX   := TPanel(FindComponent('DCX' + IntToStr(I))).Left;
      WIDTH_CX  := TPanel(FindComponent('DCX' + IntToStr(I))).Width;

      px_at     := LEFT_CX + TRUNC(WIDTH_CX / 2);
      px_base   := px_at + StrToInt(edtPontoIniCam2PaletDir.Text);
      mm_base   := (px_base * 6);
      calc_base := StrToInt(edtDir1.TEXT) - MM_BASE;

      TEdit(FindComponent('DPPX' + IntToStr(I - CX_CM1))).Text := IntToStr(calc_base);

      //coloca cx camada 2 na mesma posição
      //TPanel(FindComponent('CX_VR' + IntToStr(I))).Top  := TOP_CX;
      //TPanel(FindComponent('CX_VR' + IntToStr(I))).Left := LEFT_CX;
    END;
  end;
end;

procedure TfrmDesenharPalete.controlClick_2(Sender: Tobject);
var
  num_peca : Integer;
  calc_base : Integer;
  I : Integer;
  NOME_CX : string;
  TOP_CX, LEFT_CX, WIDTH_CX, HEIGHT_CX : Integer;
begin
  label6.Caption := (Sender as TPanel).Name;
  num_peca := StrToInt(Copy(label6.Caption, 3, 2));

  for I := NUM_PECA to 20 do
  begin
    NOME_CX := 'CX' + IntToStr(I);
    if assigned(FindComponent(NOME_CX)) then
    BEGIN
      //calculo das posições Y
      TOP_CX    := TPanel(FindComponent('CX' + IntToStr(I))).TOP;
      HEIGHT_CX := TPanel(FindComponent('CX' + IntToStr(I))).Height;

      px_at     := Top_CX + TRUNC(Height_CX / 2);
      px_base   := StrToInt(Edit7.Text) - PX_AT;
      MM_BASE   := (px_base * 6);
      calc_base := StrToInt(Edit2.TEXT)+ MM_BASE;

      TEdit(FindComponent('PPY' + IntToStr(I - CX_CM1))).Text := IntToStr(calc_base);

      //calculo das posições X
      Left_CX   := TPanel(FindComponent('CX' + IntToStr(I))).Left;
      WIDTH_CX  := TPanel(FindComponent('CX' + IntToStr(I))).Width;

      px_at     := LEFT_CX + TRUNC(WIDTH_CX / 2);
      px_base   := px_at + StrToInt(Edit6.Text);
      mm_base   := (px_base * 6);
      calc_base := StrToInt(Edit1.TEXT) - MM_BASE;

      TEdit(FindComponent('PPX' + IntToStr(I - CX_CM1))).Text := IntToStr(calc_base);

      //coloca cx camada 2 na mesma posição
      //TPanel(FindComponent('CX_VR' + IntToStr(I))).Top  := TOP_CX;
      //TPanel(FindComponent('CX_VR' + IntToStr(I))).Left := LEFT_CX;
    END;
  end;
end;

procedure TfrmDesenharPalete.ControlMouseDirDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FDownX := X;
  FDownY := Y;
  FDragging := True;
  TMoveCracker(Sender).MouseCapture := True;
end;

procedure TfrmDesenharPalete.ControlMouseDirMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if FDragging then
  begin
    with Sender as TControl do
    begin
      Left := X - FDownX + Left;
      Top  := Y - FDownY + Top;
    end;
  end;
end;

procedure TfrmDesenharPalete.ControlMouseDirUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if FDragging then
  begin
   FDragging := False;
   TMoveCracker(Sender).MouseCapture := False;
  end;
end;

procedure TfrmDesenharPalete.ControlMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FDownX := X;
  FDownY := Y;
  FDragging := True;
  TMoveCracker(Sender).MouseCapture := True;
end;

procedure TfrmDesenharPalete.ControlMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  if FDragging then
  begin
    with Sender as TControl do
    begin
      Left := X - FDownX + Left;
      Top  := Y - FDownY + Top;
    end;
  end;
end;

procedure TfrmDesenharPalete.ControlMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if FDragging then
  begin
   FDragging := False;
   TMoveCracker(Sender).MouseCapture := False;
  end;
end;

procedure TfrmDesenharPalete.FormShow(Sender: TObject);
begin
  inherited;
  //carregar dados do robo
  QRYROBO.Close;
  QRYROBO.Params[0].AsInteger := PIDROBO;
  QRYROBO.Open;
  QRYROBO.FetchAll;

  tbsPaletizacaoDireita.TabVisible := false;
  CASE(QRYROBO.FieldByName('TIPO_PALETIZACAO').AsInteger)OF
    //PADRAO
    0:BEGIN
        tbsPaletizacaoEsquerda.TabVisible := true;
        tbsPaletizacaoDireita.TabVisible := false;
      END;
    //DIREITA
    1:BEGIN
        tbsPaletizacaoEsquerda.TabVisible := true;
        tbsPaletizacaoDireita.TabVisible := true;
      END;
    //AMBOS
    2:BEGIN
        tbsPaletizacaoEsquerda.TabVisible := true;
        tbsPaletizacaoDireita.TabVisible := true;

        pgBasePaletizacao.ActivePageIndex := 0;
      END;
  END;

  //
  GeraImagemCxa;
  CalcularCaixa;
end;

procedure TfrmDesenharPalete.GeraCodigos;
var

  //pontos de segurança avanço
  xp_fwd_low, yp_fwd_low, zp_fwd_low : Integer;
  xp_fwd_high, yp_fwd_high, zp_fwd_high : Integer;

  //conta caixas
  t_cx : Integer;
  VELOC, V_PALETE : Integer;

  //ponto de movimento dos auxilios
  ponto_retorno, ponto_pre, ponto_aguardo : string;
  ponto_alinhamento, Ponto_Subida : string;

  //CONTROLE DOS PONTOS
  XP_MOV_SEG, YP_MOV_SEG, ZP_MOV_SEG, WP_MOV_SEG : Integer;
  XP_APROCH, YP_APROCH, ZP_APROCH, WP_APROCH : Integer;
  XP_MOV_FIN, YP_MOV_FIN, ZP_MOV_FIN, WP_MOV_FIN : Integer;

  os_subida, alt_alin_seg, pos_z_subida : Integer;
  CURVA_APROCH : Integer;

  //DIMENSAO
  ALT_CX_PR, VAR_ALT, WP_ANG : Integer;

  //controle
  I, II: Integer;
begin
  //
  //coleta dados
  t_cx      := StrToInt(label12.Caption);
  veloc     := QRYROBO.FieldByName('VEL_LINEAR').AsInteger;
  V_PALETE  := QRYROBO.FieldByName('VEL_SOLTURA').AsInteger;
  ALT_CX_PR := PALTURACXA;

  //AJUSTE ALTURA DE COMPARAÇÃO
  VAR_ALT := (ALT_CX_PR * 2) + 50;

  //PONTO DE SUBIDA
  os_subida    := QRYROBO.FieldByName('OFFSET_SUBIDA').AsInteger;
  alt_alin_seg := QRYROBO.FieldByName('ALTURA_MESA_Z_ALIN').AsInteger;
  pos_z_subida := os_subida + alt_alin_seg;

  //inicio montagem do codigo
  //inicio
  frmFormGerador.Memo2.Clear;
  //cria pontos de utilizacao
  frmFormGerador.Memo2.Lines.Add('U1=0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0,0;');
  frmFormGerador.Memo2.Lines.Add('T0=0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0,0;');
  frmFormGerador.Memo2.Lines.Add('P0=0.0,0.0,0.0,0.0,0.00,0.00,0.00,0.00,0,1,0.00,0.00,0.00,0.00,0.00,0.00;');
  frmFormGerador.Memo2.Lines.Add('P1=0.0,0.0,0.0,0.0,0.00,0.00,0.00,0.00,0,1,0.00,0.00,0.00,0.00,0.00,0.00;');
  frmFormGerador.Memo2.Lines.Add('P2=0.0,0.0,0.0,0.0,0.00,0.00,0.00,0.00,0,1,0.00,0.00,0.00,0.00,0.00,0.00;');
  frmFormGerador.Memo2.Lines.Add('P3=0.0,0.0,0.0,0.0,0.00,0.00,0.00,0.00,0,1,0.00,0.00,0.00,0.00,0.00,0.00;');
  frmFormGerador.Memo2.Lines.Add('P4=0.0,0.0,0.0,0.0,0.00,0.00,0.00,0.00,0,1,0.00,0.00,0.00,0.00,0.00,0.00;');
  frmFormGerador.Memo2.Lines.Add('P5=0.0,0.0,0.0,0.0,0.00,0.00,0.00,0.00,0,1,0.00,0.00,0.00,0.00,0.00,0.00;');
  frmFormGerador.Memo2.Lines.Add('P6=0.0,0.0,0.0,0.0,0.00,0.00,0.00,0.00,0,1,0.00,0.00,0.00,0.00,0.00,0.00;');
  frmFormGerador.Memo2.Lines.Add('P10=0.0,0.0,0.0,0.0,0.00,0.00,0.00,0.00,0,1,0.00,0.00,0.00,0.00,0.00,0.00;');
  frmFormGerador.Memo2.Lines.Add('P11=0.0,0.0,0.0,0.0,0.00,0.00,0.00,0.00,0,1,0.00,0.00,0.00,0.00,0.00,0.00;');
  frmFormGerador.Memo2.Lines.Add('P12=0.0,0.0,0.0,0.0,0.00,0.00,0.00,0.00,0,1,0.00,0.00,0.00,0.00,0.00,0.00;');
  frmFormGerador.Memo2.Lines.Add('P13=0.0,0.0,0.0,0.0,0.00,0.00,0.00,0.00,0,1,0.00,0.00,0.00,0.00,0.00,0.00;');
  frmFormGerador.Memo2.Lines.Add('P14=0.0,0.0,0.0,0.0,0.00,0.00,0.00,0.00,0,1,0.00,0.00,0.00,0.00,0.00,0.00;');
  frmFormGerador.Memo2.Lines.Add('P15=0.0,0.0,0.0,0.0,0.00,0.00,0.00,0.00,0,1,0.00,0.00,0.00,0.00,0.00,0.00;');

  //inicio e registro do codigo
  //frmFormGerador.Memo2.Clear;
  frmFormGerador.Memo2.Lines.Add('#INICIO DO PROGRAMA');
  frmFormGerador.Memo2.Lines.Add('MAIN;');
  //adicionada ponto seguro de inicio
  frmFormGerador.Memo2.Lines.Add('');

  //ZERA TODAS SAIDAS
  frmFormGerador.Memo2.Lines.Add('#######################################');
  frmFormGerador.Memo2.Lines.Add('#INICIO DO ZERAMENTO DE TODAS AS SAÍDAS');
  frmFormGerador.Memo2.Lines.Add('#######################################');
  frmFormGerador.Memo2.Lines.Add('');
  frmFormGerador.Memo2.Lines.Add('DOUT OT8, OFF;');
  frmFormGerador.Memo2.Lines.Add('DOUT OT9, OFF;');
  frmFormGerador.Memo2.Lines.Add('DOUT OT10, OFF;');
  frmFormGerador.Memo2.Lines.Add('DOUT OT11, OFF;');
  frmFormGerador.Memo2.Lines.Add('');
  frmFormGerador.Memo2.Lines.Add('#######################################');
  frmFormGerador.Memo2.Lines.Add('#FIM DO ZERAMENTO DE TODAS AS SAÍDAS');
  frmFormGerador.Memo2.Lines.Add('#######################################');
  frmFormGerador.Memo2.Lines.Add('');
  {frmFormGerador.Memo2.Lines.Add('DOUT F10.0, OFF;');
  frmFormGerador.Memo2.Lines.Add('DOUT F10.1, OFF;');
  frmFormGerador.Memo2.Lines.Add('DOUT F10.2, OFF;');
  frmFormGerador.Memo2.Lines.Add('DOUT F10.3, OFF;'); }

  //adidiona unica vez para memoria
  //todos os pontos auxiliares
  //adiciona pontos retorno
  frmFormGerador.Memo2.Lines.Add('########################');
  frmFormGerador.Memo2.Lines.Add('#CADASTRAMENTO DE PONTOS');
  frmFormGerador.Memo2.Lines.Add('########################');
  frmFormGerador.Memo2.Lines.Add('');
  frmFormGerador.Memo2.Lines.Add('#PONTOS DE RETORNO');
  for II := 0 to frmFormGerador.Memo3.Lines.Count - 2 do
    frmFormGerador.Memo2.Lines.Add(frmFormGerador.Memo3.Lines[II]);
  ponto_retorno := frmFormGerador.Memo3.Lines[frmFormGerador.Memo3.Lines.Count - 1];
  frmFormGerador.Memo2.Lines.Add('#FIM DOS PONTOS DE RETORNO');
  frmFormGerador.Memo2.Lines.Add('');

  //adiciona pontos pre entrada
  frmFormGerador.Memo2.Lines.Add('#PONTOS DE PRE-ENTRADA');
  for II := 0 to frmFormGerador.Memo4.Lines.Count - 2 do
    frmFormGerador.Memo2.Lines.Add(frmFormGerador.Memo4.Lines[II]);
  ponto_pre := frmFormGerador.Memo4.Lines[frmFormGerador.Memo4.Lines.Count - 1];
  frmFormGerador.Memo2.Lines.Add('#FIM DOS PONTOS DE PRE-ENTRADA');
  frmFormGerador.Memo2.Lines.Add('');

  //adiciona pontos ate espera
  frmFormGerador.Memo2.Lines.Add('#PONTOS DE ESPERA');
  for II := 0 to frmFormGerador.Memo5.Lines.Count - 2 do
    frmFormGerador.Memo2.Lines.Add(frmFormGerador.Memo5.Lines[II]);
  ponto_aguardo := frmFormGerador.Memo5.Lines[frmFormGerador.Memo5.Lines.Count - 1];
  frmFormGerador.Memo2.Lines.Add('#FIM DOS PONTOS DE ESPERA');
  frmFormGerador.Memo2.Lines.Add('');

  //adiciona pontos de alinhamento
  frmFormGerador.Memo2.Lines.Add('#pontos de alinhamento');
  for II := 0 to frmFormGerador.Memo6.Lines.Count - 2 do
    frmFormGerador.Memo2.Lines.Add(frmFormGerador.Memo6.Lines[II]);
  ponto_alinhamento := frmFormGerador.Memo6.Lines[frmFormGerador.Memo6.Lines.Count - 1];

  //adiciona pontos de subida com caixa
  frmFormGerador.Memo2.Lines.Add('#pontos de Subida');
  for II := 0 to frmFormGerador.Memo7.Lines.Count - 2 do
    frmFormGerador.Memo2.Lines.Add(frmFormGerador.Memo7.Lines[II]);
  Ponto_Subida := frmFormGerador.Memo7.Lines[frmFormGerador.Memo7.Lines.Count - 1];

  frmFormGerador.Memo2.Lines.Add('######################');
  frmFormGerador.Memo2.Lines.Add('#FINAL CADASTRA PONTOS');
  frmFormGerador.Memo2.Lines.Add('######################');
  frmFormGerador.Memo2.Lines.Add('###################');
  frmFormGerador.Memo2.Lines.Add('#INICIO DO PROGRAMA');
  frmFormGerador.Memo2.Lines.Add('###################');

  //inicio do loop de posições de caixas
  IF(QRYROBO.FieldByName('TIPO_ROBO').AsInteger in [0,2])THEN
  BEGIN
    for I := 1 to T_cx do
    begin
      //adiciona pontos ate espera
      frmFormGerador.Memo2.Lines.Add('#pontos de Retorno');
      frmFormGerador.Memo2.Lines.Add(ponto_retorno);

      if I = 1 then
      begin
        frmFormGerador.Memo2.Lines.Add('#JUMP REINICIO');
        frmFormGerador.Memo2.Lines.Add('LAB0;');
      end;


      frmFormGerador.Memo2.Lines.Add(ponto_pre);
      frmFormGerador.Memo2.Lines.Add(ponto_aguardo);

      //adiciona aguarda peça no sensor
      frmFormGerador.Memo2.Lines.Add('#add IOs aguarda caixa no Sensor');
      frmFormGerador.Memo2.Lines.Add(QRYROBO.FieldByName('AGUARDAR_PC_SENSOR').AsString);

      frmFormGerador.Memo2.Lines.Add('#pontos de alinhamento');
      frmFormGerador.Memo2.Lines.Add(ponto_alinhamento);

      //adiciona fechamento da Pinca
      frmFormGerador.Memo2.Lines.Add('#add IOs fechamento pinca');
      frmFormGerador.Memo2.Lines.Add(QRYROBO.FieldByName('FECHAR_GARRA').AsString);

      (*CALCULA AS POSICOES E GIROS*)
      (****************************************)
      (*CRIA PONTOS DE SEGURANCA E ALOCAÇÃO*)
      (****************************************)
      (*adidciona memoria de ponto de seguranc*)
      //VERIFICA Z PARA PONTO DE SEGURANÇA
      //localiza ponto da caixa atual;
      BuscaPontosCaixa(I);
      ZP_MOV_SEG := ZP_FIN;
      ZP_APROCH := ZP_APP;

      (* ponto de aproximação*)
      XP_APROCH := XP_APP;
      YP_APROCH := YP_APP;
      ZP_APROCH := ZP_APP;
      WP_APROCH := WP_APP;

      if (ZP_APROCH < (POS_Z_SUBIDA - VAR_ALT)) then
      begin
        XP_MOV_SEG := QRYROBO.FieldByName('PONTO_INTERSEG_B_X').AsInteger;
        YP_MOV_SEG := QRYROBO.FieldByName('PONTO_INTERSEG_B_Y').AsInteger;
        ZP_MOV_SEG := pos_z_subida;
        CURVA_APROCH := QRYROBO.FieldByName('PONTO_INTERSEG_B_Z').AsInteger;


       { if WP_FIN <> 90 then
        begin
          (*Se tiver gito cria ponto alto*)
          //CRIA PONTO NO z alto no giro completo
          //monta codigo
          frmFormGerador.Memo2.Lines.Add('#Monta Codigo de Giro final no ALto');
          frmFormGerador.Memo2.Lines.Add('SETE PX6 (1),' + IntToStr(XP_APROCH) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX6 (2),' + IntToStr(YP_APROCH) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX6 (3),' + IntToStr(ZP_MOV_SEG) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX6 (4),' + IntToStr(WP_APROCH) + ';');
          frmFormGerador.Memo2.Lines.Add('ADDP P6, PX6;');
          (*fim do ponto de seguranca*)
        end;  }

      end
      ELSE
      BEGIN
        XP_MOV_SEG := QRYROBO.FieldByName('PONTO_INTERSEG_A_X').AsInteger;
        YP_MOV_SEG := QRYROBO.FieldByName('PONTO_INTERSEG_A_Y').AsInteger;

        if (ZP_MOV_SEG < POS_Z_SUBIDA) then
        ZP_MOV_SEG := pos_z_subida + VAR_ALT ELSE
        ZP_MOV_SEG := ZP_MOV_SEG + VAR_ALT;

        CURVA_APROCH := QRYROBO.FieldByName('PONTO_INTERSEG_A_Z').AsInteger;


        {if WP_FIN <> 90 then
        begin
          (*Se tiver gito cria ponto alto*)
          //CRIA PONTO NO z alto no giro completo
          //monta codigo
          frmFormGerador.Memo2.Lines.Add('#Monta Codigo de Giro final no ALto');
          frmFormGerador.Memo2.Lines.Add('SETE PX6 (1),' + IntToStr(XP_APROCH) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX6 (2),' + IntToStr(YP_APROCH) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX6 (3),' + IntToStr(ZP_MOV_SEG) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX6 (4),' + IntToStr(WP_APROCH) + ';');
          frmFormGerador.Memo2.Lines.Add('ADDP P6, PX6;');
          (*fim do ponto de seguranca*)
        end;  }

      END;
      (*****************************************)
      (*****************************************)

      (*VERIFICA ANGULO FINAL*)
      WP_MOV_FIN := WP_FIN;
      IF WP_MOV_FIN = 90 then
        WP_ANG := 90;
      if WP_MOV_FIN = 180 then
        WP_ANG := 90 + 45;
      if WP_MOV_FIN = 270 then
        WP_ANG := 90 + 90;
      if WP_ANG = 0 then
        WP_ANG := 90 - 45;


      //CRIA PONTO NO PROGRAMA
      //monta codigo
      frmFormGerador.Memo2.Lines.Add('SETE PX0 (1),' + IntToStr(XP_MOV_SEG) + ';');
      frmFormGerador.Memo2.Lines.Add('SETE PX0 (2),' + IntToStr(YP_MOV_SEG) + ';');
      frmFormGerador.Memo2.Lines.Add('SETE PX0 (3),' + IntToStr(ZP_MOV_SEG) + ';');
      frmFormGerador.Memo2.Lines.Add('SETE PX0 (4),' + IntToStr(WP_ANG) + ';');
      frmFormGerador.Memo2.Lines.Add('ADDP P0, PX0;');
      (*fim do ponto de seguranca*)

      //PONTO SEGURANCA RETORNO
      frmFormGerador.Memo2.Lines.Add('SETE PX5 (1),' + IntToStr(XP_MOV_SEG) + ';');
      frmFormGerador.Memo2.Lines.Add('SETE PX5 (2),' + IntToStr(YP_MOV_SEG) + ';');
      frmFormGerador.Memo2.Lines.Add('SETE PX5 (3),' + IntToStr(ZP_MOV_SEG) + ';');
      frmFormGerador.Memo2.Lines.Add('SETE PX5 (4),' + IntToStr(WP_ANG) + ';');
      frmFormGerador.Memo2.Lines.Add('ADDP P5, PX5;');
      (*fim do ponto de seguranca*)


      (* ponto de aproximação*)
      XP_APROCH := XP_APP;
      YP_APROCH := YP_APP;
      ZP_APROCH := ZP_APP;
      WP_APROCH := WP_APP;

      //CRIA PONTO NO PROGRAMA
      //monta codigo
      frmFormGerador.Memo2.Lines.Add('SETE PX1 (1),' + IntToStr(XP_APROCH) + ';');
      frmFormGerador.Memo2.Lines.Add('SETE PX1 (2),' + IntToStr(YP_APROCH) + ';');
      frmFormGerador.Memo2.Lines.Add('SETE PX1 (3),' + IntToStr(ZP_APROCH) + ';');
      frmFormGerador.Memo2.Lines.Add('SETE PX1 (4),' + IntToStr(WP_APROCH) + ';');
      frmFormGerador.Memo2.Lines.Add('ADDP P1, PX1;');
      (***************************)


      (*****************************************)
      XP_MOV_FIN := XP_FIN;
      YP_MOV_FIN := YP_FIN;
      ZP_MOV_FIN := ZP_FIN;
      WP_MOV_FIN := WP_FIN;

      //CRIA PONTO NO PROGRAMA
      //monta codigo
      frmFormGerador.Memo2.Lines.Add('SETE PX2 (1),' + IntToStr(XP_MOV_FIN) + ';');
      frmFormGerador.Memo2.Lines.Add('SETE PX2 (2),' + IntToStr(YP_MOV_FIN) + ';');
      frmFormGerador.Memo2.Lines.Add('SETE PX2 (3),' + IntToStr(ZP_MOV_FIN) + ';');
      frmFormGerador.Memo2.Lines.Add('SETE PX2 (4),' + IntToStr(WP_MOV_FIN) + ';');
      frmFormGerador.Memo2.Lines.Add('ADDP P2, PX2;');
      (**********************************)

      (* PONTO DE SEGURANCA BAIXA*)
      (*MOVEMNTA APENAS Z NO PONTO DE DESCIDA*)
      if (ZP_APROCH < (POS_Z_SUBIDA - VAR_ALT)) then
      begin

        //CRIA PONTO NO PROGRAMA

        frmFormGerador.Memo2.Lines.Add('#CRIA PONTO DE SEGURANCA BAIXA');
        //monta codigo

        if WP_FIN = 90 then
        BEGIN
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (1),' + IntToStr(XP_MOV_FIN) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (2),' + IntToStr(YP_MOV_FIN - 40) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (3),' + IntToStr(ZP_MOV_SEG) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (4),' + IntToStr(WP_MOV_FIN) + ';');
          frmFormGerador.Memo2.Lines.Add('ADDP P3, PX3;');
        END;
        if WP_FIN = 180 then
        BEGIN
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (1),' + IntToStr(XP_MOV_FIN + 40) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (2),' + IntToStr(YP_MOV_FIN) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (3),' + IntToStr(ZP_MOV_SEG) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (4),' + IntToStr(WP_MOV_FIN) + ';');
          frmFormGerador.Memo2.Lines.Add('ADDP P3, PX3;');
        END;
        if WP_FIN = 270 then
        BEGIN
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (1),' + IntToStr(XP_MOV_FIN) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (2),' + IntToStr(YP_MOV_FIN + 40) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (3),' + IntToStr(ZP_MOV_SEG) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (4),' + IntToStr(WP_MOV_FIN) + ';');
          frmFormGerador.Memo2.Lines.Add('ADDP P3, PX3;');
        END;
        if WP_FIN = 0 then
        BEGIN
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (1),' + IntToStr(XP_MOV_FIN - 40) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (2),' + IntToStr(YP_MOV_FIN) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (3),' + IntToStr(ZP_MOV_SEG) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (4),' + IntToStr(WP_MOV_FIN) + ';');
          frmFormGerador.Memo2.Lines.Add('ADDP P3, PX3;');
        END;
        (*****************************)

      end ELSE
      begin

        //CRIA PONTO NO PROGRAMA

        frmFormGerador.Memo2.Lines.Add('#CRIA PONTO DE SEGURANCA ALTA');
        //monta codigo
        if WP_FIN = 90 then
        BEGIN
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (1),' + IntToStr(XP_MOV_FIN) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (2),' + IntToStr(YP_MOV_FIN - 40) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (3),' + IntToStr(ZP_MOV_SEG) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (4),' + IntToStr(WP_MOV_FIN) + ';');
          frmFormGerador.Memo2.Lines.Add('ADDP P3, PX3;');
        END;
        if WP_FIN = 180 then
        BEGIN
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (1),' + IntToStr(XP_MOV_FIN + 40) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (2),' + IntToStr(YP_MOV_FIN) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (3),' + IntToStr(ZP_MOV_SEG) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (4),' + IntToStr(WP_MOV_FIN) + ';');
          frmFormGerador.Memo2.Lines.Add('ADDP P3, PX3;');
        END;
        if WP_FIN = 270 then
        BEGIN
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (1),' + IntToStr(XP_MOV_FIN) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (2),' + IntToStr(YP_MOV_FIN + 40) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (3),' + IntToStr(ZP_MOV_SEG) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (4),' + IntToStr(WP_MOV_FIN) + ';');
          frmFormGerador.Memo2.Lines.Add('ADDP P3, PX3;');
        END;
        if WP_FIN = 0 then
        BEGIN
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (1),' + IntToStr(XP_MOV_FIN - 40) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (2),' + IntToStr(YP_MOV_FIN) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (3),' + IntToStr(ZP_MOV_SEG) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (4),' + IntToStr(WP_MOV_FIN) + ';');
          frmFormGerador.Memo2.Lines.Add('ADDP P3, PX3;');
        END;
        (*****************************)

      end;

      (***********************************)


      (*DETERINA PONTO DE AFASTAMENTO*)
      //afastamento
      (*******************************)
      frmFormGerador.Memo2.Lines.Add('#CRIA PONTO DE afastamento');
      //monta codigo
      if (WP_FIN = 90) then
      begin
        frmFormGerador.Memo2.Lines.Add('SETE PX4 (1),' + IntToStr(XP_MOV_FIN) + ';');
        frmFormGerador.Memo2.Lines.Add('SETE PX4 (2),' + IntToStr(YP_MOV_FIN - 40) + ';');
        frmFormGerador.Memo2.Lines.Add('SETE PX4 (3),' + IntToStr(ZP_MOV_FIN) + ';');
        frmFormGerador.Memo2.Lines.Add('SETE PX4 (4),' + IntToStr(WP_MOV_FIN) + ';');
        frmFormGerador.Memo2.Lines.Add('ADDP P4, PX4;');
      end;

      if (WP_FIN = 180) then
      begin
        frmFormGerador.Memo2.Lines.Add('SETE PX4 (1),' + IntToStr(XP_MOV_FIN + 40) + ';');
        frmFormGerador.Memo2.Lines.Add('SETE PX4 (2),' + IntToStr(YP_MOV_FIN) + ';');
        frmFormGerador.Memo2.Lines.Add('SETE PX4 (3),' + IntToStr(ZP_MOV_FIN) + ';');
        frmFormGerador.Memo2.Lines.Add('SETE PX4 (4),' + IntToStr(WP_MOV_FIN) + ';');
        frmFormGerador.Memo2.Lines.Add('ADDP P4, PX4;');
      end;

      if (WP_FIN = 270) then
      begin
        frmFormGerador.Memo2.Lines.Add('SETE PX4 (1),' + IntToStr(XP_MOV_FIN) + ';');
        frmFormGerador.Memo2.Lines.Add('SETE PX4 (2),' + IntToStr(YP_MOV_FIN + 40) + ';');
        frmFormGerador.Memo2.Lines.Add('SETE PX4 (3),' + IntToStr(ZP_MOV_FIN) + ';');
        frmFormGerador.Memo2.Lines.Add('SETE PX4 (4),' + IntToStr(WP_MOV_FIN) + ';');
        frmFormGerador.Memo2.Lines.Add('ADDP P4, PX4;');
      end;

      if (WP_FIN = 0) then
      begin
        frmFormGerador.Memo2.Lines.Add('SETE PX4 (1),' + IntToStr(XP_MOV_FIN - 40) + ';');
        frmFormGerador.Memo2.Lines.Add('SETE PX4 (2),' + IntToStr(YP_MOV_FIN) + ';');
        frmFormGerador.Memo2.Lines.Add('SETE PX4 (3),' + IntToStr(ZP_MOV_FIN) + ';');
        frmFormGerador.Memo2.Lines.Add('SETE PX4 (4),' + IntToStr(WP_MOV_FIN) + ';');
        frmFormGerador.Memo2.Lines.Add('ADDP P4, PX4;');
      end;

      (********************************)

      (***********************************)
      (***********************************)
      (*FINAL DO CODIGO DE GERACAO DE PONTO*)
      (***********************************)

      (*FINAL DOS CALCULOS*)

      frmFormGerador.Memo2.Lines.Add('#Ponto de Subida da Caixa');
      frmFormGerador.Memo2.Lines.Add(Ponto_Subida);

      //checa se palete ok
      frmFormGerador.Memo2.Lines.Add('#Check Palete OK');
      frmFormGerador.Memo2.Lines.Add(QRYROBO.FieldByName('INICIO_PALETE').AsString);

      (*****************************************)
      frmFormGerador.Memo2.Lines.Add('#Ponto de Seguranca FWD');
      frmFormGerador.Memo2.Lines.Add('MOVJ P0, V' + IntToStr(VELOC) + ', Z' + IntToStr(CURVA_APROCH));
      (*****************************)


      (*CRIA PONTO DE GIRO FINAL NO ALTO*)
      if WP_FIN <> 90 then
      begin
        (*****************************************)
        frmFormGerador.Memo2.Lines.Add('#Ponto de GIRO ALTO');
        frmFormGerador.Memo2.Lines.Add('MOVJ P6, V' + IntToStr(VELOC) + ', Z' + IntToStr(CURVA_APROCH));
        (*****************************)
      end;


      (*****************************************)
      frmFormGerador.Memo2.Lines.Add('#Ponto de Aproximacao');
      frmFormGerador.Memo2.Lines.Add('MOVJ P1, V' + IntToStr(VELOC) + ', Z' + IntToStr(CURVA_APROCH));
      (*****************************)


      (*****************************************)
      frmFormGerador.Memo2.Lines.Add('#Ponto de alocacao');
      frmFormGerador.Memo2.Lines.Add('MOVL P2, V' + IntToStr(V_PALETE) + ', Z0');
      (*****************************)


      //adiciona ABERTURA DA PINCA
      frmFormGerador.Memo2.Lines.Add('#add IOs abertura da pinca');
      frmFormGerador.Memo2.Lines.Add(QRYROBO.FieldByName('ABRIR_GARRA').AsString);


      (*****************************)
      (* ponto de afastamento*)
      frmFormGerador.Memo2.Lines.Add('#PONTO DE AFASTAMENTO');
      frmFormGerador.Memo2.Lines.Add('MOVJ P4, V' + IntToStr(VELOC) + ', Z' + IntToStr(CURVA_APROCH));
      (*****************************)



      if (ZP_APROCH < (POS_Z_SUBIDA - VAR_ALT)) then
      begin

        //CRIA PONTO NO PROGRAMA DE SEGURANCA
        frmFormGerador.Memo2.Lines.Add('#PONTO SEGURANCA BAIXA');
        frmFormGerador.Memo2.Lines.Add('MOVJ P3, V' + IntToStr(VELOC) + ', Z' + IntToStr(CURVA_APROCH));
        (*****************************)

      end else
      BEGIN

         //CRIA PONTO NO PROGRAMA DE SEGURANCA
        frmFormGerador.Memo2.Lines.Add('#PONTO SEGURANCA ALTA');
        frmFormGerador.Memo2.Lines.Add('MOVJ P3, V' + IntToStr(VELOC) + ', Z' + IntToStr(CURVA_APROCH));
        (*****************************)

      end;

      //adiciona RETORNO DA PINCA
      frmFormGerador.Memo2.Lines.Add('#add IOs para retorno da pinca BAIXA');
      frmFormGerador.Memo2.Lines.Add(QRYROBO.FieldByName('ABRIR_GARRA').AsString);

      //retorno ao ponto de segurança
      (*****************************************)
      frmFormGerador.Memo2.Lines.Add('#Retorno ao Ponto de Seguranca FWD');
      (*****************************************)
      frmFormGerador.Memo2.Lines.Add('#PONTO ANULADO PELO Z');
      //CRIA PONTO NO PROGRAMA
      //monta codigo
      //frmFormGerador.Memo2.Lines.Add('MOVJ P5, V' + IntToStr(90) + ', Z' + IntToStr(CURVA_APROCH));
      (*****************************)


      if (ZP_APROCH >= POS_Z_SUBIDA) then
      begin
        //adiciona RETORNO DA PINCA
        frmFormGerador.Memo2.Lines.Add('#add IOs para retorno da pinca ALTA');
        frmFormGerador.Memo2.Lines.Add(QRYROBO.FieldByName('REPOSICIONA_GARRA').AsString);
      end;

    end;


    //manda sinal de palete completo
    //adiciona palete cheio
    frmFormGerador.Memo2.Lines.Add('#add IOs PALETE COMPLETO');
    frmFormGerador.Memo2.Lines.Add(QRYROBO.FieldByName('FIM_PALETE').AsString);

    frmFormGerador.Memo2.Lines.Add(ponto_retorno);

    //JUMP PARA CONTROLE DE INICIO
    frmFormGerador.Memo2.Lines.Add('#JUMP REINICIO');
    frmFormGerador.Memo2.Lines.Add('JUMP LAB0;');
  END;

  //LADO DIREITO
  IF(QRYROBO.FieldByName('TIPO_ROBO').AsInteger in [1,2])THEN
  BEGIN
    //inicio do loop de posições de caixas para o lado direito
    for I := 1 to T_cx do
    begin

      frmFormGerador.Memo2.Lines.Add('');
      frmFormGerador.Memo2.Lines.Add('#Monta Codigo paletizacao a direita');
      frmFormGerador.Memo2.Lines.Add('#Monta ponto de retorno');
      frmFormGerador.Memo2.Lines.Add(ponto_retorno);

      if I = 1 then
      begin
        frmFormGerador.Memo2.Lines.Add('#JUMP REINICIO2');
        frmFormGerador.Memo2.Lines.Add('LAB1;');
      end;


      frmFormGerador.Memo2.Lines.Add(ponto_pre);
      frmFormGerador.Memo2.Lines.Add(ponto_aguardo);

      //adiciona aguarda peça no sensor
      frmFormGerador.Memo2.Lines.Add('#add IOs aguarda caixa no Sensor');
      frmFormGerador.Memo2.Lines.Add(QRYROBO.FieldByName('AGUARDAR_PC_SENSOR').AsString);


      frmFormGerador.Memo2.Lines.Add(ponto_alinhamento);

      //adiciona fechamento da Pinca
      frmFormGerador.Memo2.Lines.Add('#add IOs fechamento pinca');
      frmFormGerador.Memo2.Lines.Add(QRYROBO.FieldByName('FECHAR_GARRA').AsString);

      (*CALCULA AS POSICOES E GIROS*)
      (****************************************)
      (*CRIA PONTOS DE SEGURANCA E ALOCAÇÃO*)
      (****************************************)
      (*adidciona memoria de ponto de seguranc*)
      //VERIFICA Z PARA PONTO DE SEGURANÇA
      //localiza ponto da caixa atual;
      BuscaPontosCaixa(I);
      ZP_MOV_SEG := ZP_FIN;
      ZP_APROCH := ZP_APP;

      (* ponto de aproximação*)
      XP_APROCH := XP_APP;
      YP_APROCH := YP_APP * -1;
      ZP_APROCH := ZP_APP;
      WP_APROCH := WP_APP;

      if (ZP_APROCH < (POS_Z_SUBIDA - VAR_ALT)) then
      begin
        XP_MOV_SEG := QRYROBO.FieldByName('PONTO_INTERSEG_B_X').AsInteger;
        YP_MOV_SEG := QRYROBO.FieldByName('PONTO_INTERSEG_B_Y').AsInteger * -1;
        ZP_MOV_SEG := pos_z_subida;
        CURVA_APROCH := QRYROBO.FieldByName('PONTO_INTERSEG_B_Z').AsInteger;


        if WP_FIN <> 90 then
        begin
          (*Se tiver gito cria ponto alto*)
          //CRIA PONTO NO z alto no giro completo
          //monta codigo
          frmFormGerador.Memo2.Lines.Add('#Monta Codigo de Giro final no ALto');
          frmFormGerador.Memo2.Lines.Add('SETE PX6 (1),' + IntToStr(XP_APROCH) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX6 (2),' + IntToStr(YP_APROCH) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX6 (3),' + IntToStr(ZP_MOV_SEG) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX6 (4),' + IntToStr(WP_APROCH) + ';');
          frmFormGerador.Memo2.Lines.Add('ADDP P6, PX6;');
          (*fim do ponto de seguranca*)
        end;

      end
      ELSE
      BEGIN
        XP_MOV_SEG := QRYROBO.FieldByName('PONTO_INTERSEG_A_X').AsInteger;
        YP_MOV_SEG := QRYROBO.FieldByName('PONTO_INTERSEG_A_Y').AsInteger;

        if (ZP_MOV_SEG < POS_Z_SUBIDA) then
        ZP_MOV_SEG := pos_z_subida + VAR_ALT ELSE
        ZP_MOV_SEG := ZP_MOV_SEG + VAR_ALT;

        CURVA_APROCH := QRYROBO.FieldByName('PONTO_INTERSEG_A_Z').AsInteger;


        if WP_FIN <> 90 then
        begin
          (*Se tiver gito cria ponto alto*)
          //CRIA PONTO NO z alto no giro completo
          //monta codigo
          frmFormGerador.Memo2.Lines.Add('#Monta Codigo de Giro final no ALto');
          frmFormGerador.Memo2.Lines.Add('SETE PX6 (1),' + IntToStr(XP_APROCH) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX6 (2),' + IntToStr(YP_APROCH) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX6 (3),' + IntToStr(ZP_MOV_SEG) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX6 (4),' + IntToStr(WP_APROCH) + ';');
          frmFormGerador.Memo2.Lines.Add('ADDP P6, PX6;');
          (*fim do ponto de seguranca*)
        end;

      END;
      (*****************************************)
      (*****************************************)

      (*VERIFICA ANGULO FINAL*)
      WP_MOV_FIN := WP_FIN;
      IF WP_MOV_FIN = 90 then
        WP_ANG := 90;
      if WP_MOV_FIN = 180 then
        WP_ANG := 90 + 45;
      if WP_MOV_FIN = 270 then
        WP_ANG := 90 + 90;
      if WP_ANG = 0 then
        WP_ANG := 90 - 45;


      //CRIA PONTO NO PROGRAMA
      //monta codigo
      frmFormGerador.Memo2.Lines.Add('SETE PX0 (1),' + IntToStr(XP_MOV_SEG) + ';');
      frmFormGerador.Memo2.Lines.Add('SETE PX0 (2),' + IntToStr(YP_MOV_SEG) + ';');
      frmFormGerador.Memo2.Lines.Add('SETE PX0 (3),' + IntToStr(ZP_MOV_SEG) + ';');
      frmFormGerador.Memo2.Lines.Add('SETE PX0 (4),' + IntToStr(WP_ANG) + ';');
      frmFormGerador.Memo2.Lines.Add('ADDP P0, PX0;');
      (*fim do ponto de seguranca*)

      //PONTO SEGURANCA RETORNO
      frmFormGerador.Memo2.Lines.Add('SETE PX5 (1),' + IntToStr(XP_MOV_SEG) + ';');
      frmFormGerador.Memo2.Lines.Add('SETE PX5 (2),' + IntToStr(YP_MOV_SEG) + ';');
      frmFormGerador.Memo2.Lines.Add('SETE PX5 (3),' + IntToStr(ZP_MOV_SEG) + ';');
      frmFormGerador.Memo2.Lines.Add('SETE PX5 (4),' + IntToStr(WP_ANG) + ';');
      frmFormGerador.Memo2.Lines.Add('ADDP P5, PX5;');
      (*fim do ponto de seguranca*)


      (* ponto de aproximação*)
      XP_APROCH := XP_APP;
      YP_APROCH := YP_APP * -1;
      ZP_APROCH := ZP_APP;
      WP_APROCH := WP_APP;

      //CRIA PONTO NO PROGRAMA
      //monta codigo
      frmFormGerador.Memo2.Lines.Add('SETE PX1 (1),' + IntToStr(XP_APROCH) + ';');
      frmFormGerador.Memo2.Lines.Add('SETE PX1 (2),' + IntToStr(YP_APROCH) + ';');
      frmFormGerador.Memo2.Lines.Add('SETE PX1 (3),' + IntToStr(ZP_APROCH) + ';');
      frmFormGerador.Memo2.Lines.Add('SETE PX1 (4),' + IntToStr(WP_APROCH) + ';');
      frmFormGerador.Memo2.Lines.Add('ADDP P1, PX1;');
      (***************************)


      (*****************************************)
      XP_MOV_FIN := XP_FIN;
      YP_MOV_FIN := YP_FIN * -1;
      ZP_MOV_FIN := ZP_FIN;
      WP_MOV_FIN := WP_FIN;

      //CRIA PONTO NO PROGRAMA
      //monta codigo
      frmFormGerador.Memo2.Lines.Add('SETE PX2 (1),' + IntToStr(XP_MOV_FIN) + ';');
      frmFormGerador.Memo2.Lines.Add('SETE PX2 (2),' + IntToStr(YP_MOV_FIN) + ';');
      frmFormGerador.Memo2.Lines.Add('SETE PX2 (3),' + IntToStr(ZP_MOV_FIN) + ';');
      frmFormGerador.Memo2.Lines.Add('SETE PX2 (4),' + IntToStr(WP_MOV_FIN) + ';');
      frmFormGerador.Memo2.Lines.Add('ADDP P2, PX2;');
      (**********************************)

      (* PONTO DE SEGURANCA BAIXA*)
      (*MOVEMNTA APENAS Z NO PONTO DE DESCIDA*)
      if (ZP_APROCH < (POS_Z_SUBIDA - VAR_ALT)) then
      begin

        //CRIA PONTO NO PROGRAMA

        frmFormGerador.Memo2.Lines.Add('#CRIA PONTO DE SEGURANCA BAIXA');
        //monta codigo

        if WP_FIN = 90 then
        BEGIN
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (1),' + IntToStr(XP_MOV_FIN) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (2),' + IntToStr(YP_MOV_FIN - 40) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (3),' + IntToStr(ZP_MOV_SEG) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (4),' + IntToStr(WP_MOV_FIN) + ';');
          frmFormGerador.Memo2.Lines.Add('ADDP P3, PX3;');
        END;
        if WP_FIN = 180 then
        BEGIN
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (1),' + IntToStr(XP_MOV_FIN + 40) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (2),' + IntToStr(YP_MOV_FIN) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (3),' + IntToStr(ZP_MOV_SEG) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (4),' + IntToStr(WP_MOV_FIN) + ';');
          frmFormGerador.Memo2.Lines.Add('ADDP P3, PX3;');
        END;
        if WP_FIN = 270 then
        BEGIN
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (1),' + IntToStr(XP_MOV_FIN) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (2),' + IntToStr(YP_MOV_FIN + 40) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (3),' + IntToStr(ZP_MOV_SEG) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (4),' + IntToStr(WP_MOV_FIN) + ';');
          frmFormGerador.Memo2.Lines.Add('ADDP P3, PX3;');
        END;
        if WP_FIN = 0 then
        BEGIN
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (1),' + IntToStr(XP_MOV_FIN - 40) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (2),' + IntToStr(YP_MOV_FIN) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (3),' + IntToStr(ZP_MOV_SEG) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (4),' + IntToStr(WP_MOV_FIN) + ';');
          frmFormGerador.Memo2.Lines.Add('ADDP P3, PX3;');
        END;
        (*****************************)

      end ELSE
      begin

        //CRIA PONTO NO PROGRAMA

        frmFormGerador.Memo2.Lines.Add('#CRIA PONTO DE SEGURANCA ALTA');
        //monta codigo
        if WP_FIN = 90 then
        BEGIN
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (1),' + IntToStr(XP_MOV_FIN) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (2),' + IntToStr(YP_MOV_FIN - 40) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (3),' + IntToStr(ZP_MOV_SEG) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (4),' + IntToStr(WP_MOV_FIN) + ';');
          frmFormGerador.Memo2.Lines.Add('ADDP P3, PX3;');
        END;
        if WP_FIN = 180 then
        BEGIN
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (1),' + IntToStr(XP_MOV_FIN + 40) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (2),' + IntToStr(YP_MOV_FIN) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (3),' + IntToStr(ZP_MOV_SEG) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (4),' + IntToStr(WP_MOV_FIN) + ';');
          frmFormGerador.Memo2.Lines.Add('ADDP P3, PX3;');
        END;
        if WP_FIN = 270 then
        BEGIN
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (1),' + IntToStr(XP_MOV_FIN) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (2),' + IntToStr((YP_MOV_FIN + 40) * -1) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (3),' + IntToStr(ZP_MOV_SEG) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (4),' + IntToStr(WP_MOV_FIN) + ';');
          frmFormGerador.Memo2.Lines.Add('ADDP P3, PX3;');
        END;
        if WP_FIN = 0 then
        BEGIN
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (1),' + IntToStr(XP_MOV_FIN - 40) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (2),' + IntToStr(YP_MOV_FIN) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (3),' + IntToStr(ZP_MOV_SEG) + ';');
          frmFormGerador.Memo2.Lines.Add('SETE PX3 (4),' + IntToStr(WP_MOV_FIN) + ';');
          frmFormGerador.Memo2.Lines.Add('ADDP P3, PX3;');
        END;
        (*****************************)

      end;

      (***********************************)


      (*DETERINA PONTO DE AFASTAMENTO*)
      //afastamento
      (*******************************)
      frmFormGerador.Memo2.Lines.Add('#CRIA PONTO DE afastamento');
      //monta codigo
      if (WP_FIN = 90) then
      begin
        frmFormGerador.Memo2.Lines.Add('SETE PX4 (1),' + IntToStr(XP_MOV_FIN) + ';');
        frmFormGerador.Memo2.Lines.Add('SETE PX4 (2),' + IntToStr(YP_MOV_FIN - 40) + ';');
        frmFormGerador.Memo2.Lines.Add('SETE PX4 (3),' + IntToStr(ZP_MOV_FIN) + ';');
        frmFormGerador.Memo2.Lines.Add('SETE PX4 (4),' + IntToStr(WP_MOV_FIN) + ';');
        frmFormGerador.Memo2.Lines.Add('ADDP P4, PX4;');
      end;

      if (WP_FIN = 180) then
      begin
        frmFormGerador.Memo2.Lines.Add('SETE PX4 (1),' + IntToStr(XP_MOV_FIN + 40) + ';');
        frmFormGerador.Memo2.Lines.Add('SETE PX4 (2),' + IntToStr(YP_MOV_FIN) + ';');
        frmFormGerador.Memo2.Lines.Add('SETE PX4 (3),' + IntToStr(ZP_MOV_FIN) + ';');
        frmFormGerador.Memo2.Lines.Add('SETE PX4 (4),' + IntToStr(WP_MOV_FIN) + ';');
        frmFormGerador.Memo2.Lines.Add('ADDP P4, PX4;');
      end;

      if (WP_FIN = 270) then
      begin
        frmFormGerador.Memo2.Lines.Add('SETE PX4 (1),' + IntToStr(XP_MOV_FIN) + ';');
        frmFormGerador.Memo2.Lines.Add('SETE PX4 (2),' + IntToStr(YP_MOV_FIN + 40) + ';');
        frmFormGerador.Memo2.Lines.Add('SETE PX4 (3),' + IntToStr(ZP_MOV_FIN) + ';');
        frmFormGerador.Memo2.Lines.Add('SETE PX4 (4),' + IntToStr(WP_MOV_FIN) + ';');
        frmFormGerador.Memo2.Lines.Add('ADDP P4, PX4;');
      end;

      if (WP_FIN = 0) then
      begin
        frmFormGerador.Memo2.Lines.Add('SETE PX4 (1),' + IntToStr(XP_MOV_FIN - 40) + ';');
        frmFormGerador.Memo2.Lines.Add('SETE PX4 (2),' + IntToStr(YP_MOV_FIN) + ';');
        frmFormGerador.Memo2.Lines.Add('SETE PX4 (3),' + IntToStr(ZP_MOV_FIN) + ';');
        frmFormGerador.Memo2.Lines.Add('SETE PX4 (4),' + IntToStr(WP_MOV_FIN) + ';');
        frmFormGerador.Memo2.Lines.Add('ADDP P4, PX4;');
      end;

      (********************************)

      (***********************************)
      (***********************************)
      (*FINAL DO CODIGO DE GERACAO DE PONTO*)
      (***********************************)

      (*FINAL DOS CALCULOS*)

      frmFormGerador.Memo2.Lines.Add('#Ponto de Subida da Caixa');
      frmFormGerador.Memo2.Lines.Add(Ponto_Subida);

      //checa se palete ok
      frmFormGerador.Memo2.Lines.Add('#Check Palete OK');
      frmFormGerador.Memo2.Lines.Add(QRYROBO.FieldByName('INICIO_PALETE').AsString);

      (*****************************************)
      frmFormGerador.Memo2.Lines.Add('#Ponto de Seguranca FWD');
      frmFormGerador.Memo2.Lines.Add('MOVJ P0, V' + IntToStr(VELOC) + ', Z' + IntToStr(CURVA_APROCH));
      (*****************************)


      (*CRIA PONTO DE GIRO FINAL NO ALTO*)
      if WP_FIN <> 90 then
      begin
        (*****************************************)
        frmFormGerador.Memo2.Lines.Add('#Ponto de GIRO ALTO');
        frmFormGerador.Memo2.Lines.Add('MOVJ P6, V' + IntToStr(VELOC) + ', Z' + IntToStr(CURVA_APROCH));
        (*****************************)
      end;


      (*****************************************)
      frmFormGerador.Memo2.Lines.Add('#Ponto de Aproximacao');
      frmFormGerador.Memo2.Lines.Add('MOVJ P1, V' + IntToStr(VELOC) + ', Z' + IntToStr(CURVA_APROCH));
      (*****************************)


      (*****************************************)
      frmFormGerador.Memo2.Lines.Add('#Ponto de alocacao');
      frmFormGerador.Memo2.Lines.Add('MOVL P2, V' + IntToStr(V_PALETE) + ', Z0');
      (*****************************)


      //adiciona ABERTURA DA PINCA
      frmFormGerador.Memo2.Lines.Add('#add IOs abertura da pinca');
      frmFormGerador.Memo2.Lines.Add(QRYROBO.FieldByName('ABRIR_GARRA').AsString);


      (*****************************)
      (* ponto de afastamento*)
      frmFormGerador.Memo2.Lines.Add('#PONTO DE AFASTAMENTO');
      frmFormGerador.Memo2.Lines.Add('MOVJ P4, V' + IntToStr(VELOC) + ', Z' + IntToStr(CURVA_APROCH));
      (*****************************)



      if (ZP_APROCH < (POS_Z_SUBIDA - VAR_ALT)) then
      begin

        //CRIA PONTO NO PROGRAMA DE SEGURANCA
        frmFormGerador.Memo2.Lines.Add('#PONTO SEGURANCA BAIXA');
        frmFormGerador.Memo2.Lines.Add('MOVJ P3, V' + IntToStr(VELOC) + ', Z' + IntToStr(CURVA_APROCH));
        (*****************************)

      end else
      BEGIN

         //CRIA PONTO NO PROGRAMA DE SEGURANCA
        frmFormGerador.Memo2.Lines.Add('#PONTO SEGURANCA ALTA');
        frmFormGerador.Memo2.Lines.Add('MOVJ P3, V' + IntToStr(VELOC) + ', Z' + IntToStr(CURVA_APROCH));
        (*****************************)

      end;

      //adiciona RETORNO DA PINCA
      frmFormGerador.Memo2.Lines.Add('#add IOs para retorno da pinca BAIXA');
      frmFormGerador.Memo2.Lines.Add(QRYROBO.FieldByName('ABRIR_GARRA').AsString);

      //retorno ao ponto de segurança
      (*****************************************)
      frmFormGerador.Memo2.Lines.Add('#Retorno ao Ponto de Seguranca FWD');
      (*****************************************)
      frmFormGerador.Memo2.Lines.Add('#PONTO ANULADO PELO Z');
      //CRIA PONTO NO PROGRAMA
      //monta codigo
      //frmFormGerador.Memo2.Lines.Add('MOVJ P5, V' + IntToStr(90) + ', Z' + IntToStr(CURVA_APROCH));
      (*****************************)


      if (ZP_APROCH >= POS_Z_SUBIDA) then
      begin
        //adiciona RETORNO DA PINCA
        frmFormGerador.Memo2.Lines.Add('#add IOs para retorno da pinca ALTA');
        frmFormGerador.Memo2.Lines.Add(QRYROBO.FieldByName('REPOSICIONA_GARRA').AsString);
      end;

    end;

    //manda sinal de palete completo
    //adiciona palete cheio
    frmFormGerador.Memo2.Lines.Add('#add IOs PALETE COMPLETO');
    frmFormGerador.Memo2.Lines.Add(QRYROBO.FieldByName('FIM_PALETE').AsString);

    frmFormGerador.Memo2.Lines.Add(ponto_retorno);

    //JUMP PARA CONTROLE DE INICIO
    frmFormGerador.Memo2.Lines.Add('#JUMP REINICIO2');
    frmFormGerador.Memo2.Lines.Add('JUMP LAB1;');
  END;

  frmFormGerador.Memo2.Lines.Add('###################');
  frmFormGerador.Memo2.Lines.Add('#FINAL DO PROGRAMA');
  frmFormGerador.Memo2.Lines.Add('###################');

  frmFormGerador.Memo2.Lines.Add('');

  //END PROGRAM
  frmFormGerador.Memo2.Lines.Add('END;');
end;

procedure TfrmDesenharPalete.GeraCodigosKosa;
begin
  Application.MessageBox('Robo do tipo KOSA ainda não tem implementação de geração de código. Contate o administrador!','Informação!',MB_OK+MB_ICONINFORMATION);
  ABORT;
end;

procedure TfrmDesenharPalete.GeraImagemCxa;
begin
  if(QRYROBO.FieldByName('TIPO_PALETIZACAO').AsInteger in [0,2])then
  begin
    Image2.Picture := nil;
    Image2.Canvas.Brush.Color := $00333333;
    Image2.Canvas.Rectangle(0,0,425,145);

    Image2.Canvas.Pen.Color := clWhite;
    Image2.Canvas.MoveTo(10,135);
    Image2.Canvas.LineTo(10,10);
    Image2.Canvas.LineTo(5,15);
    Image2.Canvas.MoveTo(10,10);
    Image2.Canvas.LineTo(15,15);

    Image2.Canvas.Pen.Color := clWhite;
    Image2.Canvas.MoveTo(10,135);
    Image2.Canvas.LineTo(415,135);
    Image2.Canvas.LineTo(410,130);
    Image2.Canvas.MoveTo(415,135);
    Image2.Canvas.LineTo(410,140);
  end;

  if(QRYROBO.FieldByName('TIPO_PALETIZACAO').AsInteger in [1,2])then
  begin
    //imgCxaPaletDir

    imgCxaPaletDir.Picture := nil;
    imgCxaPaletDir.Canvas.Brush.Color := $00333333;
    imgCxaPaletDir.Canvas.Rectangle(0,0,425,145);

    imgCxaPaletDir.Canvas.Pen.Color := clWhite;
    imgCxaPaletDir.Canvas.MoveTo(10,135);
    imgCxaPaletDir.Canvas.LineTo(10,10);
    imgCxaPaletDir.Canvas.LineTo(5,15);
    imgCxaPaletDir.Canvas.MoveTo(10,10);
    imgCxaPaletDir.Canvas.LineTo(15,15);

    imgCxaPaletDir.Canvas.Pen.Color := clWhite;
    imgCxaPaletDir.Canvas.MoveTo(10,135);
    imgCxaPaletDir.Canvas.LineTo(415,135);
    imgCxaPaletDir.Canvas.LineTo(410,130);
    imgCxaPaletDir.Canvas.MoveTo(415,135);
    imgCxaPaletDir.Canvas.LineTo(410,140);
  end;
end;

procedure TfrmDesenharPalete.GeraPontosMovimento;
var
  comp_cx_in, larg_cx_in, alt_cx_in : Integer;
  calc_m1, calc_m2, calc_m3 : Integer;
  v_pegada, v_largada, veloc : Integer;

  I, II : Integer;

  //ponto de retorno
  xp_rev, yp_rev, zp_rev, os_z_ret : Integer;
  curva_retorno : Integer;

  //ponto pre entrada
  xp_pre, yp_pre, zp_pre, os_pre : Integer;
  curva_pre, mesa_livre, os_encosto : Integer;
  dist_roletes, px_roletes, x_mesa : Integer;

  //calculo posicao espera
  OS_espera, media_y_cx : Integer;
  pos_y_espera : Integer;
  xp_es, yp_es, zp_es : Integer;


  //posição de alinhamento
  os_alin, medida_alin : Integer;
  pos_alin, xp_alin, yp_alin, zp_alin : Integer;


  //posição de subida
  os_subida, alt_alin_seg : Integer;
  pos_z_subida : Integer;
  xp_sub, yp_sub, zp_sub : Integer;
begin
  veloc := StrToInt(Edit5.text);
  comp_cx_in := COMP_CX;
  larg_cx_in := LARG_CX;

  (*********************************)
  //calculo ponto retorno
  xp_rev := QRYROBO.FieldByName('PONTO_SEGRET_X').AsInteger;
  yp_rev := QRYROBO.FieldByName('PONTO_SEGRET_Y').AsInteger;
  zp_rev := QRYROBO.FieldByName('PONTO_SEGRET_Z').AsInteger;
  curva_retorno := QRYROBO.FieldByName('PONTO_SEGRET_CURVA_Z').AsInteger;

  if (zp_rev < 0) then
  begin
    ShowMessage('Valor Z de Retorno Muito Baixo!');
    Exit;
  end;

  //retorno em PX10
  //monta codigo
  frmFormGerador.Memo3.Clear;
  frmFormGerador.Memo3.Lines.Add('SETE PX10 (1),' + IntToStr(xp_rev) + ';');
  frmFormGerador.Memo3.Lines.Add('SETE PX10 (2),' + IntToStr(Yp_rev) + ';');
  frmFormGerador.Memo3.Lines.Add('SETE PX10 (3),' + IntToStr(Zp_rev) + ';');
  frmFormGerador.Memo3.Lines.Add('SETE PX10 (4),' + IntToStr(90) + ';');
  frmFormGerador.Memo3.Lines.Add('ADDP P10, PX10;');
  frmFormGerador.Memo3.Lines.Add('MOVJ P10, V' + IntToStr(90) + ', Z' + IntToStr(curva_retorno) + ';');
  (************************************)

  (************************************)
  //calculo ponto pre entrada
  mesa_livre   := QRYROBO.FieldByName('Y_MESA_LIVRE').AsInteger;
  os_encosto   := QRYROBO.FieldByName('OS_ENCOSTO').AsInteger;
  zp_pre       := QRYROBO.FieldByName('Z_PEGADA').AsInteger;
  dist_roletes := QRYROBO.FieldByName('PONTO_INFMESA_ROLETES').AsInteger;
  x_mesa       := QRYROBO.FieldByName('PONTO_SUPMESA_X').AsInteger;
  curva_pre    := QRYROBO.FieldByName('CURVA_PEGADA').AsInteger;

  px_roletes := (x_mesa + os_encosto);
  xp_pre := px_roletes + trunc(comp_cx_in / 2);
  yp_pre := mesa_livre;

  //encontra ponto de entrada
  for I := 1 to 20 do
  begin
    px_roletes := (x_mesa + os_encosto) + (dist_roletes * I);

    if (px_roletes > xp_pre) then
    begin
      xp_pre := px_roletes;
      Break;
    end;

  end;

  //pre entrada em PX11
  //monta codigo
  frmFormGerador.Memo4.Clear;
  frmFormGerador.Memo4.Lines.Add('SETE PX11 (1),' + IntToStr(xp_pre) + ';');
  frmFormGerador.Memo4.Lines.Add('SETE PX11 (2),' + IntToStr(Yp_pre) + ';');
  frmFormGerador.Memo4.Lines.Add('SETE PX11 (3),' + IntToStr(Zp_pre) + ';');
  frmFormGerador.Memo4.Lines.Add('SETE PX11 (4),' + IntToStr(90) + ';');
  frmFormGerador.Memo4.Lines.Add('ADDP P11, PX11;');
  frmFormGerador.Memo4.Lines.Add('MOVJ P11, V' + IntToStr(90) + ', Z' + IntToStr(curva_pre) + ';');
  (*****************************)


  (*****************************)
  //calculo ponto de espera
  OS_espera := QRYROBO.FieldByName('CENTRO_ESTEIRA_Y').AsInteger;
  media_y_cx := (0) - Trunc(larg_cx_in / 2);
  pos_y_espera := media_y_cx - OS_espera;
  v_pegada := QRYROBO.FieldByName('VEL_PEGADA').AsInteger;

  xp_es := xp_pre;
  yp_es := pos_y_espera;
  zp_es := zp_pre;

  //entrada PX12
  //monta codigo
  frmFormGerador.Memo5.Clear;
  frmFormGerador.Memo5.Lines.Add('SETE PX12 (1),' + IntToStr(xp_es) + ';');
  frmFormGerador.Memo5.Lines.Add('SETE PX12 (2),' + IntToStr(Yp_es) + ';');
  frmFormGerador.Memo5.Lines.Add('SETE PX12 (3),' + IntToStr(Zp_es) + ';');
  frmFormGerador.Memo5.Lines.Add('SETE PX12 (4),' + IntToStr(90) + ';');
  frmFormGerador.Memo5.Lines.Add('ADDP P12, PX12;');
  frmFormGerador.Memo5.Lines.Add('MOVL P12, V' + IntToStr(v_pegada) + ', Z1;');
  (*****************************)

  (*****************************)
  //calculo ponto de alinhamento
  os_alin := QRYROBO.FieldByName('CENTRO_ESTEIRA_Y').AsInteger;
  medida_alin := (0) - Trunc(larg_cx_in / 2);
  pos_alin := medida_alin - os_alin;
  v_pegada := QRYROBO.FieldByName('VEL_PEGADA').AsInteger;

  xp_alin := xp_pre;
  yp_alin := pos_alin;
  zp_alin := zp_pre;

  //entrada PX13
  //monta codigo
  frmFormGerador.Memo6.Clear;
  frmFormGerador.Memo6.Lines.Add('SETE PX13 (1),' + IntToStr(xp_alin) + ';');
  frmFormGerador.Memo6.Lines.Add('SETE PX13 (2),' + IntToStr(Yp_alin) + ';');
  frmFormGerador.Memo6.Lines.Add('SETE PX13 (3),' + IntToStr(Zp_alin) + ';');
  frmFormGerador.Memo6.Lines.Add('SETE PX13 (4),' + IntToStr(90) + ';');
  frmFormGerador.Memo6.Lines.Add('ADDP P13, PX13;');
  frmFormGerador.Memo6.Lines.Add('MOVL P13, V' + IntToStr(v_pegada) + ', Z0;');
  (*****************************)


  (*****************************)
  os_subida    := QRYROBO.FieldByName('OFFSET_SUBIDA').AsInteger;
  alt_alin_seg := QRYROBO.FieldByName('ALTURA_MESA_Z_ALIN').AsInteger;
  v_pegada     := QRYROBO.FieldByName('VEL_PEGADA').AsInteger;

  pos_z_subida := os_subida + alt_alin_seg;
  xp_sub := xp_alin;
  yp_sub := yp_alin;
  zp_sub := pos_z_subida;

  //entrada PX14
  //monta codigo
  frmFormGerador.Memo7.Clear;
  frmFormGerador.Memo7.Lines.Add('SETE PX14 (1),' + IntToStr(xp_sub) + ';');
  frmFormGerador.Memo7.Lines.Add('SETE PX14 (2),' + IntToStr(Yp_sub) + ';');
  frmFormGerador.Memo7.Lines.Add('SETE PX14 (3),' + IntToStr(Zp_sub) + ';');
  frmFormGerador.Memo7.Lines.Add('SETE PX14 (4),' + IntToStr(90) + ';');
  frmFormGerador.Memo7.Lines.Add('ADDP P14, PX14;');
  frmFormGerador.Memo7.Lines.Add('MOVL P14, V' + IntToStr(1200) + ', Z1;');
  (*****************************)
end;

procedure TfrmDesenharPalete.GeraPontosMovimentoKosa;
begin
   Application.MessageBox('Robo do tipo KOSA ainda não tem implementação de geração de pontos de movimento. Contate o administrador!','Informação!',MB_OK+MB_ICONINFORMATION);
  ABORT;
end;

end.
