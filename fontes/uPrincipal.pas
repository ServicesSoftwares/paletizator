unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ToolWin,
  Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus, uFuncoesGerais, Vcl.ComCtrls,
  Vcl.ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.StdCtrls, cxButtons, Vcl.Grids, Vcl.Samples.Calendar, JvExExtCtrls,
  JvExtComponent, JvClock, Vcl.AppEvnts, System.ImageList, Vcl.ImgList, cxImageList;

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
    JvClock1: TJvClock;
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
  private
    { Private declarations }

    procedure AbrirCadastroUsuario;
    procedure AbrirCadastroEmpresas;
    procedure AbrirCadatroRobos;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCadUsuarios, uCadastroEmpresas, uCadastroRobos;

procedure TfrmPrincipal.AbrirCadastroEmpresas;
begin
  //verifica se usuario � administador ou desenvolvedor
  if not(ValidaPermissaoUsuario(CodUsuario, 'frmCadastroEmpresas'))then
  begin
    Application.MessageBox('Usu�rio sem permiss�o para acesso a essa aplica��o.','Aviso!',MB_OK+MB_ICONWARNING);
    ABORT;
  end;

  Application.CreateForm(tfrmCadastroEmpresas,frmCadastroEmpresas);
  frmCadastroEmpresas.ShowModal;
  frmCadastroEmpresas.Release;
  frmCadastroEmpresas.Free;
end;

procedure TfrmPrincipal.AbrirCadastroUsuario;
begin
  //verifica se usuario � administador ou desenvolvedor
  if not(ValidaPermissaoUsuario(CodUsuario, 'frmCadastroUsuarios'))then
  begin
    Application.MessageBox('Usu�rio sem permiss�o para acesso a essa aplica��o.','Aviso!',MB_OK+MB_ICONWARNING);
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
    Application.MessageBox('Usu�rio sem permiss�o para acesso a essa aplica��o.','Aviso!',MB_OK+MB_ICONWARNING);
    ABORT;
  end;

  Application.CreateForm(TfrmCadastroRobos,frmCadastroRobos);
  frmCadastroRobos.ShowModal;
  frmCadastroRobos.Release;
  frmCadastroRobos.Free;
end;

procedure TfrmPrincipal.ApplicationEventsMinimize(Sender: TObject);
begin
  Self.Hide();
  Self.WindowState := wsMinimized;
  TrayIcon.Visible := True;
  TrayIcon.Animate := True;
  TrayIcon.BalloonHint  := 'Sistema est� minimizado na barra de tarefas. Para visualizar a configura��o use a op��o restaurar.';
  TrayIcon.BalloonTitle := 'Informa��o';
  TrayIcon.BalloonFlags := bfInfo;
  TrayIcon.ShowBalloonHint;
end;

procedure TfrmPrincipal.btnEmpresasClick(Sender: TObject);
begin
  AbrirCadastroEmpresas;
end;

procedure TfrmPrincipal.btnRobosClick(Sender: TObject);
begin
  AbrirCadatroRobos;
end;

procedure TfrmPrincipal.btnUsuariosClick(Sender: TObject);
begin
  AbrirCadastroUsuario;
end;

procedure TfrmPrincipal.Empresa1Click(Sender: TObject);
begin
  AbrirCadastroUsuario;
end;

procedure TfrmPrincipal.Empresas1Click(Sender: TObject);
begin
  AbrirCadastroEmpresas;
end;

procedure TfrmPrincipal.Fechar1Click(Sender: TObject);
begin
  Application.terminate;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  //
end;

procedure TfrmPrincipal.Restaurar1Click(Sender: TObject);
begin
  TrayIcon.Visible := False;
  Show();
  WindowState := wsMaximized;
  Application.BringToFront();
end;

procedure TfrmPrincipal.TimerTimer(Sender: TObject);
begin
  StatusBar.Panels.Items[1].Text := FormatDateTime('DD/MM/YYYY HH:MM:SS', NOW);
  StatusBar.Panels.Items[3].Text := IntToStr(CodUsuario) + ' - ' + NomeUsuario;

  Calendar.CalendarDate := Now;
end;

end.
