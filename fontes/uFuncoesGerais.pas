unit uFuncoesGerais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.ComCtrls, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

  function Autenticar(PTIPOAUT : INTEGER) : boolean;
  function ValidaPermissaoUsuario(PUSUARIO : INTEGER) : Boolean;

var
  CodUsuario : Integer;
  NomeUsuario : String;

implementation

uses uAutenticacao, uDM;

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


function ValidaPermissaoUsuario(PUSUARIO : INTEGER) : Boolean;
begin
  DM.qryAux.Close;
  DM.qryAux.SQL.Clear;
  DM.qryAux.SQL.Add('SELECT COUNT(A.ID) AS CONTA');
  DM.qryAux.SQL.Add('  FROM TBUSUARIOS A        ');
  DM.qryAux.SQL.Add(' WHERE A.ID = ' + INTTOSTR(PUSUARIO));
  DM.qryAux.SQL.Add('   AND (A.TIPO = 0 OR A.TIPO = 1)'); //DESENVOLVEDOR/ADMINISTRADOR
  DM.qryAux.Open;
  IF(DM.qryAux.FieldByName('CONTA').AsInteger = 0)THEN
    RESULT := FALSE
  ELSE
    RESULT := TRUE;
end;

end.
