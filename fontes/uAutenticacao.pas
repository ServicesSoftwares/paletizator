unit uAutenticacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.ComCtrls, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Vcl.StdCtrls, Vcl.Menus, cxButtons, JvComponentBase,
  JvEnterTab;

type
  TfrmAutenticacao = class(TForm)
    imgLock: TImage;
    Shape1: TShape;
    qryUsuarios: TFDQuery;
    dsUsuarios: TDataSource;
    StatusBar: TStatusBar;
    Timer: TTimer;
    Label1: TLabel;
    lkpUsuario: TcxLookupComboBox;
    Label2: TLabel;
    edtSenha: TEdit;
    btnEntrar: TcxButton;
    qryUsuariosID: TIntegerField;
    qryUsuariosUSUARIO: TStringField;
    qryUsuariosNOME: TStringField;
    qryUsuariosSENHA: TStringField;
    qryUsuariosSITUACAO: TIntegerField;
    qryUsuariosIDUSUARIO_INCLUSAO: TIntegerField;
    qryUsuariosDATA_INCLUSAO: TSQLTimeStampField;
    qryUsuariosIDUSUARIO_ULT_ALTERACAO: TIntegerField;
    qryUsuariosDATA_ULT_ALTERACAO: TSQLTimeStampField;
    EnterAsTab: TJvEnterAsTab;
    procedure TimerTimer(Sender: TObject);
    procedure lkpUsuarioEnter(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnEntrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
      PTIPOAUT : INTEGER;
      Cod : Integer;
      Nome : String;
  end;

var
  frmAutenticacao: TfrmAutenticacao;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmAutenticacao.btnEntrarClick(Sender: TObject);
begin
  IF(LENGTH(trim(lkpUsuario.EditText)) = 0)THEN
  BEGIN
    Application.MessageBox('Usuário não selecionado','Aviso!',MB_OK+MB_ICONWARNING);
    lkpUsuario.SetFocus;
    ABORT;
  END;

  IF(LENGTH(trim(edtSenha.Text)) = 0)THEN
  BEGIN
    Application.MessageBox('Senha não foi informada','Aviso!',MB_OK+MB_ICONWARNING);
    edtSenha.SetFocus;
    ABORT;
  END;

  IF(edtSenha.Text <> qryUsuariosSENHA.AsString)THEN
  BEGIN
    Application.MessageBox('Senha digitada não confere com a senha cadastrada para o usuário','Aviso!',MB_OK+MB_ICONWARNING);
    edtSenha.SetFocus;
    ABORT;
  END;

  if(qryUsuariosSITUACAO.AsInteger <> 1)then
  BEGIN
    Application.MessageBox('Usuário encontra-se desativado. Não é possivel acessar ao sistema.','Aviso!',MB_OK+MB_ICONWARNING);
    lkpUsuario.SetFocus;
    ABORT;
  END;

  ModalResult := MROK;
end;

procedure TfrmAutenticacao.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF(KEY = VK_F5)THEN
    btnEntrarClick(SELF);
end;

procedure TfrmAutenticacao.lkpUsuarioEnter(Sender: TObject);
begin
  qryUsuarios.Close;
  qryUsuarios.Open;
  qryUsuarios.FetchAll;
end;

procedure TfrmAutenticacao.TimerTimer(Sender: TObject);
begin
  StatusBar.Panels.Items[1].Text := FormatDateTime('DD/MM/YYYY HH:MM:SS', now);
end;

end.
