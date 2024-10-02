unit uCadastroEmpresas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormPadrao, System.ImageList,
  Vcl.ImgList, cxImageList, cxGraphics, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.ToolWin, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, JvExMask, JvSpin, JvDBSpinEdit, JvExStdCtrls, JvCombobox,
  JvDBCombobox;

type
  TfrmCadastroEmpresas = class(TfrmPadrao)
    qryEmpresas: TFDQuery;
    DS: TDataSource;
    dbspdCodigo: TJvDBSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    dbedtCNPJ: TDBEdit;
    Label3: TLabel;
    dbedtRazaoSocial: TDBEdit;
    Label4: TLabel;
    dbedtNomeFantasia: TDBEdit;
    Label5: TLabel;
    dbedtCEP: TDBEdit;
    Label6: TLabel;
    dbedtEndereco: TDBEdit;
    Label7: TLabel;
    dbedtNumero: TDBEdit;
    Label8: TLabel;
    dbedtComplemento: TDBEdit;
    qryEmpresasID: TIntegerField;
    qryEmpresasCNPJ: TStringField;
    qryEmpresasRAZAO_SOCIAL: TStringField;
    qryEmpresasNOME_FANTASIA: TStringField;
    qryEmpresasCEP: TStringField;
    qryEmpresasENDERECO: TStringField;
    qryEmpresasNUMERO: TStringField;
    qryEmpresasCOMPLEMENTO: TStringField;
    qryEmpresasBAIRRO: TStringField;
    qryEmpresasESTADO: TStringField;
    qryEmpresasCIDADE: TStringField;
    qryEmpresasSITUACAO: TIntegerField;
    qryEmpresasDATA_INCLUSAO: TSQLTimeStampField;
    qryEmpresasIDUSUARIO_INCLUSAO: TIntegerField;
    qryEmpresasDATA_ULT_ALTERACAO: TSQLTimeStampField;
    qryEmpresasIDUSUARIO_ULT_ALTERACAO: TIntegerField;
    Label9: TLabel;
    dbedtBairro: TDBEdit;
    Label10: TLabel;
    dbedtEstado: TDBEdit;
    Label11: TLabel;
    dbedtCidade: TDBEdit;
    dbcbSituacao: TJvDBComboBox;
    Label12: TLabel;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure qryEmpresasAfterInsert(DataSet: TDataSet);
    procedure qryEmpresasAfterEdit(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroEmpresas: TfrmCadastroEmpresas;

implementation

{$R *.dfm}

uses uDM, uFuncoesGerais;

procedure TfrmCadastroEmpresas.btnCancelarClick(Sender: TObject);
begin
  inherited;
  IF(DS.State IN [dsInsert, dsEdit])THEN
    qryEmpresas.Cancel;

  qryEmpresas.Close;
  qryEmpresas.Params[0].AsInteger := 0;
  qryEmpresas.Open;
  qryEmpresas.Append;

  dbedtCNPJ.SetFocus;
end;

procedure TfrmCadastroEmpresas.btnPesquisarClick(Sender: TObject);
var
  R : STRING;
begin
  inherited;
  InsereLog(CodUsuario, 'frmCadastroEmpresas', 'TELA DE CADASTRO DE EMPRESAS - PESQUISANDO REGISTRO');
  R := Consultar('Cadastro de Empresas',
                 'SELECT A.ID AS "ID", A.CNPJ AS "CNPJ", A.RAZAO_SOCIAL AS "Razão Social", A.NOME_FANTASIA AS "Nome Fantasia" FROM TBEMPRESAS A', //SELECT
                 '', //WHERE
                 'A.RAZAO_SOCIAL', //ORDER BY
                 'A.RAZAO_SOCIAL;A.NOME_FANTASIA;A.ID', //CAMPOS FILTROS
                 'Razão Social;Nome Fantasia;ID', //LABEL CAMPOS FILTROS
                 'ID');

  IF(LENGTH(TRIM(R)) > 0)THEN
  BEGIN
    InsereLog(CodUsuario, 'frmCadastroEmpresas', 'TELA DE CADASTRO DE EMPRESAS - REGISTRO ENCONTRADO, ABRINDO EM MODO DE EDICAO');
    qryEmpresas.Cancel;
    qryEmpresas.Close;
    qryEmpresas.Params[0].AsString := R;
    qryEmpresas.Open;
    IF NOT(qryEmpresas.IsEmpty)THEN
      qryEmpresas.Edit;

    dbedtCNPJ.SetFocus;
  END;
end;

procedure TfrmCadastroEmpresas.btnSalvarClick(Sender: TObject);
begin
  inherited;
  //VALIDAÇAO DE CAMPO
  ValidaCampos(dbedtCNPJ, 'CNPJ');
  ValidaCampos(dbedtRazaoSocial, 'Razão Social');
  ValidaCampos(dbedtNomeFantasia, 'Nome Fantasia');
  validacampos(dbedtCEP, 'CEP');
  ValidaCampos(dbedtEndereco, 'Endereço');
  ValidaCampos(dbedtNumero, 'Número');
  ValidaCampos(dbedtBairro, 'Bairro');
  ValidaCampos(dbedtEstado, 'Estado');
  ValidaCampos(dbedtCidade, 'Cidade');
  ValidaCampos(dbcbSituacao, 'Situação');


  IF(DS.State IN [dsInsert])THEN
    InsereLog(CodUsuario, 'frmCadastroEmpresas', 'TELA DE CADASTRO DE EMPRESAS - INSERINDO NOVO REGISTRO')
  ELSE
    InsereLog(CodUsuario, 'frmCadastroEmpresas', pchar('TELA DE CADASTRO DE EMPRESAS - EDIÇÃO DE REGISTRO #ID=' + qryEmpresasID.AsString));

  //SALVANDO
  qryEmpresas.Post;
  InsereLog(CodUsuario, 'frmCadastroEmpresas', 'TELA DE CADASTRO DE EMPRESAS - REGISTRO SALVO');
  qryEmpresas.Close;
  qryEmpresas.Params[0].AsInteger := 0;
  qryEmpresas.Open;
  qryEmpresas.Append;

  dbedtCNPJ.SetFocus;
end;

procedure TfrmCadastroEmpresas.FormShow(Sender: TObject);
begin
  inherited;
  qryEmpresas.Close;
  qryEmpresas.Params[0].AsInteger := 0;
  qryEmpresas.Open;
  qryEmpresas.Append;
end;

procedure TfrmCadastroEmpresas.qryEmpresasAfterEdit(DataSet: TDataSet);
begin
  inherited;
  qryEmpresasDATA_ULT_ALTERACAO.AsDateTime     := now;
  qryEmpresasIDUSUARIO_ULT_ALTERACAO.AsInteger := CodUsuario;
end;

procedure TfrmCadastroEmpresas.qryEmpresasAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryEmpresasSITUACAO.AsInteger                := 1;
  qryEmpresasDATA_INCLUSAO.AsDateTime          := now;
  qryEmpresasIDUSUARIO_INCLUSAO.AsInteger      := CodUsuario;
end;

end.
