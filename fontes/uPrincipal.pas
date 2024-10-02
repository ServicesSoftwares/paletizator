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
    btnTrocarUsuario: TcxButton;
    btnLog: TcxButton;
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
    procedure btnTrocarUsuarioClick(Sender: TObject);
    procedure AjudaSobre1Click(Sender: TObject);
    procedure EncerrarSistema1Click(Sender: TObject);
    procedure btnProgramaClick(Sender: TObject);
    procedure Novoprograma1Click(Sender: TObject);
    procedure btnControlarRoboClick(Sender: TObject);
    procedure ControlarRob1Click(Sender: TObject);
    procedure btnLogClick(Sender: TObject);
  private
    { Private declarations }

    procedure AbrirCadastroUsuario;
    procedure AbrirCadastroEmpresas;
    procedure AbrirCadatroRobos;
    procedure AbrirProgramacao;
    procedure AbrirControlarRobo;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCadUsuarios, uCadastroEmpresas, uCadastroRobos, uDM, uAjuda,
  uGeraProgramaPalete, uControlarRobo, uPesquisarRegistros,
  uVisualizacaoLog;

procedure TfrmPrincipal.AbrirCadastroEmpresas;
begin
  InsereLog(CodUsuario, 'frmCadastroEmpresas', 'ABRIR TELA DE CADASTRO DE EMPRESAS');
  //verifica se usuario é administador ou desenvolvedor
  if not(ValidaPermissaoUsuario(CodUsuario, 'frmCadastroEmpresas'))then
  begin
    Application.MessageBox('Usuário sem permissão para acesso a essa aplicação.','Aviso!',MB_OK+MB_ICONWARNING);
    InsereLog(CodUsuario, 'frmCadastroEmpresas', 'ABRIR TELA DE CADASTRO DE EMPRESAS - USUARIO SEM PERMISSÃO');
    ABORT;
  end;

  Application.CreateForm(tfrmCadastroEmpresas,frmCadastroEmpresas);
  frmCadastroEmpresas.ShowModal;
  InsereLog(CodUsuario, 'frmCadastroEmpresas', 'FECHOU TELA DE CADASTRO DE EMPRESAS');
  frmCadastroEmpresas.Release;
  frmCadastroEmpresas.Free;
end;

procedure TfrmPrincipal.AbrirCadastroUsuario;
begin
  InsereLog(CodUsuario, 'frmCadastroUsuarios', 'ABRIR TELA DE CADASTRO DE USUARIOS');
  //verifica se usuario é administador ou desenvolvedor
  if not(ValidaPermissaoUsuario(CodUsuario, 'frmCadastroUsuarios'))then
  begin
    Application.MessageBox('Usuário sem permissão para acesso a essa aplicação.','Aviso!',MB_OK+MB_ICONWARNING);
    InsereLog(CodUsuario, 'frmCadastroUsuarios', 'ABRIR TELA DE CADASTRO DE USUÁRIOS - USUÁRIO SEM PERMISSÃO');
    ABORT;
  end;

  Application.CreateForm(tfrmCadastroUsuarios,frmCadastroUsuarios);
  frmCadastroUsuarios.ShowModal;
  InsereLog(CodUsuario, 'frmCadastroUsuarios', 'FECHOU TELA DE CADASTRO DE ROBOS');
  frmCadastroUsuarios.Release;
  frmCadastroUsuarios.Free;
end;

procedure TfrmPrincipal.AbrirCadatroRobos;
begin
  InsereLog(CodUsuario, 'frmCadastroRobos', 'ABRIR TELA DE CADASTRO DE ROBOS');
  if not(ValidaPermissaoUsuario(CodUsuario, 'frmCadastroRobos'))then
  begin
    Application.MessageBox('Usuário sem permissão para acesso a essa aplicação.','Aviso!',MB_OK+MB_ICONWARNING);
    InsereLog(CodUsuario, 'frmCadastroRobos', 'ABRIR TELA DE CADASTRO DE ROBOS - USUARIO SEM PERMISSÃO');
    ABORT;
  end;

  Application.CreateForm(TfrmCadastroRobos,frmCadastroRobos);
  frmCadastroRobos.ShowModal;
  InsereLog(CodUsuario, 'frmCadastroRobos', 'FECHOU TELA DE CADASTRO DE ROBOS');
  frmCadastroRobos.Release;
  frmCadastroRobos.Free;
