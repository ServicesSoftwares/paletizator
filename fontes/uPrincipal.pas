unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ToolWin,
  Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus, uFuncoesGerais, Vcl.ComCtrls,
  Vcl.ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.StdCtrls, cxButtons, Vcl.Grids, Vcl.Samples.Calendar, JvExExtCtrls,
  JvExtComponent, JvClock, Vcl.AppEvnts, System.ImageList, Vcl.ImgList, cxImageList,
  Vcl.Imaging.jpeg, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmPrincipal = class(TForm)
    MENU: TMainMenu;
    Parametros1: TMenuItem;
    Empresa1: TMenuItem;
    Empresas1: TMenuItem;
    N1: TMenuItem;
    Robes1: TMenuItem;
    StatusBar: TStatusBar;
    Timer: TTimer;
    Panel1: TPanel;
    btnRobos: TcxButton;
    btnPrograma: TcxButton;
    Shape1: TShape;
    Panel2: TPanel;
    Calendar: TCalendar;
    Clock: TJvClock;
    JvClock2: TJvClock;
    ApplicationEvents: TApplicationEvents;
    TrayIcon: TTrayIcon;
    PopupMenu: TPopupMenu;
    ImageList: TcxImageList;
    Restaurar1: TMenuItem;
    N2: TMenuItem;
    Fechar1: TMenuItem;
    btnUsuarios: TcxButton;
    btnEmpresas: TcxButton;
    ImagePlanoFundo: TImage;
    Programao1: TMenuItem;
    AjudaSobre1: TMenuItem;
    EncerrarSistema1: TMenuItem;
    Novoprograma1: TMenuItem;
    N3: TMenuItem;
    ControlarRob1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Shape2: TShape;
    btnControlarRobo: TcxButton;
    QRYAUX: TFDQuery;
    cxButton1: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure ApplicationEventsMinimize(Sender: TObject);
    procedure Restaurar1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure Empresas1Click(Sender: TObject);
    procedure btnUsuariosClick(Sender: TObject);
    procedure btnEmpresasClick(Sender: TObject);
    procedure btnRobosClick(Sender: TObject);
    procedure Robes1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure AjudaSobre1Click(Sender: TObject);
    procedure EncerrarSistema1Click(Sender: TObject);
    procedure btnProgramaClick(Sender: TObject);
    procedure Novoprograma1Click(Sender: TObject);
  private
    { Private declarations }

    procedure AbrirCadastroUsuario;
    procedure AbrirCadastroEmpresas;
    procedure AbrirCadatroRobos;
    procedure AbrirProgramacao;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCadUsuarios, uCadastroEmpresas, uCadastroRobos, uDM, uAjuda,
  uGeraProgramaPalete;

procedure TfrmPrincipal.AbrirCadastroEmpresas;
begin
  //verifica se usuario é administador ou desenvolvedor
  if not(ValidaPermissaoUsuario(CodUsuario, 'frmCadastroEmpresas'))then
  begin
    Application.MessageBox('Usuário sem permissão para acesso a essa aplicação.','Aviso!',MB_OK+MB_ICONWARNING);
    ABORT;
  end;

  Application.CreateForm(tfrmCadastroEmpresas,frmCadastroEmpresas);
  frmCadastroEmpresas.ShowModal;
  frmCadastroEmpresas.Release;
  frmCadastroEmpresas.Free;
end;

procedure TfrmPrincipal.AbrirCadastroUsuario;
begin
  //verifica se usuario é administador ou desenvolvedor
  if not(ValidaPermissaoUsuario(CodUsuario, 'frmCadastroUsuarios'))then
  begin
    Application.MessageBox('Usuário sem permissão para acesso a essa aplicação.','Aviso!',MB_OK+MB_ICONWARNING);
    ABORT;
  end;

  Application.CreateForm(tfrmCadastroUsuarios,frmCadastroUsuarios);
  frmCadastroUsuarios.ShowModal;
  frmCadastroUsuarios.Release;
  frmCadastroUsuarios.Free;
end;

procedure TfrmPrincipal.AbrirCadatroRobos;
begin
  if not(ValidaPermissaoUsuario(CodUsuario, 'frmCadastroRobos'))then
  begin
    Application.MessageBox('Usuário sem permissão para acesso a essa aplicação.','Aviso!',MB_OK+MB_ICONWARNING);
    ABORT;
  end;

  Application.CreateForm(TfrmCadastroRobos,frmCadastroRobos);
  frmCadastroRobos.ShowModal;
  frmCadastroRobos.Release;
  frmCadastroRobos.Free;
end;

procedure TfrmPrincipal.AbrirProgramacao;
begin
  Application.CreateForm(TfrmGeraProgramaPalete, frmGeraProgramaPalete);
  frmGeraProgramaPalete.ShowModal;
  frmGeraProgramaPalete.Release;
  frmGeraProgramaPalete.Free;
end;

