unit uCadUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormPadrao, Vcl.Menus,
  Vcl.ExtCtrls, Vcl.ComCtrls, System.ImageList, Vcl.ImgList, cxImageList,
  cxGraphics, Vcl.ToolWin, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, JvExMask, JvSpin, JvDBSpinEdit, JvExStdCtrls, JvCombobox,
  JvDBCombobox;

type
  TfrmCadastroUsuarios = class(TfrmPadrao)
    DS: TDataSource;
    qryUsuarios: TFDQuery;
    qryUsuariosID: TIntegerField;
    qryUsuariosTIPO: TIntegerField;
    qryUsuariosUSUARIO: TStringField;
    qryUsuariosNOME: TStringField;
    qryUsuariosSENHA: TStringField;
    qryUsuariosSITUACAO: TIntegerField;
    qryUsuariosDATA_INCLUSAO: TSQLTimeStampField;
    qryUsuariosIDUSUARIO_INCLUSAO: TIntegerField;
    qryUsuariosDATA_ULT_ALTERACAO: TSQLTimeStampField;
    qryUsuariosIDUSUARIO_ULT_ALTERACAO: TIntegerField;
    Label1: TLabel;
    dbspdCodigo: TJvDBSpinEdit;
    Label2: TLabel;
    dbcbTipoUsuario: TJvDBComboBox;
    Label3: TLabel;
    dbedtUsuario: TDBEdit;
    Label4: TLabel;
    dbedtNomeCompleto: TDBEdit;
    Label5: TLabel;
    dbcbSituacao: TJvDBComboBox;
    Label6: TLabel;
    dbedtSenha: TDBEdit;
    procedure btnSalvarClick(Sender: TObject);
    procedure qryUsuariosAfterInsert(DataSet: TDataSet);
    procedure qryUsuariosAfterEdit(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
    procedure Campos(LIBERA : BOOLEAN);
  public
    { Public declarations }
  end;

var
  frmCadastroUsuarios: TfrmCadastroUsuarios;

implementation

{$R *.dfm}

uses uDM, uFuncoesGerais;

procedure TfrmCadastroUsuarios.btnCancelarClick(Sender: TObject);
begin
  inherited;
  IF(DS.State IN [dsInsert, dsEdit])THEN
    qryUsuarios.Cancel;

  qryUsuarios.Close;
  qryUsuarios.Params[0].AsInteger := 0;
  qryUsuarios.Open;
  qryUsuarios.Append;

  dbcbTipoUsuario.SetFocus;
end;

procedure TfrmCadastroUsuarios.btnPesquisarClick(Sender: TObject);
var
  R, PSELECT : STRING;
begin
  inherited;
  PSELECT := 'SELECT A.ID AS ID, ' +
             '  CASE(A.TIPO)     ' +
             '    WHEN 0 THEN ''DESENVOLVEDOR''' +
             '    WHEN 1 THEN ''ADMINISTRADOR''' +
             '    WHEN 2 THEN ''PROGRAMADOR''' +
             '    ELSE ''GUEST''' +
             '  END AS "Tipo",' +
             '  A.USUARIO AS "Usuário",' +
             '  A.NOME AS "Nome do Usuário",' +
             '  CASE(A.SITUACAO)' +
             '    WHEN 1 THEN ''ATIVO'''+
             '    ELSE ''INATIVO'''+
             '  END AS "Situação" '+
             'FROM TBUSUARIOS A ';


  R := Consultar('Cadastro de Usuários',
                 PSELECT, //SELECT
                 'A.ID > 1', //WHERE
                 'A.NOME', //ORDER BY
                 'A.NOME;A.USUARIO;A.ID', //CAMPOS FILTROS
                 'Nome do Usuário;Usuário;ID', //LABEL CAMPOS FILTROS
                 'ID');

  IF(LENGTH(TRIM(R)) > 0)THEN
  BEGIN
    qryUsuarios.Cancel;
    qryUsuarios.Close;
    qryUsuarios.Params[0].AsString := R;
    qryUsuarios.Open;
    IF NOT(qryUsuarios.IsEmpty)THEN
      qryUsuarios.Edit;

    dbcbTipoUsuario.SetFocus;
  END;
end;

procedure TfrmCadastroUsuarios.btnSalvarClick(Sender: TObject);
begin
  inherited;
  //VALIDACAO
  ValidaCampos(dbcbTipoUsuario, 'Tipo de Usuário');
  ValidaCampos(dbedtUsuario, 'Usuário');
  ValidaCampos(dbedtNomeCompleto, 'Nome completo');
  ValidaCampos(dbedtSenha, 'Senha');
  ValidaCampos(dbcbSituacao, 'Situação');

  //SALVANDO
  qryUsuarios.Post;
  qryUsuarios.Close;
  qryUsuarios.Params[0].AsInteger := 0;
  qryUsuarios.Open;
  qryUsuarios.Append;

  campos(true);
  dbcbTipoUsuario.SetFocus;
end;

procedure TfrmCadastroUsuarios.Campos(LIBERA: BOOLEAN);
begin
  //
  btnCancelar.Enabled  := LIBERA;
  btnSalvar.Enabled    := LIBERA;
  btnPesquisar.Enabled := LIBERA;

  dbspdCodigo.Enabled       := false;
  dbcbTipoUsuario.Enabled   := libera;
  dbedtUsuario.Enabled      := libera;
  dbedtNomeCompleto.Enabled := libera;
  dbedtSenha.Enabled        := libera;
  dbcbSituacao.Enabled      := libera;
end;

procedure TfrmCadastroUsuarios.FormShow(Sender: TObject);
begin
  inherited;
  qryUsuarios.Close;
  qryUsuarios.Params[0].AsInteger := 0;
  qryUsuarios.Open;
  qryUsuarios.Append;

  campos(true);
end;

procedure TfrmCadastroUsuarios.qryUsuariosAfterEdit(DataSet: TDataSet);
begin
  inherited;
  qryUsuariosDATA_ULT_ALTERACAO.AsDateTime     := now;
  qryUsuariosIDUSUARIO_ULT_ALTERACAO.AsInteger := CodUsuario;
end;

procedure TfrmCadastroUsuarios.qryUsuariosAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryUsuariosTIPO.AsInteger               := 3;
  qryUsuariosSITUACAO.AsInteger           := 1;
  qryUsuariosIDUSUARIO_INCLUSAO.AsInteger := CodUsuario;
  qryUsuariosDATA_INCLUSAO.AsDateTime     := now;
end;

end.