end;

procedure TfrmPrincipal.AbrirControlarRobo;
begin
  InsereLog(CodUsuario, 'frmControlarRobo', 'ABRIR TELA CONTROLAR ROBÔ');
  if not(ValidaPermissaoUsuario(CodUsuario, 'frmControlarRobo'))then
  begin
    Application.MessageBox('Usuário sem permissão para acesso a essa aplicação.','Aviso!',MB_OK+MB_ICONWARNING);
    InsereLog(CodUsuario, 'frmControlarRobo', 'ABRIR TELA CONTROLAR ROBÔ - USUARIO SEM PERMISSÃO');
    ABORT;
  end;

  Application.CreateForm(TfrmControlarRobo, frmControlarRobo);
  frmControlarRobo.ShowModal;
  InsereLog(CodUsuario, 'frmControlarRobo', 'FECHOU TELA CONTROLAR ROBÔ');
  frmControlarRobo.Release;
  frmControlarRobo.Free;
end;

procedure TfrmPrincipal.AbrirProgramacao;
begin
  InsereLog(CodUsuario, 'frmGeraProgramaPalete', 'ABRIR TELA GERAÇÃO DE PROGRAMAÇÃO DE PALETE');
  if not(ValidaPermissaoUsuario(CodUsuario, 'frmGeraProgramaPalete'))then
  begin
    Application.MessageBox('Usuário sem permissão para acesso a essa aplicação.','Aviso!',MB_OK+MB_ICONWARNING);
    InsereLog(CodUsuario, 'frmGeraProgramaPalete', 'ABRIR TELA GERAÇÃO DE PROGRAMAÇÃO DE PALETE - USUARIO SEM PERMISSAO');
    ABORT;
  end;

  Application.CreateForm(TfrmGeraProgramaPalete, frmGeraProgramaPalete);
  frmGeraProgramaPalete.ShowModal;
  InsereLog(CodUsuario, 'frmGeraProgramaPalete', 'FECHOU TELA GERAÇÃO DE PROGRAMAÇÃO DE PALETE');
  frmGeraProgramaPalete.Release;
  frmGeraProgramaPalete.Free;
end;

procedure TfrmPrincipal.AjudaSobre1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmAjuda, frmAjuda);
  InsereLog(CodUsuario, 'frmAjuda', 'ABRIU TELA DE AJUDA');
  frmAjuda.ShowModal;
  InsereLog(CodUsuario, 'frmAjuda', 'FECHOU TELA DE AJUDA');
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

procedure TfrmPrincipal.btnControlarRoboClick(Sender: TObject);
begin
  AbrirControlarRobo;
end;

procedure TfrmPrincipal.btnEmpresasClick(Sender: TObject);
begin
  AbrirCadastroEmpresas;
end;

procedure TfrmPrincipal.btnLogClick(Sender: TObject);
begin
  InsereLog(CodUsuario, 'frmVisualizaLogs', 'ABRIU TELA DE VISUALIZAÇÃO DE REGISTRO DE LOGS DE USUÁRIO');
  Application.CreateForm(tfrmVisualizaLogs, frmVisualizaLogs);
  InsereLog(CodUsuario, 'frmVisualizaLogs', 'FECHOU TELA DE VISUALIZAÇÃO DE REGISTRO DE LOGS DE USUÁRIO');
  frmVisualizaLogs.ShowModal;
  frmVisualizaLogs.Release;
  frmVisualizaLogs.Free;
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

procedure TfrmPrincipal.ControlarRob1Click(Sender: TObject);
begin
  AbrirControlarRobo;
end;

procedure TfrmPrincipal.btnTrocarUsuarioClick(Sender: TObject);
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

  //habilitar botao ver log
  btnLog.Visible := (TipoUsuario in [0,1]);
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
  IF NOT(QRYAUX.IsEmpty)THEN
  BEGIN
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
  END
  ELSE
  BEGIN
    AbrirCadastroEmpresas;

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
  END;

  //habilitar botao ver log
  btnLog.Visible := (TipoUsuario in [0,1]);
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
