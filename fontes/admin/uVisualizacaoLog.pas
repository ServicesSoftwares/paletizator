unit uVisualizacaoLog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormPadrao, System.ImageList,
  Vcl.ImgList, cxImageList, cxGraphics, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit,
  cxLookAndFeels, cxLookAndFeelPainters, cxButtons, Data.DB, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmVisualizaLogs = class(TfrmPadrao)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    edtUsuario: TEdit;
    Label2: TLabel;
    dtpDataIni: TJvDateEdit;
    Label3: TLabel;
    dtpDataFim: TJvDateEdit;
    Label4: TLabel;
    edtFormulario: TEdit;
    Label5: TLabel;
    edtAcao: TEdit;
    btnFiltar: TcxButton;
    dbgDados: TDBGrid;
    QRYDADOS: TFDQuery;
    DSDADOS: TDataSource;
    QRYDADOSID: TIntegerField;
    QRYDADOSIDUSUARIO: TIntegerField;
    QRYDADOSDATA: TDateField;
    QRYDADOSHORA: TTimeField;
    QRYDADOSFORMULARIO: TStringField;
    QRYDADOSACAO: TStringField;
    QRYDADOSUSUARIO: TStringField;
    procedure btnFiltarClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVisualizaLogs: TfrmVisualizaLogs;

implementation

{$R *.dfm}

uses uDM, uFuncoesGerais;

procedure TfrmVisualizaLogs.btnFiltarClick(Sender: TObject);
begin
  inherited;
  InsereLog(CodUsuario, 'frmVisualizaLogs', 'TELA DE VISUALIZAÇÃO DE REGISTRO DE LOGS DE USUÁRIO - PESQUISANDO REGISTROS DE LOGS DE USUÁRIO');
  QRYDADOS.Close;
  QRYDADOS.SQL.Clear;
  QRYDADOS.SQL.Add('SELECT A.*,                   ');
  QRYDADOS.SQL.Add('       B.usuario              ');
  QRYDADOS.SQL.Add('  FROM tblog A, tbusuarios B  ');
  QRYDADOS.SQL.Add(' WHERE B.id = A.idusuario     ');
  IF(LENGTH(TRIM(edtUsuario.Text)) > 0)THEN
    QRYDADOS.SQL.Add(' AND B.USUARIO LIKE ' + QUOTEDSTR('%'+TRIM(edtUsuario.Text)+'%'));
  IF(LENGTH(TRIM(edtFormulario.Text)) > 0)THEN
    QRYDADOS.SQL.Add(' AND UPPER(A.FORMULARIO) LIKE ' + QUOTEDSTR('%'+TRIM(edtFormulario.Text)+'%'));
  IF(LENGTH(TRIM(edtAcao.Text)) > 0)THEN
    QRYDADOS.SQL.Add(' AND A.ACAO LIKE ' + QUOTEDSTR('%'+TRIM(edtAcao.Text)+'%'));
  IF(dtpDataIni.Date > 0)THEN
    QRYDADOS.SQL.Add(' AND A.DATA >= ' + QUOTEDSTR(DATETOSTR(dtpDataIni.Date)));
  IF(dtpDataFim.Date > 0)THEN
    QRYDADOS.SQL.Add(' AND A.DATA <= ' + QUOTEDSTR(DATETOSTR(dtpDataFim.Date)));
  QRYDADOS.Open;
end;

procedure TfrmVisualizaLogs.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if(KEY = VK_RETURN)then
    btnFiltarClick(SELF);
end;

end.