procedure TfrmPrincipal.AjudaSobre1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmAjuda, frmAjuda);
  frmAjuda.ShowModal;
  frmAjuda.Release;
  frmAjuda.Free;
end;

procedure TfrmPrincipal.ApplicationEventsMinimize(Sender: TObject);
begin
  Self.Hide();
  Self.WindowState := wsMinimized;
  TrayIcon.Visible := True;
  TrayIcon.Animate := True;
  TrayIcon.BalloonHint  := 'Sistema está minimizado na barra de tarefas. Para visualizar a configuração use a opção restaurar.';
  TrayIcon.BalloonTitle := 'Informação';
  TrayIcon.BalloonFlags := bfInfo;
  TrayIcon.ShowBalloonHint;
end;

procedure TfrmPrincipal.btnEmpresasClick(Sender: TObject);
begin
  AbrirCadastroEmpresas;
end;

procedure TfrmPrincipal.btnProgramaClick(Sender: TObject);
begin
  AbrirProgramacao;
end;

procedure TfrmPrincipal.btnRobosClick(Sender: TObject);
begin
  AbrirCadatroRobos;
end;

procedure TfrmPrincipal.btnUsuariosClick(Sender: TObject);
begin
  AbrirCadastroUsuario;
end;

procedure TfrmPrincipal.cxButton1Click(Sender: TObject);
var
  IdUser : integer;
  sNomeUser : String;
begin
  idUser    := CodUsuario;
  sNomeUser := NomeUsuario;
  if not(Autenticar(0))then
  begin
    Application.MessageBox('Usuário não autenticado!','Aviso!',MB_OK+MB_ICONWARNING);
    CodUsuario  := idUser;
    NomeUsuario := sNomeUser;
    ABORT;
  end;
end;

procedure TfrmPrincipal.Empresa1Click(Sender: TObject);
begin
  AbrirCadastroUsuario;
end;

procedure TfrmPrincipal.Empresas1Click(Sender: TObject);
begin
  AbrirCadastroEmpresas;
end;

procedure TfrmPrincipal.EncerrarSistema1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmPrincipal.Fechar1Click(Sender: TObject);
begin
  Application.terminate;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
var
  R : STRING;
begin
  //

  QRYAUX.Close;
  QRYAUX.SQL.Clear;
  QRYAUX.SQL.Add('SELECT A.ID, A.RAZAO_SOCIAL FROM TBEMPRESAS A WHERE A.SITUACAO = 1');
  QRYAUX.Open;
  IF(QRYAUX.RecordCount = 1)THEN
  BEGIN
    CodEmpresa  := QRYAUX.FieldByName('ID').AsInteger;
    NomeEmpresa := QRYAUX.FieldByName('RAZAO_SOCIAL').AsString;
  END
  ELSE
  BEGIN
    R := Consultar('Cadastro de Empresas',
                   'SELECT A.ID AS "ID", A.CNPJ AS "CNPJ", A.RAZAO_SOCIAL AS "Razão Social", A.NOME_FANTASIA AS "Nome Fantasia" FROM TBEMPRESAS A', //SELECT
                   '', //WHERE
                   'A.RAZAO_SOCIAL', //ORDER BY
                   'A.RAZAO_SOCIAL;A.NOME_FANTASIA;A.ID', //CAMPOS FILTROS
                   'Razão Social;Nome Fantasia;ID', //LABEL CAMPOS FILTROS
                   'ID');

    IF(LENGTH(TRIM(R)) > 0)THEN
    BEGIN
      QRYAUX.Close;
      QRYAUX.SQL.Clear;
      QRYAUX.SQL.Add('SELECT A.ID, A.RAZAO_SOCIAL FROM TBEMPRESAS A WHERE A.ID = ' + R);
      QRYAUX.Open;
      IF NOT(QRYAUX.IsEmpty)THEN
      BEGIN
        CodEmpresa  := QRYAUX.FieldByName('ID').AsInteger;
        NomeEmpresa := QRYAUX.FieldByName('RAZAO_SOCIAL').AsString;
      END;
    END;
  END;
end;

procedure TfrmPrincipal.Novoprograma1Click(Sender: TObject);
begin
  AbrirProgramacao;
end;

procedure TfrmPrincipal.Restaurar1Click(Sender: TObject);
begin
  TrayIcon.Visible := False;
  Show();
  WindowState := wsMaximized;
  Application.BringToFront();
end;

procedure TfrmPrincipal.Robes1Click(Sender: TObject);
begin
  AbrirCadatroRobos;
end;

procedure TfrmPrincipal.TimerTimer(Sender: TObject);
begin
  StatusBar.Panels.Items[1].Text := FormatDateTime('DD/MM/YYYY HH:MM:SS', NOW);
  StatusBar.Panels.Items[3].Text := IntToStr(CodUsuario) + ' - ' + NomeUsuario;
  StatusBar.Panels.Items[5].Text := IntToStr(CodEmpresa) + ' - ' + NomeEmpresa;

  Calendar.CalendarDate := Now;
end;

end.
