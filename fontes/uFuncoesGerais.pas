unit uFuncoesGerais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.ComCtrls, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, JvExMask, JvSpin,
  JvDBSpinEdit, JvExStdCtrls, JvCombobox, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, JvDBCombobox;

  //Funções
  function Autenticar(PTIPOAUT : INTEGER) : boolean;
  function ValidaPermissaoUsuario(PUSUARIO : INTEGER; PNOMEFRM : STRING) : Boolean;
  function Consultar(PTITULO, PSELECT, PWHERE, PORDERBY, PCAMPOSFILTROS, PLABELCAMPOSFILTRO, PCAMPORET : STRING) : STRING;

  //procedimentos
  procedure ValidaCampos(PCAMPO : TDBEdit; PTITULO : STRING); OVERLOAD;
  procedure ValidaCampos(PCAMPO : TJvDBComboBox; PTITULO : STRING); OVERLOAD;


var
  CodUsuario, CodEmpresa : Integer;
  NomeUsuario, NomeEmpresa : String;

implementation

uses uAutenticacao, uDM, uPesquisarRegistros;

function Autenticar(PTIPOAUT : INTEGER) : boolean;
var
  logado : BOOLEAN;
begin
  logado := FALSE;
  Application.CreateForm(TfrmAutenticacao, frmAutenticacao);
  frmAutenticacao.PTIPOAUT := PTIPOAUT;
  frmAutenticacao.ShowModal;
  IF(frmAutenticacao.ModalResult = MROK)THEN
  BEGIN
    IF(PTIPOAUT = 0)THEN
    BEGIN
      CodUsuario  := frmAutenticacao.qryUsuariosID.AsInteger;
      NomeUsuario := frmAutenticacao.qryUsuariosNOME.AsString;
    END;

    logado := TRUE;
  END;
  frmAutenticacao.Release;
  frmAutenticacao.Free;

  RESULT := logado;
end;

function ValidaPermissaoUsuario(PUSUARIO : INTEGER; PNOMEFRM : STRING) : Boolean;
begin
  DM.qryAux.Close;
  DM.qryAux.SQL.Clear;
  DM.qryAux.SQL.Add('SELECT COUNT(A.ID) AS CONTA');
  DM.qryAux.SQL.Add('  FROM TBUSUARIOS A        ');
  DM.qryAux.SQL.Add(' WHERE A.ID = ' + INTTOSTR(PUSUARIO));
  DM.qryAux.SQL.Add('   AND (A.TIPO = 0 OR A.TIPO = 1)'); //DESENVOLVEDOR/ADMINISTRADOR
  DM.qryAux.Open;
  IF(DM.qryAux.FieldByName('CONTA').AsInteger = 0)THEN
  BEGIN
    //AGORA BUSCA A PERMISSAO NAS PERMISSOES
    DM.qryAux.Close;
    DM.qryAux.SQL.Clear;
    DM.qryAux.SQL.Add('SELECT COUNT(A.ID) AS CONTA ');
    DM.qryAux.SQL.Add('  FROM TBUSUARIOSXPERMISSOES A  ');
    DM.qryAux.SQL.Add(' WHERE A.IDEMPRESA = ' + INTTOSTR(CodEmpresa));
    DM.qryAux.SQL.Add('   AND A.IDUSUARIO = ' + INTTOSTR(PUSUARIO));
    DM.qryAux.SQL.Add('   AND A.NOME_FRM  = ' + QUOTEDSTR(PNOMEFRM));
    DM.qryAux.SQL.Add('   AND A.SITUACAO  = 1');
    DM.qryAux.Open;
    IF(DM.qryAux.FieldByName('CONTA').AsInteger = 0)THEN
      RESULT := FALSE
    ELSE
      RESULT := TRUE;
  END
  ELSE
    RESULT := TRUE;
end;

function Consultar(PTITULO, PSELECT, PWHERE, PORDERBY, PCAMPOSFILTROS, PLABELCAMPOSFILTRO, PCAMPORET : STRING) : STRING;
var
  RET : STRING;
begin
  Application.CreateForm(TfrmConsultarRegistros, frmConsultarRegistros);
  frmConsultarRegistros.PTITULO            := PTITULO;
  frmConsultarRegistros.PSELECT            := PSELECT;
  frmConsultarRegistros.PWHERE             := PWHERE;
  frmConsultarRegistros.PORDERBY           := PORDERBY;
  frmConsultarRegistros.PCAMPOSFILTROS     := PCAMPOSFILTROS;
  frmConsultarRegistros.PLABELCAMPOSFILTRO := PLABELCAMPOSFILTRO;
  frmConsultarRegistros.PCAMPORET          := PCAMPORET;
  frmConsultarRegistros.ShowModal;
  IF(frmConsultarRegistros.ModalResult = mrOk)THEN
      RET := frmConsultarRegistros.PRET;
  frmConsultarRegistros.Release;
  frmConsultarRegistros.Free;

  RESULT := RET;
end;

//procedimentos
procedure ValidaCampos(PCAMPO : TDBEdit; PTITULO : STRING); OVERLOAD;
begin
  //
  IF(LENGTH(TRIM(PCAMPO.Text)) = 0)THEN
  BEGIN
    Application.MessageBox(PCHAR('Campo "' + PTITULO + '" é de preenchimento obrigatório! Verifique!'),'Aviso!',MB_OK+MB_ICONWARNING);
    PCAMPO.SetFocus;
    ABORT;
  END;
end;

procedure ValidaCampos(PCAMPO : TJvDBComboBox; PTITULO : STRING); OVERLOAD;
begin
  IF(PCAMPO.ItemIndex = -1)THEN
  BEGIN
    Application.MessageBox(PCHAR('Campo "' + PTITULO + '" é de preenchimento obrigatório! Verifique!'),'Aviso!',MB_OK+MB_ICONWARNING);
    PCAMPO.SetFocus;
    ABORT;
  END;
end;

end.
