unit uDM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDM = class(TDataModule)
    FDCONN: TFDConnection;
    FDTRS: TFDTransaction;
    qryAux: TFDQuery;
    QRYLOG: TFDQuery;
    QRYLOGID: TIntegerField;
    QRYLOGIDUSUARIO: TIntegerField;
    QRYLOGDATA: TDateField;
    QRYLOGHORA: TTimeField;
    QRYLOGFORMULARIO: TStringField;
    QRYLOGACAO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uFuncoesGerais;

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  //carregando banco de dados
  TRY
    FDCONN.Connected := FALSE;
    IF NOT(FileExists(ExtractFilePath(Application.ExeName) + 'database\database.fdb'))THEN
    BEGIN
      Application.MessageBox('Arquivo de banco de dados do sistema não foi localizado no diretório da aplicação. Contate o administrador do sistema!','Erro!',MB_OK+MB_ICONERROR);
      Application.Terminate;
      ABORT;
    END;
    FDCONN.Params.Database := ExtractFilePath(Application.ExeName) + 'database\database.fdb';
    FDCONN.Params.UserName := 'SYSDBA';
    FDCONN.Params.Password := 'Ed180324.';
    FDCONN.Connected := true;
  EXCEPT
    ON E: EXCEPTION DO
    BEGIN
      Application.MessageBox('Erro ao conectar com o banco de dados da aplicação. Contate do administrador o Sistema!','Erro!',MB_OK+MB_ICONERROR);
      Application.Terminate;
      ABORT;
    END;
  END;


  if not(Autenticar(0))then
  begin
    Application.MessageBox('Usuário não autenticado!','Aviso!',MB_OK+MB_ICONWARNING);
    Application.Terminate;
  end;
end;

end.
